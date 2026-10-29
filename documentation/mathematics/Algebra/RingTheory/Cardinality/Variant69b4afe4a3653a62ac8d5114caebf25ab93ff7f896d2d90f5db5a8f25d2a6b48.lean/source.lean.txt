-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.RingTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingTheory.LiftCardinalMkLe.Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.LiftCardinalMkLe.Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Localization/Cardinality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Eric Rodriguez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Rodriguez
-/
import Mathlib.RingTheory.Localization.FractionRing
import Mathlib.GroupTheory.MonoidLocalization.Cardinality
import Mathlib.RingTheory.OreLocalization.Cardinality

/-!
# Cardinality of localizations

In this file, we establish the cardinality of localizations. In most cases, a localization has
cardinality equal to the base ring. If there are zero-divisors, however, this is no longer true -
for example, `ZMod 6` localized at `{2, 4}` is equal to `ZMod 3`, and if you have zero in your
submonoid, then your localization is trivial (see `IsLocalization.uniqueOfZeroMem`).

## Main statements

* `IsLocalization.cardinalMk_le`: A localization has cardinality no larger than the base ring.
* `IsLocalization.cardinalMk`: If you don't localize at zero-divisors, the localization of a ring
  has cardinality equal to its base ring.

-/



namespace GRWTSK.Algebra.RingTheory.LiftCardinalMkLe.Variant6b1e0d61f4e9c00c46392942de6be44b7330937afd30e3ba546888f4af4be439

open Cardinal nonZeroDivisors

universe u v

section CommSemiring

variable {R : Type u} [CommSemiring R] {L : Type v} [CommSemiring L] [Algebra R L]

namespace IsLocalization

theorem lift_cardinalMk_le (S : Submonoid R) [IsLocalization S L] :
    Cardinal.lift.{u} #L ≤ Cardinal.lift.{v} #R := by
  have := Localization.cardinalMk_le S
  rwa [← lift_le.{v}, lift_mk_eq'.2 ⟨(Localization.algEquiv S L).toEquiv⟩] at this

/-- A localization always has cardinality less than or equal to the base ring. -/
theorem cardinalMk_le {L : Type u} [CommSemiring L] [Algebra R L]
    (S : Submonoid R) [IsLocalization S L] : #L ≤ #R := by
  simpa using lift_cardinalMk_le (L := L) S

@[deprecated (since := "2024-10-30")] alias card_le := cardinalMk_le

end IsLocalization

end CommSemiring

section CommRing

variable {R : Type u} [CommRing R] {L : Type v} [CommRing L] [Algebra R L]

namespace Localization

theorem cardinalMk {S : Submonoid R} (hS : S ≤ R⁰) : #(Localization S) = #R := by
  apply OreLocalization.cardinalMk
  convert hS using 1
  ext x
  rw [mem_nonZeroDivisorsRight_iff, mem_nonZeroDivisors_iff]
  congr! 3
  rw [mul_comm]

end Localization

namespace IsLocalization

variable (L)

theorem lift_cardinalMk (S : Submonoid R) [IsLocalization S L] (hS : S ≤ R⁰) :
    Cardinal.lift.{u} #L = Cardinal.lift.{v} #R := by
  have := Localization.cardinalMk hS
  rwa [← lift_inj.{u, v}, lift_mk_eq'.2 ⟨(Localization.algEquiv S L).toEquiv⟩] at this

/-- If you do not localize at any zero-divisors, localization preserves cardinality. -/
theorem cardinalMk (L : Type u) [CommRing L] [Algebra R L]
    (S : Submonoid R) [IsLocalization S L] (hS : S ≤ R⁰) : #L = #R := by
  simpa using lift_cardinalMk L S hS

@[deprecated (since := "2024-10-30")] alias card := cardinalMk

end IsLocalization

@[simp]
theorem Cardinal.mk_fractionRing (R : Type u) [CommRing R] : #(FractionRing R) = #R :=
  IsLocalization.cardinalMk (FractionRing R) R⁰ le_rfl

alias FractionRing.cardinalMk := Cardinal.mk_fractionRing

namespace IsFractionRing

variable (R L)

theorem lift_cardinalMk [IsFractionRing R L] : Cardinal.lift.{u} #L = Cardinal.lift.{v} #R :=
  IsLocalization.lift_cardinalMk L _ le_rfl

theorem cardinalMk (L : Type u) [CommRing L] [Algebra R L] [IsFractionRing R L] : #L = #R :=
  IsLocalization.cardinalMk L _ le_rfl

end IsFractionRing

end CommRing
