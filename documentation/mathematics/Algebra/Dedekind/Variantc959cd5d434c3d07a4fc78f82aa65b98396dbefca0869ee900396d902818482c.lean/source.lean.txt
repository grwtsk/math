-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsDedekindDomainOfFormallyUnramified.Variantb10d16781b2129189e6f2e35e73f747b292b4e9dfbb549b444d01dcb46480873","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b10d16781b2129189e6f2e35e73f747b292b4e9dfbb549b444d01dcb46480873","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsDedekindDomainOfFormallyUnramified.Variantb10d16781b2129189e6f2e35e73f747b292b4e9dfbb549b444d01dcb46480873","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"b10d16781b2129189e6f2e35e73f747b292b4e9dfbb549b444d01dcb46480873","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/Unramified/Dedekind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
module

public import Mathlib.RingTheory.DedekindDomain.Dvr
public import Mathlib.RingTheory.Finiteness.Quotient
public import Mathlib.RingTheory.Unramified.Field

/-!
# Unramified algebras over Dedekind domains

We prove that a domain finite and unramified over a Dedekind domain is a Dedekind domain.
-/


namespace GRWTSK.Algebra.IsDedekindDomainOfFormallyUnramified.Variantb10d16781b2129189e6f2e35e73f747b292b4e9dfbb549b444d01dcb46480873

public section

variable (A B : Type*) [CommRing A] [CommRing B] [Algebra A B] [Module.Finite A B]
    [IsDedekindDomain A] [IsDomain B] [Algebra.FormallyUnramified A B]

include A in
theorem IsDedekindDomain.of_formallyUnramified : IsDedekindDomain B :=
  have noetherian := IsNoetherianRing.of_finite A B
  isDedekindDomain_iff_isDiscreteValuationRing_atPrime.2 ⟨noetherian, by
    intro q hq hqp
    let q' := IsLocalRing.maximalIdeal (Localization.AtPrime q)
    suffices q'.IsPrincipal from ((IsDiscreteValuationRing.TFAE (Localization.AtPrime q)
      (IsLocalization.AtPrime.not_isField B hq (Localization.AtPrime q))).out 5 1).mp this
    let p := q.under A
    let := Localization.AtPrime.algebraOfLiesOver p q
    have : p.IsMaximal := (hqp.under A).isMaximal (q.under_ne_bot A hq)
    let : Field (A ⧸ p) := Ideal.Quotient.field p
    have := IsArtinianRing.of_finite (A ⧸ p) (B ⧸ p.map (algebraMap A B))
    suffices q' = (p.map (algebraMap A B)).map (algebraMap B (Localization.AtPrime q)) by
      rw [this, Ideal.map_map, ← IsScalarTower.algebraMap_eq,
        IsScalarTower.algebraMap_eq A (Localization.AtPrime p) (Localization.AtPrime q),
        ← Ideal.map_map]
      infer_instance
    rw [← (Algebra.FormallyUnramified.isRadical_map_isMaximal A B p).radical,
      IsLocalization.map_radical q.primeCompl,
      IsLocalization.AtPrime.radical_map_of_mem_minimalPrimes (Localization.AtPrime q) q,
      Localization.AtPrime.map_eq_maximalIdeal]
    rw [Ideal.minimalPrimes_eq_comap]
    exact ⟨q.map (Ideal.Quotient.mk (p.map (algebraMap A B))),
      IsArtinianRing.mem_minimalPrimes bot_le, Ideal.comap_map_mk Ideal.map_comap_le⟩⟩

@[deprecated (since := "2026-08-01")]
alias isDedekindDomainDvr.of_formallyUnramified := IsDedekindDomain.of_formallyUnramified

@[deprecated (since := "2026-08-01")]
alias isDedekindDomain.of_formallyUnramified := IsDedekindDomain.of_formallyUnramified
