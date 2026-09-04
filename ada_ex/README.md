# ada_ex

The starter example — basic Ada syntax: variables, `Put_Line`,
looping over command-line arguments, and defining/calling functions.

## What it does

1. Prints a hello-world message
2. Prints a `String` variable
3. Loops over every command-line argument passed to the program and
   prints its index and value
4. Prints an `Integer` variable
5. Defines several functions and calls them:
   - `Add` — returns the sum of two integers
   - `Square` — uses a local variable to return `N * N`
   - `Greet` — returns a `String` built with `&`
   - `Increment` — uses a default parameter value (`Step := 1`)

## Functions

In Ada, a **function** always returns a value (a **procedure** does
not). Functions are declared in the declarative part (before `begin`):

```ada
function Add (A : Integer; B : Integer) return Integer is
begin
   return A + B;
end Add;

-- Default parameter: Step is 1 unless the caller passes one.
function Increment (Value : Integer; Step : Integer := 1) return Integer is
begin
   return Value + Step;
end Increment;
```

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
Add(2, 3) = 5
Square(5) = 25
Hello, Ada!
Increment(10) = 11
Increment(10, 5) = 15
```

(No arguments means the loop body never runs, so the numbered lines are
skipped — but the greeting lines, the ` 1`, and the function output
below still appear.)
