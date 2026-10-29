# Verification target: Limits Functor Category Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dbebefbe5dc6f2ad3b7dcb411751419c7a9b4a1",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dbebefbe5dc6f2ad3b7dcb411751419c7a9b4a1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [limit.lift_π_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limit-lift-app.md) | 45 | `result-track:c7b474f7c0b8f3dc8333b494aede5af1da219d35a20df0a7d99ce6482dfa49d2` |
| 2 | `theorem` | [colimit.ι_desc_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimit-desc-app.md) | 51 | `result-track:376d69cfca0c9fc441ad8695c5f9289b0e951b2cd57dcf9d3b1d5cedd77164f5` |
| 3 | `def` | [evaluationJointlyReflectsLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/evaluationjointlyreflectslimits.md) | 60 | `declaration-track:0cdb059973a0b75ead0ffd4fe3e94075ecdd5ba0a0b0184437f37a44eb958906` |
| 4 | `def` | [combineCones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/combinecones.md) | 84 | `declaration-track:44ba7d14c325b2ac0210f8acfb8ad48b55a4db78137e6be7c0e8213136ddce96` |
| 5 | `def` | [evaluateCombinedCones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/evaluatecombinedcones.md) | 100 | `declaration-track:92e6a3f4f094c2102f5fb4e7af813177a332b0cc8bfcf3b3f5bc6bfe494a7e9a` |
| 6 | `def` | [combinedIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/combinedislimit.md) | 106 | `declaration-track:a2f197e9325b16d9b672e357ba3a530965063f0ea8eb612c10fdf20e2e69b006` |
| 7 | `def` | [evaluationJointlyReflectsColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/evaluationjointlyreflectscolimits.md) | 116 | `declaration-track:dedcd2ef9ff8dd6facae6d798bb59236e6325b9bafed6ce4c516157eead5b722` |
| 8 | `def` | [combineCocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/combinecocones.md) | 143 | `declaration-track:72ef120e38c9e98abd21fd588f156ad6c4b3b503761de30786ec4b601c8ab267` |
| 9 | `def` | [evaluateCombinedCocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/evaluatecombinedcocones.md) | 159 | `declaration-track:359c7c82a815ecac0365586fdb39c33a80faa672b6b2ea4c72896287bb518633` |
| 10 | `def` | [combinedIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/combinediscolimit.md) | 165 | `declaration-track:0d186b3868f50f80d5bdeeb9638afb3b34daae19779bbacd3767886c5bad5ec0` |
| 11 | `instance` | [functorCategoryHasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/functorcategoryhaslimitsofshape.md) | 173 | `declaration-track:cdb0da3631481a21d5f0983a18d79d92b6f4818be49115d9f5e693cfbf62ea7d` |
| 12 | `instance` | [functorCategoryHasColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/functorcategoryhascolimitsofshape.md) | 180 | `declaration-track:3afa175ba44511969fa59e47b86d4fc9ed09dde6d7e1a640e98b7ca922154fec` |
| 13 | `instance` | [functorCategoryHasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/functorcategoryhaslimitsofsize.md) | 189 | `declaration-track:72f1c707da37c99b6027f95ae6bdd539316b5c4d7b762d0e95648028845f32fa` |
| 14 | `instance` | [functorCategoryHasColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/functorcategoryhascolimitsofsize.md) | 195 | `declaration-track:aadcc83c3d100384fa4cef0199522aa7ea9bb1db79ba8cb9dbf41bc0880418a6` |
| 15 | `instance` | [evaluationPreservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/evaluationpreserveslimitsofshape.md) | 200 | `declaration-track:7e50658fb2eef915a71380beb1278f4a51e2a2dcce1c48bc0d8bc0103f0f7ec0` |
| 16 | `def` | [limitObjIsoLimitCompEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limitobjisolimitcompevaluation.md) | 213 | `declaration-track:1a26954d261a382917c4147d07139d3567176e80f6cc62610d0cbd2ff98bac6c` |
| 17 | `theorem` | [limitObjIsoLimitCompEvaluation_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limitobjisolimitcompevaluation-hom.md) | 219 | `result-track:cb9ea842ee50a3ae60a6ccb2ed4651e25891cfae36241082fb423ae1d9408dc2` |
| 18 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_π_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limitobjisolimitcompevaluation-inv-app.md) | 228 | `result-track:26d3c0b486fd92ea5a4709c98e97012d9feda9064db3dbe9a8319738e78bce1c` |
| 19 | `theorem` | [limit_map_limitObjIsoLimitCompEvaluation_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limit-map-limitobjisolimitcompevaluation-hom.md) | 238 | `result-track:306e4774b16fda4efb09e7715cf8728640bc4183fad4c2e18330c24830904540` |
| 20 | `theorem` | [limitObjIsoLimitCompEvaluation_inv_limit_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limitobjisolimitcompevaluation-inv-limit-map.md) | 247 | `result-track:356890d2227fbb44d35477b858e8d12dc171726499ca7129276b6d4470a2f933` |
| 21 | `theorem` | [limit_obj_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limit-obj-ext.md) | 255 | `result-track:b843b7266837a007c5694a7209e06be7bdcd695d1cdc0e78ecca8841ea9bffc0` |
| 22 | `instance` | [evaluationPreservesColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/evaluationpreservescolimitsofshape.md) | 263 | `declaration-track:8fd7f8e5084ea0d75c65e84ab05252e3c7007c58cc81c2b0e965db28a8fe82a9` |
| 23 | `def` | [colimitObjIsoColimitCompEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimitobjisocolimitcompevaluation.md) | 276 | `declaration-track:5a8eb50548917bfa1fc34816f015173ab0e574711af6cf84d31ea2e30d676b32` |
| 24 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimitobjisocolimitcompevaluation-inv.md) | 282 | `result-track:22b6ccb6897c9d158b3761ee5bc22d2491f9da0c368ed29967601ff4dd7887e2` |
| 25 | `theorem` | [colimitObjIsoColimitCompEvaluation_ι_app_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimitobjisocolimitcompevaluation-app-hom.md) | 291 | `result-track:1ce493504efea754a05b7ee72a1eedab069867d04ab308f5deb400d9f6fd7351` |
| 26 | `theorem` | [colimitObjIsoColimitCompEvaluation_inv_colimit_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimitobjisocolimitcompevaluation-inv-colimit-map.md) | 301 | `result-track:e267835a4d7260c12d7719e266b2bcb8b2ee5c29222378473e979ace744884a8` |
| 27 | `theorem` | [colimit_map_colimitObjIsoColimitCompEvaluation_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimit-map-colimitobjisocolimitcompevaluation-hom.md) | 312 | `result-track:ceb5d6287a338dc89608dd4782aa4d34bba81c02013101e152c0f5ace7eeb4fb` |
| 28 | `theorem` | [colimit_obj_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimit-obj-ext.md) | 322 | `result-track:e083a0bb031ba88290c35aa31dcd0a39111c55e6d032d49f1e4618939408d322` |
| 29 | `instance` | [evaluationPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/evaluationpreserveslimits.md) | 330 | `declaration-track:fb7603562e5d113ff16260e3085664cde310190897012ecff9da138fe522b5f3` |
| 30 | `def` | [preservesLimitOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/preserveslimitofevaluation.md) | 335 | `declaration-track:811ec29fa47ce3bfb1c53b52e5c7935b138b75e7a6e18809fd28ba19352298da` |
| 31 | `def` | [preservesLimitsOfShapeOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/preserveslimitsofshapeofevaluation.md) | 346 | `declaration-track:8b1ccfe2a3de02e2fe44995b23141d48e032770f81dad10c84839ec8fba50fdb` |
| 32 | `def` | [preservesLimitsOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/preserveslimitsofevaluation.md) | 353 | `declaration-track:fa58b9bc44d0ed5dbea10bbeebd8a29d50c6fd0d0423e8b53d03a97148a175aa` |
| 33 | `instance` | [preservesLimitsConst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/preserveslimitsconst.md) | 361 | `declaration-track:3416b59826c6717c2999938c9e4dc1bcb44e61493abbccd2396700e7eb5275bf` |
| 34 | `instance` | [evaluationPreservesColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/evaluationpreservescolimits.md) | 366 | `declaration-track:4e25d46b7ac34b8544539c50f2c6fb39edc8418674e1bc31b765e37104036df4` |
| 35 | `def` | [preservesColimitOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/preservescolimitofevaluation.md) | 372 | `declaration-track:a0f31744b232f8cb3d026d33cbb1a2f9676dfb01edc6f49b30fe0d23e58f4696` |
| 36 | `def` | [preservesColimitsOfShapeOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/preservescolimitsofshapeofevaluation.md) | 383 | `declaration-track:0728f8e37b57c5bfdb640458c8cd8f24cc072f65755f04820016f271faa83d50` |
| 37 | `def` | [preservesColimitsOfEvaluation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/preservescolimitsofevaluation.md) | 390 | `declaration-track:17697a9fa281dd98a4c6e38307b8ed0878ea4b013fd6fadb0e19e1a5b3d2d7f0` |
| 38 | `instance` | [preservesColimitsConst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/preservescolimitsconst.md) | 399 | `declaration-track:2b4dc4141047b050c7f56509d94912f33813ae4f0fe69dd445a18b128485016b` |
| 39 | `def` | [limitIsoFlipCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limitisoflipcomplim.md) | 409 | `declaration-track:7fc65a463c1855fbb55d2a2f0da12f4a52cad87b2335b494faef1ee4cb5b7ac1` |
| 40 | `def` | [limitFlipIsoCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limitflipisocomplim.md) | 415 | `declaration-track:7222fda280e7b6c011023f85106b0c717667c060f799bd2f03cdc7c2de75b6a1` |
| 41 | `def` | [limitIsoSwapCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/limitisoswapcomplim.md) | 425 | `declaration-track:9bd09964ef0a22655b147a6be6d6922ba5726721a8dfa6806285ee450a182edd` |
| 42 | `def` | [colimitIsoFlipCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimitisoflipcompcolim.md) | 433 | `declaration-track:2e908cd8a71f23bf85f1c848dc9d42c3ff2c55b6de875f8d4e6b447cdda717f3` |
| 43 | `def` | [colimitFlipIsoCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimitflipisocompcolim.md) | 439 | `declaration-track:98fa1f8af7b3d1b2988b8149c290a3a845329bc5dbeddc97c2d968ad5c8e8df0` |
| 44 | `def` | [colimitIsoSwapCompColim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsFunctorCategoryNamespaced.lean/declarations/colimitisoswapcompcolim.md) | 449 | `declaration-track:c22b059bd9e4f1909020baa9358ba8abdecea750dea27403fb9cc268eb8f16c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=151eff8b89833f9cb08a544c6f10000bfce27ba65e9624b53cd0cfa22c1c8f86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantcc2d04996ca806d5d90c2c0d502a5d80990b306e2156349a80e3704c868ae7f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
