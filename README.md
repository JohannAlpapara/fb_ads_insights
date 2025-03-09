# Facebook Ads Insights
- **Loom Link** https://www.loom.com/share/38d022b429594b3eb9ed47376f3bfb3c?sid=056f83c3-60d5-403b-b7b6-9be2e568e2b5
- **DEMO Link:** https://d195-202-175-223-84.ngrok-free.app/

- **Get your Access Token at Facebook Developers - Graph API Explorer** https://developers.facebook.com/tools/explorer/976380711300059/?method=GET&path=me%3Ffields%3Dimpressions%2Cclicks%2Cconversions%2Ccost_per_result%2Cfrequency%2Cad_spend&version=v22.0

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
 git clone https://github.com/JohannAlpapara/fb_ads_insights.git
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
