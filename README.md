Gem downloads
[![Gem Downloads](https://rubygems-badges.onrender.com/gems/just_the_gem)](https://rubygems-badges.onrender.com/gems/just_the_gem)
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="128" height="20" role="img" aria-label="gem downloads: 723"><title>gem downloads: 723</title><linearGradient id="s" x2="0" y2="100%"><stop offset="0" stop-color="#bbb" stop-opacity=".1"/><stop offset="1" stop-opacity=".1"/></linearGradient><clipPath id="r"><rect width="128" height="20" rx="3" fill="#fff"/></clipPath><g clip-path="url(#r)"><rect width="97" height="20" fill="#555"/><rect x="97" width="31" height="20" fill="#97ca00"/><rect width="128" height="20" fill="url(#s)"/></g><g fill="#fff" text-anchor="middle" font-family="Verdana,Geneva,DejaVu Sans,sans-serif" text-rendering="geometricPrecision" font-size="110"><text aria-hidden="true" x="495" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="870">gem downloads</text><text x="495" y="140" transform="scale(.1)" fill="#fff" textLength="870">gem downloads</text><text aria-hidden="true" x="1115" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="210">723</text><text x="1115" y="140" transform="scale(.1)" fill="#fff" textLength="210">723</text></g></svg>
# JustTheGem

Use this gem to create a skeleton for a simple ruby gem

## Install

    gem install just_the_gem

This will create a just_the_gem executable

## Usage

    just_the_gem date_defaulter

Will create a date_defaulter gem with some bare bones configuration

## Publish your gem in [RubyGems](https://www.rubygems.org)

    rake

## Publish your gem manually in [RubyGems](https://www.rubygems.org)

    gem build your_gem_name
    gem push your_gem_name-your-gem-version.gem

## To install your gem locally
   
    gem install --local your_gem_name-your-gem-version.gem

## To execute irb with your gem
    irb -r your_gem_name
## License

MIT
