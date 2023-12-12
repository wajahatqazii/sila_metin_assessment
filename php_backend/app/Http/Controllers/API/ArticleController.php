<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Category;
use App\Models\Source;
use Illuminate\Support\Facades\Http;
use Illuminate\Validation\Rule;

//use App\Http\Controllers\API\Auth;
use Illuminate\Support\Facades\Log;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $articles = Article::with(['category', 'source'])->get();
        $articles->transform(function ($article) {
            return [
                'id' => $article->id,
                'title' => $article->title,
                'body' => $article->body,
                'category_id' => $article->category ? $article->category->id : null,
                'category' => $article->category ? $article->category->name : null,
                'source_id' => $article->source ? $article->source->id : null,
                'source' => $article->source ? $article->source->name : null,
                'url' => $article->url,
                'urlToImage' => $article->urlToImage ? url('images/' . $article->urlToImage) : null,
                'publishedAt' => $article->created_at->format('Y-m-d H:i:s'),
            ];
        });

        if ($articles->isEmpty()) {
            return response()->json(['message' => 'No articles found.'], 404);
        }

        return response()->json($articles);
    }

    public function categoryindex()
    {
        $categories = Category::all();

        if ($categories->isEmpty()) {
            return response()->json(['message' => 'No categories found.'], 404);
        }

        return response()->json($categories);
    }

    public function sourceindex()
    {
        $sources = Source::all();

        if ($sources->isEmpty()) {
            return response()->json(['message' => 'No sources found.'], 404);
        }

        return response()->json($sources);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $article = new Article;
        $article->title = $request->title;
        $article->body = $request->body;
        $article->urlToImage = $request->urlToImage;
        $article->url = $request->url;
        $article->author = $request->author;
        $article->category_id = $request->category_id;
        $article->source_id = $request->source_id;
        $article->save();

        return response()->json($article);
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $article = Article::find($id);

        if (!$article) {
            return response()->json(['message' => 'Article not found.'], 404);
        }

        return response()->json($article);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $article = Article::findOrFail($id);

        $article->title = $request->title;
        $article->body = $request->body;
        $article->urlToImage = $request->urlToImage;
        $article->url = $request->url;
        $article->author = $request->author;
        $article->category_id = $request->category_id;
        $article->source_id = $request->source_id;
        $article->save();

        return response()->json($article);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $article = Article::findOrFail($id);
        $article->delete();

        return response()->json(['message' => 'Article deleted']);
    }

    public function fetchFromNewsApi()
    {
        $url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=392b64932d28447c9fa50b32f14beeb2";
        $client = new \GuzzleHttp\Client();
        $response = $client->request('GET', $url);
        $articles = json_decode($response->getBody()->getContents(), true)['articles'];

        foreach ($articles as $article) {
            $category = Category::firstOrCreate(['name' => 'uncategorized']);

            $source_id = isset($article['source']['id']) ? $article['source']['id'] : 0;
            $source_name = isset($article['source']['name']) ? $article['source']['name'] : '';
            $source = Source::where('name', $source_name)->first();
            if (!$source) {
                $source = Source::create([
                    'name' => $source_name
                ]);
            }

            // Check if article already exists in database
            $articleExists = Article::where([
                'title' => $article['title'],
                'source_id' => $source->id,
            ])->exists();

            if (!$articleExists) {
                $image_url = $article['urlToImage'];
                $image_name = '';
                if (!empty($image_url) && filter_var($image_url, FILTER_VALIDATE_URL)) {
                    $parsed_url = parse_url($image_url);
                    $scheme = isset($parsed_url['scheme']) ? $parsed_url['scheme'] : '';
                    $host = isset($parsed_url['host']) ? $parsed_url['host'] : '';
                    $path = isset($parsed_url['path']) ? $parsed_url['path'] : '';
                    $image_url = $scheme . '://' . $host . $path;
                    $image_url = urldecode($image_url);
                    $image_name = basename($image_url);
                    $image_path = public_path('images/' . $image_name);
                    try {
                        $image_data = file_get_contents($image_url);
                        if ($image_data) {
                            file_put_contents($image_path, $image_data);
                        }
                    } catch (\Exception $e) {
                        // Log the error message
                        Log::error('Failed to download image: ' . $e->getMessage());
                    }
                }

                Article::create([
                    'title' => $article['title'],
                    'body' => $article['content'],
                    'category_id' => $category->id,
                    'source_id' => $source->id,
                    'url' => $article['url'],
                    'urlToImage' => $image_name,
                    'author' => $article['author'],
                ]);
            }
        }
    }

    //fetch data from new york api key
    public function fetchFromNewyorkApi()
    {
        $url = 'https://api.nytimes.com/svc/archive/v1/2023/8.json?api-key=oRhYvChtJ8PZbdCXSdG15uN2KE1xZR3V';
        $client = new \GuzzleHttp\Client();
        $response = $client->request('GET', $url);
        $articles = json_decode($response->getBody()->getContents(), true)['response']['docs'];

        // Limit the number of articles to fetch
        $articlesToFetch = 100;
        $articleCounter = 0;


        foreach ($articles as $article) {
            // Increment the counter
            $articleCounter++;

            // Check if the counter exceeds the limit
            if ($articleCounter > $articlesToFetch) {
                break; // Break out of the loop if the limit is reached
            }


            $category_name = isset($article['news_desk']) ? $article['news_desk'] : 'uncategorized';
            $category = Category::firstOrCreate(['name' => $category_name]);

            $author = isset($article['byline']['original']) ? str_replace('By ', '', $article['byline']['original']) : '';

            // If image url is null, set it to empty string
            $image_url = isset($article['multimedia'][0]['url']) ? 'https://www.nytimes.com/' . $article['multimedia'][0]['url'] : '';

            $source_name = isset($article['section_name']) ? $article['section_name'] : 'The New York Times';
            $source = Source::where('name', $source_name)->first();

            // check if source already exists in database
            if (!$source) {
                $source = Source::create([
                    'name' => $source_name
                ]);
            }

            // Check if article already exists in database
            $articleExists = Article::where([
                'title' => $article['headline']['main'],
                'source_id' => $source->id,
            ])->exists();

            if (!$articleExists) {
                // Download and store image
                if (!empty($image_url)) {
                    $parsed_url = parse_url($image_url);
                    $image_url = $parsed_url['scheme'] . '://' . $parsed_url['host'] . $parsed_url['path'];

                    $image_url = urldecode($image_url);
                    $image_name = basename($image_url);
                    $image_path = public_path('images/' . $image_name);

                    $image_data = file_get_contents($image_url);
                    if ($image_data !== false) {
                        file_put_contents($image_path, $image_data);
                    }
                }

                Article::create([
                    'title' => $article['headline']['main'],
                    'body' => isset($article['abstract']) ? $article['abstract'] : '',
                    'category_id' => $category->id,
                    'source_id' => $source->id,
                    'url' => $article['web_url'],
                    'urlToImage' => isset($image_name) ? $image_name : '',
                    'author' => $author,
                ]);
            }
        }
    }


    //search the function for article
    public function search(Request $request)
    {
        $searchQuery = $request->input('q');
        $category_id = $request->input('category_id');
        $source_id = $request->input('source_id');
        $date_from = $request->input('date_from');
        $date_to = $request->input('date_to');
        $page = $request->input('page', 1);
        $perPage = 10;

        $articles = Article::query();

        if ($searchQuery) {
            $articles->selectRaw('*, MATCH(title, body) AGAINST(? IN BOOLEAN MODE) AS relevance', [$searchQuery])
                ->whereRaw('MATCH(title, body) AGAINST(? IN BOOLEAN MODE)', [$searchQuery]);
        }

        if ($category_id) {
            $articles->where('category_id', $category_id);
        }

        if ($source_id) {
            $articles->where('source_id', $source_id);
        }

        if ($date_from) {
            $articles->whereDate('created_at', '>=', Carbon::parse($date_from));
        }

        if ($date_to) {
            $articles->whereDate('created_at', '<=', Carbon::parse($date_to));
        }

        if ($searchQuery) {
            $articles->orderBy('relevance', 'desc');
        }

        $articles = $articles->paginate($perPage, ['*'], 'page', $page);

        return response()->json(['articles' => $articles]);
    }

    public function listauthors()
    {
        $authors = DB::table('articles')
            ->select('author')
            ->distinct()
            ->whereRaw('LENGTH(author) > 0')
            ->get();

        return response()->json($authors);
    }

    //save fav Categories
    public function saveUserfavCategories(Request $request)
    {
        // Get the authenticated user
        $user = Auth::user();

        // Validate the request payload
        $validator = Validator::make($request->all(), [
            'category_id' => 'required|exists:categories,id',
            'is_fav' => 'required|in:0,1',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $category_id = $request->input('category_id');
        $is_fav = $request->input('is_fav');

        if ($is_fav == 1) {
            // Add the category to the user's favorites
            $user->favoriteCategories()->syncWithoutDetaching([$category_id]);
            return response()->json(['success' => true]);
        } elseif ($is_fav == 0) {
            // Remove the category from the user's favorites
            $user->favoriteCategories()->detach($category_id);
            return response()->json(['success' => true]);
        }
    }

    //save fav Sources
    public function saveUserfavSources(Request $request)
    {
        // Get the authenticated user
        $user = Auth::user();

        // Validate the request payload
        $validator = Validator::make($request->all(), [
            'source_id' => 'required|exists:sources,id',
            'is_fav' => 'required|in:0,1',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $source_id = $request->input('source_id');
        $is_fav = $request->input('is_fav');

        if ($is_fav == 1) {
            // Add the source to the user's favorites
            $user->favoriteSource()->syncWithoutDetaching([$source_id]);
            return response()->json(['success' => true]);
        } elseif ($is_fav == 0) {
            // Remove the source from the user's favorites
            $user->favoriteSource()->detach($source_id);
            return response()->json(['success' => true]);
        }
    }
    public function saveUserfavAuthors(Request $request)
    {
        // Get the authenticated user
        $user = Auth::user();

        // Validate the request payload
        $validator = Validator::make($request->all(), [
            'author' => 'required|exists:articles,author',
            'is_fav' => 'required|in:0,1',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 400);
        }

        $author = $request->input('author');
        $is_fav = $request->input('is_fav');

        if ($is_fav == 1) {
            // Check if the author is already added as favorite
            $favAuthor = DB::table('fav_author')->where('user_id', $user->id)->where('author', $author)->first();
            if (!$favAuthor) {
                // Add the author to the user's favorites
                DB::table('fav_author')->insert([
                    'user_id' => $user->id,
                    'author' => $author,
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
                return response()->json(['success' => true]);
            } else {
                return response()->json(['error' => 'Author already exists in favorites']);
            }
        } elseif ($is_fav == 0) {
            // Remove the author from the user's favorites
            DB::table('fav_author')->where('user_id', $user->id)->where('author', $author)->delete();
            return response()->json(['success' => true]);
        }
    }

    //Get List for fav articles
    public function fetchArticlesByFavorites(Request $request)
    {
        $userId = auth()->id();

        $favoriteAuthors = DB::table('fav_author')
            ->where('user_id', $userId)
            ->pluck('author');

        $favoriteCategories = DB::table('fav_categories')
            ->where('user_id', $userId)
            ->pluck('category_id');

        $favoriteSources = DB::table('fav_sources')
            ->where('user_id', $userId)
            ->pluck('source_id');

        $articles = Article::with(['category', 'source'])
            ->whereIn('author', $favoriteAuthors)
            ->orWhereIn('category_id', $favoriteCategories)
            ->orWhereIn('source_id', $favoriteSources)
            ->paginate($request->input('per_page', 6));

        if ($articles->isEmpty()) {
            return response()->json(['message' => 'No articles found for the user.'], 404);
        }

        $articles = $articles->map(function ($article) {
            $category = $article->category;
            $source = $article->source;

            return [
                'id' => $article->id,
                'title' => $article->title,
                'body' => $article->body,
                'category' => [
                    'id' => $category->id,
                    'name' => $category->name,
                ],
                'source' => [
                    'id' => $source->id,
                    'name' => $source->name,
                ],
                'url' => $article->url,
                'urlToImage' => $article->urlToImage,
                'author' => $article->author,
                'created_at' => $article->created_at,
                'updated_at' => $article->updated_at,
            ];
        });

        return response()->json($articles);
    }
}
