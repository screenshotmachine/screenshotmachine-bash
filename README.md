# screenshotmachine-bash

This demo shows how to call online screenshot machine' API using simple bash script.

## Installation
First, you need to create a free/premium account at [www.screenshotmachine.com](https://www.screenshotmachine.com) website. After registration, you will see your customer key in your user profile. Also secret phrase is maintained here. Please, use secret phrase always, when your API calls are called from publicly available websites.  

Set-up your customer key and secret phrase (if needed) in the script:

```bash
CUSTOMER_KEY="PUT_YOUR_CUSTOMER_KEY_HERE"
SECRET_PHRASE="" #leave secret phrase empty, if not needed
```

Set other options to fulfill your needs: 

```bash
URL="https://www.google.com"
DIMENSION="1366x768" # or "1366xfull" for full length screenshot
DEVICE="desktop"
FORMAT="png"
CACHE_LIMIT="0"
DELAY="2000"
```
More info about options can be found in our [API guide](https://www.screenshotmachine.com/apiguide.php).  

 Usage
-----

Make this script executable by setting executable permissions and then run: 
```bash
./run.sh
```
Captured screenshot will be saved as ```output.png``` file in current directory.

#License

The MIT License (MIT)    