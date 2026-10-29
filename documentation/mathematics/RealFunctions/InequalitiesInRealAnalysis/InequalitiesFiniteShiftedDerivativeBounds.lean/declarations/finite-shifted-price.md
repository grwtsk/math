# finite_shifted_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:097b7a4e-aafd-780a-810c-6d4ab9596ff4",
  "kind": "theorem",
  "lexical_name": "finite_shifted_price",
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
  "slug": "finite-shifted-price",
  "source": {
    "blob": "74d88a9d9b6872734b6d02b89253de0d8fdf8caa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 42,
    "path": "GRWTSK/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c316ee30ea4fe785baf3871be4106eeb4e0aa47e596ced79c1b518c012812578",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/RealFunctions/InequalitiesInRealAnalysis/InequalitiesFiniteShiftedDerivativeBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:097b7a4e-aafd-780a-810c-6d4ab9596ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_shifted_price (A t F G : ℝ) (f g : ℝ → ℝ)
    (hf : ∀ x, |f x| ≤ F) (hg : ∀ x, |g x| ≤ G) :
    |∑ k ∈ Finset.Icc 2 (integerCutoff A), Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
      (f (t + Real.log k) - (1 / 2 : ℝ) * g (t + Real.log k))| ≤
      weightMass A * (F + G / 2) := by
  calc
    _ ≤ ∑ k ∈ Finset.Icc 2 (integerCutoff A),
        |Real.log (k : ℝ) / Real.sqrt (k : ℝ) *
          (f (t + Real.log k) - (1 / 2 : ℝ) * g (t + Real.log k))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.Icc 2 (integerCutoff A),
        Real.log (k : ℝ) / Real.sqrt (k : ℝ) * (F + G / 2) := by
      apply Finset.sum_le_sum
      intro k hk
      exact weighted_difference_abs_le
        (literal_weight_nonneg (Finset.mem_Icc.mp hk).1) (hf _) (hg _)
    _ = _ := by rw [weightMass, Finset.sum_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/RealFunctions/InequalitiesInRealAnalysis/InequalitiesFiniteShiftedDerivativeBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74d88a9d9b6872734b6d02b89253de0d8fdf8caa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4878386f7458d6ea14c0b08ef0e29122228b2243400764927c4b7347feb3853b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
