# CheckedDecoder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0bf1f4924943488d3505adabf1a04e9c2382d543373ce08d6e5dd108d3cfccfc",
  "kind": "structure",
  "lexical_name": "CheckedDecoder",
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
  "slug": "checkeddecoder--e05da269c0ac9df3ab771d63",
  "source": {
    "blob": "15108fba50eb1f256fd4dc73b3580ebb0ad42162",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 177,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e05da269c0ac9df3ab771d63100dcebf22b0b018aee40e274e3547518d205946",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0bf1f4924943488d3505adabf1a04e9c2382d543373ce08d6e5dd108d3cfccfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CheckedDecoder where
  decode : State → Option DecodedProgram

/-- Evaluate a decoder-certified program at one output address. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15108fba50eb1f256fd4dc73b3580ebb0ad42162` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fde62ce0ecd21401d1b7c27d2f2d42907376f63b03bf53700386bc5072d13a14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FixedProgramInterpreter/Variantf34998ae050b2893fee5a1461de7e05e65e33b0dfc3217a7263d1d43f2fdb75c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
