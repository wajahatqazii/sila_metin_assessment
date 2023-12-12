import React, { useState, useEffect } from 'react';
import axios from 'axios';
import './HomePage.css';
import { useNavigate } from 'react-router-dom';

const HomePage = () => {
  const [articles, setArticles] = useState([]);
  const [filteredArticles, setFilteredArticles] = useState([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [currentPage, setCurrentPage] = useState(1);
  const [articlesPerPage] = useState(12);
    const navigate = useNavigate();
  useEffect(() => {
    const fetchData = async () => {
      try {
        const token = localStorage.getItem('token');
        const response = await axios.get('http://127.0.0.1:8000/api/articles/list', {
          headers: { Authorization: `Bearer ${token}` }
        });
        setArticles(response?.data);
        setFilteredArticles(response?.data);
      } catch (error) {
        console.error('Error fetching articles:', error);
      }
    };

    fetchData();
  }, []);

  const handleSearch = () => {
    if (searchQuery.trim() === '') {
      setFilteredArticles(articles);
    } else {
      const filtered = articles?.filter(
        article =>
          article.source.toLowerCase().includes(searchQuery.toLowerCase()) ||
          article.publishedAt.toLowerCase().includes(searchQuery.toLowerCase()) ||
          article.category.toLowerCase().includes(searchQuery.toLowerCase())
      );
      setFilteredArticles(filtered);
    }
    setCurrentPage(1); 
  };

  const handleInputChange = event => {
    setSearchQuery(event.target.value);
  };
  const handleNavigate = () =>{
    navigate('/feed');
  }

  const indexOfLastArticle = currentPage * articlesPerPage;
  const indexOfFirstArticle = indexOfLastArticle - articlesPerPage;
  const currentArticles = filteredArticles.slice(indexOfFirstArticle, indexOfLastArticle);

  const paginate = pageNumber => setCurrentPage(pageNumber);

  return (
    <div className="article-list">
      <div className="search-bar">
        <input
          type="text"
          placeholder="Search by source, category, or date"
          value={searchQuery}
          onChange={handleInputChange}
        />
        <button style={{margin: "5px"}} onClick={handleSearch}>Search</button>
        <button onClick={handleNavigate}>Go to Feed</button>
      </div>

      <div className="card-container">
        {currentArticles.map(article => (
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
        ))}
      </div>

      <ul className="pagination">
        {Array.from({ length: Math.ceil(filteredArticles.length / articlesPerPage) }, (_, i) => (
          <li key={i} className={currentPage === i + 1 ? 'active' : ''}>
            <button onClick={() => paginate(i + 1)}>{i + 1}</button>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default HomePage;
