# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Vector.Variant06c265de53ff390f5f6c61405db4daf8f5c936c2bdc78b6bf0c57ae4049931b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02d32ff27967cdcc37de1844ec0721462ff212e1` · SHA-256 `06c265de53ff390f5f6c61405db4daf8f5c936c2bdc78b6bf0c57ae4049931b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Sym.Basic

/-!
# `Vector α n` and `Sym α n` are fintypes when `α` is.
-/

open List (Vector)

variable {α : Type*}

instance Vector.fintype [Fintype α] {n : ℕ} : Fintype (List.Vector α n) :=
  Fintype.ofEquiv _ (Equiv.vectorEquivFin _ _).symm

instance [DecidableEq α] [Fintype α] {n : ℕ} : Fintype (Sym.Sym' α n) :=
  Quotient.fintype _

instance [DecidableEq α] [Fintype α] {n : ℕ} : Fintype (Sym α n) :=
  Fintype.ofEquiv _ Sym.symEquivSym'.symm
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee04269dab671873c05d7a09b04907d2a5b91453836d91d5c3983d871b75eb52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Vector/Variant06c265de53ff390f5f6c61405db4daf8f5c936c2bdc78b6bf0c57ae4049931b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
