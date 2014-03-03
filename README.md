# Installation

1. Install emacs
  * Mac: `brew install emacs --use-git-head --cocoa --srgb`
2. Bundle install



# Keyboard Shortucts

## Basic Emacs Shortcuts

### Navigation

Keybinding           | Description | Keybinding           | Description
---------------------|-------------|----------------------|---------------
<kbd>C-a</kbd>	| Move to beginning of line | <kbd>C-e</kbd>	| Move to end of line
<kbd>M-m</kbd>	| Move to the first non-whitespace character on the line
<kbd>C-f</kbd>	| Move forward one character | <kbd>C-b</kbd>	| Move backward one character
<kbd>M-f</kbd>	| Move forward one word | <kbd>M-b</kbd>	| Move backward one word
<kbd>M-a</kbd>	| Move backward by sentence | <kbd>M-e</kbd> | Move forward by sentence
<kbd>M-{</kbd>  | Move backward by paragraph | <kbd>M-}</kbd> | Move forward by paragraph
<kbd>C-s</kbd>	| Regex search for text in the current buffer and move to it. Hit C-s again to move to the next match | <kbd>C-r</kbd>	| Same as C-s, but search in reverse
<kbd>M-<</kbd>	| Move to beginning of buffer | <kbd>M-></kbd>	| Move to end of buffer
<kbd>M-g g</kbd>	| Go to line


### Text Manipulation

Keybinding           | Description
---------------------|------------
<kbd>C-spc</kbd> |	Set mark (for selecting stuff)
<kbd>C-w</kbd>	|	Kill region
<kbd>M-w</kbd>	| 	Copy region to kill ring
<kbd>C-y</kbd>	|	Yank (paste)
<kbd>M-y</kbd>	|	Cycle through kill ring after yanking
<kbd>M-d</kbd>	|	Kill word
<kbd>C-k</kbd>	|	Kill line
<kbd>Tab</kbd>  |	Ident line
<kbd>C-j</kbd>  |	New line indent (enter followed by 'tab')

### Help

#Window Layout

Keybinding           | Description
---------------------|------------
<kbd>C-x 1</kbd>     | Make the current window full screen
<kbd>C-x 2</kbd>     | Split the current window horizontally 
<kbd>C-x 3</kbd>     | Split the current window vertically 


### Window Number

Keybinding           | Description
---------------------|-------------
<kbd>C-x C-j 1</kbd> | Switch to first window (or window number provided)

### Projectile

Here's a list of the interactive Emacs Lisp functions, provided by projectile:

