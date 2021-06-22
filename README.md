# Cronofy bitly

Shorten URL by generate slug (short code) and redirect shorten links to original URL

## Tech stack

- Ruby v2.7 (should able to run in v2.5)
- Sqlite3
- Sinatra
- ActiveRecord
- Rspec

## Installation

Make sure you have Ruby and Sqlite3 installed

```
$ git clone <repo>
$ bundle install
$ rake db:create db:migrate
```

## Run test

```
$ APP_ENV=test rake db:create db:migrate
$ rspec spec
```

## Generate shorten url

```
$ rake shorten_url https://cronofy.com
<slug1>
$ rake shorten_url https://cronofy.com
<slug1:same-slug>
$ rake shorten_url https://google.com
<slug2:another-slug>
```

## Redirect

```
$ rackup -p 3000
$ open http://localhost:3000/r/<slug1> # open browser and redirect to https://cronofy.com
$ open http://localhost:3000/r/<slug2> # open browser and redirect to https://google.com
```

## Improvement

- Add index to Redirection.url to search existing url
  Consider to generate hash from url (e.g. md5) and store in new column for searching
- Add cache for faster slug-url searching (e.g. redis, memcached)
