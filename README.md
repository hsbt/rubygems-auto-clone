# rubygems-ghq

A RubyGems plugin that automatically clones the GitHub or GitLab repository of gems when they are installed using [ghq](https://github.com/x-motemen/ghq).

## Installation

```
$ gem install rubygems-ghq
```

## How It Works

After installing this plugin, whenever you install a gem, it will automatically use ghq to clone the GitHub/GitLab repository specified in the gem's `homepage` or `source_code_uri` metadata.

Example:

```
$ gem install rack
Successfully installed rack-3.0.8
Cloning repository for rack: https://github.com/rack/rack
```

## Requirements

- [ghq](https://github.com/x-motemen/ghq) must be installed
- The gem being installed must have a `homepage` or `source_code_uri` pointing to a GitHub or GitLab repository

## License

MIT

## Author

SHIBATA Hiroshi (@hsbt)