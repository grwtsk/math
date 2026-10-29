# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variantc65c68cfec0935d916f0dc82b64b10656a56f0e165d7ed5651a878b8e5194ab0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `264b069a818eb4f7453da90b9e7f3cfd7445a12f` · SHA-256 `c65c68cfec0935d916f0dc82b64b10656a56f0e165d7ed5651a878b8e5194ab0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Batteries.Tactic.SeqFocus
public import Batteries.Tactic.Alias

@[expose] public section

namespace Std.Legacy.Range

theorem size_stop_le_start : ∀ r : Range, r.stop ≤ r.start → r.size = 0
  | ⟨start, stop, step, _⟩, h => by
    simp_all [size]
    omega

theorem size_step_1 (start stop) : size ⟨start, stop, 1, by decide⟩ = stop - start := by
  simp [size]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9b8ac0cf5ab4c41b1278281ef5a96b6c4e369bd76d0b15f7b9a5fc6de217262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc65c68cfec0935d916f0dc82b64b10656a56f0e165d7ed5651a878b8e5194ab0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
