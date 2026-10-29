# continuous_logDeriv_riemannZeta_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa439c25-b3b7-c623-3aa9-433e0f96c6cc",
  "kind": "lemma",
  "lexical_name": "continuous_logDeriv_riemannZeta_two",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "continuous-logderiv-riemannzeta-two--3609fda87c40d9058768bd21",
  "source": {
    "blob": "b53b984edd7dd34a14c656c928b79798ae274f69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 391,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3609fda87c40d9058768bd211c04792719b260c20dee9a40ab280f7dfbc05eb7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa439c25-b3b7-c623-3aa9-433e0f96c6cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 391–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_logDeriv_riemannZeta_two :
    Continuous (fun t : ℝ => logDeriv riemannZeta (2 + t * I) * I) := by
  have hγ : Continuous (fun t : ℝ => (2 : ℂ) + t * I) := by fun_prop
  have hA : AnalyticOnNhd ℂ riemannZeta ({1}ᶜ : Set ℂ) := analyticOnNhd_riemannZeta (by simp)
  have hd : Continuous (fun t : ℝ => deriv riemannZeta (2 + t * I)) :=
    hA.deriv.continuousOn.comp_continuous hγ (fun t => two_add_mul_I_ne_one t)
  have hz : Continuous (fun t : ℝ => riemannZeta (2 + t * I)) :=
    hA.continuousOn.comp_continuous hγ (fun t => two_add_mul_I_ne_one t)
  have hne : ∀ t : ℝ, riemannZeta (2 + t * I) ≠ 0 := fun t h => by
    have := re_riemannZeta_two_pos t; rw [h] at this; simp at this
  simp only [logDeriv_apply]
  exact ((hd.div hz hne).mul continuous_const)

/-- **Vertical side σ = 2.** `|Im (∫_{T₁}^{T₂} ζ'/ζ(2+it)·i dt)| ≤ π` for all `T₁, T₂`:
`log ζ(2+it)` is a primitive, and `|arg ζ(2+it)| ≤ π/2` since `Re ζ(2+it) > 0`.
(The sharper constant `2 log 3` also holds — |arg| ≤ arcsin(π²/6−1) — but an absolute
constant suffices for the consumer.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean#L391).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b53b984edd7dd34a14c656c928b79798ae274f69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d39db8e6c310825db1884a85a4df8b11e1d2ef9784749ea47cb136e7a513e23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Backlund/Variant9cc0867e93eaed417e8d89ab9495d28fa2b352a25304387d84c24182b660dd8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
