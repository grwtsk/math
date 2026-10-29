# actual_euler_centering

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c14523a-3e53-e66e-ba01-c5fc4eef9bda",
  "kind": "theorem",
  "lexical_name": "actual_euler_centering",
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
  "slug": "actual-euler-centering",
  "source": {
    "blob": "fa754a87e20eff99bd88a81060064d9cb6a6cf12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCenteringAttemptpeer01/Variant71d747c6fc751ed30979731ac660d445aef40d3604fb6ba5624bdefe595866e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0367d953dfbb5b0559701f8e1ce6bfc8c85629ecfd7cc0803bd7531c2ef55c7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/ActualCenteringAttemptpeer01Namespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c14523a-3e53-e66e-ba01-c5fc4eef9bda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_euler_centering :
    (∫ u in Ioi (0 : ℝ), psiRelativeError u) = -1 - Real.eulerMascheroniConstant := by
  have hm : Measurable actualRemainder := centeredMangoldtError_measurable
  have hb : ∀ t : ℝ, 0 ≤ t → |actualRemainder t| ≤
      Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant| := by
    intro t ht
    exact centeredMangoldtError_bound ht
  have hf := bounded_final_value hm hb actual_remainder_tendsto_integral
  have hz : (∫ u in Ioi (0 : ℝ), psiRelativeError u) + 1 +
      Real.eulerMascheroniConstant = 0 :=
    tendsto_nhds_unique hf actual_scaled_laplace_tendsto_zero
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ActualCenteringAttemptpeer01Namespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCenteringAttemptpeer01/Variant71d747c6fc751ed30979731ac660d445aef40d3604fb6ba5624bdefe595866e2.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa754a87e20eff99bd88a81060064d9cb6a6cf12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d504ba78488083259f165a00f9bad85ae7dfc0f4af6c9eb197f3108baec1f03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ActualCenteringAttemptpeer01/Variant71d747c6fc751ed30979731ac660d445aef40d3604fb6ba5624bdefe595866e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
