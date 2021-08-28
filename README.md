# ob-fish

ob-fish enables [orb-babel](https://orgmode.org/worg/org-contrib/babel/intro.html) support for evaluating [fish](https://fishshell.com/docs/current) code.

```org
#+begin_src fish
function say_hello
    echo Hello $argv
end

say_hello "world"
#+end_src
```

```org
#+RESULTS:
  : Hello world
```
