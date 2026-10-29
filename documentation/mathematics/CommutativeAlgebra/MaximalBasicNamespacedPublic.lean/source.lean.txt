-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.EquivSubtype.Variant999e42087f7314438a4957a29fbdedeb444e721d2fdd6d1f76c41ee8ef37aad8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"999e42087f7314438a4957a29fbdedeb444e721d2fdd6d1f76c41ee8ef37aad8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.EquivSubtype.Variant999e42087f7314438a4957a29fbdedeb444e721d2fdd6d1f76c41ee8ef37aad8","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"999e42087f7314438a4957a29fbdedeb444e721d2fdd6d1f76c41ee8ef37aad8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Spectrum/Maximal/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 David Kurniadi Angdinata. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Kurniadi Angdinata
-/
module

public import Mathlib.RingTheory.Ideal.Operations
public import Mathlib.RingTheory.Spectrum.Maximal.Defs
public import Mathlib.RingTheory.Spectrum.Prime.Defs

/-!
# Maximal spectrum of a commutative (semi)ring

Basic properties the maximal spectrum of a ring.
-/


namespace GRWTSK.Algebra.EquivSubtype.Variant999e42087f7314438a4957a29fbdedeb444e721d2fdd6d1f76c41ee8ef37aad8

@[expose] public section

noncomputable section

variable (R : Type*) [CommSemiring R]

namespace MaximalSpectrum

/-- The prime spectrum is in bijection with the set of prime ideals. -/
@[simps]
def equivSubtype : MaximalSpectrum R ≃ {I : Ideal R // I.IsMaximal} where
  toFun I := ⟨I.asIdeal, I.2⟩
  invFun I := ⟨I, I.2⟩

theorem range_asIdeal : Set.range MaximalSpectrum.asIdeal = {J : Ideal R | J.IsMaximal} :=
  Set.ext fun J ↦
    ⟨fun hJ ↦ let ⟨j, hj⟩ := Set.mem_range.mp hJ; Set.mem_ofPred.mpr <| hj ▸ j.isMaximal,
      fun hJ ↦ Set.mem_range.mpr ⟨⟨J, Set.mem_ofPred.mp hJ⟩, rfl⟩⟩

variable {R}

instance [Nontrivial R] : Nonempty <| MaximalSpectrum R :=
  let ⟨I, hI⟩ := Ideal.exists_maximal R
  ⟨⟨I, hI⟩⟩

/-- The natural inclusion from the maximal spectrum to the prime spectrum. -/
def toPrimeSpectrum (x : MaximalSpectrum R) : PrimeSpectrum R :=
  ⟨x.asIdeal, x.isMaximal.isPrime⟩

theorem toPrimeSpectrum_injective : (@toPrimeSpectrum R _).Injective := fun ⟨_, _⟩ ⟨_, _⟩ h => by
  simpa only [MaximalSpectrum.mk.injEq] using! PrimeSpectrum.ext_iff.mp h

theorem isCoprime_of_ne {I J : MaximalSpectrum R} (h : I ≠ J) : IsCoprime I.1 J.1 :=
  Ideal.isCoprime_iff_sup_eq.mpr <| I.2.coprime_of_ne J.2 <| mt MaximalSpectrum.ext h

end MaximalSpectrum
