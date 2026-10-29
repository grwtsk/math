# Path₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a6d0221eb7c247b06577325df56c112769a7fc4a971ff0d82e0f6c6620d3e53",
  "kind": "structure",
  "lexical_name": "Path₁",
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
  "slug": "path-source-edition-3",
  "source": {
    "blob": "7bfcfd4b81105455fa6ffdb35dd034394c71bf83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 42,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:92d504fbafc804484287ceb67a5c9be3a4a362b4a3dc531816b0ef157f94595a",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicTopology/PathNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a6d0221eb7c247b06577325df56c112769a7fc4a971ff0d82e0f6c6620d3e53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Path₁ (X : SSet.Truncated.{u} 1) (n : ℕ) where
  /-- A path includes the data of `n + 1` 0-simplices in `X`. -/
  vertex : Fin (n + 1) → X _⦋0⦌₁
  /-- A path includes the data of `n` 1-simplices in `X`. -/
  arrow : Fin n → X _⦋1⦌₁
  /-- The source of a 1-simplex in a path is identified with the source vertex. -/
  arrow_src (i : Fin n) : X.map (tr (δ 1)).op (arrow i) = vertex i.castSucc
  /-- The target of a 1-simplex in a path is identified with the target vertex. -/
  arrow_tgt (i : Fin n) : X.map (tr (δ 0)).op (arrow i) = vertex i.succ

/-- A path of length `m` in an `n + 1`-truncated simplicial set `X` is given by
the data of a `Path₁` structure on the further 1-truncation of `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicTopology/PathNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bfcfd4b81105455fa6ffdb35dd034394c71bf83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=daf70f7f41cc7740608c3d85803d67b2349f20b5738135533a1aceddcff2561e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant90b650b87a1645ed4f9ea35da6012cfd44aac71cbd056bb92c9ead379e5879b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
