@echo off
echo Starting CORS Proxy Server...
echo.
echo The proxy server will be available at: http://localhost:3000
echo.
echo Keep this window open while using the application.
echo Press Ctrl+C to stop the server when you're done.
echo.
cd /d "%~dp0"
node proxy-server.js