Keybinding         | Description
-------------------|------------------------------------------------------------
<kbd>C-c p f</kbd> | Display a list of all files in the project. With a prefix argument it will clear the cache first.
<kbd>C-c p 4 f</kbd> | Jump to a project's file using completion and show it in another window.
<kbd>C-c p d</kbd> | Display a list of all directories in the project. With a prefix argument it will clear the cache first.
<kbd>C-c p T</kbd> | Display a list of all test files(specs, features, etc) in the project.
<kbd>C-c p l</kbd> | Display a list of all files in a directory (that's not necessarily a project)
<kbd>C-c p g</kbd> | Run grep on the files in the project.
<kbd>C-c p v</kbd> | Run `vc-dir` on the root directory of the project.
<kbd>C-c p b</kbd> | Display a list of all project buffers currently open.
<kbd>C-c p 4 b</kbd> | Switch to a project buffer and show it in another window.
<kbd>C-c p o</kbd> | Runs `multi-occur` on all project buffers currently open.
<kbd>C-c p r</kbd> | Runs interactive query-replace on all files in the projects.
<kbd>C-c p i</kbd> | Invalidates the project cache (if existing).
<kbd>C-c p R</kbd> | Regenerates the projects `TAGS` file.
<kbd>C-c p j</kbd> | Find tag in project's `TAGS` file.
<kbd>C-c p k</kbd> | Kills all project buffers.
<kbd>C-c p D</kbd> | Opens the root of the project in `dired`.
<kbd>C-c p e</kbd> | Shows a list of recently visited project files.
<kbd>C-c p a</kbd> | Runs `ack` on the project. Requires the presence of `ack-and-a-half`.
<kbd>C-c p A</kbd> | Runs `ag` on the project. Requires the presence of `ag.el`.
<kbd>C-c p c</kbd> | Runs a standard compilation command for your type of project.
<kbd>C-c p p</kbd> | Runs a standard test command for your type of project.
<kbd>C-c p t</kbd> | Toggle between an implementation file and its test file.
<kbd>C-c p 4 t</kbd> | Jump to implementation or test file in other window.
<kbd>C-c p z</kbd> | Adds the currently visited file to the cache.
<kbd>C-c p s</kbd> | Display a list of known projects you can switch to.
<kbd>C-c p m</kbd> | Run the commander (an interface to run commands with a single key).

If you ever forget any of Projectile's keybindings just do a:

<kbd>C-c p C-h</kbd>

You can change the default keymap prefix `C-c p` like this:

```lisp
(setq projectile-keymap-prefix (kbd "C-c C-p"))
```

For some common commands you might want to take a little shortcut and
leverage the fairly unused `Super` key (by default `Command` on Mac
keyboards and `Windows` on Win keyboards). Here's something you can
add to your Emacs config:

```lisp
(define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
(define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
(define-key projectile-mode-map [?\s-f] 'projectile-find-file)
(define-key projectile-mode-map [?\s-g] 'projectile-grep)
```

Note that the `Super` keybindings are not usable in Windows. Emacs
Prelude already adds those extra keybindings.

### Projectile-Rails


Command                                  | Keybinding                                 | Description
-----------------------------------------|--------------------------------------------|-------------------------------------------------------
projectile-rails-find-model              | <kbd>C-c r m</kbd>                         | Find a model using `projectile-completion-system`.
projectile-rails-find-current-model      | <kbd>C-c r M</kbd>, <kbd>C-c r g m</kbd>   | Go to a model connected with the current resource.
projectile-rails-find-controller         | <kbd>C-c r c</kbd>                         | Find a controller using `projectile-completion-system`.
projectile-rails-find-current-controller | <kbd>C-c r C</kbd>, <kbd>C-c r g c</kbd>   | Go to a controller connected with the current resource.
projectile-rails-find-view               | <kbd>C-c r v</kbd>                         | Find a template or partial using `projectile-completion-system`.
projectile-rails-find-current-view       | <kbd>C-c r V</kbd>, <kbd>C-c r g v</kbd>   | Go to a view connected with the current resource.
projectile-rails-find-helper             | <kbd>C-c r h</kbd>                         | Find a helper using `projectile-completion-system`.
projectile-rails-find-current-helper     | <kbd>C-c r H</kbd>, <kbd>C-c r g h</kbd>   | Go to a helper connected with the current resource.
projectile-rails-find-lib                | <kbd>C-c r l</kbd>                         | Find a lib using `projectile-completion-system`.
projectile-rails-find-spec               | <kbd>C-c r s</kbd>                         | Find a spec using `projectile-completion-system`.
projectile-rails-find-current-spec       | <kbd>C-c r S</kbd>, <kbd>C-c r g s</kbd>   | Go to a spec connected with the current resource.
projectile-rails-find-migration          | <kbd>C-c r n</kbd>                         | Find a migration using `projectile-completion-system`.
projectile-rails-find-current-migration  | <kbd>C-c r N</kbd>, <kbd>C-c r g n</kbd>   | Go to a migration connected with the current resource.
projectile-rails-find-javascript         | <kbd>C-c r j</kbd>                         | Find a javascript using `projectile-completion-system`.
projectile-rails-find-log                | <kbd>C-c r o</kbd>                         | Find a log file and enable `auto-revert-tail-mode` in its buffer.
projectile-rails-find-initializer        | <kbd>C-c r i</kbd>                         | Find an initializer file using `projectile-completions-system`.
projectile-rails-find-environment        | <kbd>C-c r e</kbd>                         | Find an environment file using `projectile-completions-system`.
projectile-rails-find-locale             | <kbd>C-c r a</kbd>                         | Find a locale file using `projectile-completions-system`.
projectile-rails-find-mailer             | <kbd>C-c r @</kbd>                         | Find a mailer file using `projectile-completions-system`.
projectile-rails-find-layout             | <kbd>C-c r y</kbd>                         | Find a layout file using `projectile-completions-system`.
projectile-rails-console                 | <kbd>C-c r r</kbd>                         | Run `rails console` command in `inf-ruby` buffer.
projectile-rails-rake                    | <kbd>C-c r k</kbd>                         | Select a rake task to run using `projectile-completion-system`.
projectile-rails-generate                | <kbd>C-c r t</kbd>                         | Run `rails generate` command.
projectile-rails-goto-file-at-point      | <kbd>C-c r RET</kbd>, <kbd>C-c r g f</kbd> | Go to a file at point. Depending on the context that might be a constant, template or partial, or a gem.
projectile-rails-goto-gemfile            | <kbd>C-c r g g</kbd>                       | Go to `Gemfile` file.
projectile-rails-goto-routes             | <kbd>C-c r g r</kbd>                       | Go to `config/routes.rb` file.
projectile-rails-goto-schema             | <kbd>C-c r g h</kbd>                       | Go to `db/schema.rb` file.
projectile-rails-goto-spec-helper        | <kbd>C-c r g p</kbd>                       | Go to `spec/spec_helper.rb` file.

You might want to create your own keybinding for your favorite commands. For example:

```lisp
(define-key projectile-rails-mode-map (kbd "s-m")   'projectile-rails-find-model)
(define-key projectile-rails-mode-map (kbd "s-c")   'projectile-rails-find-controller)
(define-key projectile-rails-mode-map (kbd "s-v")   'projectile-rails-find-view)
(define-key projectile-rails-mode-map (kbd "s-RET") 'projectile-rails-goto-file-at-point)
(define-key projectile-rails-mode-map (kbd "C-c g")  projectile-rails-mode-goto-map)
```
