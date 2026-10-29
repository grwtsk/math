# existsUnique_carrier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9adb6d323a717bd9b53e80caf3cdf55b6c520e76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19ad486a-ffd8-7960-c13e-724a80d21335",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ed5d7c7-a4b0-1546-8df3-363ee198ad23",
  "kind": "theorem",
  "lexical_name": "existsUnique_carrier",
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
  "slug": "existsunique-carrier",
  "source": {
    "blob": "9adb6d323a717bd9b53e80caf3cdf55b6c520e76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 371,
    "path": "GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5346e6d0960379c26744bb9a787dc51d69811a18ac33848316c24ddecdc6c5e1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/BooleanYoneda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ed5d7c7-a4b0-1546-8df3-363ee198ad23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_carrier
    {S : Type u₁} {cell : S → Set X}
    (partition : CarrierPartition S cell) (x : X) :
    ∃! s, x ∈ cell s := by
  obtain ⟨s, hs⟩ := partition.covers x
  exact ⟨s, hs, fun t ht => partition.disjoint ht hs⟩

end FinitePrecisionCertificates

section ExactDecoding

variable {X : Type u₁} {Code : Type u₂}

/-- The subtype of codes that actually encode an admissible source state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/BooleanYoneda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9adb6d323a717bd9b53e80caf3cdf55b6c520e76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c536bcdda37413ee61aad4231b0f25301aa160cb7e2dd35ebdfcbe9356ea59a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/SourceCorpus/FormalResearch/Objects/67/67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean","GRWTSK/Topology/MetricTopology/BooleanYoneda/Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
