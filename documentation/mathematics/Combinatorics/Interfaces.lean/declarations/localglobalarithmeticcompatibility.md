# LocalGlobalArithmeticCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1dde9fa86cf016ade79e3d71eb95c2bc8c66b09d5a03b5f9b829088b294b8d3",
  "kind": "structure",
  "lexical_name": "LocalGlobalArithmeticCompatibility",
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
  "slug": "localglobalarithmeticcompatibility",
  "source": {
    "blob": "a68661f388a3d962479240a884a8363da94be61f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interfaces/Variant2503e394fc4703ce52408c0c5a774896cd6b5ce358ddeebfea25e9fac24ebe4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc917f2274a27a71faf900b02a870cb4bf6c7fca5f852bd5e114d9ea9a917035",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/Interfaces.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1dde9fa86cf016ade79e3d71eb95c2bc8c66b09d5a03b5f9b829088b294b8d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalGlobalArithmeticCompatibility
    (Place : Type uPlace)
    (ArithmeticLocal : Type uArithmeticLocal)
    (BitfieldLocal : Type uBitfieldLocal) where
  arithmeticLocal : Place → ArithmeticLocal
  bitfieldLocal : Place → BitfieldLocal
  compatible : ArithmeticLocal → BitfieldLocal → Prop
  everyLocalDatumCompatible :
    ∀ place,
      compatible
        (arithmeticLocal place)
        (bitfieldLocal place)
  frobeniusDataMatched : Prop
  frobeniusDataMatchedProof :
    frobeniusDataMatched
  conductorDataMatched : Prop
  conductorDataMatchedProof :
    conductorDataMatched
  monodromyDataMatched : Prop
  monodromyDataMatchedProof :
    monodromyDataMatched
  eulerFactorsMatched : Prop
  eulerFactorsMatchedProof :
    eulerFactorsMatched
  automorphicDataMatched : Prop
  automorphicDataMatchedProof :
    automorphicDataMatched
  localDataAssembleGlobally : Prop
  localDataAssembleGloballyProof :
    localDataAssembleGlobally

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/Interfaces.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interfaces/Variant2503e394fc4703ce52408c0c5a774896cd6b5ce358ddeebfea25e9fac24ebe4c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a68661f388a3d962479240a884a8363da94be61f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4b44bb55d75d752a8e68e56d6942fa47d2aaf58ab47b2c7d56ea6ba6601707b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interfaces/Variant2503e394fc4703ce52408c0c5a774896cd6b5ce358ddeebfea25e9fac24ebe4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
