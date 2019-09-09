# Minimal Slack Ruby bot

The purpose of this repository is to provide the minimal code necessary to reproduce a bug where a bot built with [Slack-Ruby-Bot](https://github.com/slack-ruby/slack-ruby-bot) where the bot responds more than once to text commands.

## Steps to reproduce

1. Create a new Slack app with a bot user. Install the app to your Slack workspace.

2. Run the app passing the oauth token of the bot:

```
git clone git@github.com:jillguyonnet/slack_ruby_bot_minimal.git
cd slack_ruby_bot_minimal
bundle install
bundle exec rake db:setup
SLACK_API_TOKEN=<both_oauth_token> foreman start
```

3. In Slack, check that the app is running as expected by issuing a few commands:

* `hi`: built in with `slack-ruby-bot`
* `show`: print a list of items
* `add`: add an item to the list
* `clear`: clear the list

That should work normally, i.e. only one response per issued command.

4. Let the app running for ~1 hour without any interaction.

5. Test the various commands again. More often than not, an issue will appear where the bot responds twice to issued commands.
