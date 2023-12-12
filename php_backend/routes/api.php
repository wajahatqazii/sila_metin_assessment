<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\ArticleController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);

Route::middleware('auth:api')->group(function () {
    Route::get('get-user', [AuthController::class, 'userinfo']);
    Route::post('/articles/fav_categories', [ArticleController::class, 'saveUserfavCategories']);
    Route::post('/articles/fav_sources', [ArticleController::class, 'saveUserfavSources']);
    Route::post('/articles/fav_authors', [ArticleController::class, 'saveUserfavAuthors']);
    Route::post('/articles/fav_articles_list', [ArticleController::class, 'fetchArticlesByFavorites']);

});
//articles apis start
Route::get('/articles/list', [ArticleController::class, 'index']);
Route::post('/articles/create', [ArticleController::class, 'store']);
Route::get('/articles/{id}', [ArticleController::class, 'show']);
Route::post('/articles/update/{id}', [ArticleController::class, 'update']);
Route::delete('/articles/{id}', [ArticleController::class, 'destroy']);
//search the articles
Route::post('/articles/searchar', [ArticleController::class, 'search']);
//fetch article from news apis
Route::post('/articles/fetch-from-news-api', [ArticleController::class, 'fetchFromNewsApi']);
Route::post('/articles/fetch-from-news-newyork-api', [ArticleController::class, 'fetchFromNewyorkApi']);
//articles apis end
Route::post('/articles/categorylist', [ArticleController::class, 'categoryindex']);
Route::post('/articles/sourcelist', [ArticleController::class, 'sourceindex']);
Route::post('/articles/authorslist', [ArticleController::class, 'listauthors']);

