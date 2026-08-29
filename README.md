# Group 1

**CSC 436 — Programming Languages, Assignment 1**

Learning **Ada** — one example program at a time.

## About

This repo is where we're teaching ourselves Ada. We picked it because it's
a genuinely easy language to pick up: the syntax reads almost like plain
English, the compiler is strict (which catches mistakes early instead of
letting them blow up at runtime), and it was built for writing code that's
meant to be *correct*, not just fast to type.



## Project structure

Each example lives in its own folder as a **separate Alire project**
(its own `alire.toml` and `.gpr` file), so they build and run
independently of each other.

```
ada_examples/
├── ada_ex/               # Basics: variables, Put_Line, looping over CLI args
│   ├── src/ada_ex.adb
│   ├── ada_ex.gpr
│   ├── alire.toml
│   └── README.md
├── calc/                 # Simple calculator: input, case statement, exceptions
│   ├── src/calc.adb
│   ├── calc.gpr
│   ├── alire.toml
│   └── README.md
└── README.md
```

Each example folder has its own `README.md` with what it does and
sample output: [ada_ex/README.md](ada_ex/README.md),
[calc/README.md](calc/README.md).

More example folders will be added the same way as we learn new pieces
of the language.

## Requirements

This project uses [Alire](https://alire.ada.dev/), the Ada package and
build manager. It handles fetching the GNAT toolchain for you, so it's the
easiest way to get running.

- [Alire (`alr`)](https://alire.ada.dev/) — install instructions on their site

### Installing Alire

**macOS**

```bash
brew install alire
```

**Linux**

Grab the latest `.zip` from the [Alire releases page](https://github.com/alire-project/alire/releases),
extract it, and add the `bin/` folder to your `PATH`. Example:

```bash
curl -LO https://github.com/alire-project/alire/releases/latest/download/alr-linux-x86_64.zip
unzip alr-linux-x86_64.zip
sudo mv bin/alr /usr/local/bin/
```

**Windows**

Download the Windows installer (`.exe`) from the
[Alire releases page](https://github.com/alire-project/alire/releases) and
run it. Alternatively, if you have [Scoop](https://scoop.sh/) installed:

```powershell
scoop install alire
```

After installing, verify it worked on any platform:

```bash
alr --version
```

## Building & running

Since each example is its own Alire project, `cd` into its folder first,
then build/run from there.

```bash
cd ada_ex
alr build
alr run
```

```bash
cd calc
alr build
alr run
```

`ada_ex` also accepts command-line arguments, passed straight through:

```bash
alr run -- one two three
```

## Group

| Role | Name |
|------|------|
| GitHub / repo maintainer | Eyad |

Group #1 — learning Ada together, one small program at a time.
