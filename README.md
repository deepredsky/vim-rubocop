# Vim RuboCop

VIM plugin to run [RuboCop](https://github.com/bbatsov/rubocop) and displays the results in a quickfix window. Most of this is same as [Vim Rubocop](https://github.com/ngmy/vim-rubocop) plugin. I just wanted to add additional features while learning **vimscript**

## Usage

```
:RuboCop " Runs rubocop on the current buffer
:RuboCopAll " Runs rubocop on the whole project
:RuboCopAll --display-cop-names" Run rubocop with custom options
:RuboCopFix " Fix rubocop issues for current file. This will not be async.
```

By default it will look at Gemfile and use `bundle exec rubocop --format emacs`
if rubocop is specified in the Gemfile, otherwise it will fallback to using
`rubocop --format emacs`. This can be overridden

```
let g:rubocop_cmd = "bundle exec rubocop --rails --display-cop-names"
```

NOTE that emacs formatter is required for this plugin to populate quickfix list

## TODO

- [x] Run rubocop on whole project
- [x] Handle bundled rubcop
- [x] Pass custom args to rubocop
- [x] Run rubocop async
- [ ] Support for vim < 8
