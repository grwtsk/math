# Finite List Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5cf7a2ce48c60c45783a35c1aa570b72d7910375` · SHA-256 `ac277a723737bb10e56ba5525ff714f21d2f960b9a2699b82e92af3b108c93d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
module

public import Mathlib.Data.Fintype.Vector
public import Mathlib.Data.Set.Finite.Lattice

/-!
# Finiteness of sets of lists

## Tags

finite sets
-/

public section

assert_not_exists IsOrderedRing MonoidWithZero

namespace List
variable (α : Type*) [Finite α] (n : ℕ)

lemma finite_length_eq : {l : List α | l.length = n}.Finite :=
  inferInstanceAs <| Finite (Vector α n)

lemma finite_length_lt : {l : List α | l.length < n}.Finite := by
  convert! (Finset.range n).finite_toSet.biUnion fun i _ ↦ finite_length_eq α i; ext; simp

lemma finite_length_le : {l : List α | l.length ≤ n}.Finite := by
  simpa [Nat.lt_succ_iff] using finite_length_lt α (n + 1)

end List
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef0adc9e34b7b9b9c8b022a68e75e031ce2bf0f940d902eabeb7c1a19b96dd4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Variantac277a723737bb10e56ba5525ff714f21d2f960b9a2699b82e92af3b108c93d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
