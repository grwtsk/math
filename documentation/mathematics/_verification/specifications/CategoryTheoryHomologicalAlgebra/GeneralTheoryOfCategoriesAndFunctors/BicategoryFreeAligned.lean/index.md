# Verification target: Bicategory Free Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a375fe46436a132d9085bd353cee0b11614009b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant1ee44c7020b65087a8addd71379967eb09c83377cb604a63dc22ddd4086cc8d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a375fe46436a132d9085bd353cee0b11614009b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant1ee44c7020b65087a8addd71379967eb09c83377cb604a63dc22ddd4086cc8d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant1ee44c7020b65087a8addd71379967eb09c83377cb604a63dc22ddd4086cc8d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeBicategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/freebicategory.md) | 35 | `declaration-track:c60e78815069e1af359e9c81537228bc7c87786eced7e29397ddbd8480c748a8` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/instance.md) | 39 | `declaration-track:05e2b0a4d9346418029d7863fee91ee9cd50f76bcf74ad2ea01571f364c4a256` |
| 3 | `inductive` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/hom-source-edition-2.md) | 50 | `declaration-track:e9c1e0d84b24e5860c41192b1f33de91c2d49e86b3ee01b1bd15aac8bf2069b9` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/instance-source-edition-2.md) | 56 | `declaration-track:61d2464d4f32102db8edba8c5343fb50377366e0fdbd71cae676aa69ff5729ce` |
| 5 | `instance` | [quiver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/quiver.md) | 59 | `declaration-track:571231dcb36b3927596969bba9deb0525546050af3499856b7b8a9f13fb0f84e` |
| 6 | `instance` | [categoryStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/categorystruct.md) | 62 | `declaration-track:6fea9c57a883774ebcf4948fb47cca0dc9b35c1a9909ccf164a9d0c235cf7258` |
| 7 | `inductive` | [Hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/hom.md) | 69 | `declaration-track:7cda11063398af0862fc91a17d34c09af2e2cc7303d0319e8162f86e347d5a76` |
| 8 | `inductive` | [Rel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/rel.md) | 122 | `declaration-track:99fc062e117b726773b68dd85776739a0ba15ebe37e68b2228ceb96920114b6e` |
| 9 | `instance` | [homCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/homcategory.md) | 170 | `declaration-track:100368625b54a31f8a4804464dc005c1e300bd44c6b51ccdb78f1672264375ea` |
| 10 | `instance` | [bicategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/bicategory.md) | 186 | `declaration-track:3fe5b37ff9db288218f886b8cc9a8b25ceb798be4c4f44fd0e6795b7898c96fc` |
| 11 | `abbrev` | [Hom₂.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/hom-mk.md) | 237 | `declaration-track:bee602f8e2c6b023ece71b94c2515ca30fbdf31dccc5919cc2976357d6734d17` |
| 12 | `theorem` | [mk_vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-vcomp.md) | 241 | `result-track:f6335a45f687701b8431d0749ce027a72677b67c550c94434d76bac60d7de037` |
| 13 | `theorem` | [mk_whisker_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-whisker-left.md) | 247 | `result-track:6f42b8b900843ab513657390a28f529e97ce1b952bf8c5e03c1f77fd471a0a3d` |
| 14 | `theorem` | [mk_whisker_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-whisker-right.md) | 253 | `result-track:3b835519db6619d221c3db24f6ff5bcb0e31afae3ad5ad5e350858464951c935` |
| 15 | `theorem` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/comp-def.md) | 266 | `result-track:8a3c81382c9fe0899514d6f79d791b457edf95278f969ce6494c5da7adfce6c7` |
| 16 | `theorem` | [mk_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-id.md) | 271 | `result-track:6f86c2bccd3cc20dc7d5d7873628f81828654a908f8c6cc6f9c00aecf299df2f` |
| 17 | `theorem` | [mk_associator_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-associator-hom.md) | 276 | `result-track:fbb0f146c6dd3d5428dc6a212b7d217b561b528b06650e063800706d881601a8` |
| 18 | `theorem` | [mk_associator_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-associator-inv.md) | 281 | `result-track:0e77fe8417908f1601058197b3ee098c40334c17ff53c3eae2243e74df7a2b45` |
| 19 | `theorem` | [mk_left_unitor_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-left-unitor-hom.md) | 286 | `result-track:58165eb8087d70c7e0747a2d2bc8d21b96e6befd6b9ae64412617057dd04b491` |
| 20 | `theorem` | [mk_left_unitor_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-left-unitor-inv.md) | 291 | `result-track:a6a81139522fb0ec688bb73a8a17cd08a4142c1ef474d96c3aef34dff642397f` |
| 21 | `theorem` | [mk_right_unitor_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-right-unitor-hom.md) | 296 | `result-track:7ab3c4b172bb75dd3c46b293e12eb587b2964ce6cc90605c4c4b7b7c83bf4c4e` |
| 22 | `theorem` | [mk_right_unitor_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/mk-right-unitor-inv.md) | 301 | `result-track:b0471c7f45e708d3a72dad535b560b48f40364c0413529192a4344153a7f571d` |
| 23 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/of.md) | 307 | `declaration-track:9e82de488b50971220b19171d6a0acb965842d5aec9c145bd926a5a2f4b067ff` |
| 24 | `def` | [liftHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/lifthom.md) | 322 | `declaration-track:59bbb18c9789a3def1f45961ca6f8ab9cc11c1498eee70d76fc38ebf1f4c0109` |
| 25 | `theorem` | [liftHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/lifthom-id.md) | 329 | `result-track:10d181f5bfc2d4d00d3f999ce69f0217f87664117aa60c5590d083d9f582a57c` |
| 26 | `theorem` | [liftHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/lifthom-comp.md) | 334 | `result-track:4a307e99ceae2c874c5a7ade4a0103a5987937fbc6aa7ffd95004f326f4431b2` |
| 27 | `def` | [liftHom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/lifthom-source-edition-2.md) | 349 | `declaration-track:fd19976d83711b6c867aa57110729b0e0b3dd288dfd40a092c58fb41d72a9f18` |
| 28 | `theorem` | [liftHom₂_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/lifthom-congr.md) | 364 | `result-track:6a0caa0108505e42fb98354ecb0d959ca68b435bf8a0abf2e5adf810f591779c` |
| 29 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryFreeAligned.lean/declarations/lift.md) | 372 | `declaration-track:ac715f0049894c6475f4162652ebd5f9a52350158cad7c48f069500076fdc53a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3185b4ecf65fa6f44fc71bca88526371d44fe87420c6c524f1479a097eb84356 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant1ee44c7020b65087a8addd71379967eb09c83377cb604a63dc22ddd4086cc8d3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Free/Variant1ee44c7020b65087a8addd71379967eb09c83377cb604a63dc22ddd4086cc8d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
