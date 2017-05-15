# little-schemer
Things written while reading The Little Schemer.

Code snippets closely reflect the examples offered in the various chapters of *The Little Schemer*. Most importantly, the examples
aim to reflect some of the dependencies in the "from scratch" approach to Scheme and coputational fundamentals that the book takes by using the `(require "../path/to/file.rkt)` syntax of the [Racket language](https://racket-lang.org/).

The code was written and interactively poked and prodded using the DrRacket IDE that comes bundled with the download provided on the official Racket site. It's important to be able to follow along and code as one works through this book; Racket seems like the fastest way to get started. Simply open any of the included files in the DrRacket IDE and click "Run." If the directory structure matches that of this repository, everything should work, even the various imports. The code was designed with the following modus operandi:

*Write the function and test it using the REPL (Read Evaluate Print Loop) offered by the IDE, fixing things and becoming intimitely familiar with the minimal syntax of Racket along the way.*

Mutually recursive applications (functions) are defined in the same file because Racket does not allow cyclical dependencies in the `require` statements.
