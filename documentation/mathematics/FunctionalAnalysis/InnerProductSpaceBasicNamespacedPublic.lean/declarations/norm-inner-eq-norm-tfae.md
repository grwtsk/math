# norm_inner_eq_norm_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab2d927e-d649-0ab1-a753-f514164dd6c5",
  "kind": "theorem",
  "lexical_name": "norm_inner_eq_norm_tfae",
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
  "slug": "norm-inner-eq-norm-tfae",
  "source": {
    "blob": "1e054178ae8c4bb491b737cbc992baa2e17f0602",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 747,
    "line": 721,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e077417da4594b975cdd4e9671a8126a23db4cf98c09e9d6975c064c49f7d77",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/InnerProductSpaceBasicNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab2d927e-d649-0ab1-a753-f514164dd6c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 721–747.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_inner_eq_norm_tfae (x y : E) :
    List.TFAE [‖⟪x, y⟫‖ = ‖x‖ * ‖y‖,
      x = 0 ∨ y = (⟪x, y⟫ / ⟪x, x⟫) • x,
      x = 0 ∨ ∃ r : 𝕜, y = r • x,
      x = 0 ∨ y ∈ 𝕜 ∙ x] := by
  tfae_have 1 → 2 := by
    refine fun h => or_iff_not_imp_left.2 fun hx₀ => ?_
    have : ‖x‖ ^ 2 ≠ 0 := pow_ne_zero _ (norm_ne_zero_iff.2 hx₀)
    rw [← sq_eq_sq₀, mul_pow, ← mul_right_inj' this, eq_comm, ← sub_eq_zero, ← mul_sub] at h <;>
      try positivity
    simp only [@norm_sq_eq_re_inner 𝕜] at h
    let : InnerProductSpace.Core 𝕜 E := InnerProductSpace.toCore
    erw [← InnerProductSpace.Core.cauchy_schwarz_aux (𝕜 := 𝕜) (F := E)] at h
    rw [InnerProductSpace.Core.normSq_eq_zero, sub_eq_zero] at h
    rw [div_eq_inv_mul, mul_smul, h, inv_smul_smul₀]
    rwa [inner_self_ne_zero]
  tfae_have 2 → 3 := fun h => h.imp_right fun h' => ⟨_, h'⟩
  tfae_have 3 → 1 := by
    rintro (rfl | ⟨r, rfl⟩) <;>
    simp [inner_smul_right, norm_smul, inner_self_eq_norm_sq_to_K,
      sq, mul_left_comm]
  tfae_have 3 ↔ 4 := by simp only [Submodule.mem_span_singleton, eq_comm]
  tfae_finish

/-- If the inner product of two vectors is equal to the product of their norms, then the two vectors
are multiples of each other. One form of the equality case for Cauchy-Schwarz.
Compare `inner_eq_norm_mul_iff`, which takes the stronger hypothesis `⟪x, y⟫ = ‖x‖ * ‖y‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/InnerProductSpaceBasicNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean#L721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e054178ae8c4bb491b737cbc992baa2e17f0602` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a402521fdbbf08b28a9863678178ffa7a755639d6736f310dfc0026621467c33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant631312b33075e8b2b825a46a46b2c6af365e4dea789702a822735a48aac0a2b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
