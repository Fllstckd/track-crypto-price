#!/bin/bash

# Configuration
COIN="bitcoin"
CURRENCY="usd"
LOGFILE="./logs/crypto_prices.log"

# Create logs directory if it doesn't exist
mkdir -p "./logs"

# Function to log messages
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

# Fetch cryptocurrency price
response=$(curl -s "https://api.coingecko.com/api/v3/simple/price?ids=$COIN&vs_currencies=$CURRENCY")

# Parse JSON using jq
if ! command -v jq &> /dev/null; then
    echo "Error: 'jq' is not installed. Please install it first."
    log_message "Error: 'jq' is not installed."
    exit 1
fi

price=$(echo "$response" | jq ".$COIN.$CURRENCY")

# Check if price was fetched successfully
if [ -z "$price" ] || [ "$price" == "null" ]; then
    echo "Failed to fetch the price of $COIN."
    log_message "Error: Failed to fetch the price of $COIN."
    exit 1
fi

# Display and log the result
echo "Current $COIN price: $price $CURRENCY"
log_message "Success: Fetched $COIN price: $price $CURRENCY"
