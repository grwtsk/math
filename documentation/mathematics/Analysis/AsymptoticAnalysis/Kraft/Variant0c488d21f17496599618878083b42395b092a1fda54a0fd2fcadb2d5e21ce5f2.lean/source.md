# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.Kraft.Variant0c488d21f17496599618878083b42395b092a1fda54a0fd2fcadb2d5e21ce5f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad578b713f47d8794466888710f89c34af6e8346` · SHA-256 `0c488d21f17496599618878083b42395b092a1fda54a0fd2fcadb2d5e21ce5f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Elazar Gershuni. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Elazar Gershuni
-/
module

public import Mathlib.Topology.MetricSpace.Pseudo.Defs
public import Mathlib.InformationTheory.Coding.PrefixFree
public import Mathlib.Topology.Algebra.InfiniteSum.Defs

import Mathlib.InformationTheory.Coding.KraftMcMillan
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# Kraft's Inequality

This file proves Kraft's inequality for prefix-free codes over finite alphabets. The finite result
is an immediate consequence of the Kraft–McMillan inequality; the result for arbitrary sets of
codewords follows by bounding every finite partial sum.

## Main results

* `IsPrefixFree.finsetSum_one_div_card_pow_length_le_one`: the Kraft sum of a finite prefix-free
  code is at most one.
* `IsPrefixFree.summable_one_div_card_pow_length`: the Kraft sum of an arbitrary prefix-free code
  is summable.
* `IsPrefixFree.tsum_one_div_card_pow_length_le_one`: the Kraft sum of an arbitrary prefix-free
  code is at most one.

## References

* Cover and Thomas, *Elements of Information Theory*, Chapter 5.
-/

public section

namespace InformationTheory

variable {α : Type*} [Fintype α] [Nonempty α]

/-- **Kraft's inequality.** The Kraft sum of a finite prefix-free code is at most one. -/
theorem IsPrefixFree.finsetSum_one_div_card_pow_length_le_one
    {S : Finset (List α)} (hS : IsPrefixFree (S : Set (List α))) :
    ∑ w ∈ S, (1 / (Fintype.card α : ℝ)) ^ w.length ≤ 1 := by
  by_cases hε : [] ∈ S
  · have hS' : S = {[]} := by
      exact_mod_cast hS.eq_singleton_empty_of_empty_mem hε
    simp [hS']
  · exact (hS.isUniquelyDecodable hε).finsetSum_one_div_card_pow_length_le_one

private lemma IsPrefixFree.finsetSum_one_div_card_pow_length_of_subtype
    {S : Set (List α)} (hS : IsPrefixFree S) (F : Finset S) :
    ∑ w ∈ F, (1 / (Fintype.card α : ℝ)) ^ (w : List α).length ≤ 1 := by
  classical
  let T : Finset (List α) := F.image Subtype.val
  have hTS : (T : Set (List α)) ⊆ S := by grind
  calc
    ∑ w ∈ F, (1 / (Fintype.card α : ℝ)) ^ (w : List α).length =
        ∑ w ∈ T, (1 / (Fintype.card α : ℝ)) ^ w.length := by simp [T]
    _ ≤ 1 := (hS.anti hTS).finsetSum_one_div_card_pow_length_le_one

/-- The Kraft sum of an arbitrary prefix-free code is summable. -/
theorem IsPrefixFree.summable_one_div_card_pow_length
    {S : Set (List α)} (hS : IsPrefixFree S) :
    Summable (fun w : S ↦ (1 / (Fintype.card α : ℝ)) ^ (w : List α).length) :=
  summable_of_sum_le (fun _ ↦ by positivity) hS.finsetSum_one_div_card_pow_length_of_subtype

/-- **Kraft's inequality for arbitrary codes.** The Kraft sum of an arbitrary prefix-free code is
at most one. -/
theorem IsPrefixFree.tsum_one_div_card_pow_length_le_one
    {S : Set (List α)} (hS : IsPrefixFree S) :
    ∑' w : S, (1 / (Fintype.card α : ℝ)) ^ (w : List α).length ≤ 1 :=
  hS.summable_one_div_card_pow_length.tsum_le_of_sum_le
    hS.finsetSum_one_div_card_pow_length_of_subtype

end InformationTheory
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b52805c7815eba6d02f249c9c6a6e7d781ea47acf204a3e0b6e24950a16400cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Kraft/Variant0c488d21f17496599618878083b42395b092a1fda54a0fd2fcadb2d5e21ce5f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
