## Install

- Install Coq using OPAM: `opam install coq` (More detail information is [here](https://coq.inria.fr/opam-using.html))
- There are two choices to use Coq. One is Emacs and the other is [CoqIDE](https://coq.inria.fr/refman/practical-tools/coqide.html). I'll explain Emacs:
  * (in Ubuntu) `apt install emacs`
  * (in Mac OS X) `brew install emacs`
  * ...
- Use **" @jeehoonkang 's `~/.emacs.d/init.el`"**.
  * [init.el](./init.el)
  * Just COPY & PASTE to your `~/.emacs.d/init.el`.
  * And replace `'(coq-prog-name "/home/jeehoonkang/.opam/4.07.0/bin/coqtop")` with your correct path printed out by `which coqtop`.

## Useful key-bindings

- `C-c C-RET` : process the text up to the current position of the point
- `C-c C-n` :  process the text up to the next command
- `C-c C-u` : undo processing
- `C-c C-b` : process the rest of the buffer
- `C-c C-c` : stop processing
- `C-c C-a C-l` : "Locate" query
- `C-c C-a C-p` : "Print" query
- `C-c C-a C-a` : "SearchAbout" query

You can learn more commands [here](https://proofgeneral.github.io/doc/master/userman/index#Top).
