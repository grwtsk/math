# curry_mulSingle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:190c71be-6618-e19c-dcde-57dda43d0e52",
  "kind": "theorem",
  "lexical_name": "curry_mulSingle",
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
  "slug": "curry-mulsingle--9948630c7dd45cd0e592d302",
  "source": {
    "blob": "b1a7c0a1a2b5255fe0267940b60062dcda7efde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf2a7da0f9ac3a28a9469dc98a8367a3016bdd36dc9c9756340705b90b731939f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9948630c7dd45cd0e592d30262f0848af9cd4672e980cfac08d4f9f50c16887d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf2a7da0f9ac3a28a9469dc98a8367a3016bdd36dc9c9756340705b90b731939f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:190c71be-6618-e19c-dcde-57dda43d0e52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curry_mulSingle (i : ι × ι') (b : M) :
    curry (Pi.mulSingle i b) = Pi.mulSingle i.1 (Pi.mulSingle i.2 b) :=
  curry_update _ _ _

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf2a7da0f9ac3a28a9469dc98a8367a3016bdd36dc9c9756340705b90b731939f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf2a7da0f9ac3a28a9469dc98a8367a3016bdd36dc9c9756340705b90b731939f.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a7c0a1a2b5255fe0267940b60062dcda7efde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=479940b11242212d688fa3abb6f1d4a1e8d09d0f6aade5c381c49dc4a12b9b09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantf2a7da0f9ac3a28a9469dc98a8367a3016bdd36dc9c9756340705b90b731939f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
