# Finnhub API Setup Guide

## Why Finnhub?

Finnhub offers a **free tier with 60 API calls per minute**, which is perfect for real-time stock updates. This is much more reliable than Yahoo Finance's unofficial API, which has strict rate limits.

## Setup Steps

### 1. Get Your Free API Key

1. Go to: **https://finnhub.io/register**
2. Sign up for a free account (no credit card required)
3. After registration, you'll see your API key on the dashboard
4. Copy your API key

### 2. Set Your API Key in the App

**Option 1: Browser Console (Easiest)**
1. Open the app in your browser
2. Press `F12` to open Developer Tools
3. Click on the "Console" tab
4. Type this command (replace `YOUR_API_KEY` with your actual key):
   ```javascript
   setFinnhubApiKey("YOUR_API_KEY")
   ```
5. Press Enter
6. You should see: "Finnhub API key saved successfully!"

**Option 2: Edit localStorage directly**
1. Open Developer Tools (F12)
2. Go to "Application" tab (Chrome) or "Storage" tab (Firefox)
3. Expand "Local Storage"
4. Click on your site's URL
5. Add a new entry:
   - Key: `finnhub_api_key`
   - Value: `YOUR_API_KEY`
6. Refresh the page

### 3. Verify It's Working

1. Start real-time updates in the app
2. Check the browser console - you should see:
   - "Using Finnhub API (free tier: 60 calls/minute)..."
   - "Finnhub: got X/34 tickers"

## How It Works

- **Primary**: Uses Finnhub API (if API key is set)
- **Fallback**: Uses Yahoo Finance if Finnhub fails or isn't configured
- **Rate Limit**: 60 calls/minute (plenty for 34 tickers with updates every 1-2 minutes)

## Troubleshooting

**"Finnhub API key not set"**
- Make sure you've set the API key using one of the methods above
- Check the browser console for any errors

**"Finnhub rate limit exceeded"**
- You're making more than 60 calls per minute
- The app automatically falls back to Yahoo Finance
- Wait a minute and try again

**Still using Yahoo Finance?**
- Check that your API key is correct
- Check the browser console for error messages
- Make sure you saved the API key (it persists in localStorage)

## Benefits

✅ **More Reliable**: Official API with clear rate limits  
✅ **Faster**: No proxy needed (direct API calls)  
✅ **Better Rate Limits**: 60 calls/minute vs Yahoo's strict limits  
✅ **Free**: No credit card required  

Enjoy more reliable real-time stock updates!
