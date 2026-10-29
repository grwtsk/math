-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearMapSubsingletonOfMemAnnihilator.Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearMapSubsingletonOfMemAnnihilator.Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Regular/Depth.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Nailin Guan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan, Yi Song
-/
import Mathlib.Algebra.Module.FinitePresentation
import Mathlib.LinearAlgebra.Dual.Lemmas
import Mathlib.RingTheory.Ideal.AssociatedPrime.Finiteness
import Mathlib.RingTheory.Ideal.AssociatedPrime.Localization
import Mathlib.RingTheory.LocalRing.ResidueField.Ideal
import Mathlib.RingTheory.Regular.IsSMulRegular
import Mathlib.RingTheory.Support

/-!

# Hom(N,M) is subsingleton iff there exists a smul regular element of M in ann(N)

Let `M` and `N` be `R`-modules. In this section we prove that `Hom(N,M)` is subsingleton iff
there exist `r : R`, such that `IsSMulRegular M r` and `r ∈ ann(N)`.
This is the case if `Depth[I](M) = 0`.

# Main Results

* `IsSMulRegular.subsingleton_linearMap_iff` : for `R` module `N M`, `Hom(N, M) = 0`
  iff there is a `M`-regular in `Module.annihilator R N`.

-/


namespace GRWTSK.Algebra.LinearAlgebra.LinearMapSubsingletonOfMemAnnihilator.Variant77434c816c725685e6cc55e651b053f15be7242e1a2895c15addd2174383a5c3

open IsLocalRing LinearMap Module

namespace IsSMulRegular

variable {R M N : Type*} [CommRing R] [AddCommGroup M] [AddCommGroup N] [Module R M] [Module R N]

lemma linearMap_subsingleton_of_mem_annihilator {r : R} (reg : IsSMulRegular M r)
    (mem_ann : r ∈ Module.annihilator R N) : Subsingleton (N →ₗ[R] M) := by
  apply subsingleton_of_forall_eq 0 (fun f ↦ ext fun x ↦ ?_)
  have : r • (f x) = r • 0 := by
    rw [smul_zero, ← map_smul, Module.mem_annihilator.mp mem_ann x, map_zero]
  simpa using reg this

lemma subsingleton_linearMap_iff [IsNoetherianRing R] [Module.Finite R M] [Module.Finite R N] :
    Subsingleton (N →ₗ[R] M) ↔ ∃ r ∈ Module.annihilator R N, IsSMulRegular M r := by
  refine ⟨fun hom0 ↦ ?_, fun ⟨r, mem_ann, reg⟩ ↦
    linearMap_subsingleton_of_mem_annihilator reg mem_ann⟩
  by_cases htrivial : Subsingleton M
  · exact ⟨0, ⟨Submodule.zero_mem (Module.annihilator R N), IsSMulRegular.zero⟩⟩
  · let _ : Nontrivial M := not_subsingleton_iff_nontrivial.mp htrivial
    by_contra! h
    have hexist : ∃ p ∈ associatedPrimes R M, Module.annihilator R N ≤ p := by
      rcases associatedPrimes.nonempty R M with ⟨Ia, hIa⟩
      apply (Ideal.subset_union_prime_finite (associatedPrimes.finite R M) Ia Ia _).mp
      · rw [biUnion_associatedPrimes_eq_compl_regular R M]
        exact fun r hr ↦ h r hr
      · exact fun I hin _ _ ↦ IsAssociatedPrime.isPrime hin
    rcases hexist with ⟨p, pass, hp⟩
    let _ := pass.isPrime
    let p' : PrimeSpectrum R := ⟨p, pass.isPrime⟩
    have loc_ne_zero : p' ∈ Module.support R N := Module.mem_support_iff_of_finite.mpr hp
    rw [Module.mem_support_iff] at loc_ne_zero
    let Rₚ := Localization.AtPrime p
    let Nₚ := LocalizedModule p'.asIdeal.primeCompl N
    let Mₚ := LocalizedModule p'.asIdeal.primeCompl M
    let Nₚ' := Nₚ ⧸ (IsLocalRing.maximalIdeal (Localization.AtPrime p)) • (⊤ : Submodule Rₚ Nₚ)
    have ntr : Nontrivial Nₚ' :=
      Submodule.Quotient.nontrivial_of_lt_top _ (Ne.lt_top'
        (Submodule.top_ne_ideal_smul_of_le_jacobson_annihilator
        (IsLocalRing.maximalIdeal_le_jacobson (Module.annihilator Rₚ Nₚ))))
    let Mₚ' := Mₚ ⧸ (IsLocalRing.maximalIdeal (Localization.AtPrime p)) • (⊤ : Submodule Rₚ Mₚ)
    let _ : Module p.ResidueField Nₚ' :=
      Module.instQuotientIdealSubmoduleHSMulTop Nₚ (maximalIdeal (Localization.AtPrime p))
    have := AssociatePrimes.mem_iff.mp
      (associatedPrimes.mem_associatePrimes_localizedModule_atPrime_of_mem_associated_primes pass)
    rcases this.2 with ⟨x, hx⟩
    have : Nontrivial (Module.Dual p.ResidueField Nₚ') := by simpa using ntr
    rcases exists_ne (α := Module.Dual p.ResidueField Nₚ') 0 with ⟨g, hg⟩
    let to_res' : Nₚ' →ₗ[Rₚ] p.ResidueField := {
      __ := g
      map_smul' r x := by
        simp only [AddHom.toFun_eq_coe, coe_toAddHom, RingHom.id_apply]
        convert g.map_smul (Ideal.Quotient.mk _ r) x }
    let to_res : Nₚ →ₗ[Rₚ] p.ResidueField :=
      to_res'.comp ((maximalIdeal (Localization.AtPrime p)) • (⊤ : Submodule Rₚ Nₚ)).mkQ
    let i : p.ResidueField →ₗ[Rₚ] Mₚ :=
      Submodule.liftQ _ (LinearMap.toSpanSingleton Rₚ Mₚ x) (le_of_eq hx)
    have inj1 : Function.Injective i :=
      LinearMap.ker_eq_bot.mp (Submodule.ker_liftQ_eq_bot _ _ _ (le_of_eq hx.symm))
    let f := i.comp to_res
    have f_ne0 : f ≠ 0 := by
      intro eq0
      absurd hg
      apply LinearMap.ext
      intro np'
      induction' np' using Submodule.Quotient.induction_on with np
      show to_res np = 0
      apply inj1
      show f np = _
      simp [eq0]
    absurd hom0
    let _ := Module.finitePresentation_of_finite R N
    contrapose! f_ne0
    exact (Module.FinitePresentation.linearEquivMapExtendScalars
      p'.asIdeal.primeCompl).symm.map_eq_zero_iff.mp (Subsingleton.eq_zero _)

end IsSMulRegular
