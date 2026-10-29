# moserEdges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3189bd0f290d3be2f9f722d2cb00bc9446eac6873681e9f46d29e9b74f2de87",
  "kind": "def",
  "lexical_name": "moserEdges",
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
  "slug": "moseredges--a4f5882ea55600b6cc48e3ff",
  "source": {
    "blob": "a0a3b51f79d7d730dc1f8d0a69e09a0364f57f7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 148,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4f5882ea55600b6cc48e3ff0c5710ef9f0c07c196b5b56ac3b3cf5db27197a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3189bd0f290d3be2f9f722d2cb00bc9446eac6873681e9f46d29e9b74f2de87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def moserEdges : Finset (Fin 7 × Fin 7) :=
  {(0,1),(0,2),(1,2),(3,1),(3,2),(0,4),(0,5),(4,5),(6,4),(6,5),(3,6)}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0a3b51f79d7d730dc1f8d0a69e09a0364f57f7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ded5adc498928233055f393f4cd4584bd753e0d662163ef8ca6fe58a50d4825c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
