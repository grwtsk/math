# fintypeToFinBoolAlgCatOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:898579e85f192c7b94b7f1f05585653382c19c02b869c5558c1ebdc08772f720",
  "kind": "def",
  "lexical_name": "fintypeToFinBoolAlgCatOp",
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
  "slug": "fintypetofinboolalgcatop--728b0c028d39753b289d96a2",
  "source": {
    "blob": "4c6f97cc2fc9ea5d7b08dd64e5269df60860d9d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 166,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:728b0c028d39753b289d96a24d2429ab40122087d9bed97e9de0382abd424f28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:898579e85f192c7b94b7f1f05585653382c19c02b869c5558c1ebdc08772f720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fintypeToFinBoolAlgCatOp : FintypeCat ⥤ FinBoolAlgCatᵒᵖ where
  obj X := op <| FinBoolAlgCat.of (Set X)
  map {X Y} f :=
    Quiver.Hom.op <| (CompleteLatticeHom.setPreimage f : BoundedLatticeHom (Set Y) (Set X))
#align Fintype_to_FinBoolAlg_op fintypeToFinBoolAlgCatOp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c6f97cc2fc9ea5d7b08dd64e5269df60860d9d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fca4827d52ae4f51c0d695ebbb00afd14a5f863c150a8059d9448f12c35d456 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBoolAlgCat/Variantbc6cbac01bf28a5a9f8b357bf90d7ebbb098365eaad655189c56bfc95d870452.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
