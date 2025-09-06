;; This is the main configuration file for Emacs.
;; All personal customizations and settings go here.

;; Set indentation for Betty Standard
(setq c-default-style "bsd"
      c-basic-offset 8
      tab-width 8
      indent-tabs-mode t)

;; Add a simple welcome message to the scratch buffer
(with-current-buffer (get-buffer-create "*scratch*")
  (insert "Welcome to your new Emacs configuration!\n\n")
  (insert "Feel free to add your customizations below this section."))

;; Example of a simple customization: change the font size
;; Uncomment the following line to make the text larger
;; (set-face-attribute 'default nil :height 140)
