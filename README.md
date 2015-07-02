# PUSHBOARD

[Pushboard](http://www.pushboardportland.com) is weekly newsletter of curated events in Portland, OR. This Rails app lets users subscribe to the mailing list and submit events to be included in future newsletters.

Currently, the app leverages the [Mailgun API](http://www.mailgun.com/) to send an email to the newsletter coordinator. In the future, admins should be albe to manage subscribers and submitted events, build newsletters, and send them out to subscribers--all from the app.

## Setup
In your terminal, clone this repo and navigate to the new directory:

```console
$ clone https://github.com/nrbernard/pushboard.git
$ cd pushboard/
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Run [Bundler](http://bundler.io/) to install the dependencies:

```console
$ bundle
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the Rails server:

```console
$ rails s
```
The site should now be available at [localhost:3000](localhost:3000).

The current live site is at [http://www.pushboardportland.com](http://www.pushboardportland.com).

## Contributors

Here's a list of features on the to do list:

* Build newsletters from submitted events
* Send newsletters to specific subscribers
* ~~Update and delete subscribers~~
* ~~Update and delete events~~

##Author
[Nick Bernard](http://nrbernard.com)

##License
MIT

