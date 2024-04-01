# A Elm playground and notes

https://elm-lang.org/ && https://github.com/elm/compiler

Notes :
- it is a domain specific programming language, not a general purpose programming language
- it is aimed at creating browser based graphical user interfaces
- Functional Programming
- compiler static type checking
- it is influenced by Haskell, Ocaml and F#
- it has its own Virtual DOM implementation
- Javascript interoperability
- It cannot do server-side development as of today (April 2024)
- It has inspired the Gren programming language ( https://github.com/Neal-C/hello-gren )
- The compiler is written in Haskell
- compiler as assistant philosophy
- opioniated and conventioned code style, like GO fmt
- MVU pattern, Model View Update

"Smaller assets means faster downloads and faster page loads, so Elm does a bunch of optimizations to make small assets the default. Just compile with the --optimize flag and let the compiler do the rest. No complicated set up"

Goals:
- no runtime exceptions

### Instructions

Requirements:  Docker or Elm = 0.19.1

#### With Docker

clone my repository

```shell
git clone git@github.com:Neal-C/hello-elm.git
cd hello-elm
```

build and run with Docker

##### Web page example
```shell
docker build -t neal-c-elm:latest .
docker run -d --name neal-c-elm -p 8080:80 neal-c-elm:latest 
xdg-open http://localhost:8080
```

#### With elm installed locally

See docs: https://guide.elm-lang.org/install/elm.html

and install elm locally on your machine

```shell
git clone git@github.com:Neal-C/hello-elm.git
cd hello-elm
elm make src/Main.elm
# inspect your resulting index.html
```
