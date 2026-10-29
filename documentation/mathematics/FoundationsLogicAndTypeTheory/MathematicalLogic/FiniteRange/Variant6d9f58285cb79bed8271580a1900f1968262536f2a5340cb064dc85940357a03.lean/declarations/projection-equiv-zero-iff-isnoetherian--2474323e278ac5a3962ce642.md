# projection_equiv_zero_iff_isNoetherian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3f17907-74b7-10af-1db8-b9b85fcc860a",
  "kind": "lemma",
  "lexical_name": "projection_equiv_zero_iff_isNoetherian",
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
  "slug": "projection-equiv-zero-iff-isnoetherian--2474323e278ac5a3962ce642",
  "source": {
    "blob": "ae840994d7757047bc3cd05ab9478f56de05f12d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant6d9f58285cb79bed8271580a1900f1968262536f2a5340cb064dc85940357a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2474323e278ac5a3962ce6429d6aed43296d710e5940967e4912e2208ca5e335",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant6d9f58285cb79bed8271580a1900f1968262536f2a5340cb064dc85940357a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3f17907-74b7-10af-1db8-b9b85fcc860a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma projection_equiv_zero_iff_isNoetherian {S T : Submodule K V} (hST : IsCompl S T) :
    S.projection T hST ≈ 0 ↔ IsNoetherian K S := by
  rw [equiv_zero_iff_hasNoetherianRange, hasNoetherianRange_iff_range, range_projection]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant6d9f58285cb79bed8271580a1900f1968262536f2a5340cb064dc85940357a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant6d9f58285cb79bed8271580a1900f1968262536f2a5340cb064dc85940357a03.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae840994d7757047bc3cd05ab9478f56de05f12d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55d68eb6de74d94bdd66fc264ae80b6981ab1d8bd85fcc2d35272781df49ed7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteRange/Variant6d9f58285cb79bed8271580a1900f1968262536f2a5340cb064dc85940357a03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
