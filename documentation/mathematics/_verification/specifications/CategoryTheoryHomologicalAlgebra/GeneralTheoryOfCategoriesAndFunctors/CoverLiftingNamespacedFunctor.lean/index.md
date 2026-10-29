# Verification target: Cover Lifting Namespaced Functor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2ce5520f322d72e6437b717dbf1013328eff1e8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2ce5520f322d72e6437b717dbf1013328eff1e8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.KanExtension.Adjunction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Continuous` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Functor.IsCocontinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/functor-iscocontinuous.md) | 79 | `declaration-track:c1b6d522c3275e1ae7a4f09635be22ac146369f4b69a7a7a6b602c37fda1a483` |
| 2 | `lemma` | [Functor.cover_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/functor-cover-lift.md) | 82 | `result-track:8d8992d9dfb7376bb50cc2d1a4cdcf13fa2221cd5791bd33ffd1a0d24e594301` |
| 3 | `instance` | [isCocontinuous_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/iscocontinuous-id.md) | 87 | `declaration-track:02f2486a7aa2ac4cef7997d14ab2dab87af6d8afa3533f366915842c168cdaf9` |
| 4 | `theorem` | [isCocontinuous_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/iscocontinuous-comp.md) | 91 | `result-track:26d2e18e7c5142d3386da2624438da5d14057063ce33ae2677e9fc3b6bc5ec4c` |
| 5 | `def` | [liftAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/liftaux.md) | 123 | `declaration-track:cd8edf6fe3a9e240642f62d377ae5a10869e0af99f3782866dd2881d77f9d4eb` |
| 6 | `lemma` | [liftAux_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/liftaux-map-source-edition-2.md) | 138 | `result-track:de81c3f07ef71ff981c18658dd63ce6b91a5dd711ce18926b4ab9293263b67dc` |
| 7 | `lemma` | [liftAux_map'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/liftaux-map.md) | 158 | `result-track:76baa5b93d6d1df246b5ea3764e4ac53d897c8b1114dc3bde764f5c30b6d210b` |
| 8 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/lift.md) | 173 | `declaration-track:24df556c90131939b70e79a3d350b607527314db18ddaa21738b829a3cd2dfbe` |
| 9 | `lemma` | [fac'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/fac.md) | 180 | `result-track:885c83d1ddc24b4e360ab4857835cb5cd076eb96965de797d0454f90e5c9a4f1` |
| 10 | `lemma` | [fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/fac-source-edition-2.md) | 185 | `result-track:905b6dea11ad2047479669e9750cec6d4b681ba2b135a58a50a71ea3615500f3` |
| 11 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/hom-ext.md) | 196 | `result-track:ebac8ed8cffa5fd945871d9fb127c96eb219c0a6d69cbd06642a5421d2a495a0` |
| 12 | `def` | [isLimitMultifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/islimitmultifork.md) | 211 | `declaration-track:3b3f2739506b56bb8d9ff1790f4cdf26b7ac9e8403ea8d104d089c4ac5dabedd` |
| 13 | `theorem` | [ran_isSheaf_of_isCocontinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/ran-issheaf-of-iscocontinuous.md) | 225 | `result-track:0765c57feaef50c6698d7d1ed0a7b86660ee32c1c10e764dd5b8ede2be191495` |
| 14 | `def` | [Functor.sheafPushforwardCocontinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/functor-sheafpushforwardcocontinuous.md) | 235 | `declaration-track:91a7eff6db2fa8dadf1eea577af662a96953e296beaaef9b23108bad5335fa3a` |
| 15 | `def` | [Functor.sheafPushforwardCocontinuousCompSheafToPresheafIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/functor-sheafpushforwardcocontinuouscompsheaftopresheafiso.md) | 244 | `declaration-track:c80fcf3c7b578d3658274150984885df528459bfe6fdcbe7d4bcae1654b83af4` |
| 16 | `def` | [sheafAdjunctionCocontinuous](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/sheafadjunctioncocontinuous.md) | 269 | `declaration-track:b0e3186fe22a7647792bf2a69ea917290a34197d19de01c5cfe08028ae76d6b7` |
| 17 | `lemma` | [sheafAdjunctionCocontinuous_unit_app_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/sheafadjunctioncocontinuous-unit-app-val.md) | 276 | `result-track:4a6d03b72147a587378079a5b7bb954792e60dea2e85f410ba03d3ccc5eef60d` |
| 18 | `lemma` | [sheafAdjunctionCocontinuous_counit_app_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/sheafadjunctioncocontinuous-counit-app-val.md) | 288 | `result-track:b3b879b7efcb9fabb5fcc45b6f4ef67e90c5866d59c391e95f88579c4bea6bf6` |
| 19 | `lemma` | [sheafAdjunctionCocontinuous_homEquiv_apply_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/sheafadjunctioncocontinuous-homequiv-apply-val.md) | 297 | `result-track:7e3f59e25eede8191b2ee35bc73a87551d2d380c1e8fcf73bc20a067788e3d6a` |
| 20 | `def` | [pushforwardContinuousSheafificationCompatibility](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/pushforwardcontinuoussheafificationcompatibility.md) | 313 | `declaration-track:bb90ed10aa09633f94b8b0746b67c7f20cb36ffa4d8db7754067e5aeee63388e` |
| 21 | `lemma` | [toSheafify_pullbackSheafificationCompatibility](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/tosheafify-pullbacksheafificationcompatibility.md) | 321 | `result-track:54ef5dfb308ec7a3bcd7f543c526330e69e6a6fd61c6af1cb42b6a33f3eb07e7` |
| 22 | `lemma` | [pushforwardContinuousSheafificationCompatibility_hom_app_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedFunctor.lean/declarations/pushforwardcontinuoussheafificationcompatibility-hom-app-val.md) | 344 | `result-track:ef8921dffa7ea50b42a3fa8feed1c89bd704609b2600e4410fe5446bbf5c9107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4311912bae14997b7567c61481b398ae6de50f2b457822f904167c7acce42655 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantdddc92b26ce9ba2fe258768cd85c279c562e77c4b6c5fea450cd2b85e2dda6b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
