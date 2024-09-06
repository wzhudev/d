# Windows

## Configuration

- WSL2
  - Refers to this [doc](https://github.com/microsoft/WSL/issues/10753#issuecomment-1814839310).
  - [.wslconfig](./windows/.wslconfig)
- AutoHotKey
  - Down 1.x version from https://www.autohotkey.com/ .
  - [autohotkey.ahk](./windows/autohotkey.ahk)

## Remap CapsLock to Ctrl

Refer to this [post](https://wrong.wang/flight-rules/20190718-%E4%BA%A4%E6%8D%A2ctrl%E4%B8%8Ecaps-lock%E9%94%AE/). Changing Windows registry is better because it works in all applications, especially in games.

## WSL HTTP proxy

- Append `.ssh/config` with the content in [ssh-config.bak](./windows/ssh-config.bak).

