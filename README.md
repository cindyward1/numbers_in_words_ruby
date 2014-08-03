numbers_in_words: A Ruby method to translate numbers in numeric form into written words
=======================

### About
This project is for the [Ruby TDD assessment](http://www.learnhowtoprogram.com/lessons/ruby-tdd-assessment) at [Epicodus](http://www.epicodus.com/) Summer Session 2014.

The project is a [a Ruby method that translates numbers input in numeric form into output written words](http://www.learnhowtoprogram.com/lessons/numbers-in-words-in-ruby). For example, it translates 384 into "three hundred eighty four". The largest number it will handle is 999,999,999,999 = a quadrillion minus 1.  

### Setup
Clone this repository into a directory named (your working directory)/numbers_in_words_ruby. You must have Ruby 2.1.2 and/or rspec 3.0.3 already installed. Run the iMac's terminal application and change the working directory to (your working directory)/numbers_in_words. You can execute an interactive version of the the method using [the Ruby interpreter](https://www.ruby-lang.org/en/downloads/) by entering the following string into terminal application $: "ruby ./lib/numbers_in_words_ruby.rb". You can also test a non-interactive version of the method against its test cases found in (your working directory)/numbers_in_words_ruby/spec/numbers_in_words_spec.rb using [rspec](https://rubygems.org/gems/rspec) by entering the following string into terminal application $: "rspec" (this command will automatically execute any .rb file it finds in ./spec/). 

Please note that this repository has only been tested with [Google Chrome browser](http://www.google.com/intl/en/chrome/browser) version 36.0.1985.125 on an iMac running [Apple](http://www.apple.com) OS X version 10.9.4 (Mavericks). Execution on any other computing platform, browser or operating system is at the user's risk./

### Dependencies (NOT included in the repository; MUST be pre-installed)
* [ruby](https://www.ruby-lang.org/en/downloads/). Please use version 2.1.2.
* [rspec](https://rubygems.org/gems/rspec). Please use version 3.1.1.

### Author
Cynthia "Cindy" Ward

### Date Written
August 2, 2014

### Date Last Modified
August 3, 2014

### Licensing terms
Unlicense

### Files included in this repository (not including hidden files used by git such as the directory .git and the file .gitignore)
* LICENSE.md : Licensing terms (Unlicense)
* README.md : This file (written by author)
* Directory lib : numbers_in_words.rb (written by author, for execution using rspec), numbers_in_words_ruby.rb (written by author, for execution using ruby)
* Directory spec : numbers_in_words_spec.rb (written by author, for use with rspec)
