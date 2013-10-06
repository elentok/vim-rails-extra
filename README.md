vim-rails-extra
===============

This plugin adds extra features for rails development:

* convert ['asdf', 'asdf'] to %w{asdf asdf}
* run cucumber:
  
  * :CucumberWip - runs @wip scenarios
  * :CucumberAll - runs all scenarios

* TODO: a lot more stuff (autocomplete gems in Gemfile, ...)

Installation:
-------------

* When using Vundle, add these lines to your .vimrc:


        Bundle "tomtom/tlib_vim"
        Bundle "elentok/vim-rails-extra"
