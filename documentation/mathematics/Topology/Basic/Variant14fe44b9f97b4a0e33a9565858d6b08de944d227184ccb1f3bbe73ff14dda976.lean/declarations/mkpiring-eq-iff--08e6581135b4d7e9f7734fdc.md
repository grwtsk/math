# mkPiRing_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca316a36-5cd9-8f82-1769-96aa92ade039",
  "kind": "theorem",
  "lexical_name": "mkPiRing_eq_iff",
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
  "slug": "mkpiring-eq-iff--08e6581135b4d7e9f7734fdc",
  "source": {
    "blob": "b038188d0183e5de5ad07dfd4b68465f01995df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 689,
    "path": "GRWTSK/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08e6581135b4d7e9f7734fdc142c6ab16bde136c6f4bd0bf8fe9b3c54f5f9d2b",
  "verification": {
    "reference": "docs/verification/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca316a36-5cd9-8f82-1769-96aa92ade039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mkPiRing_eq_iff {z₁ z₂ : M} :
    ContinuousMultilinearMap.mkPiRing R ι z₁ = ContinuousMultilinearMap.mkPiRing R ι z₂ ↔
      z₁ = z₂ := by
  rw [← toMultilinearMap_injective.eq_iff]
  exact MultilinearMap.mkPiRing_eq_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b038188d0183e5de5ad07dfd4b68465f01995df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12065fcc879bb003e2753e795905e99d88ea24c4c7ca7f51135c8ec009d286f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
