# continuous_thetaPhiRawD1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4da0314f8c37b73dd2f5df5f45a7ebe57fe92446",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 296,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a1184b4-d9c6-81fd-c2eb-72de054f7bfb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:49f293ba-c8d5-22a3-a784-9f2f8f35a3b7",
  "kind": "theorem",
  "lexical_name": "continuous_thetaPhiRawD1",
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
  "slug": "continuous-thetaphirawd1",
  "source": {
    "blob": "4da0314f8c37b73dd2f5df5f45a7ebe57fe92446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 296,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbc28c9cca24217502cd36554c1f7d3bcac2f7e24dcc7500e9cd8c5a21b2dbdc",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49f293ba-c8d5-22a3-a784-9f2f8f35a3b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_thetaPhiRawD1 : Continuous thetaPhiRawD1 :=
  continuous_iff_continuousAt.mpr (fun t => (hasDerivAt_thetaPhiRawD1 t).continuousAt)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4da0314f8c37b73dd2f5df5f45a7ebe57fe92446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3885da9233378049241b0c5afa311762bbb84602a7973e2ca01633673801f6ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
