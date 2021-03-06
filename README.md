# Code for *The Little Schemer*

Things written while reading *The Little Schemer*.

*The grand payoff of this book: the applicative-order Y combinator.*
```scheme
(define Y
  (lambda (f)
    ((lambda (x) (x x))
     (lambda (h) (f (lambda (g) ((h h) g)))))))
```

*Another payoff for reading this book: the normal-order (lazy) Y combinator.*
```scheme
(define Y
  (lambda (f)
    ((lambda (x) (f (x x)))
     (lambda (x ) (f (x x))))))
```

"One of the most unique and effective pedagogic books ever written," says [Bret Victor](http://worrydream.com/#!/Links).

Code snippets closely reflect the examples offered in the various chapters of *The Little Schemer*. Most importantly, the examples
aim to reflect the dependencies among concepts that arise naturally in the *built from scratch* approach that the book takes to introducing Scheme and computational fundamentals.

The use of the `(require "../path/to/file.rkt)` syntax of the [Racket language](https://racket-lang.org/) allows ideas to touch those introduced at an earlier part of the book; an idea understood in one concept is given another opportuntity for its usefulness and applications to be appreciated.

The code was written and interactively poked and prodded using the DrRacket IDE that comes bundled with the download provided on the official Racket site. It's important to be able to follow along and code as one works through this book; Racket seems like the fastest way to get started. Simply open any of the included files in the DrRacket IDE and click **Run**. If the directory structure matches that of this repository, everything should work, even the various `require` statements. The code was written with the following modus operandi:

*Write the function and test it using the REPL (Read Evaluate Print Loop) offered by the IDE, fixing things and becoming intimitely familiar with the minimal syntax of Racket along the way.*

Mutually recursive applications (functions) are defined in the same file because Racket does not allow cyclical dependencies in the `require` statements.

## See also

* [Beautiful Racket](http://beautifulracket.com/) and the [code](https://github.com/bmershon/beautiful-racket) written while working through Matthew Butterick's wonderful tutorials.
* [My attempt](https://bl.ocks.org/bmershon/d332ba9b06975562979efba7b367e162) at building on Mike Vanier's [blog post](http://mvanier.livejournal.com/2897.html) regarding the machinery of the Y Combinator.
