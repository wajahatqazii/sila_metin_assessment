import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Login from './components/Login/LoginComponent';
import Registration from './components/Register/RegistrationComponent';
import ProtectedRoute from './components/ProtectedRoute';
import HomePage from './components/HomePage/HomePage';
import NewsFeedComponent from './components/NewsFeed/NewsFeed';

const App = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Login />} />
        <Route path="/login" element={<Login />} />
        <Route path="/register" element={<Registration />} />
        <Route element={<ProtectedRoute/>}> 
          <Route path="/home" element={<HomePage />}/>
          <Route path="/feed" element={<NewsFeedComponent />}/>
        </Route>
      </Routes>
    </Router>
  );
};

export default App;