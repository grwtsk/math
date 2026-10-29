# Hash Set Decidable Equiv Decidable Equiv Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fba686c8a20dd719ab065aa5a71d5ba964ea446` · SHA-256 `6428169429b1dde6f73ce85e302f41f86221d96c46c12876dd129c3f52e1a772`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.HashMap.DecidableEquiv
public import Std.Data.HashSet.Basic

public section

/-!
# Decidable equivalence for `HashSet`
-/

namespace Std.HashSet

instance {α : Type u} [BEq α] [LawfulBEq α] [Hashable α] (m₁ m₂ : HashSet α) : Decidable (m₁ ~m m₂) :=
  decidable_of_iff _ ⟨fun h => ⟨h⟩, fun h => h.1⟩

end Std.HashSet
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c804d2ffccaddd462d2857776483bb3a0b8ed89ba64ed58761bff7eba454b2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEquiv/Variant6428169429b1dde6f73ce85e302f41f86221d96c46c12876dd129c3f52e1a772.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
