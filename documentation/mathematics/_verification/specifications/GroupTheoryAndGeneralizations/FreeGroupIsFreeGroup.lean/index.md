# Verification target: Free Group Is Free Group

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc2711c1936db59e5f80ad2e7d8932b64d2389d7",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc2711c1936db59e5f80ad2e7d8932b64d2389d7`.

Source path: `GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.FreeGroup.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FreeGroupBasis](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/freegroupbasis.md) | 51 | `declaration-track:1536b4eba3db38927735e99169f1c808d6693a637642cd474c3152d7b0333459` |
| 2 | `class` | [IsFreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/isfreegroup.md) | 60 | `declaration-track:2265a3f30e9b7ea7af8bba8ff0d24c8efe952f33aaf949f87f44deb3fbbc75b9` |
| 3 | `instance` | [instFunLike](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/instfunlike.md) | 69 | `declaration-track:e0f2ad078addbdb34ee24e276e144eddad18fdd935073a79607ce348d7908974` |
| 4 | `lemma` | [repr_apply_coe](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/repr-apply-coe.md) | 78 | `result-track:b3d10ce480064464f357065043e97a17f29c5584902e8f858af946f0c1ced193` |
| 5 | `def` | [ofFreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/offreegroup.md) | 83 | `declaration-track:055d04d4ab9cd6c6f6ba3bbbfe28ce7ad0e27d6d5ed7c1a5913be9647b56243e` |
| 6 | `lemma` | [ofFreeGroup_apply](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/offreegroup-apply.md) | 85 | `result-track:289aee8852b8f5e851c24465e7a503048e23245a7ff13b9631779c24c9873cd7` |
| 7 | `def` | [reindex](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/reindex.md) | 90 | `declaration-track:5fd61c53ee1b3ba0c3c26033a465857006168dcb5b6be8cde75a46cc9cec2163` |
| 8 | `lemma` | [reindex_apply](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/reindex-apply.md) | 93 | `result-track:fa5814a168b25ed8a6b2896b9f05820bb053f1a47bd48894bdd3d4b626e6e1e5` |
| 9 | `def` | [map](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/map.md) | 97 | `declaration-track:c848d31f1433498b342ca296ad09b29a86fff623bf56332587cf55bf87812da6` |
| 10 | `lemma` | [map_apply](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/map-apply.md) | 100 | `result-track:58be97a1a22fe69a8f7686249eef47b9150eff6f2c7081b7260a878265a9c3fe` |
| 11 | `lemma` | [injective](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/injective.md) | 103 | `result-track:908126f0ea33f2d49e3a9abe0b9f1acf73d9dfa0fe059c4879dac4f07e15f2d9` |
| 12 | `lemma` | [isFreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/isfreegroup-source-edition-2.md) | 107 | `result-track:a25832e075b02c13a662a084c6bf5af45522fe0026bee88f12f4cd95b82d6683` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/instance.md) | 110 | `declaration-track:37a21ee629c34bf06c91bf2060699c378fa6ba0d6ec0d2edfc3a6c5ff2a18f58` |
| 14 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/lift.md) | 116 | `declaration-track:01daee0ed5586516af602fa23c2b5b0cbf3ce5f8f0dd8dfe9bb10a6dbd5a41eb` |
| 15 | `lemma` | [ext_hom](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/ext-hom.md) | 128 | `result-track:b47bd2e5539beb4d180ee2f317b76fa11c25dbb01846cc992fe489acaf107b9e` |
| 16 | `def` | [ofLift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/oflift.md) | 134 | `declaration-track:a67d0dffc5a5da5d8a33df5bbbea0fa4f8a7f720e097dee503c31eea2cc7d756` |
| 17 | `def` | [ofUniqueLift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/ofuniquelift.md) | 153 | `declaration-track:62d379e5d64076e35612a3c3214d310fde668488389f8b0ea589120425bc31c6` |
| 18 | `def` | [Generators](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/generators.md) | 172 | `declaration-track:9329d5e96fb80a5fef25324873faf260fe7e77e862681abde475dc8ded0cdcfc` |
| 19 | `def` | [basis](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/basis.md) | 179 | `declaration-track:a219414d1a13cea9473876f7319510fdb3e480d700e9d7f1e67f5c968454dba3` |
| 20 | `def` | [toFreeGroup](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/tofreegroup.md) | 183 | `declaration-track:8e2c6fc39fa4bdcba4f90e1525acc2909380f9cf31634e284d39060ea7b892d5` |
| 21 | `def` | [of](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/of.md) | 189 | `declaration-track:acd93f72ef8bf829f444a2d6970a383d5d09470089d5d4a3cedde73a4e2e66e3` |
| 22 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/lift-source-edition-2.md) | 196 | `declaration-track:28342e335a66547e2e80a0f265db616003832f2994d56cbfa24c6222349ac09f` |
| 23 | `theorem` | [lift_of](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/lift-of.md) | 200 | `result-track:0e92b3e2f10f9e71b62a009a05c6613de464b6b8cb43e649c75dee2af96373f7` |
| 24 | `theorem` | [lift_symm_apply](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/lift-symm-apply.md) | 204 | `result-track:99a474c9b45b43f36b42bd1f9735cdd15384b912c4f7dc53932f46e8110f3568` |
| 25 | `theorem` | [ext_hom](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/ext-hom-source-edition-2.md) | 208 | `result-track:c514b68416c9aa88ea9f4604ee8454ea7886fcdc2bd3d94877ec37d079b35b40` |
| 26 | `theorem` | [unique_lift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/unique-lift.md) | 216 | `result-track:e5a9cf589e291cf1577e15a76e4ab59f42762f5fe8891862f2a479611b52256d` |
| 27 | `lemma` | [ofLift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/oflift-source-edition-2.md) | 222 | `result-track:f1e28d4189470c9475e6fd665fb8be24555a29ffba458e62bafce00ef6c51137` |
| 28 | `lemma` | [ofUniqueLift](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/ofuniquelift-source-edition-2.md) | 230 | `result-track:c63375a44af5358b81d38a8d1bc30ca8ee3f21f8270d26ee1ae0843e63f2072f` |
| 29 | `lemma` | [ofMulEquiv](../../../../GroupTheoryAndGeneralizations/FreeGroupIsFreeGroup.lean/declarations/ofmulequiv.md) | 235 | `result-track:bb35d8b76e4cb76b1b93e5d6f5a284d8fbdecf00f93a5655ae612ca1116d8253` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db03ea2cac0162dea1c2006286e39e5476c3e5cd6ab35f061209226ae1a68f16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/IsFreeGroup/Variantca19374bdcad27a1d34522db8fc3c9cd4c4e375f7172e449c2d7aeabb6e4c476.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
