# commutator_centralizer_commutator_le_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef20e5db-a2b2-9d6c-0076-083cf8fb0332",
  "kind": "theorem",
  "lexical_name": "commutator_centralizer_commutator_le_center",
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
  "slug": "commutator-centralizer-commutator-le-center",
  "source": {
    "blob": "cb0df9725c3fc70c4730e9bd0ce3e5afc8ebbf9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb00404824ddb3be8131f39489ee945bf5a40920f3bf74eaffca53509e5311be",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef20e5db-a2b2-9d6c-0076-083cf8fb0332`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem commutator_centralizer_commutator_le_center :
    ⁅centralizer (commutator G : Set G), centralizer (commutator G)⁆ ≤ Subgroup.center G := by
  rw [← Subgroup.centralizer_univ, ← Subgroup.coe_top, ←
    Subgroup.commutator_eq_bot_iff_le_centralizer]
  suffices ⁅⁅⊤, centralizer (commutator G : Set G)⁆, centralizer (commutator G : Set G)⁆ = ⊥ by
    refine' Subgroup.commutator_commutator_eq_bot_of_rotate _ this
    rwa [Subgroup.commutator_comm (centralizer (commutator G : Set G))]
  rw [Subgroup.commutator_comm, Subgroup.commutator_eq_bot_iff_le_centralizer]
  exact Set.centralizer_subset (Subgroup.commutator_mono le_top le_top)
#align commutator_centralizer_commutator_le_center commutator_centralizer_commutator_le_center

/-- The abelianization of G is the quotient of G by its commutator subgroup. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/AbelianizationNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb0df9725c3fc70c4730e9bd0ce3e5afc8ebbf9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=74919e5bd8fe5639d52dab7d9e2901e66cb15f221d3e7c5a9cc7a61a91e2ca52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Abelianization/Varianta01953586be1204027f7a5cf74e0d44ebb5ca91b2402b56cbf8a5e358e45dd4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
