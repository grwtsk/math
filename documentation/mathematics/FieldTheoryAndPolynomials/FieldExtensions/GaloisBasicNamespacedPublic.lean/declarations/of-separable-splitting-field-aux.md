# of_separable_splitting_field_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f5dd5a4-8ca8-4491-80ae-6203fd7b5d1b",
  "kind": "theorem",
  "lexical_name": "of_separable_splitting_field_aux",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "of-separable-splitting-field-aux",
  "source": {
    "blob": "5fd27e6b1cae861e577e1e1c368cc88bb1acc65c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 512,
    "path": "GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aca2521dac7a3c408e919cb35cfd0d9ebb202f90f595b9d7e01650e6d94568ea",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f5dd5a4-8ca8-4491-80ae-6203fd7b5d1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_separable_splitting_field_aux [hFE : FiniteDimensional F E] [sp : p.IsSplittingField F E]
    (hp : p.Separable) (K : Type*) [Field K] [Algebra F K] [Algebra K E] [IsScalarTower F K E]
    {x : E} (hx : x ∈ p.aroots E) :
    Nat.card (K⟮x⟯.restrictScalars F →ₐ[F] E) = Nat.card (K →ₐ[F] E) * finrank K K⟮x⟯ := by
  have h : IsIntegral K x := (isIntegral_of_noetherian (IsNoetherian.iff_fg.2 hFE) x).tower_top
  have h1 : p ≠ 0 := fun hp => by
    rw [hp, Polynomial.aroots_zero] at hx
    exact Multiset.notMem_zero x hx
  have h2 : minpoly K x ∣ p.map (algebraMap F K) := by
    apply minpoly.dvd
    rw [Polynomial.aeval_def, Polynomial.eval₂_map, ← Polynomial.eval_map, ←
      IsScalarTower.algebraMap_eq]
    exact (Polynomial.mem_roots (Polynomial.map_ne_zero h1)).mp hx
  let key_equiv : (K⟮x⟯.restrictScalars F →ₐ[F] E) ≃
      Σ f : K →ₐ[F] E, @AlgHom K K⟮x⟯ E _ _ _ _ (RingHom.toAlgebra f) := by
    change (K⟮x⟯ →ₐ[F] E) ≃ Σ f : K →ₐ[F] E, _
    exact algHomEquivSigma
  have : ∀ f : K →ₐ[F] E, Finite (@AlgHom K K⟮x⟯ E _ _ _ _ (RingHom.toAlgebra f)) := fun f => by
    have := Finite.of_equiv _ key_equiv
    apply Finite.of_injective (Sigma.mk f) fun _ _ H => eq_of_heq (Sigma.ext_iff.mp H).2
  have : FiniteDimensional F K := FiniteDimensional.left F K E
  rw [Nat.card_congr key_equiv, Nat.card_sigma, IntermediateField.adjoin.finrank h,
    Nat.card_eq_fintype_card]
  apply Finset.sum_const_nat
  intro f _
  rw [← @IntermediateField.card_algHom_adjoin_integral K _ E _ _ x E _ (RingHom.toAlgebra f) h]
  · exact Polynomial.Separable.of_dvd ((Polynomial.separable_map (algebraMap F K)).mpr hp) h2
  · apply sp.splits.of_dvd (Polynomial.map_ne_zero h1)
    rwa [← f.comp_algebraMap, ← p.map_map, RingHom.algebraMap_toAlgebra, Polynomial.map_dvd_map']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fd27e6b1cae861e577e1e1c368cc88bb1acc65c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=502e5455d8410960c5a2e50d16faca11b6f592f2d137aae292bf23b2f9caafe4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant022abc7ba8e8705897b7c98b5188e281accd26916adb9d83700808179184ed7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
