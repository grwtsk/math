# Indicator Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a52665fcd79fb621f17496ba45c52978c979283` · SHA-256 `9aa2add1d3de0c38d6ce9c61d30106df099375da7634f02490f650f77d570436`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Data.Finsupp.Single

/-!
# Building finitely supported functions off finsets

This file defines `Finsupp.indicator` to help create finsupps from finsets.

## Main declarations

* `Finsupp.indicator`: Turns a map from a `Finset` into a `Finsupp` from the entire type.
-/

@[expose] public section


noncomputable section

open Finset Function

variable {ι α : Type*}

namespace Finsupp

variable [Zero α] {s t : Finset ι} (f : ∀ i ∈ s, α) {i : ι}

/-- Create an element of `ι →₀ α` from a finset `s` and a function `f` defined on this finset. -/
def indicator (s : Finset ι) (f : ∀ i ∈ s, α) : ι →₀ α :=
  .onFinset s (fun i ↦ haveI := Classical.decEq ι; if H : i ∈ s then f i H else 0) (by grind)

theorem indicator_of_mem (hi : i ∈ s) (f : ∀ i ∈ s, α) : indicator s f i = f i hi :=
  dite_eq_left hi

theorem indicator_of_notMem (hi : i ∉ s) (f : ∀ i ∈ s, α) : indicator s f i = 0 :=
  dite_eq_right hi

variable (s i)

@[simp]
theorem indicator_apply [DecidableEq ι] : indicator s f i = if hi : i ∈ s then f i hi else 0 := by
  simp only [indicator, onFinset_apply]
  congr

theorem indicator_injective : Injective fun f : ∀ i ∈ s, α => indicator s f := by
  intro a b h
  ext i hi
  rw [← indicator_of_mem hi a, ← indicator_of_mem hi b]
  exact DFunLike.congr_fun h i

theorem support_indicator_subset : (indicator s f).support ⊆ s := support_onFinset_subset

lemma indicator_singleton (a : ι) (f : ∀ j ∈ ({a} : Finset ι), α) :
    indicator {a} f = single a (f a (mem_singleton_self a)) := by
  classical
  ext j
  simp only [single_apply, indicator_apply, mem_singleton, @eq_comm _ a j]
  split_ifs with h <;> simp [h]

@[deprecated indicator_singleton (since := "2026-04-27")]
lemma single_eq_indicator (b : α) : single i b = indicator {i} (fun _ _ => b) :=
  (indicator_singleton i (fun _ _ => b)).symm

theorem indicator_eq_set_indicator (s : Finset ι) (g : ι → α) :
    ⇑(indicator s (fun i _ => g i)) = Set.indicator ↑s g := by
  classical
  ext i
  simp [indicator_apply, Set.indicator_apply]

theorem indicator_indicator [DecidableEq ι] :
    indicator t (fun i _ ↦ indicator s f i) =
      indicator (s ∩ t) (fun i hi ↦ f i (Finset.mem_of_mem_inter_left hi)) := by
  grind [indicator_apply]

theorem eq_indicator_iff {g : ι → α} :
    g = indicator s f ↔ g.support ⊆ s ∧ ∀ ⦃i⦄ (hi : i ∈ s), f i hi = g i := by
  classical
  suffices g.support ⊆ s ∧ (∀ i (hi : i ∈ s), f i hi = g i) ↔
      (∀ i, if hi : i ∈ s then f i hi = g i else g i = 0) by
    simp only [this, funext_iff, indicator_apply]
    grind
  rw [Set.subset_def, and_comm]
  have : (∀ (i : ι), if hi : i ∈ s then f i hi = g i else g i = 0) ↔
      ((∀ (i : ι) (hi : i ∈ s), f i hi = g i) ∧ ∀ i (hi : i ∉ s), g i = 0) := by grind
  simp [this, not_imp_comm]

theorem eq_indicator_self_iff {d : ι →₀ α} : (d = indicator s fun i _ ↦ d i) ↔ d.support ⊆ s := by
  grind [indicator]

end Finsupp
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee999607e457a6d059482fc087f0fd84d7015eaa907e93008ce3d3ad9b335624 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant9aa2add1d3de0c38d6ce9c61d30106df099375da7634f02490f650f77d570436.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
