# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RawDecidableEquiv.Variant766361e27bf69ec8f7e5ca5bf5f278d6850e968b56a8a6f7f2d9c671a472e21a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79cf71ad117eaedd66473133043550c49a08c903` · SHA-256 `766361e27bf69ec8f7e5ca5bf5f278d6850e968b56a8a6f7f2d9c671a472e21a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.HashMap.RawDecidableEquiv
public import Std.Data.HashSet.Raw

public section

/-!
# Decidable equivalence for `HashSet.Raw`
-/

open Std.HashMap.Raw

namespace Std.HashSet.Raw

def instDecidableEquiv {α : Type u} [BEq α] [LawfulBEq α] [Hashable α] {m₁ m₂ : Raw α} (h₁ : m₁.WF) (h₂ : m₂.WF) : Decidable (m₁ ~m m₂) :=
  let : Decidable (m₁.1 ~m m₂.1) := HashMap.Raw.instDecidableEquiv h₁.out h₂.out;
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.HashSet.Raw
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f5820814eddb9015a90354a4f071aa30ff5dff9bbafcf2336b6aac62397148f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RawDecidableEquiv/Variant766361e27bf69ec8f7e5ca5bf5f278d6850e968b56a8a6f7f2d9c671a472e21a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
