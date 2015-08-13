# Forget-Me-Not 🌸

A smart, contextualised todo list. Designed to live in your terminal, and to be in your face.

## Usage

```
$ fmn list
(1) - Buy tomato sauce and basil for pasta
(2) - Tweet about how cool fmn is
(3) - Follow @mokagio

$ fmn add Another thing to remember

$ fmn list
(1) - Buy tomato sauce and basil for pasta
(2) - Tweet about how cool fmn is
(3) - Follow @mokagio
(4) - Another thing to remember

$ fmn done 4

$ fmn list
(1) - Buy tomato sauce and basil for pasta
(2) - Tweet about how cool fmn is
(3) - Follow @mokagio
```

That's all right isn't it? But there's more. Forget-Me-Not is *contextual*:

```
$ fmn list
(1) - Buy tomato sauce and basil for pasta
(2) - Tweet about how cool fmn is
(3) - Follow @mokagio

$ cd my-project-folder
$ fmn list
(1) - Buy tomato sauce and basil for pasta
(2) - Tweet about how cool fmn is
(3) - Follow @mokagio
(4) - Update README with new features
(5) - Look into bug report 42
```

`fmn` tasks list is build by inspecting the current folder and all its ancestors. This means that if you add tasks while into a project folder, you'll won't see them when doing `fmn list` on its paraent.

And one more thing. Forget-Me-Not has a *global* list, too. The tasks added to the global list will always be listed.

```
$ fmn add -g A global task
```

This is ideal if you want to share tasks across machines.

_TODO: show how to set the global list location._

## Motivation

Forget-Me-Not is a task manager for the terminal junkies, like me. I do most of my work inside the terminal, and I'd like to manage my TODO list from there too.

Juggling multiple clients and side projects it's important to keep the scope relevant. One TODO list to rule them all would be too messy, but switching between multiple ones adds _too much friction_. Forget-Me-Not location awarness does the job pretty all right, I can add tasks to the each project, and see them only when in there. And with the global list I can track important things too.

On top of that I'm quite a forgetful person, and I tend to get sidetracked. That is why I want my task manager to be **in my face**, and that's where Forget-Me-Not comes in handy.

## Shell Integration

### zsh

Add this to your `.zshrc`, or `.zshprompt`:

```
precmd() { fmn list --prompt }
```

## Tips

You might want to add `.fmn.yml` to your global `.gitignore`.

You might also want to speed up your workflow using aliases, for [example](https://github.com/mokagio/dotfiles/blob/master/aliases):

```
alias t='fmn list'
alias ta='fmn add'
alias td='fmn done'
```

## Install

_TODO_

## About

_TODO_

## Alternatives

Similar softwares are:

* _TODO_

---

(c) 2015 - Giovanni Lodi ([@mokagio](https://twitter.com/mokagio))
