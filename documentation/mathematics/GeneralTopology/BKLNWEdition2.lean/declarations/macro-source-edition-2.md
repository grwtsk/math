# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85da2bc2f94d435a627aaa0cf1ac4578cbee803c237f70f645bcf752eac2ed3b",
  "kind": "macro",
  "lexical_name": null,
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
  "slug": "macro-source-edition-2",
  "source": {
    "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1898,
    "line": 1889,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e80bc2149fd57874247cce4d5becfa1b5be75c49f0426b1a15b01308ae17953c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/BKLNWEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85da2bc2f94d435a627aaa0cf1ac4578cbee803c237f70f645bcf752eac2ed3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1889–1898.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
local macro "eval_table_12_at_all" : tactic =>
  `(tactic| (
    simp only [
      bklnw_b_row6, bklnw_Cb_row6, bklnw_c_row6, bklnw_C_row6, bklnw_M_row6,
      bklnw_b_row14, bklnw_Cb_row14, bklnw_c_row14, bklnw_C_row14, bklnw_M_row14,
      table_12_row_b, table_12_row_Cb, table_12_row_c, table_12_row_C, table_12_row_M,
      table_12, List.get
    ] at *
  ))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/BKLNWEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean#L1889).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6aa03d0dd36c7f82cfdb89c198f8e6368ef212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d480b8e62cb6de930d1df1b7dde6bde5496cc15806171684b8507d9e48c051e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
