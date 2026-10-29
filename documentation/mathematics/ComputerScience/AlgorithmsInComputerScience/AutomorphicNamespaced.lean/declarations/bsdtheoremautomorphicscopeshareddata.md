# BSDTheoremAutomorphicScopeSharedData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b5c5eb829e5cbf4ea8883cf7a626cfb4c9ddbf4d71176f7d0b672fd0898c996",
  "kind": "structure",
  "lexical_name": "BSDTheoremAutomorphicScopeSharedData",
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
  "slug": "bsdtheoremautomorphicscopeshareddata",
  "source": {
    "blob": "8ca0e495b74438b18232dd05503049d030b222bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 245,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b57b095ed6a1e3998d5664f0f6d9a0b3f993f14f43ac810dfff35f31ba9c4f60",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/AlgorithmsInComputerScience/AutomorphicNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b5c5eb829e5cbf4ea8883cf7a626cfb4c9ddbf4d71176f7d0b672fd0898c996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BSDTheoremAutomorphicScopeSharedData
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L)
    (S : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP) where
  declaredScope :
    AutomorphicProvenanceScope
  declaredScope_eq :
    declaredScope = AP.scope
  supportedScope :
    AutomorphicProvenanceScope
  supportedScope_eq :
    supportedScope = AP.scope
  scopeSupport :
    AutomorphicScopeSupportCertificate N L AP.scope
  scopeSupport_eq :
    scopeSupport = S.scopeSupport
  scopeTheoremData :
    AutomorphicScopeTheoremData N L AP.scope
  scopeTheoremData_eq :
    scopeTheoremData = S.scopeSupport.scopeTheoremData
  automorphicData :
    AutomorphicProvenanceObjectData N P L
  automorphicData_eq :
    automorphicData = AP.automorphicData
  automorphicDataScope_eq :
    automorphicData.scope = AP.scope
  scopeTheoremDataScope_eq :
    scopeTheoremData.theoremScope = AP.scope
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/AutomorphicNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ca0e495b74438b18232dd05503049d030b222bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3768b16c58cf656d85ed98c5d138b90bccc04df0f4ca981912c0595fb9336a5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantc52de2f880b93d91560cf81164c5a059cc221d8178541e6e5fb24205ea8f85fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
