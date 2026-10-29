# EffectiveDescentCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b71adcebfd9868d89dfec5189645f7cf8f3aa978150e6da6dca3d27ed2b6273",
  "kind": "structure",
  "lexical_name": "EffectiveDescentCertificate",
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
  "slug": "effectivedescentcertificate",
  "source": {
    "blob": "25916c705ecbcfbc99a19b1b5ae017a28b0c1e2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 51,
    "path": "GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant91604eb2f09f6893a52263827010254d29c446444079cf2d1e275234696441ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21c9905406df2e8c0f2c7ccc6c98ad032cf7064b575806209baf3f4359f139bb",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/GaloisDescentNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b71adcebfd9868d89dfec5189645f7cf8f3aa978150e6da6dca3d27ed2b6273`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure EffectiveDescentCertificate
    {Galois : Type u} {Coefficient : Type v}
    {BaseObject : Type w} {ExtendedObject : Type x}
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient]
    (baseChange : BaseObject → ExtendedObject)
    (datum : GaloisDescentDatum Galois Coefficient ExtendedObject) where
  descended : BaseObject
  realizes : baseChange descended = datum.extension
  compatible : datum.compatibility

/-- A certificate produces the effective descended object and both witnesses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/GaloisDescentNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant91604eb2f09f6893a52263827010254d29c446444079cf2d1e275234696441ed.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25916c705ecbcfbc99a19b1b5ae017a28b0c1e2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9c1427e49f9b26f08231a58cc0f8630ebcbfecc3cf9ec559f844469328ad614 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant91604eb2f09f6893a52263827010254d29c446444079cf2d1e275234696441ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
