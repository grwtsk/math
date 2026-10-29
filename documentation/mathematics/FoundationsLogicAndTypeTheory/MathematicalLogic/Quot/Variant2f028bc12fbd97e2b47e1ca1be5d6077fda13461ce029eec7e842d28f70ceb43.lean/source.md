# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Quot.Variant2f028bc12fbd97e2b47e1ca1be5d6077fda13461ce029eec7e842d28f70ceb43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae1695f87d9399ea60f6c3c50d828fe1e6c4bdce` · SHA-256 `2f028bc12fbd97e2b47e1ca1be5d6077fda13461ce029eec7e842d28f70ceb43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Mathport.Rename

/-!
# Quot

Some induction principles tagged with `elab_as_elim`, since the attribute is missing in core.
-/

set_option autoImplicit true

#align quotient.induction_on Quotient.inductionOn
#align quot.induction_on Quot.inductionOn

variable {α : Sort u} {r : α → α → Prop} {motive : Quot r → Sort v}

@[inherit_doc Quot.rec, elab_as_elim] -- Porting note: adding `elab_as_elim`
protected abbrev Quot.recOn'
    (q : Quot r)
    (f : (a : α) → motive (Quot.mk r a))
    (h : (a b : α) → (p : r a b) → Eq.ndrec (f a) (Quot.sound p) = f b)
    : motive q :=
 q.rec f h
#align quot.rec_on Quot.recOn'
-- expected token

/-- Version of `Quot.recOnSubsingleton` tagged with `elab_as_elim` -/
@[elab_as_elim] -- Porting note: this attribute is missing in core
protected abbrev Quot.recOnSubsingleton'
    [h : (a : α) → Subsingleton (motive (Quot.mk r a))]
    (q : Quot r)
    (f : (a : α) → motive (Quot.mk r a))
    : motive q := by
  induction q using Quot.rec
  apply f
  apply Subsingleton.elim
#align quot.rec_on_subsingleton Quot.recOnSubsingleton'
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=288c76dc3811ba531a7cfcf21e7c912b5236f96a211ed972a291a34e9b609fe8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant2f028bc12fbd97e2b47e1ca1be5d6077fda13461ce029eec7e842d28f70ceb43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
