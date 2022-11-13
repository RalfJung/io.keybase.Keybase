# Keybase

This repo hosts an **inofficial** flatpak version of [Keybase](https://keybase.io/)

Keybase is an encrypted messenger and file sharing software (but file sharing is not supported by this flatpak).

## Installing

This package is not on the official flathub, so you'll have to download, build, and install it yourself.
Clone the git repo, and then run:

```
flatpak-builder --user --install --force-clean builddir io.keybase.Keybase.yml
```

Now you can run it like any other flatpak.
