# ada_ex

The starter example — basic Ada syntax: variables, `Put_Line`, and
looping over command-line arguments.

## What it does

1. Prints a hello-world message
2. Prints a `String` variable
3. Loops over every command-line argument passed to the program and
   prints its index and value
4. Prints an `Integer` variable

## Build & run

```bash
cd ada_ex
alr build
alr run
```

Pass arguments through to see the loop in action:

```bash
alr run --args "one two three"
```

## Example output

```
Hello Word!
HELLO World!
 1: one
 2: two
 3: three
 1
```

(No arguments means the loop body never runs, and you'll just see the
two greeting lines followed by ` 1`.)
