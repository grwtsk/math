# logResidual_negative_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a8f6209-f80b-0a73-d9e4-0e6b8af5c5ac",
  "kind": "theorem",
  "lexical_name": "logResidual_negative_integral",
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
  "slug": "logresidual-negative-integral",
  "source": {
    "blob": "9c5c5a542d9ae46632e3005e8b04b8b6c1a84297",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailStatements/Variant6f020889c23e42f3398ab84f0c8e70e58fe68a9bbc9e2d9db4f5c669d8f19da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39fd44de69a3b58207caa007097a98be75ce77c523fd08bfc1708fd5ebff15e4",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/LogarithmicResidualTailStatementsNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a8f6209-f80b-0a73-d9e4-0e6b8af5c5ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logResidual_negative_integral (X : ℕ) (ε : ℝ) (hX : 1 ≤ X) :
    (∫ u : ℝ in Iio 0, ‖logResidual X ε u‖ ^ 2) =
      ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ^ 2 := by
  calc
    _ = ∫ u : ℝ in Iio 0, Real.exp u *
        ‖correctedNumerator X (1 / 2 + (ε : ℂ))‖ ^ 2 := by
      apply integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Iio] with u hu
      exact logResidual_sq_of_neg X ε hX u hu
    _ = _ := by
      rw [integral_mul_const, ← integral_Iic_eq_integral_Iio, integral_exp_Iic_zero, one_mul]

/-- The entire positive logarithmic tail has its finite coefficient budget at every real cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/LogarithmicResidualTailStatementsNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailStatements/Variant6f020889c23e42f3398ab84f0c8e70e58fe68a9bbc9e2d9db4f5c669d8f19da4.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5c5a542d9ae46632e3005e8b04b8b6c1a84297` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67b28e63b64a965cb3527c796792de47070cf4caf23e93f4a0227c6266671a33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTailStatements/Variant6f020889c23e42f3398ab84f0c8e70e58fe68a9bbc9e2d9db4f5c669d8f19da4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
