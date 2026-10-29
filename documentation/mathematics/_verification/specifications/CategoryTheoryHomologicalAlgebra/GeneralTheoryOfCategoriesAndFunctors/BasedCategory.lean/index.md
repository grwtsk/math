# Verification target: Based Category

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a41ad926d48b9690a539d2e3bd34b68c5bfee3f5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a41ad926d48b9690a539d2e3bd34b68c5bfee3f5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.HomLift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Strict` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BasedCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/basedcategory.md) | 38 | `declaration-track:1acdc53a4ad9887143dd61463edae239d3254878e0315a3b8ac06cafd94821b9` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/instance-source-edition-2.md) | 46 | `declaration-track:3825117bd032da1365a2a8e8d52d6196cba4c7ed77512c7ef3712bd4481f5f08` |
| 3 | `def` | [BasedCategory.ofFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/basedcategory-offunctor.md) | 49 | `declaration-track:555247579b5bef04b01f4f9331edb97279f6f5766f65068e1480c53be6b1f1b3` |
| 4 | `structure` | [BasedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/basedfunctor.md) | 55 | `declaration-track:9f665ca2c3b0a9cb36de9a08035025b278efb884ee103f175763473919665647` |
| 5 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/id-source-edition-2.md) | 68 | `declaration-track:4846127cea2d4fd2a7413f1e5c699ff11f545d589cf307594d0263d0e691dec8` |
| 6 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/comp.md) | 78 | `declaration-track:1ab9ccd753574a9ab778b13ec69161be14a33b4ff85052933c9c10922dad0ddf` |
| 7 | `lemma` | [comp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/comp-id.md) | 86 | `result-track:911482096a3367fc03cf7980458828cd7f0e5a446d8e7fff08e6922fe07663cd` |
| 8 | `lemma` | [id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/id-comp.md) | 90 | `result-track:f9e84661c89215172b6d34a6f1023a3125669057fbe8d587f0b8bea4454c1825` |
| 9 | `lemma` | [comp_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/comp-assoc.md) | 94 | `result-track:1ca75ba48ae2b5136c03f9b4498e416257aa9ea88dbf19cc1be4437ae840d03c` |
| 10 | `lemma` | [w_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/w-obj.md) | 99 | `result-track:3dac28faeb722dcc3c63a100d80a2863bfa0eccc4dad3eacc3401d4ee645fe18` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/instance-source-edition-4.md) | 102 | `declaration-track:be51f7d0a4c2f3f481f057c4762b541cd8f488bf70027d831256254e3d0b0d5d` |
| 12 | `instance` | [preserves_isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/preserves-ishomlift.md) | 111 | `declaration-track:1b2e546d3e2f91ceb6aa2136487a4a886125c8599d5fd87800cf216c49dbd434` |
| 13 | `lemma` | [isHomLift_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/ishomlift-map.md) | 119 | `result-track:1c494f9d18dd7a93d016d1e8970646e7448b6cdac87bc565161017054127f604` |
| 14 | `lemma` | [isHomLift_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/ishomlift-iff.md) | 124 | `result-track:443dc52eebf0d34511b7041c88da565525bd24f3091366a8f39e7f7f47c9d3da` |
| 15 | `structure` | [BasedNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/basednattrans.md) | 134 | `declaration-track:fb0db83d622f9fe2b2cb0e4dd48da5d2a651d25c6e90ed0c893e6da363f09309` |
| 16 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/ext.md) | 151 | `result-track:b27d9361357d83ef9a2a74095f359268665b422fac1fe8408c2b96a61b02942c` |
| 17 | `instance` | [app_isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/app-ishomlift.md) | 154 | `declaration-track:4c04c9835ba2970581bdf5d4424187dcc5defa2218e5985f7db726e12ed81948` |
| 18 | `lemma` | [isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/ishomlift.md) | 157 | `result-track:3a24e202f5d30cca372a6d62e33448242b58292b311c6cf6a3be8ae61af5d96b` |
| 19 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/id-source-edition-3.md) | 165 | `declaration-track:dfb189d363fa84046b6d0cfc642af9bff35233f99875b7ffb8f228b996c30ecb` |
| 20 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/comp-source-edition-2.md) | 172 | `declaration-track:cc500dd4904cef144cc0e9e35211e61a1ae866d522f53ce023c53358a70846e0` |
| 21 | `instance` | [homCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/homcategory.md) | 180 | `declaration-track:3c7d0273dae55efce33327346a3c63f4807866f4d6133d3523cbff5155714a63` |
| 22 | `lemma` | [homCategory.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/homcategory-ext.md) | 187 | `result-track:7af8c5bbc1f88307af6ecae4587493918d8b0b251f99415bb493de7cadbc6851` |
| 23 | `def` | [forgetful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/forgetful.md) | 193 | `declaration-track:645998fb91c5420ad553a1cda20831525fbf751b2f1d0190357107a56925b7a5` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/instance-source-edition-5.md) | 198 | `declaration-track:d1707c01ca7364cf11d7978b05f8ba93697b5015d757c0318c5ba88388552202` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/instance-source-edition-3.md) | 206 | `declaration-track:7fc3fa6c0bc2ccd83ca4c57e3ef8c87518d17baa294b63ba8b01c5ce88826ea5` |
| 26 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/id.md) | 219 | `declaration-track:3e28a72a263722037457f1f471752c512fff0e800febbea37207dced4700b429` |
| 27 | `def` | [mkNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/mknatiso.md) | 227 | `declaration-track:931e693535b561c5df2fd99415f426dd659cc0908b4ae15b38e80634ac143c3a` |
| 28 | `lemma` | [isIso_of_toNatTrans_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/isiso-of-tonattrans-isiso.md) | 237 | `result-track:13c0e49b962ff3fe98f9f3a75ae5e98fcbb12d5ea4075ece0cdf71ee2bd066e4` |
| 29 | `def` | [whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/whiskerleft.md) | 254 | `declaration-track:0cafc932580e9f60e04a7d5cc4ac0d3472542b58f3b8b91f30e467eebae66e38` |
| 30 | `def` | [whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/whiskerright.md) | 262 | `declaration-track:a6844871d5a72586d6e7af3aa2bcaeba9c0e3d947e99d899df1195ec396ec70d` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/instance.md) | 271 | `declaration-track:2a540c72c3c159d49a8402dfddef8e0897c5482cb4ad69181aad1a2891fd9825` |
| 32 | `instance` | [bicategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/bicategory.md) | 277 | `declaration-track:3a4b11b83dd869ee952f29bd10a7f96dc10786db6f3e9e9779569e9284195c65` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategory.lean/declarations/instance-source-edition-6.md) | 289 | `declaration-track:e56bfb90766366a230daf39e106ce25cf652edbf189095a6d8a94c0a21d3280c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c75d97e897a6390e679be2f7c4c82f7d9d6d46c1d409086fe01562e5d9d41f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variant3c98dafc025ed43abb68b95debad2cb0426e09998a7067f3089ca66244b8b30c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
