# Introduction

This repository stores templates of dev shell.

# Usage

Please ensure that your NixOS has enabled `flake` features before running the following commands.

## Use Default Template

```bash
nix flake init -t github:Fovir-GitHub/DevShell
```

## Select a Specific Environment

```bash
nix flake init -t github:Fovir-GitHub/DevShell#<environment>
```

Replace `<environment>` with the specific environment name. For example, to use `Node.js` template, the command should be:

```bash
nix flake init -t github:Fovir-GitHub/DevShell#nodejs
```

The environments currently supported are:

| Name         | `<environment>` Value |
| ------------ | --------------------- |
| ARM          | `arm`                 |
| C/C++        | `c-cpp`               |
| Front End    | `frontend`            |
| Go           | `go`                  |
| Hugo         | `hugo`                |
| Java         | `java`                |
| MySQL        | `mysql`               |
| Next.JS      | `nextjs`              |
| Node.JS      | `nodejs`              |
| Python       | `python`              |
| React + Vite | `react-vite`          |
| Rust         | `rust`                |
| SUI          | `sui`                 |
| SVG          | `svg`                 |
| Tex          | `tex`                 |
| TypeScript   | `typescript`          |
| Zola         | `zola`                |

## After Initialization

After initializing the template, it can be modified to meet the environment requirements. When everything is done, run the command to enter the `DevShell`.

```bash
nix develop
```

Or using `direnv`:

```bash
direnv allow
```
