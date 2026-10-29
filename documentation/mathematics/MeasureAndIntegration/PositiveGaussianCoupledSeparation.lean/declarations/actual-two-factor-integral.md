# actual_two_factor_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ad6ad015243c25205c4a8e23730c72e790d4692",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c31a7275-e990-6e5b-0237-f27242be4971",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a8c941c-1a97-d2c6-cf50-34d8696091ba",
  "kind": "theorem",
  "lexical_name": "actual_two_factor_integral",
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
  "slug": "actual-two-factor-integral",
  "source": {
    "blob": "8ad6ad015243c25205c4a8e23730c72e790d4692",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a33a193eafe9c2d3e7f60839473450c1d0bb08a410452c2cd256d32b25c3162",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a8c941c-1a97-d2c6-cf50-34d8696091ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_two_factor_integral (R : ℝ) (hR : 0<R) :
    gaussianMellinProfile (R*Real.exp (3/4))=
      ∫t : ℝ,(logPhase t 1*logPhase t (-(1/4)))*
        gaussianJointDensity (schwartzCutoff 3) (schwartzCutoff_compact 3) R t := by
  have h := gaussian_coupled_separation boxWindow boxWeight boxPoint (schwartzCutoff 3)
    (schwartzCutoff_compact 3) R hR (by
      intro _
      apply schwartzCutoff_one 3 _ (by norm_num)
      norm_num [boxWeight,boxPoint,Fintype.sum_bool])
  norm_num [boxWindow,boxWeight,boxPoint,Fintype.sum_bool,Fintype.prod_bool] at h
  exact h

/-- An empty family has product one and phase zero, so its formula is genuine inverse evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ad6ad015243c25205c4a8e23730c72e790d4692` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b8a05600d2ee7e861471277b49df0033666fe91af9f70e7228fe9480813e1521 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean","GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
