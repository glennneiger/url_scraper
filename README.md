# README

This is an app where you input a url and it grabs the source code from the page. It gives a list of tags in the source code. You can click on an individual tag and it will highlight that tag in the source code displayed. This uses the Nokogiri gem to parse the URL and the Coderay gem to add in HTML to the code.

This was a little bit of an experiment as I am used to writing Rails/Backbone/Mustache apps and here I wrote a vanilla Rails app.

### VERSIONS

* Ruby 2.2.3
* Rails 4.2.4

### INSTALLATION

If you want to install this locally, you'll need a Ruby version manager such as rbenv and the gem manager bundler to bundle the gems. Nokogiri is sometimes problematic to install, so please read installation instructions here: http://www.nokogiri.org/tutorials/installing_nokogiri.html. To run the server, type "bin/rails server" in the console. The current app does not require a database.

### TO DO LIST:

1. Client-side validations on the home page to check if URL has HTTP, etc.
2. Server-side validations on the home page if the URL does not exist.
3. Render 404 error pages if page is not found
4. More satisfying button clicks on the Source Code page
..* Keep the button highlighted after it's clicked.
..* Create an anchor point on the first highlighted tag so that when you click the tag button, it scrolls you down to the first highlighted tag.
5. Long-term: protections in place so that my site can't be used too many times in succession to grab data from another site and essentially perform a DDOS attack.
