# calc

A tiny command-line calculator. It's a good introduction to Ada's
`case` statement, exceptions, and numeric `Get`/`Put` I/O.

## What it does

1. Prompts for an integer `X`
2. Prompts for an integer `Y`
3. Prompts for an operand: `+`, `-`, `*`, `/`, or `%`
4. Prints `X operand Y = result`

If the operand isn't one of the five recognized characters, the program
raises a user-defined exception (`Root_Error`) and exits instead of
guessing what you meant.

## Build & run

```bash
cd calc
alr build
alr run
```

## Example output

**Valid input:**

```
Give me an X integer?
2
Give me an Y integer?
2
Choose an operand (+,-,*,/,%)
+
 2 + 2 = 4
```

**Invalid operand (raises `Root_Error`):**

```
Give me an X integer?
2
Give me an Y integer?
2
Choose an operand (+,-,*,/,%)
rfsdf
Please Select Operand, Exiting Program

raised CALC.ROOT_ERROR : calc.adb:50
```

The trailing lines after the raise are Ada's symbolic traceback
(enabled via the `-Es` binder switch in `calc.gpr`) — they show the
exact call stack at the point the exception was raised, which is handy
for debugging.
