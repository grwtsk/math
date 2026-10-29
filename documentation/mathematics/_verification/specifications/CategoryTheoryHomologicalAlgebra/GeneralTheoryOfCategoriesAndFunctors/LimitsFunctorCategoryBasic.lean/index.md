# Verification target: Limits Functor Category Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2aa0287296fca2bfa9307686f3f67d72ad792a9",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2aa0287296fca2bfa9307686f3f67d72ad792a9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Currying` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [limit.lift_π_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limit-lift-app.md) | 35 | `result-track:e177acca8eca5151ac56865dfc640613737ab8004806653c94b7a9dcc27faf92` |
| 2 | `theorem` | [colimit.ι_desc_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimit-desc-app.md) | 40 | `result-track:c31b988435766ff0214398563c7205cecb2f988b95f8364d3e83bac33fc7ce7e` |
| 3 | `def` | [evaluationJointlyReflectsLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluationjointlyreflectslimits.md) | 48 | `declaration-track:0481deaa6a9ad2a13aef89db3f9f6f981f296eb5cdc66b4d1bf82a0fb0672872` |
| 4 | `def` | [combineCones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/combinecones.md) | 70 | `declaration-track:c6a1c07156bc524921a8166f8e77078b2828c06000fc2a2e560f6163e54d85a4` |
| 5 | `def` | [evaluateCombinedCones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluatecombinedcones.md) | 84 | `declaration-track:fb505ca6e174395262e066f115cb3b0e2436333709fc92b557a7f9534db12c08` |
| 6 | `def` | [combinedIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/combinedislimit.md) | 89 | `declaration-track:b3500a7a43c2a1cd7adf80566f5714e794505db1b705abfa36b33155a5956e0c` |
| 7 | `def` | [evaluationJointlyReflectsColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluationjointlyreflectscolimits.md) | 98 | `declaration-track:7456b65ed98fcfdc2de6be08eb8bac11e726008bd034e5faa3de8914b72d1202` |
| 8 | `def` | [combineCocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/combinecocones.md) | 123 | `declaration-track:8b42aa23d5d1829337bc09c70f927ac744b757486fd6fd40dea1c7fd2d58149f` |
| 9 | `def` | [evaluateCombinedCocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluatecombinedcocones.md) | 137 | `declaration-track:f49f88080781e2727ed6e3071d9ecf7fede70376e6e6c057405162b50096306a` |
| 10 | `def` | [combinedIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/combinediscolimit.md) | 142 | `declaration-track:23ecd14432c9fb4a75c8d8ec5743e8f91b4a89a47b0ef251e2adf64661f81f36` |
| 11 | `def` | [pointwiseCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/pointwisecocone.md) | 152 | `declaration-track:ccc68b7e43732ab7029e69dc8693b593a7ecacf99456ed9260c0a34ee11a4c8b` |
| 12 | `def` | [pointwiseIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/pointwiseiscolimit.md) | 164 | `declaration-track:69309278b86337cbba914e0dfbae55280db131b7b32eaa2db7cb269ddb943f8f` |
| 13 | `instance` | [functorCategoryHasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/functorcategoryhaslimit.md) | 172 | `declaration-track:c58396431704cdde3dd5340fc6c68a135d885cfd5d08310762d566d7bda04e9b` |
| 14 | `instance` | [functorCategoryHasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/functorcategoryhaslimitsofshape.md) | 177 | `declaration-track:4babaffb77824acd3d331f300e1e2d626c172761afa78675087313e14309669c` |
| 15 | `instance` | [functorCategoryHasColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/functorcategoryhascolimit.md) | 180 | `declaration-track:a5c43b4d6cd5138c3d813886612f5869dfdc24386a18fc228b9ff9a24f573252` |
| 16 | `instance` | [functorCategoryHasColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/functorcategoryhascolimitsofshape.md) | 186 | `declaration-track:297b80f48a77f2f28a87725f96d3c9a804a1552aecc3f05d0ad38aa674fa8303` |
| 17 | `instance` | [functorCategoryHasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/functorcategoryhaslimitsofsize.md) | 191 | `declaration-track:80e6e6d2b7b3fdf224e17890d5c85a678dd1c33ac6c10ba5a30c135a3adf07b7` |
| 18 | `instance` | [functorCategoryHasColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/functorcategoryhascolimitsofsize.md) | 196 | `declaration-track:bc8fa21de1811e4eb89f552325c3d4e73f77cf40ae7d7a9d3ef59823324d442f` |
| 19 | `instance` | [hasLimitCompEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/haslimitcompevaluation.md) | 200 | `declaration-track:d61185a54c608d17e6ee6ddef91a9133e17dc138f2c61710dc6b20cba639796a` |
| 20 | `instance` | [evaluation_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluation-preserveslimit.md) | 204 | `declaration-track:e5ec02dbdd6e7d7c9c72331194dc5961f154b5a74f6960f11ece03e53fd1fd25` |
| 21 | `instance` | [evaluation_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluation-preserveslimitsofshape.md) | 211 | `declaration-track:5d44ec73d8451acba530ea4c8972cdde1afe546730c334a9a42b0aba9fb2017d` |
| 22 | `def` | [limitObjIsoLimitCompEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitobjisolimitcompevaluation.md) | 218 | `declaration-track:61ca70229a1970a10fbc7258887cf5cc89b1d7eea4796ecbb3ba8708aab44355` |
| 23 | `theorem` | [limitObjIsoLimitCompEvaluation_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitobjisolimitcompevaluation-hom.md) | 223 | `result-track:a2965c4c1eb08a413f785e873aa31be37febe48018aafd5057c3cad53d0a5994` |
| 24 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_π_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitobjisolimitcompevaluation-inv-app.md) | 231 | `result-track:da608a21a225532a2b349040c8d34f29ef30937ae137f7cfa60e803a08b17591` |
| 25 | `theorem` | [limit_map_limitObjIsoLimitCompEvaluation_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limit-map-limitobjisolimitcompevaluation-hom.md) | 240 | `result-track:cfe61cee36be909c2718b7c1a3439418729c5716ba3e1ebd86d03b5d2488f5fc` |
| 26 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_limit_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitobjisolimitcompevaluation-inv-limit-map.md) | 248 | `result-track:47505e05a554b1b1f79067512c0aeba816f224fe4f3706586bcb56d3418bd7d4` |
| 27 | `theorem` | [limit_obj_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limit-obj-ext.md) | 255 | `result-track:e2daf6e96da72e50d5c8c162b1f421397b2fa4fd40e3474e74358d7b023e8b9d` |
| 28 | `def` | [limitCompWhiskeringLeftIsoCompLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitcompwhiskeringleftisocomplimit.md) | 263 | `declaration-track:a839dc961a99a755364d4d2becb8ee517eac1aa609fdbcb9c5b4d8be878d8d74` |
| 29 | `theorem` | [limitCompWhiskeringLeftIsoCompLimit_hom_whiskerLeft_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitcompwhiskeringleftisocomplimit-hom-whiskerleft.md) | 271 | `result-track:8ed687417c05ddb0213d131fc7d07bb31bdd788d08ed680280b278f0d7229361` |
| 30 | `theorem` | [limitCompWhiskeringLeftIsoCompLimit_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitcompwhiskeringleftisocomplimit-inv.md) | 279 | `result-track:38612f05709455ea6f8b91bb4c5fce0ee505e7885903842fd0db3a3a632f226f` |
| 31 | `instance` | [hasColimitCompEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/hascolimitcompevaluation.md) | 285 | `declaration-track:9960a3f805321f5f0d5ee6916d4c27be8e6ed9625640096fe66e5a53c2bbe7bd` |
| 32 | `instance` | [evaluation_preservesColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluation-preservescolimit.md) | 289 | `declaration-track:7befed0612fe69dc3a33f05171fd9393184ae1734a7bb4924d0016864dad47dc` |
| 33 | `instance` | [evaluation_preservesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluation-preservescolimitsofshape.md) | 296 | `declaration-track:b0551fa2384ee44bebdbccf9e914e698b0a5bcba8d331ad49844804e760f3e1d` |
| 34 | `def` | [colimitObjIsoColimitCompEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimitobjisocolimitcompevaluation.md) | 303 | `declaration-track:770d03c48a98f0d8b4fbcf451e6c5d7cef8a885e09747e99c92f8f933b599b73` |
| 35 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimitobjisocolimitcompevaluation-inv.md) | 308 | `result-track:0497cc81d5622c558825f32da2cbe4f1ae3d6644f8cff35fbd520f7d6b0609ff` |
| 36 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_app_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimitobjisocolimitcompevaluation-app-hom.md) | 316 | `result-track:ff54f1c2c951e8d630099099d3ed72904c88ca8ba74c614eedd7927e6f7003d4` |
| 37 | `theorem` | [colimitObjIsoColimitCompEvaluation_inv_colimit_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimitobjisocolimitcompevaluation-inv-colimit-map.md) | 325 | `result-track:7945705500b3cc48249badafe22fed9b0f91524a37db0d9f47b85d8970c96227` |
| 38 | `theorem` | [colimit_map_colimitObjIsoColimitCompEvaluation_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimit-map-colimitobjisocolimitcompevaluation-hom.md) | 335 | `result-track:6fce60e47f444c9ee5fa585de8e29716e1171f06764ccb92acae244fdf1d5e3c` |
| 39 | `theorem` | [colimit_obj_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimit-obj-ext.md) | 344 | `result-track:3d7895fcb1abaeb1706a684aeafd1e13e10993bd31cda9f65bf170690ca0c86c` |
| 40 | `def` | [colimitCompWhiskeringLeftIsoCompColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimitcompwhiskeringleftisocompcolimit.md) | 352 | `declaration-track:4625bcecaa425f205a4567fab2c9da2b6548a5c46aadd44bb1f6656de87a96b5` |
| 41 | `theorem` | [ι_colimitCompWhiskeringLeftIsoCompColimit_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimitcompwhiskeringleftisocompcolimit-hom.md) | 360 | `result-track:cc980f1b435efcd45c439c29f80570b44dc962d385239f1b0dbe6607ef53223a` |
| 42 | `theorem` | [whiskerLeft_ι_colimitCompWhiskeringLeftIsoCompColimit_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/whiskerleft-colimitcompwhiskeringleftisocompcolimit-inv.md) | 368 | `result-track:55110b8f13daff6cdf0d924f2e3461a6ac3ce81f1966f5e82058987ea3d358a4` |
| 43 | `instance` | [evaluationPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluationpreserveslimits.md) | 374 | `declaration-track:d5f2a02e9d07b712db359276001906edbcbda022b7f467a7e7203b2d2329241a` |
| 44 | `lemma` | [preservesLimit_of_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preserveslimit-of-evaluation.md) | 379 | `result-track:8667530dd02b07f4cc078eeb64b7eae252bced33dbf67ab5c77eec6c365fc455` |
| 45 | `lemma` | [preservesLimitOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preserveslimitofevaluation.md) | 389 | `result-track:48a665a613c4eba85ca9ad82ffc8a7bf39bd3095884573d66c79d7844f0b3fc1` |
| 46 | `lemma` | [preservesLimitsOfShape_of_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preserveslimitsofshape-of-evaluation.md) | 395 | `result-track:9d168e0dcad6bf0b79ab3417315622c9e4f63c92a154b8e7699eeadd41683c4a` |
| 47 | `lemma` | [preservesLimitsOfShapeOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preserveslimitsofshapeofevaluation.md) | 401 | `result-track:6a71261825c0a34ca866a273bf1eab8baee60c44f8f7a2a4802b9ca29440dae5` |
| 48 | `lemma` | [preservesLimits_of_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preserveslimits-of-evaluation.md) | 407 | `result-track:410cce9fbd4cb47678112759373705a4642d6a96087c17044f7d50c02ce07a26` |
| 49 | `lemma` | [preservesLimitsOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preserveslimitsofevaluation.md) | 414 | `result-track:5a6a1a334dfb46018c02bcccec00465b9c389dd2dbdf9db3ab707608d84b69c2` |
| 50 | `instance` | [preservesLimits_const](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preserveslimits-const.md) | 420 | `declaration-track:b96616f39b1e614aff9dcb1adfebbf7ee9566982c49452c49d3ee30127f35285` |
| 51 | `instance` | [evaluation_preservesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/evaluation-preservescolimits.md) | 424 | `declaration-track:2beafedf6ebe32918e4855bc6e352ecab683cef2fbfe1dbd13555aaf40c2c2ba` |
| 52 | `lemma` | [preservesColimit_of_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preservescolimit-of-evaluation.md) | 429 | `result-track:ccfb5d75bd05d41d72279ce3f9572b532ea0a2ef780071c7facb25d9f25368ee` |
| 53 | `lemma` | [preservesColimitOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preservescolimitofevaluation.md) | 439 | `result-track:2cf09a0868165e400166dc5e702399d36916c0d60e9198aca098dfa3e7c56038` |
| 54 | `lemma` | [preservesColimitsOfShape_of_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preservescolimitsofshape-of-evaluation.md) | 444 | `result-track:c5acf8c3478ddbdcca191fdba7ea003dd4628676e92a70d19b412b60c51269a0` |
| 55 | `lemma` | [preservesColimits_of_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preservescolimits-of-evaluation.md) | 450 | `result-track:bec05edb0f2a1ef3f9f3beebcafd13122ea86e2652268220840dc45a12cdb77f` |
| 56 | `instance` | [preservesColimits_const](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/preservescolimits-const.md) | 458 | `declaration-track:2c799f0ada6fcb6e049a9b393fc2f91d2f41f2ad4bc376f6bdacba720e903820` |
| 57 | `def` | [limitIsoFlipCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitisoflipcomplim.md) | 467 | `declaration-track:96ee5bc56edebd6154610112b8e6f6014a72287bf35c2ba1581e278da64f4cde` |
| 58 | `def` | [limitFlipIsoCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitflipisocomplim.md) | 472 | `declaration-track:763c30ae56dc619e870e1be14fc993910a9ff1e6abc4fc76c426475e4a1c6a9f` |
| 59 | `def` | [limitIsoSwapCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/limitisoswapcomplim.md) | 481 | `declaration-track:45b4405339f9b058722ea0bcbf0cd139909ee88af23ef8552862c315fe94013b` |
| 60 | `def` | [colimitIsoFlipCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimitisoflipcompcolim.md) | 488 | `declaration-track:a349742f48766e14b40607ad2e6ee1406a1c898948ccee8a49cd6dd7eeed8550` |
| 61 | `def` | [colimitFlipIsoCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimitflipisocompcolim.md) | 493 | `declaration-track:4697bfae91d53725d71816c15e09469d2f774741b329b027210bec933041c688` |
| 62 | `def` | [colimitIsoSwapCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryBasic.lean/declarations/colimitisoswapcompcolim.md) | 502 | `declaration-track:92ed482d621144d1338347c6470a12b23ca2120a99e576bdbdcb941596ae3b58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=509839b4f205edfe13e8e08cb1702b9351c0199ba2885dadfbdc0bc0a9b9bde3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd7fd5a8b025d4ae40fee7f6174dce10c04ca452e8f5d70a6edc263cf99ccadf7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
