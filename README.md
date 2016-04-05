V<sup>3</sup> API
==========

This is a simple, bare-bones API and list app for SNDMakes SF. It serves as a backend for Visualization Verification View, a tool that creates and attaches metadata to stories or visualizations based on data.

## What is uses

* Rails 4.2.6
* Ruby 2.2.0
* A bunch of other boilerplate stuff spec'd out in the `Gemfile`

## What you'll need before you start developing

Before you deploy the app locally, you'll need to [install Ruby](https://github.com/codeforamerica/howto/blob/master/Ruby.md) and [Bundler](http://bundler.io/). You'll also need some sort of Ruby environment manager, like [RVM](https://rvm.io/) or [RBENV](https://github.com/rbenv/rbenv).

## Steps to develop locally

Clone down the repo, `cd` into the root of the repo, and get going:

```
$ bundle install
$ bundle exec bin/rake db:migrate
$ bundle exec bin/rails server
```

You should now have a server running at [localhost:3000](http://localhost:3000). Have fun!

## Deploying to production

This project lives on Heroku at https://v3-api.herokuapp.com. If you are authorized, you can `git push heroku master` to deploy. Remember to run database migrations on Heroku if you checked a migration in on your feature branch.
