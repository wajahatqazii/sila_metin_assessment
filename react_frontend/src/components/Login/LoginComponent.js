import React, { useState } from 'react';
import './LoginComponent.css'; 
import { useNavigate, Link } from 'react-router-dom';
import axios from 'axios';

const Login = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const navigate = useNavigate();
  const instance = axios.create({
    baseURL: 'http://127.0.0.1:8000/api/', 
  });
  const handleLogin = async (e) => {
    e.preventDefault();
    try {
      const token = localStorage.getItem("token")
      const response = await instance.post("login",{email,password,token})
      localStorage.setItem("token",response?.data?.token);
      navigate('/home')
    } catch (error) {
      console.error('Login failed', error);
    }
  };

  return (
    <div className="login-container">
      <h4 className='appname'>News Aggregator Website</h4>
      <h2 className='login-header'>Login</h2>
      <form className="login-form">
        <input type="text" placeholder="Email" value={email} onChange={(e) => setEmail(e.target.value)} />
        <input type="password" placeholder="Password" value={password} onChange={(e) => setPassword(e.target.value)} />
        <div className='button-style'>
        <button onClick={handleLogin}>Login</button>
        </div>
        <div className='switch-login'>
        <p>Dont have an account?<Link to="/register"> Sign Up </Link></p>
        </div>
      </form>
    </div>
  );
};

export default Login;

