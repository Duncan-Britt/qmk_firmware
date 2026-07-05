;;; qmk-build.el --- Build and flash commands for qmk configurator -*- lexical-binding: t -*-

(defun qmk-build ()
  "Compile firmware."
  (interactive)
  (let ((default-directory (project-root (project-current))))
    (compile "qmk compile -kb keychron/v1/ansi_encoder -km Duncan_Britt" t)))

(defun qmk-flash ()
  "Flash firmware."
  (interactive)
  (let ((default-directory (project-root (project-current))))
    (compile "qmk flash -kb keychron/v1/ansi_encoder -km Duncan_Britt" t)))

;; qmk config user.keyboard=keychron/v1/ansi_encoder
;; qmk config user.keymap=Duncan_Britt

;; Tap hold: KC_LEFT_CTRL -> MOD_LCTL
;; MT(mod, kc)

;; Left control on hold, escape on tap:
;; MT(MOD_LCTL, KC_ESC) or LCTL_T(KC_ESC) or CTL_T(KC_ESC)

;; Left alt on hold, semicolon on tap:
;; MT(MOD_LALT, KC_SCLN)

(provide 'qmk-build)
