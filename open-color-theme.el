(require 'open-color-definitions
         (locate-file "open-color-definitions.el" custom-theme-load-path
                      '("c" "")))

(create-open-color-theme open-color
                        open-color-description (open-color-color-definitions))
