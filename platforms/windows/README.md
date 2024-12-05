# Windows Setup

## Install Applications

```powershell
winget install --id Git.Git -e --source winget
winget install --id GitHub.cli

python # Install Python3
```

Install the latest version [Node.js](https://nodejs.org/zh-cn).

## Configuration

Add contents in caps.reg to Windows Registry, to map CapsLock to LCtrl.

### Windows Terminal

Change [Windows Terminal](https://github.com/catppuccin/windows-terminal) themes.

After all applications have been installed, change "command" of Ubuntu profile to

```powershell
wsl.exe ~ -d Ubuntu -- zellij
```

so it can open a terminal with Zellij opened.

### 小鹤双拼

> [!NOTE]
> If you cannot read this, just ignore it.

双击 [xiaohe.reg](./xiaohe.reg) 文件，将小鹤双拼输入法添加到注册表，然后修改微软拼音的输入模式。

### WSL

Put [.wslconfig](./.wslconfig) under user home directory, referring to this [documentation](https://github.com/microsoft/WSL/issues/10753#issuecomment-1814839310).

Refer to [linux/README.md](../linux/README.md) to setup CLI applications.
