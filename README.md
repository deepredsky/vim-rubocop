# Vim RuboCop

VIM plugin to run [RuboCop](https://github.com/bbatsov/rubocop) and displays the results in a quickfix window. Most of this is same as [Vim Rubocop](https://github.com/ngmy/vim-rubocop) plugin. I just wanted to add additional features while learning **vimscript**

## Usage

```
:call RuboCop " Runs rubocop on the current buffer
:call RuboCopAll " Runs rubocop on the whole project
```

## TODO

- [x] Run rubocop on whole project
- [x] Handle bundled rubcop
- [ ] Pass custom args to rubocop
- [x] Run rubocop async
- [ ] Support for vim < 8
