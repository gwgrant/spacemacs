;;; funcs.el --- CMake Layer functions File for Spacemacs
;;
;; Copyright (c) 2012-2021 Sylvain Benner & Contributors
;;
;; Author: Maximilian Wolff <smile13241324@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.


(defun spacemacs//cmake-setup-company ()
  "Conditionally setup company based on backend."
  (spacemacs|add-company-backends
    :backends (pcase cmake-backend
                ;; Activate lsp company explicitly to activate
                ;; standard backends as well
                ('lsp 'company-capf)
                ('company-cmake 'company-cmake))
    :modes cmake-mode))

(defun spacemacs//cmake-setup-backend ()
  "Conditionally setup cmake backend."
  (when (eq cmake-backend 'lsp)
    (lsp)))
