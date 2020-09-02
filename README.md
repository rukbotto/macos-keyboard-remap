# macOS Keyboard Remap

Script for remapping keyboard keys on macOS.

For now, this script remaps some of the `FX` keys to the volume and playback media keys, simulating the apple keyboard media keys:

- `F7` maps to the previous track media key.
- `F8` maps to the play/pause media key.
- `F9` maps to the next track media key.
- `F10` maps to the mute media key.
- `F11` maps to the decrease volume media key.
- `F12` maps to the increase volume media key.

The above mappings only applies to Leopold FC660C mechanical keyboards. Mappings for other mechanical keyboards can be added in the future.

## Installation

Clone this repo:

```
$ git clone https://github.com/rukbotto/macos-keyboard-remap.git $HOME/macos-keyboard-remap
```

Next, create a `bin/` directory in your home folder:

```
$ mkdir $HOME/bin
```

Then, create a link inside the `bin/` directory, pointing to the `remap.sh` script:

```
$ ln -svf $HOME/macos-keyboard-remap/remap.sh $HOME/bin/remap
```

Finally, create a link inside the `~/Library/LaunchAgents/` directory, pointing to the `macos-keyboard-remap.plist` file:

```
$ ln -svf $HOME/macos-keyboard-remap/macos-keyboard-remap.plist $HOME/Library/LaunchAgents/macos-keyboard-remap.plist
```

This plist file will make sure the `remap` script automatically runs the next time you login.

## Usage

If you want to execute the `remap` script directly, you can do so like this:

```
$ $HOME/bin/remap
```

Or like this, if you have `$HOME/bin` directory in your `$PATH`:

```
$ remap
```
