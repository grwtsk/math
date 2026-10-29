# range_toFun_comp_weights_subset_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a07ce7c5-af0f-183e-09fa-744731035783",
  "kind": "lemma",
  "lexical_name": "range_toFun_comp_weights_subset_closedBall",
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
  "slug": "range-tofun-comp-weights-subset-closedball--dfefd54e458463981563389b",
  "source": {
    "blob": "a737c13106340fe3fb34e77d2e5e2395c105fa45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 33,
    "path": "GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfefd54e458463981563389b6efc625b7c7b36f433d7dceea5ff699c03af0f47",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a07ce7c5-af0f-183e-09fa-744731035783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma range_toFun_comp_weights_subset_closedBall [Fintype M] :
    Set.range (fun t ↦ t.weights : StdSimplex ℝ M → M → ℝ) ⊆ Metric.closedBall 0 1 := by
  rintro _ ⟨x, rfl⟩
  simp [dist_pi_def, Real.nndist_eq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a737c13106340fe3fb34e77d2e5e2395c105fa45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=126091d3ed866c27ceeef0fb79ed75108aa47b2e3413d106766252991f71d202 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variant12be8aa7335f36feb17e8fc5461110024a35567692d6f7e2c5eaeceb108eeb1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
