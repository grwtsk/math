# TypeIIBlockSurgery.instDecidableEqChild

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55acd7bb68fd5b4f8650cb3224402fa29662240264a56e778b86654a641d3172",
  "kind": "instance",
  "lexical_name": "TypeIIBlockSurgery.instDecidableEqChild",
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
  "slug": "typeiiblocksurgery-instdecidableeqchild",
  "source": {
    "blob": "2a9acc30a2b29463428075efdd4473a25e8eddf0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 358,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0666cd723970249fa93b93e98b3f21158953403f59076b09eb1b6e4ac79d11d6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55acd7bb68fd5b4f8650cb3224402fa29662240264a56e778b86654a641d3172`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance TypeIIBlockSurgery.instDecidableEqChild
    {N : ℕ} {Left Right : Type*}
    [Fintype Left] [DecidableEq Left]
    [Fintype Right] [DecidableEq Right]
    {cutoffMatrix : ℕ → Matrix Left Right ℂ}
    {spatialCarrier : TypeIISpatialCarrier3 (Sum Left Right)}
    (surgery : TypeIIBlockSurgery N cutoffMatrix spatialCarrier) :
    DecidableEq surgery.Child :=
  surgery.childDecidableEq

/-- Reusable geometric certificate tying the algebraic block assignments to
the two sides of the surgery neck.

Each named child block is assigned one certified neck side; surjectivity
ensures that both sides occur.  Every left and right packet subcarrier is
then required to lie in the side assigned to its algebraic block.  This is
kept separate from `TypeIIBlockSurgery`: an exact matrix decomposition alone
does not establish spatial compatibility. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpatialCarrierNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9acc30a2b29463428075efdd4473a25e8eddf0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bc3e4eee682be9bed3ef2f48e5d6be46f3c12d4a19831053907ce851675859f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SpatialCarrier/Variant38830784d8901aade8faa6163bca1e84474db10f9cce8e88c592027b22fb82f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
