# Let's make a Ruby web app!

Here we go:

## Step 1: Install Ruby

- Install XCode tools: ```xcode-select --install``` (from Terminal.app)
- We'll use this guide for OS X: [https://github.com/sstephenson/rbenv#homebrew-on-mac-os-x](https://github.com/sstephenson/rbenv#homebrew-on-mac-os-x)
- If you're on Windows, try this: http://railsinstaller.org/en

## Step 2: Set up your development environment
 
- If using rbenv, let's install Ruby 2.1.1. 
- In Terminal.app, enter: ```rbenv install 2.1.1``` (This'll take a few minutes.)

- ```ruby -v``` should show 2.1.1
- ```gem install bundler```

## Step 3: Fork my repo, clone it
 - This one: [https://github.com/ivarvong/lets-make-a-ruby-webapp](https://github.com/ivarvong/lets-make-a-ruby-webapp)
 - And clone it to your computer
 - ```cd``` into your cloned copy of the code repo. This'll depend on where the 
 - ```bundle``` will install the required libraries
 - ```rackup``` will run the web server on your laptop. 
 - And it's running! [http://localhost:9292](http://localhost:9292)

## Step 4: Hack on some Ruby code	
 - Edit the ```views/layout.erb``` file that provides the wrapper to each page
 - Edit the ```views/index.erb``` page that's rendered for ```/```
 - Make a new request handler (the ```get '/stuff' do``` part) and create the corresponding view in the ```/views``` folder.