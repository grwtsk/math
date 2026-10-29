# FunctorialSurjectiveInjectiveFactorizationData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18f82344ec0e42fc89932efaa7fe31adb890e4ef882cea542efe1cd6cfd79d6c",
  "kind": "abbrev",
  "lexical_name": "FunctorialSurjectiveInjectiveFactorizationData",
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
  "slug": "functorialsurjectiveinjectivefactorizationdata--f6cc4cf281c343a438b9fd67",
  "source": {
    "blob": "3cfd2cdde8f6b01db6a0143b8e69d59c14085eee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 106,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6cc4cf281c343a438b9fd672bc3cba8f3d24f650b53f960205ddd2ba77a342b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18f82344ec0e42fc89932efaa7fe31adb890e4ef882cea542efe1cd6cfd79d6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev FunctorialSurjectiveInjectiveFactorizationData :=
  (MorphismProperty.surjective C).FunctorialFactorizationData (MorphismProperty.injective C)

end ConcreteCategory

open ConcreteCategory

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
/-- In the category of types, any map can be functorially factored as a surjective
map followed by an injective map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cfd2cdde8f6b01db6a0143b8e69d59c14085eee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a651e1d7d1dbab4846f463fd80314b2a691c703ed7370ce50dd3fa79d5367dc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Concrete/Variant998a0b3259d331e1f48ac876b573ba75560a52ce9867b1e943c123c524801a8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
