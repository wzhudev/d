# Windows Setup

## Modify CapsLock

Add contents in caps.reg to Windows Registry, to map CapsLock to LCtrl.

## Configuration

Change [Windows Terminal](https://github.com/catppuccin/windows-terminal) themes.

After all applications have been installed, change "command" of Ubuntu profile to

```powershell
wsl.exe ~ -d Ubuntu -- zellij
```

so it can open a terminal with Zellij opened.

## WSL

Put [.wslconfig](./.wslconfig) under user home directory, referring to this [documentation](https://github.com/microsoft/WSL/issues/10753#issuecomment-1814839310).

Refer to [linux/README.md](../linux/README.md) to setup CLI applications.
