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
If you want to create your own Gauss script, you have to know the basic syntax. Every formula must end with `=`, and must contain ONLY NUMBERS, NOT STRINGS.

###### Operators
- `+`: Addition
- `-`: Subtraction
- `*`: Multiplication
- `/`: Division
- `^`: Exponentiation

###### Functions
- `max(x, y)`: Maximum of 2 numbers
- `sqrt x`: Square root of x
- `ln x`: Natural logarithm of x
- `log x`: Logarithm of x (base 10)
- `log2 x`: Logarithm of x (base 2)
- `exp x`: e raised to x
- `abs x`: Absolute value of x
- `floor x`: Floor of x
- `ceil x`: Ceil of x
- `sin x`: Sine of x
- `sinh x`: Hyperbolic sine of x
- `asin x`: Arcosine of x
- `asinh x`: Arco hyperbolic sine of x
- `cos x`: Cosine of x
- `cosh x`: Hyperbolic sine of x
- `acos x`: Arcocosine of x
- `acosh x`: Arco hyperbolic cosine of x
- `tan x`: Tan of x
- `tanh x`: Hyperbolic tan of x
- `atan x`: Arcotan of x
- `atanh x`: Arco hyperbolic tan of x


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
- **tests/trigonometry.math:** Trigonometry tests
- **tests/functions.math:** Functions tests


### [MIT license](LICENSE.md)

###### Copyright (c) 2020 HdbSoft

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

<br>
<br>

I hope you liked the Gauss calculator.