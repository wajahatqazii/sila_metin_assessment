import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './NewsFeed.css'; 

const NewsFeedComponent = () => {
  const [authors, setAuthors] = useState([]);
  const [categories, setCategories] = useState([]);
  const [sources, setSources] = useState([]);
  const [selectedAuthor, setSelectedAuthor] = useState('');
  const [selectedCategory, setSelectedCategory] = useState('');
  const [selectedSource, setSelectedSource] = useState('');
  const [filteredArticles, setFilteredArticles] = useState([]);
  const [notification, setNotification] = useState('');
  const [currentPage, setCurrentPage] = useState(1);
  const [articlesPerPage] = useState(12);

  const token = localStorage.getItem("token");

  useEffect(() => {
    // Fetch authors list
    axios.post('http://127.0.0.1:8000/api/articles/authorslist', { token })
      .then(response => {
        setAuthors(response?.data);
      })
      .catch(error => {
        console.error('Error fetching authors:', error);
      });

    // Fetch categories list
    axios.post('http://127.0.0.1:8000/api/articles/categorylist', { token })
      .then(response => {
        setCategories(response?.data);
      })
      .catch(error => {
        console.error('Error fetching categories:', error);
      });

    // Fetch sources list
    axios.post('http://127.0.0.1:8000/api/articles/sourcelist', { token })
      .then(response => {
        setSources(response?.data);
      })
      .catch(error => {
        console.error('Error fetching sources:', error);
      });
  }, []);

  const handleAuthorChange = event => {
    const authorName = event.target.value;
    setSelectedAuthor({ is_fav: true, name: authorName });

    // Simulate success notification
    setNotification(`Successfully added ${authorName} to favorites`);
    setTimeout(() => {
      setNotification('');
    }, 3000);
  };

  const handleCategoryChange = event => {
    const [categoryId, categoryName] = event.target.value.split('|');
    setSelectedCategory({ category_id: categoryId, is_fav: true, name: categoryName });

    // Simulate success notification
    setNotification(`Successfully added ${categoryName} to favorites`);
    setTimeout(() => {
      setNotification('');
    }, 3000);
  };

  const handleSourceChange = event => {
    const [sourceId, sourceName] = event.target.value.split('|');
    setSelectedSource({ source_id: sourceId, is_fav: true, name: sourceName });

    // Simulate success notification
    setNotification(`Successfully added ${sourceName} to favorites`);
    setTimeout(() => {
      setNotification('');
    }, 3000);
  };

  const fetchData = async () => {
    try {
      const token = localStorage.getItem('token');
      const response = await axios.get('http://127.0.0.1:8000/api/articles/list', {
        headers: { Authorization: `Bearer ${token}` }
      });
      setFilteredArticles(response?.data);
    } catch (error) {
      console.error('Error fetching articles:', error);
    }
  };

  const indexOfLastArticle = currentPage * articlesPerPage;
  const indexOfFirstArticle = indexOfLastArticle - articlesPerPage;
  const currentArticles = filteredArticles.slice(indexOfFirstArticle, indexOfLastArticle);
  console.log(currentArticles);
  const paginate = pageNumber => setCurrentPage(pageNumber);

  return (
    <div className="news-feed-container">
      <div className="dropdowns">
        <select value={selectedAuthor.name} onChange={handleAuthorChange}>
          <option value="">Select Author</option>
          {authors.map((author,index) => (
            <option key={index} value={author?.author}>{author?.author}</option>
          ))}
        </select>

        <select value={`${selectedCategory.category_id}|${selectedCategory.name}`} onChange={handleCategoryChange}>
          <option value="">Select Category</option>
          {categories.map(category => (
            <option key={category?.id} value={`${category?.id}|${category?.name}`}>{category?.name}</option>
          ))}
        </select>

        <select value={`${selectedSource.source_id}|${selectedSource.name}`} onChange={handleSourceChange}>
          <option value="">Select Source</option>
          {sources.map(source => (
            <option key={source?.id} value={`${source?.id}|${source?.name}`}>{source?.name}</option>
          ))}
        </select>
        <button onClick={fetchData}>Fetch News</button>
      </div>

      <div className="card-container">
        {filteredArticles ? (filteredArticles.map(article => (
          <div className="article-card" key={article.id}>
            <img src={article.urlToImage} alt={article.title} className="article-image" />
            <div className="article-details">
              <h2 className="article-title">{article.title}</h2>
              <p className="article-category">{article.category}</p>
              <p className="article-body">{article.body}</p>
              <p className="article-source">Source: {article.source}</p>
              <a href={article.url} className="article-link" target="_blank" rel="noopener noreferrer">
                Read more
              </a>
              <p className="article-date">Published at: {article.publishedAt}</p>
            </div>
          </div>
        ))):
        <div>
            No preferences to display!
        </div>
        }
      </div>

      <ul className="pagination">
        {Array.from({ length: Math.ceil(filteredArticles.length / articlesPerPage) }, (_, i) => (
          <li key={i} className={currentPage === i + 1 ? 'active' : ''}>
            <button onClick={() => paginate(i + 1)}>{i + 1}</button>
          </li>
        ))}
      </ul>
      {/* Notification for successful addition */}
      {notification && <div className="notification">{notification}</div>}
    </div>
  );
};

export default NewsFeedComponent;
