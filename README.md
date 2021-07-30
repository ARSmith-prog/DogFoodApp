# DogFood

## Built with

- Ruby 2.5.7
- Rails 6.1.3.2

Bootstrap is used for some of the frontend.

## Summary

Welcome to the ChowMeDown dog food application, made to give users access to dog food recipes.

Users will create an account and from there have access to dog food recipes as well as be able to add phots of their
dogs.

## Tooling

Eslint

```bash
npm run lint
```

Prettier

```bash
npm run format
```

## Running App

Use Homebrew to install Rbenv.
To install Homebrew, open Terminal and run the following command:

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

To check if Homebrew is installed, run:

```bash
brew --version
```
Install rbenv 

```bash
brew install rbenv
```
Install Ruby

```bash
rbenv install 2.5.7
```

If you do not already have bundler, install it

```bash
gem install bundler
```

run bundle install 

```bash
bundle install
```

Install Yarn

```bash
brew install yarn
```

Setup database

```bash
bundle e rails db:setup
```

Run Rails server

```bash
bundle e rails s
or
rails s
```

When the server is running, try to access http://localhost:3000, and it should work in many cases!

How the project should look:
![cmd6](https://user-images.githubusercontent.com/55244590/127715267-bdf550ca-fe3c-43be-b43b-d6c4054443c1.jpg)
![cmd3](https://user-images.githubusercontent.com/55244590/127715273-410ec7d3-6d39-4e2c-899a-e61e34da4e47.png)
![cmd7](https://user-images.githubusercontent.com/55244590/127715277-d8851561-4d2f-44e6-8be0-aaa9208473da.png)
![cmd2](https://user-images.githubusercontent.com/55244590/127715258-dc346296-bfd8-46c6-bcb4-1a337c3f0a4d.png)
