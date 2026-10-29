# CoverOverlapPullbackData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43827dceaebd0673a1a2da75dc13f8350ca817f1fd1ef9aa7347f26c1250dc83",
  "kind": "structure",
  "lexical_name": "CoverOverlapPullbackData",
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
  "slug": "coveroverlappullbackdata",
  "source": {
    "blob": "f5ca219aa7dc0c4802d46e697f161618f5ff96f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1592,
    "line": 1545,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01a8c27b884173ea67c80c7d329e5d56e1c6b81443ca60251ca086cfd1424ac6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SitePadicFormalScheme.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43827dceaebd0673a1a2da75dc13f8350ca817f1fd1ef9aa7347f26c1250dc83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1545–1592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoverOverlapPullbackData
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    {Cat : SiteMorphismCategoryData P X}
    {U : PrismaticSiteObject P X}
    {C : CoverFamily U}
    {i j : C.index}
    (O : CoverOverlap C i j) where
  squareCommutes :
    Cat.comp O.leftMap (C.mapToBase i) =
      Cat.comp O.rightMap (C.mapToBase j)
  lift :
    ∀ {W : PrismaticSiteObject P X}
      (left : SiteMorphism W (C.obj i))
      (right : SiteMorphism W (C.obj j)),
      Cat.comp left (C.mapToBase i) =
        Cat.comp right (C.mapToBase j) →
        SiteMorphism W O.object
  lift_left :
    ∀ {W : PrismaticSiteObject P X}
      (left : SiteMorphism W (C.obj i))
      (right : SiteMorphism W (C.obj j))
      (h :
        Cat.comp left (C.mapToBase i) =
          Cat.comp right (C.mapToBase j)),
        Cat.comp (lift left right h) O.leftMap = left
  lift_right :
    ∀ {W : PrismaticSiteObject P X}
      (left : SiteMorphism W (C.obj i))
      (right : SiteMorphism W (C.obj j))
      (h :
        Cat.comp left (C.mapToBase i) =
          Cat.comp right (C.mapToBase j)),
        Cat.comp (lift left right h) O.rightMap = right
  lift_unique :
    ∀ {W : PrismaticSiteObject P X}
      (left : SiteMorphism W (C.obj i))
      (right : SiteMorphism W (C.obj j))
      (h :
        Cat.comp left (C.mapToBase i) =
          Cat.comp right (C.mapToBase j))
      (m : SiteMorphism W O.object),
        Cat.comp m O.leftMap = left →
        Cat.comp m O.rightMap = right →
          m = lift left right h
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SitePadicFormalScheme.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean#L1545).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5ca219aa7dc0c4802d46e697f161618f5ff96f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7f31a3843fa41c2af0ccebaab0761ace2a6d598d5c3a30aa974aee666717d6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Site/Variant0de83e55905bdc88fb8fd042f5f9281ef116407da763b90edc6d117e59128135.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
