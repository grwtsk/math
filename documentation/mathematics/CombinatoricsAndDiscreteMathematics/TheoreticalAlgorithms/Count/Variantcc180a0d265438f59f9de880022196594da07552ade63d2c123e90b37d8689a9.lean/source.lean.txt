-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CountSingletonPrime.Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CountSingletonPrime.Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1","mathematical_subject":"Computation.DataStructures","original_sha256":"9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/Batteries/Data/List/Count.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Parikshit Khanna. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Parikshit Khanna, Jeremy Avigad, Leonardo de Moura, Floris van Doorn, Mario Carneiro
-/
module
public import Batteries.Data.List.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CountSingletonPrime.Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1

@[expose] public section

/-!
# Counting in lists

This file proves basic properties of `List.countP` and `List.count`, which count the number of
elements of a list satisfying a predicate and equal to a given element respectively. Their
definitions can be found in `Batteries.Data.List.Basic`.
-/


open Nat

namespace List

/-! ### count -/

section count

theorem count_singleton' [DecidableEq α] (a b : α) : count a [b] = if b = a then 1 else 0 :=
  count_singleton.trans (by grind)

theorem count_concat [BEq α] [LawfulBEq α] (a : α) (l : List α) :
    count a (concat l a) = count a l + 1 := by simp

/-! ### idxToSigmaCount, sigmaCountToIdx -/

section

attribute [local grind =_] idxOfNth_lt_length_iff
attribute [local grind =_] idxOfNth_eq_length_iff

/-- `idxToSigmaCount` is essentially a `Fin`-to-`Fin` wrapper for `countBefore` that also
includes the corresponding element.

For example:
```
idxToSigmaCount [5, 1, 3, 2, 4, 0, 1, 4] 5 = ⟨0, 0⟩
```
-/
def idxToSigmaCount [BEq α] [ReflBEq α] (xs : List α) (i : Fin xs.length) :
    (x : α) × Fin (xs.count x) := ⟨xs[i.1], xs.countBefore xs[i.1] i, by grind⟩

@[simp, grind =]
theorem fst_idxToSigmaCount [BEq α] [ReflBEq α] {xs: List α} {i : Fin xs.length} :
    (xs.idxToSigmaCount i).1 = xs[i.1] := rfl

@[simp, grind =]
theorem snd_idxToSigmaCount [BEq α] [ReflBEq α] {xs: List α} {i : Fin xs.length} :
    (xs.idxToSigmaCount i).2 = ⟨xs.countBefore xs[i.1] i, by grind⟩ := rfl

@[simp, grind =]
theorem coe_snd_idxToSigmaCount [BEq α] [ReflBEq α] {xs: List α} {i : Fin xs.length} :
    ((xs.idxToSigmaCount i).2 : Nat) = xs.countBefore xs[i.1] i := rfl

/-- `sigmaCountToIdx` is a `_ × Fin`-to-`Fin` wrapper for `countBefore`.

For example:
```
sigmaCountToIdx [5, 1, 3, 2, 4, 0, 1, 4] ⟨0, 0⟩ = 5
```
-/
def sigmaCountToIdx [BEq α] (xs : List α) (xc : (x : α) × Fin (xs.count x)) :
    Fin xs.length := ⟨xs.idxOfNth xc.1 xc.2, by grind⟩

@[simp, grind =]
theorem coe_sigmaCountToIdx [BEq α] {xs: List α} {xc : (x : α) × Fin (xs.count x)} :
    (xs.sigmaCountToIdx xc : Nat) = xs.idxOfNth xc.1 xc.2 := rfl

@[simp, grind =]
theorem sigmaCountToIdx_idxToSigmaCount [BEq α] [ReflBEq α] {xs : List α}
    {i : Fin xs.length} : xs.sigmaCountToIdx (xs.idxToSigmaCount i) = i := by grind

theorem leftInverse_sigmaCountToIdx_idxToSigmaCount [BEq α] [ReflBEq α] {xs : List α} :
  xs.sigmaCountToIdx.LeftInverse xs.idxToSigmaCount := by grind

theorem rightInverse_idxToSigmaCount_sigmaCountToIdx [BEq α] [ReflBEq α] {xs : List α} :
  xs.idxToSigmaCount.RightInverse xs.sigmaCountToIdx := by grind

theorem injective_idxToSigmaCount [BEq α] [ReflBEq α] {xs : List α} :
    xs.idxToSigmaCount.Injective := leftInverse_sigmaCountToIdx_idxToSigmaCount.injective

theorem surjective_sigmaCountToIdx [BEq α] [ReflBEq α] {xs : List α} :
    xs.sigmaCountToIdx.Surjective := rightInverse_idxToSigmaCount_sigmaCountToIdx.surjective

@[simp, grind =]
theorem idxToSigmaCount_sigmaCountToIdx [BEq α] [LawfulBEq α] {xs : List α}
    {xc : (x : α) × Fin (xs.count x)} : xs.idxToSigmaCount (xs.sigmaCountToIdx xc) = xc :=
  Sigma.ext getElem_idxOfNth_eq (heq_of_eqRec_eq (by grind) (by grind))

theorem leftInverse_idxToSigmaCount_sigmaCountToIdx [BEq α] [LawfulBEq α] {xs : List α} :
  xs.idxToSigmaCount.LeftInverse xs.sigmaCountToIdx := by grind

theorem rightInverse_sigmaCountToIdx_idxToSigmaCount [BEq α] [LawfulBEq α] {xs : List α} :
  xs.sigmaCountToIdx.RightInverse xs.idxToSigmaCount := by grind

theorem injective_sigmaCountToIdx [BEq α] [LawfulBEq α] {xs : List α} :
    xs.sigmaCountToIdx.Injective := leftInverse_idxToSigmaCount_sigmaCountToIdx.injective

theorem surjective_idxToSigmaCount [BEq α] [LawfulBEq α] {xs : List α} :
    xs.idxToSigmaCount.Surjective := rightInverse_sigmaCountToIdx_idxToSigmaCount.surjective

end
