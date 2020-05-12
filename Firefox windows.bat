REM -- Opens windows in order with TIMEOUT

@echo off

REM -- Firefox window standard
start "" "C:\Program Files\Mozilla Firefox\firefox.exe" -url ^
	"https://www.reddit.com/" ^
	"https://www.facebook.com/" ^
	"https://www.youtube.com/" ^
	"https://github.com/PeterGeras" ^
	"https://www.datacamp.com/community/tutorials/git-push-pull"

TIMEOUT /T 2

REM -- Firefox window trade and news
start "" "C:\Program Files\Mozilla Firefox\firefox.exe" -url ^
	"https://www2.commsec.com.au/portfolio/" ^
	"https://www2.commsec.com.au/quotes/charts?stockCode=BBUS&exchangeCode=ASX" ^
	"https://www2.commsec.com.au/quotes/charts?stockCode=BBOZ&exchangeCode=ASX" ^
	"https://www.google.com/search?q=ASX200" ^
	"https://www.google.com/search?q=SP500" ^
	"https://www.xe.com/currencycharts/?from=AUD&to=USD&view=1W" ^
	"https://finance.yahoo.com/chart/BTC-USD" ^
	"https://www.bbc.com/news/world" ^
	"https://www.abc.net.au/news/australia/" ^
	"https://www.9news.com.au/coronavirus" ^
	"https://www.worldometers.info/coronavirus/#countries"
	

TIMEOUT /T 2

REM -- Firefox blank window
start "" "C:\Program Files\Mozilla Firefox\firefox.exe"

