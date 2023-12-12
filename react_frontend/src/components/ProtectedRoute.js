import React, { useEffect } from 'react';
import { useNavigate, Outlet } from 'react-router-dom';

const ProtectedRoute = () => {
  
  const isAuthenticated = localStorage.getItem('token');
  const navigate = useNavigate();
  console.log(isAuthenticated)

  useEffect (()=>{
    if (!isAuthenticated) {
      navigate("/login");
    }
  },[isAuthenticated])
  return (
    <div>
      <Outlet/>
      </div>
  );
};

export default ProtectedRoute;