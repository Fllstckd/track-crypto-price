# Curl Cryptocurrency Price Tracker

This script fetches the current price of a cryptocurrency (e.g., Bitcoin) from the CoinGecko API and displays it in the terminal. It also logs the results for future reference.

## Features
- Fetches cryptocurrency prices using the CoinGecko API.
- Parses JSON data using `jq`.
- Logs all activities for monitoring.
- Easy to customize for different cryptocurrencies and currencies.

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/curl-cryptocurrency-price-tracker.git
   cd curl-cryptocurrency-price-tracker
2. Install curl and jq:
  sudo apt install curl jq  # For Debian/Ubuntu
  sudo yum install curl jq  # For CentOS/RHEL
3. Run the script:
  ./track_crypto_price.sh

Example Output
Current bitcoin price: 27000 usd
