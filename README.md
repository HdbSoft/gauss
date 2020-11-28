# The Gauss scriptable calculator
Gauss is a simple and fast scriptable calculator, made in **C**, **lex** and **YACC**. Gauss has lots of operations, such as *log x*, *max(x, y)* and more...


### Getting Gauss
If you want to install Gauss in your device, you have 2 options: get the pre-compiled binaries or build it from source.

###### Building Gauss
The first thing you need to do is to clone the Gauss GitHub repository:
```bash
$ git clone https://github.com/HdbSoft/gauss.git Gauss
$ cd Gauss
```

And then use GNU Make to build Gauss:
```bash
$ make
```


### Gauss reference
If you want to create your own Gauss script, you have to know the basic syntax. Every formula must end with `=`, and must contain ONLY NUMBERS.

###### Operators
- `+`: Addition
- `-`: Subtraction
- `*`: Multiplication
- `/`: Division
- `^`: Exponentiation

###### Functions
- `max(x, y)`: Maximum of 2 numbers
- `min(x, y)`: Minimum of 2 numbers
- `log x`: Logarithm of x
- `sin x`: Sine of x
- `cos x`: Cosine of x
- `tan x`: Tan of x


### Gauss file tree
- **source/parser.y:** Gauss parser made in YACC
- **source/scanner.l:** Gauss scanner made in lex
- **source/cli.h:** Gauss CLI C module
- **source/math.h** Gauss math module
- **tests/addition.math:** Addition tests
- **tests/substraction.math:** Substraction tests
- **tests/multiplication.math:** Multiplication tests
- **tests/division.math:** Division tests
- **tests/exponentiation.math:** Exponentiation tests

<br>
<br>

I hope you liked the Gauss calculator.