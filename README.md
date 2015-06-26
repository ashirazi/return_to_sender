# ReturnToSender

Email Address Validation Made Simple

Why yet another email validator (YAEV)? Well, this one does not depend on
incomplete regular expressions to do the job (see the blog post). It also tries
to go beyond simple validation and provides some nice Google-style "did you
mean?" functionality. I hope you find it useful.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'return_to_sender'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install return_to_sender

## Usage

Since most email addresses are handled as strings, most of this API is simple
string processing...
```ruby
Email('joe@something.com').valid?
=> true
Emails('joe@something.com, sally').valid?
=> [true, false]
Emails.parse('joe@something.com, sally')
=> ['joe@someting.com', nil]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake rspec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/ashirazi/return_to_sender

