# homebrew-tap
 Homebrew Tap of Akeyless CLI bababa

## What is Homebrew?

Package manager for macOS (or Linux), see more at https://brew.sh

## What is a Tap?

A third-party (in relation to Homebrew) repository providing installable
packages (formulae) on macOS and Linux.

See more at https://docs.brew.sh/Taps

## How do I install Akeyless CLI using Homebrew (MacOS Only)?

```sh
brew tap akeylesslabs/tap
brew install akeylesslabs/tap/akeyless
```

Note: to clone the tap via SSH you will need to use:

```sh
brew tap akeylesslabs/tap https://github.com/akeylesslabs/homebrew-tap
```

While you may search across taps, it is necessary to always use
fully qualified name (incl. the `akeylesslabs/tap/` prefix)
when refering to formulae in external taps such as this one
outside of search.
