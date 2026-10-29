# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AllWeaken.Variantd7d0a98003e050303ff3026e451b271c102e282fc90149d1f1856d8a459822c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6ebadb61f95acc7d44bc6b67e20b19980745184` · SHA-256 `d7d0a98003e050303ff3026e451b271c102e282fc90149d1f1856d8a459822c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, Asta H. From
-/

import Aesop

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

inductive All (P : α → Prop) : List α → Prop where
  | none : All P []
  | more {x xs} : P x → All P xs → All P (x :: xs)

@[aesop unsafe]
axiom weaken {α} (P Q : α → Prop) (wk : ∀ x, P x → Q x) (xs : List α)
  (h : All P xs) : All Q xs

/--
error: Tactic `aesop` failed, maximum number of rule applications (50) reached. Set the 'maxRuleApplications' option to increase the limit.
-/
#guard_msgs in
example : All (· ∈ []) (@List.nil α) := by
  aesop (config := { maxRuleApplications := 50, terminal := true })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=270cb45fa20817986f781b2e8a16fa73b3ce4194469e5fee7c0d0828f52d3cd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AllWeaken/Variantd7d0a98003e050303ff3026e451b271c102e282fc90149d1f1856d8a459822c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
