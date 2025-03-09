# Facebook Ads Insights

## Project Overview
This project is a simple web application that allows users to input a Facebook Ad ID or Ad Set ID and retrieve key performance metrics from the Facebook Marketing API. The metrics are stored in an SQLite database for quick retrieval.

## Features
- Input an Ad ID or Ad Set ID
- Fetch relevant metrics from the Facebook Ads API
- Store recent queries in an SQLite database
- Display metrics in a simple HTML table

## Tech Stack
- **Backend:** Ruby on Rails
- **Frontend:** HTML, CSS, JavaScript
- **Database:** SQLite 3.31.1
- **API Integration:** Facebook Graph API

## Installation & Setup

### 1. Clone the Repository
```sh
 git clone https://github.com/yourusername/fb_ads_insights.git
 cd fb_ads_insights
```

### 2. Install Dependencies
```sh
 bundle install
```

### 3. Setup Database
```sh
 rails db:migrate
```

### 4. Start the Rails Server
```sh
 rails server
```

## Usage
1. Open `http://localhost:3000` in your browser.
2. Enter a valid Access Token and Facebook Ad ID.
3. Click "Fetch Insights" to retrieve and display ad performance metrics.

## AI Assistance
- ChatGPT was used to get a suggestion on what Facebook API can I use.
- Copilot was used for minor code optimizations and auto-suggestions.
