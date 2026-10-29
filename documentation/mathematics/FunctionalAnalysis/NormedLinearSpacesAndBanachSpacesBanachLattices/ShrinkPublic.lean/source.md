# Shrink Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a67750960b7209575a970f67e5cc7d1e073b7287` · SHA-256 `f20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Analysis.Normed.Module.TransferInstance
public import Mathlib.Algebra.Group.Shrink

/-!
# Transfer normed algebraic structures from `α` to `Shrink α`
-/

public section

noncomputable section

namespace Shrink

universe v
variable {𝕜 α : Type*} [Small.{v} α] [NormedField 𝕜]

instance [SeminormedAddCommGroup α] : SeminormedAddCommGroup (Shrink.{v} α) :=
  (equivShrink α).symm.seminormedAddCommGroup

instance [NormedAddCommGroup α] : NormedAddCommGroup (Shrink.{v} α) :=
  (equivShrink α).symm.normedAddCommGroup

instance [SeminormedAddCommGroup α] [NormedSpace 𝕜 α] : NormedSpace 𝕜 (Shrink.{v} α) :=
  (Shrink.addEquiv (α := α)).normedSpace 𝕜

end Shrink
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5797d1320e18324ed5624a7aa02e14c793850d71e27541d1dfa852e51dd72354 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Shrink/Variantf20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
