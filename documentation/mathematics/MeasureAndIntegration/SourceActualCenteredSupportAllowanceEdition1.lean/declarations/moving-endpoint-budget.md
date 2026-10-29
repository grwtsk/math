# moving_endpoint_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04ee03d5-e401-3bf2-3567-9915cf3b102f",
  "kind": "theorem",
  "lexical_name": "moving_endpoint_budget",
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
  "slug": "moving-endpoint-budget",
  "source": {
    "blob": "cc6f5a7475a47c433f1090e0473c5890c553056d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant242523d8ba63333ca4b77ee90cefffbb0020b6ed79ea7f1439bf69054feda84d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0ec27f1659409bfdc4160131fe84210336651ed9a8ec4f44fb256587aeb3959",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceActualCenteredSupportAllowanceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04ee03d5-e401-3bf2-3567-9915cf3b102f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem moving_endpoint_budget (A : ℝ)
    (hA : max 1 (endpointConstant (3 / 2)) ≤ A) (t : ℝ)
    (ht : |t| = actualBumpMovingHeight A (3 / 2)) :
    ‖actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ ≤
      5184 * Real.exp (2 * A) / A ^ 9 := by
  have h1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hK : endpointConstant (3 / 2) ≤ A := (le_max_right _ _).trans hA
  have hb := endpoint_norm_le A (3 / 2) t h1 (by norm_num) ht
  norm_num at hb
  have he : Real.exp (-((2 * (3 / 2) - 1) * A / 5)) ≤ 1 := by
    rw [Real.exp_le_one_iff]
    linarith
  have hk0 : 0 ≤ endpointConstant (3 / 2) := by unfold endpointConstant; positivity
  have hKe : endpointConstant (3 / 2) ≤ 5184 * Real.exp (2 * A) := by
    nlinarith [Real.add_one_le_exp (2 * A)]
  refine hb.trans ?_
  have hh := (mul_le_of_le_one_right hk0 he).trans hKe
  norm_num at hh
  exact div_le_div_of_nonneg_right hh (by positivity)

/-- A genuine growing lower bound for this upper allowance, not for the signed phase bulk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceActualCenteredSupportAllowanceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant242523d8ba63333ca4b77ee90cefffbb0020b6ed79ea7f1439bf69054feda84d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc6f5a7475a47c433f1090e0473c5890c553056d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=306807807e3d51769375c873d1a9f3681e1353fca615f75c04bb364c790b3ae1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredSupportAllowance/Variant242523d8ba63333ca4b77ee90cefffbb0020b6ed79ea7f1439bf69054feda84d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
