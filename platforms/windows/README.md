# Windows Setup

## Install Applications

Install applications using [winget](https://winget.run):

```powershell
winget install --id Git.Git -e --source winget
winget install --id GitHub.cli
winget install -e --id Rustlang.Rustup
winget install -e --id CoreyButler.NVMforWindows
winget install -e --id Microsoft.VisualStudioCode
```

And some other applications (just to make Windows easier to use, not related to development):

- Install **Auto Dark Mode** from Microsoft Store.
- Install **Microsoft PowerToys** from Microsoft Store.
- Install **[Window Switcher](https://github.com/sigoden/window-switcher)**.

## Configuration

Add contents in caps.reg to Windows Registry, to map CapsLock to LCtrl.

### Windows Terminal

Change [Windows Terminal](https://github.com/catppuccin/windows-terminal) themes.

After all applications have been installed, change `command` of the Ubuntu profile to:

```powershell
wsl.exe ~ -d Ubuntu -- zellij
```

so it can open a terminal with Zellij opened.

### Disable Win+L

Double click [disable-win-l.reg](./disable-win-l.reg) to disable <kbd>Win + L</kbd> which will make Windows sleep.

### WSL

Put [.wslconfig](./.wslconfig) under user home directory, referring to this [documentation](https://github.com/microsoft/WSL/issues/10753#issuecomment-1814839310).

Refer to [linux/README.md](../linux/README.md) to setup WSL.

### PowerToys

Map CapsLock to LCtrl.

### Window Switcher

Put [window-switcher.ini](./window-switcher.ini) next to window-switcher.exe.
