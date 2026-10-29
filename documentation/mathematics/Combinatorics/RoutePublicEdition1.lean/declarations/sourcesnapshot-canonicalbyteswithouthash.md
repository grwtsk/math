# SourceSnapshot.canonicalBytesWithoutHash

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f9653ccd30e6498ab9f631268dee6ded1c0378dbf1bcc765af2eb60fc5def0e",
  "kind": "def",
  "lexical_name": "SourceSnapshot.canonicalBytesWithoutHash",
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
  "slug": "sourcesnapshot-canonicalbyteswithouthash",
  "source": {
    "blob": "d425ff6ca0e5d229691fec071f7f25070b10d15f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1120,
    "line": 1107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant10612194876e26df209f8e724a2f5969ef1df62098f4bc5eb0a424060cc6d45b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:572bac73298161b427dfa44b1a5f00b4da6583b2fd3f6540d7a34e6f7b61e14f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/RoutePublicEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f9653ccd30e6498ab9f631268dee6ded1c0378dbf1bcc765af2eb60fc5def0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1107–1120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def SourceSnapshot.canonicalBytesWithoutHash
    (contract : RoutingContract Host EdgeId)
    (snapshot : SourceSnapshot Host) : CanonicalBytes :=
  encodeUtf8 "SXYZSNP1" ++
  encodeU32LE snapshot.schemaVersion ++
  encodeHash256 snapshot.contractHash ++
  encodeU32LE (contract.hostCode.code snapshot.startHost) ++
  encodeU32LE (contract.hostCode.code snapshot.sourceHost) ++
  encodeU32LE snapshot.source.revision.val ++
  encodeI32LE snapshot.source.value.x.raw ++
  encodeI32LE snapshot.source.value.y.raw ++
  encodeI32LE snapshot.source.value.z.raw

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/RoutePublicEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant10612194876e26df209f8e724a2f5969ef1df62098f4bc5eb0a424060cc6d45b.lean#L1107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d425ff6ca0e5d229691fec071f7f25070b10d15f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d34a813bffa779ea997fdad0b8c0aa6f71b1093dc037d74258b38195c9df0c4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Route/Variant10612194876e26df209f8e724a2f5969ef1df62098f4bc5eb0a424060cc6d45b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
