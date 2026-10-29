# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Varianta754a3057cf761defc5e9b559799a61cf814f5d45efde2f8243291d9a8629acd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2b00de16be8c25e38957b67da1f7d8d12022a88` · SHA-256 `a754a3057cf761defc5e9b559799a61cf814f5d45efde2f8243291d9a8629acd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
import Mathlib.Data.Set.Finite.Basic
import Mathlib.Data.Set.Finite.Lattice
import Mathlib.Data.Set.Finite.Range
import Mathlib.Data.Set.Lattice
import Mathlib.Data.Finite.Sigma
import Mathlib.Data.Finite.Vector

/-!
# Finiteness of sets of lists

## Tags

finite sets
-/

assert_not_exists OrderedRing MonoidWithZero

namespace List
variable (α : Type*) [Finite α] (n : ℕ)

lemma finite_length_eq : {l : List α | l.length = n}.Finite := List.Vector.finite

lemma finite_length_lt : {l : List α | l.length < n}.Finite := by
  convert (Finset.range n).finite_toSet.biUnion fun i _ ↦ finite_length_eq α i; ext; simp

lemma finite_length_le : {l : List α | l.length ≤ n}.Finite := by
  simpa [Nat.lt_succ_iff] using finite_length_lt α (n + 1)

end List
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=341a81716de95c408671b6dfd16f0af2f520155a8c425319c645d135cb906f5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/List/Varianta754a3057cf761defc5e9b559799a61cf814f5d45efde2f8243291d9a8629acd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
