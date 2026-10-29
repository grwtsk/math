# isMaximal_iff_eq_vanishingIdeal_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1158844-5904-161f-0bd0-270e1330807a",
  "kind": "theorem",
  "lexical_name": "isMaximal_iff_eq_vanishingIdeal_singleton",
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
  "slug": "ismaximal-iff-eq-vanishingideal-singleton",
  "source": {
    "blob": "9b0c0206f2ad211b81a60224396d32cec6fb6d9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 153,
    "path": "GRWTSK/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51defe01902b6bbaed47c82202bce00ade6bcaf948aad81c899de5f231dcc8d5",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/CommutativeAlgebra/NullstellensatzNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1158844-5904-161f-0bd0-270e1330807a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMaximal_iff_eq_vanishingIdeal_singleton (I : Ideal (MvPolynomial σ k)) :
    I.IsMaximal ↔ ∃ x : σ → k, I = vanishingIdeal {x} := by
  cases nonempty_fintype σ
  refine
    ⟨fun hI => ?_, fun h =>
      let ⟨x, hx⟩ := h
      hx.symm ▸ MvPolynomial.vanishingIdeal_singleton_isMaximal⟩
  letI : I.IsMaximal := hI
  letI : Field (MvPolynomial σ k ⧸ I) := Quotient.field I
  let ϕ : k →+* MvPolynomial σ k ⧸ I := (Ideal.Quotient.mk I).comp C
  have hϕ : Function.Bijective ϕ :=
    IsAlgClosed.ringHom_bijective_of_isIntegral ϕ
      (MvPolynomial.comp_C_integral_of_surjective_of_isJacobsonRing _ Quotient.mk_surjective)
  obtain ⟨φ, hφ⟩ := Function.Surjective.hasRightInverse hϕ.2
  let x : σ → k := fun s => φ ((Ideal.Quotient.mk I) (X s))
  have hx : ∀ s : σ, ϕ (x s) = (Ideal.Quotient.mk I) (X s) := fun s =>
    hφ ((Ideal.Quotient.mk I) (X s))
  refine ⟨x, (IsMaximal.eq_of_le (by infer_instance) hI.ne_top ?_).symm⟩
  intro p hp
  rw [← Quotient.eq_zero_iff_mem, map_mvPolynomial_eq_eval₂ (Ideal.Quotient.mk I) p, eval₂_eq']
  rw [mem_vanishingIdeal_singleton_iff, eval_eq'] at hp
  simpa only [map_sum ϕ, ϕ.map_mul, map_prod ϕ, ϕ.map_pow, ϕ.map_zero, hx] using congr_arg ϕ hp

/-- Main statement of the Nullstellensatz -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CommutativeAlgebra/NullstellensatzNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b0c0206f2ad211b81a60224396d32cec6fb6d9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6822ff5045e5254976e6ab823a4f33c4bcd1f6bc4dccee52ef2d7d578162cc16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Nullstellensatz/Variant09e879e4e17ba7419cceeb09fe4febd50b30591a8b3aabec791194d3a2a4d39f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
