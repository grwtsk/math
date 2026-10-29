# sum_inv_affine_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75381b01-5b9a-fc20-808d-e4f2e17da588",
  "kind": "lemma",
  "lexical_name": "sum_inv_affine_sq_le",
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
  "slug": "sum-inv-affine-sq-le",
  "source": {
    "blob": "29fed6bbfed3694a1d9055ee5f406e372bbc4b92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 155,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26715ec78f7a42fad89c08cbbe4a744529b6562a04b6682e381dab499834df1f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AbstractNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75381b01-5b9a-fc20-808d-e4f2e17da588`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_inv_affine_sq_le {h : ℝ} (hh : 0 < h) (R : ℕ) :
    ∑ m ∈ range R, 1 / (((m:ℝ) + 1) * h + 1) ^ 2 ≤ 1 / h := by
  have key : ∀ R : ℕ, ∑ m ∈ range R, 1 / (((m:ℝ) + 1) * h + 1) ^ 2
      ≤ 1 / h - 1 / (h * ((R:ℝ) * h + 1)) := by
    intro R
    induction R with
    | zero => simp
    | succ R ih =>
      rw [Finset.sum_range_succ]
      have hR0 : (0:ℝ) ≤ R := Nat.cast_nonneg R
      have hA : 0 < (R:ℝ) * h + 1 := by positivity
      have hB : 0 < ((R:ℝ) + 1) * h + 1 := by positivity
      have step : 1 / (((R:ℝ) + 1) * h + 1) ^ 2
          ≤ 1 / (h * ((R:ℝ) * h + 1)) - 1 / (h * ((((R + 1 : ℕ) : ℝ)) * h + 1)) := by
        push_cast
        rw [div_sub_div _ _ (by positivity) (by positivity), div_le_div_iff₀ (by positivity)
          (by positivity)]
        ring_nf
        nlinarith [mul_pos hh hA, mul_pos hh hB, sq_nonneg h, mul_nonneg (mul_pos hh hh).le hR0]
      push_cast at step ⊢
      linarith
  have hR : 0 ≤ 1 / (h * ((R:ℝ) * h + 1)) := by positivity
  linarith [key R]

/-- Σ_{m<R} 1/(m h+1)² ≤ 1 + 1/h. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AbstractNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29fed6bbfed3694a1d9055ee5f406e372bbc4b92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31800991cae910905ec32797c9af8f5bac03aa70977a482e0d0ff09a36a36929 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantd022cba3c35d91b596c2e147dde9b62f2c2f927f89200d020dcc9b32f8b244cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
