# Contributing to this tap

This is a relaxed version of the official Homebrew guide to contributing to the core tap.

### Report a bug

* run `brew update` (twice)
* run and read `brew doctor`
* read [the Troubleshooting Checklist](https://github.com/Homebrew/brew/blob/master/docs/Troubleshooting.md#troubleshooting)
* open an issue

### Submit a `1.2.3` version upgrade for the `foo` formula

* check if the same upgrade has been already submitted by [searching the open pull requests for `foo`](https://github.com/tya/homebrew-tap/pulls?utf8=✓&q=is%3Apr+is%3Aopen+foo).
* `brew edit foo`
* edit [`url`](http://www.rubydoc.info/github/Homebrew/brew/master/Formula#url-class_method) and [`sha256`](http://www.rubydoc.info/github/Homebrew/brew/master/Formula#sha256%3D-class_method)/[`tag`](http://www.rubydoc.info/github/Homebrew/brew/master/Formula#url-class_method)
* don't bother with a `bottle` method
* `brew install --build-from-source foo`
* run `brew audit --strict foo` and fix any issues
* `git commit` with commit subject `foo 1.2.3`
* open a pull request

### Add a new formula for `foo` version `2.3.4` from `$URL`

* read [the Formula Cookbook](https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md#formula-cookbook) or: `brew create $URL` and make edits
* don't bother with a `bottle` method
* `brew install --build-from-source foo`
* `brew audit --strict foo`
* `git commit` with message formatted `foo 2.3.4 (new formula)`
* open a pull request

### Contribute a fix to the `foo` formula

* `brew edit foo` and make edits
* don't bother with a `bottle` method
* `brew uninstall --force foo`, `brew install --build-from-source foo`, `brew test foo`, and `brew audit --strict foo`
* `git commit` with message formatted `foo: fix <insert details>`
* open a pull request
