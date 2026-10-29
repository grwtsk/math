# ScopedFixedPointCertificate.source_is_unchanged

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:417d181d-5233-6a85-2667-7578b85c3006",
  "kind": "theorem",
  "lexical_name": "ScopedFixedPointCertificate.source_is_unchanged",
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
  "slug": "scopedfixedpointcertificate-source-is-unchanged--a9c1676047b6e109efff2348",
  "source": {
    "blob": "6f636bb744c99c1c38fa4edd5413e49684c81b91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stability/Variant767c33227e8056607ef60b1598178988a02e217c4614cb875df5078d9c8d1558.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9c1676047b6e109efff2348ba8d87d9a6ea6f793b8f5b0e5255a3da76e03477",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stability/Variant767c33227e8056607ef60b1598178988a02e217c4614cb875df5078d9c8d1558.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:417d181d-5233-6a85-2667-7578b85c3006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ScopedFixedPointCertificate.source_is_unchanged
    {operator : Operator}
    (certificate : ScopedFixedPointCertificate operator) :
    (operator.step certificate.fixedPoint.state).ecosystemDigest =
      certificate.fixedPoint.state.ecosystemDigest :=
  (operator.source_preserved certificate.fixedPoint.state).1

end Mathematics.Relaxation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stability/Variant767c33227e8056607ef60b1598178988a02e217c4614cb875df5078d9c8d1558.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stability/Variant767c33227e8056607ef60b1598178988a02e217c4614cb875df5078d9c8d1558.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f636bb744c99c1c38fa4edd5413e49684c81b91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=090239538d00b1e0194d85cec9e5fb71ab075c646a6eccfe5ac7ac7c850e46bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Stability/Variant767c33227e8056607ef60b1598178988a02e217c4614cb875df5078d9c8d1558.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
