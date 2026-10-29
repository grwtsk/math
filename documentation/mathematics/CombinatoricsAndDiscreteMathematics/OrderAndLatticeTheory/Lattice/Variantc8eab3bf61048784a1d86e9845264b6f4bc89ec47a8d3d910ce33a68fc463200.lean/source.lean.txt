-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tropical.Variant00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.Tropical.Variant00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff","mathematical_subject":"Algebra.OrderTheory","original_sha256":"00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Tropical/Lattice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Algebra.Tropical.Basic
import Mathlib.Order.ConditionallyCompleteLattice.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Tropical.Variant00eea9f5f2b2ca37c3bf881b86209b363325eb28edc4b570333f38a8c2003eff

#align_import algebra.tropical.lattice from "leanprover-community/mathlib"@"6d0adfa76594f304b4650d098273d4366edeb61b"

/-!

# Order on tropical algebraic structure

This file defines the orders induced on tropical algebraic structures by the underlying type.

## Main declarations

* `ConditionallyCompleteLattice (Tropical R)`
* `ConditionallyCompleteLinearOrder (Tropical R)`

## Implementation notes

The order induced is the definitionally equal underlying order, which makes the proofs and
constructions quicker to implement.

-/


variable {R S : Type*}

open Tropical

instance instSupTropical [Sup R] : Sup (Tropical R) where
  sup x y := trop (untrop x ⊔ untrop y)

instance instInfTropical [Inf R] : Inf (Tropical R) where
  inf x y := trop (untrop x ⊓ untrop y)

instance instSemilatticeInfTropical [SemilatticeInf R] : SemilatticeInf (Tropical R) :=
  { instInfTropical,
    Tropical.instPartialOrderTropical with
    le_inf := fun _ _ _ ↦ @SemilatticeInf.le_inf R _ _ _ _
    inf_le_left := fun _ _ ↦ inf_le_left
    inf_le_right := fun _ _ ↦ inf_le_right }

instance instSemilatticeSupTropical [SemilatticeSup R] : SemilatticeSup (Tropical R) :=
  { instSupTropical,
    Tropical.instPartialOrderTropical with
    sup_le := fun _ _ _ ↦ @SemilatticeSup.sup_le R _ _ _ _
    le_sup_left := fun _ _ ↦ le_sup_left
    le_sup_right := fun _ _ ↦ le_sup_right }

instance instLatticeTropical [Lattice R] : Lattice (Tropical R) :=
  { instSemilatticeInfTropical, instSemilatticeSupTropical with }

instance [SupSet R] : SupSet (Tropical R) where sSup s := trop (sSup (untrop '' s))

instance [InfSet R] : InfSet (Tropical R) where sInf s := trop (sInf (untrop '' s))

instance instConditionallyCompleteLatticeTropical [ConditionallyCompleteLattice R] :
    ConditionallyCompleteLattice (Tropical R) :=
  { @instInfTropical R _, @instSupTropical R _,
    instLatticeTropical with
    le_csSup  := fun _s _x hs hx ↦
      le_csSup (untrop_monotone.map_bddAbove hs) (Set.mem_image_of_mem untrop hx)
    csSup_le := fun _s _x hs hx ↦
      csSup_le (hs.image untrop) (untrop_monotone.mem_upperBounds_image hx)
    le_csInf := fun _s _x hs hx ↦
      le_csInf (hs.image untrop) (untrop_monotone.mem_lowerBounds_image hx)
    csInf_le := fun _s _x hs hx ↦
      csInf_le (untrop_monotone.map_bddBelow hs) (Set.mem_image_of_mem untrop hx) }

instance [ConditionallyCompleteLinearOrder R] : ConditionallyCompleteLinearOrder (Tropical R) :=
  { instConditionallyCompleteLatticeTropical, Tropical.instLinearOrderTropical with
    csSup_of_not_bddAbove := by
      intro s hs
      have : Set.range untrop = (Set.univ : Set R) := Equiv.range_eq_univ tropEquiv.symm
      simp [sSup, this]
      apply csSup_of_not_bddAbove
      contrapose! hs
      change BddAbove (tropOrderIso.symm '' s) at hs
      exact tropOrderIso.symm.bddAbove_image.1 hs
    csInf_of_not_bddBelow := by
      intro s hs
      have : Set.range untrop = (Set.univ : Set R) := Equiv.range_eq_univ tropEquiv.symm
      simp [sInf, this]
      apply csInf_of_not_bddBelow
      contrapose! hs
      change BddBelow (tropOrderIso.symm '' s) at hs
      exact tropOrderIso.symm.bddBelow_image.1 hs }
