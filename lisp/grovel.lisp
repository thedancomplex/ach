;; Copyright (c) 2011, Georgia Tech Research Corporation
;; All rights reserved.
;;
;; Redistribution and use in source and binary forms, with or without
;; modification, are permitted provided that the following conditions
;; are met:
;;
;; * Redistributions of source code must retain the above copyright
;;   notice, this list of conditions and the following disclaimer.
;;
;; * Redistributions in binary form must reproduce the above copyright
;;   notice, this list of conditions and the following disclaimer in
;;   the documentation and/or other materials provided with the
;;   distribution.
;;
;; * Neither the name of the copyright holder(s) nor the names of its
;;   contributors may be used to endorse or promote products derived
;;   from this software without specific prior written permission.
;;
;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
;; FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
;; COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
;; INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
;; (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
;; SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
;; HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
;; STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
;; OF THE POSSIBILITY OF SUCH DAMAGE.


(progn
  (in-package :ach)
  (cc-flags "--std=gnu99")
  (include "stdint.h")
  (include "pthread.h")
  (include "stdlib.h")
  (include "stdio.h")
  (include "unistd.h")
  (include "time.h")
  (include "sys/stat.h")
  (include "ach.h")
  (cenum (ach-status :define-constants nil)
         ((:ok "ACH_OK"))
         ((:overflow "ACH_OVERFLOW"))
         ((:invalid-name "ACH_INVALID_NAME"))
         ((:bad-shm-file "ACH_BAD_SHM_FILE"))
         ((:failed-syscall "ACH_FAILED_SYSCALL"))
         ((:stale-frames "ACH_STALE_FRAMES"))
         ((:missed-frame "ACH_MISSED_FRAME"))
         ((:timeout "ACH_TIMEOUT"))
         ((:eexist "ACH_EEXIST"))
         ((:enoent "ACH_ENOENT"))
         ((:closed "ACH_CLOSED")))
  (cenum ach-chan-state
         ((:chan-state-init "ACH_CHAN_STATE_INIT"))
         ((:chan-state-run "ACH_CHAN_STATE_RUN"))
         ((:chan-state-closed "ACH_CHAN_STATE_CLOSED")))
  )
