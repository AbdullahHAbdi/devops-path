# 02 - Bash Scripting

Automate everything. Bash scripting turns repetitive tasks into one-click solutions.

## What You'll Learn

- Variables, arguments, and user input handling (`$1`, `$2`, `read -p`)
- Conditionals (`if`, `elif`, `else`) and file/directory test flags (`-f`, `-d`, `-r`, `-w`, `-x`)
- Loops (`for`, `while true`) for iteration and continuous monitoring
- Functions for organizing reusable logic
- Arithmetic operations using `$(( ))` syntax
- Text processing with `grep`, `awk`, `sed`, `wc`, and `sort`
- File system automation including backups, archiving with `tar`, and rotation with `ls`, `tail`, and `xargs`
- Real-time directory monitoring using MD5 checksums and `diff`
- Configuration file parsing by splitting `KEY=VALUE` pairs
- Interactive menu-driven scripts using `while true` loops
- Error handling with input validation and `exit 1`


## Folder Structure

```
02-bash/
├── bash-battle-arena/          # Bash Battle Arena levels 1–15 solutions
└── scripting-challenges/       # Bash scripting challenge solutions
```

## Projects

### Bash Battle Arena (Levels 1–15)
A progressive scripting game covering argument parsing, file sorting, multi-file searching, directory monitoring, disk space reporting, configuration parsing, backup rotation, interactive menus, and three boss battle challenges that combined multiple skills.

### Scripting Challenges (1–4)
Hands-on scripts built from scratch covering a basic arithmetic calculator with division by zero handling, file and directory automation with dynamic timestamps, a file permission checker tested across all `chmod` combinations, and a `.txt` file backup script with timestamped directories and file count reporting.

## Resources

- [Bash Reference Manual](https://www.gnu.org/software/bash/manual/)
- [ShellCheck](https://www.shellcheck.net/) – Lint your scripts
