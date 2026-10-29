# Verification target: Grp Limits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b50cb5d76573358d73710f23a83465435a2a30d",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b50cb5d76573358d73710f23a83465435a2a30d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.ForgetCorepresentable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.ForgetCorepresentable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Preadditive` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.Limits` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.ReflectsIso` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [groupObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/groupobj.md) | 43 | `declaration-track:6825d8e1a69ef71cf912790328b94359efd3a08a95dc92f46a8f97b1bf0e1811` |
| 2 | `def` | [sectionsSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/sectionssubgroup.md) | 50 | `declaration-track:ae23f1c35cdacf89505b6c6e7a04e08d1d4879042d12a622958f51504ad5de36` |
| 3 | `instance` | [sectionsGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/sectionsgroup.md) | 59 | `declaration-track:1276d1461f7ba28997aaa5476d22740cb0e2c6eec3566c0608f7bc764f452046` |
| 4 | `def` | [sectionsπMonoidHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/sections-monoidhom.md) | 64 | `declaration-track:5a3655b7e4e35e784b019562438390680ec0bd51778278a2336e54ce29481849` |
| 5 | `instance` | [limitGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/limitgroup.md) | 74 | `declaration-track:cbf47c22326af55aa6e83b5def08bb35b39102967c69eab75e53991da972f5c4` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/instance.md) | 79 | `declaration-track:6fe14bed193b9b0b8ea08423e506b4a9845aa3849d2d652116a1b67c74b57986` |
| 7 | `instance` | [Forget₂.createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-createslimit-source-edition-2.md) | 90 | `declaration-track:963aa80193679c4d5f9063ecc3f86cb78a6a5908a0753a7dc1c103daaa7c8c05` |
| 8 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/limitcone-source-edition-2.md) | 119 | `declaration-track:fa38c02cd13d6fd68967c524541c66f08cf2dd2f9cd66ae6674332b6901846e7` |
| 9 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/limitconeislimit.md) | 127 | `declaration-track:0b9c6bcdbb8716fce6bcc07fe61c800c49ea9d58615cf79b7e2246f334d2f417` |
| 10 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimit-source-edition-2.md) | 132 | `declaration-track:fbf5014cf173ac2cf15ae9c399c082280ddce6c4048c4b7520c55702ced31a60` |
| 11 | `lemma` | [hasLimit_iff_small_sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimit-iff-small-sections.md) | 144 | `result-track:22f019d35deb7a499d049c65db4df4336cf8b47a3512ddfc19df53ee1d7c377d` |
| 12 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimitsofshape.md) | 153 | `declaration-track:11140cc64120ca29f9ef0576b95d5c57103553e354e7622c5bf9cd38dd6ecc43` |
| 13 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimitsofsize.md) | 159 | `declaration-track:53b183b27d71d7f455e57cab203b9d085c94ef7fd30842139b91c57452709845` |
| 14 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimits.md) | 163 | `declaration-track:2816e962b9b0e20870b3fbab7c477d3591b2bc86af124710e975d0bbf18d247b` |
| 15 | `instance` | [forget₂Mon_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-mon-preserveslimitsofsize.md) | 176 | `declaration-track:ec4557e2977b56f86fb39c48b051e6de46be36c60075e8938b97ca734f71396e` |
| 16 | `instance` | [forget₂Mon_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-mon-preserveslimits.md) | 181 | `declaration-track:a3a424b4111cb2fe22d185eb7a55f1cb4313f70fa4e61098724c1b5c6d4d9f1b` |
| 17 | `instance` | [forget_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-preserveslimitsofshape.md) | 188 | `declaration-track:6de07780aeb8c225cb0b36ec22d98edd27a31afdce5491d3252519d9e4b7982c` |
| 18 | `instance` | [forget_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-preserveslimitsofsize.md) | 201 | `declaration-track:707ef235cc8897cfc7e74a9e5795d630907d100cbd09f9a64974cfc3b6eb02d4` |
| 19 | `instance` | [forget_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-preserveslimits-source-edition-2.md) | 205 | `declaration-track:e21b24d127d89a6515f0515ec5b48eaa567511b1313c9cabc442733d73838579` |
| 20 | `instance` | [forget_createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-createslimit-source-edition-4.md) | 209 | `declaration-track:d9f9ac2bfc35ea8ff2364a56fad2f2ff1f7a0ed048b60df5330a8ee8eb60f5c2` |
| 21 | `instance` | [forget_createsLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-createslimitsofshape.md) | 215 | `declaration-track:5ee4942d3179e1d6133ee5347cd9420a8b42570a5e2b0e6fe58a4a81139a62b9` |
| 22 | `instance` | [forget_createsLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-createslimitsofsize.md) | 224 | `declaration-track:1981a540bc3fc0da0a27a446d070fdd2382eb5866044ac223f6ad5a3805b409e` |
| 23 | `instance` | [commGroupObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/commgroupobj.md) | 234 | `declaration-track:0394786b4ce5fcf45c7d2c55232f9dbacf35b2ce6a69611b1ba83480dcb7164f` |
| 24 | `instance` | [limitCommGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/limitcommgroup.md) | 238 | `declaration-track:7e831119d440bcf1dd5fabcb2c98c20cfc9e90b388471de68e4250dd690ac078` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/instance-source-edition-2.md) | 247 | `declaration-track:e1c31be01091c42ee5c4a74d40ad1b661625fe95c7784f46b5efc41461cb0bce` |
| 26 | `instance` | [Forget₂.createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-createslimit.md) | 259 | `declaration-track:10209cc8f29354df54a26b1905b09f6da1f1b533ab7d00b37f56a07a971ee5c0` |
| 27 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/limitcone.md) | 291 | `declaration-track:7891399623ae83ec9c451b1ecec205d5d98c313f3a001e25ebcab755ed9cfbfc` |
| 28 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/limitconeislimit-source-edition-2.md) | 302 | `declaration-track:6f55f89447f3d4ac992b53cdb24705bdae7d16e5719ed15e443fa4e713b1ef7b` |
| 29 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimit.md) | 307 | `declaration-track:4b7f08982f59feb1be9e66e5fd293e757738d9e6def23ce36e40d3abd45419e7` |
| 30 | `lemma` | [hasLimit_iff_small_sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimit-iff-small-sections-source-edition-2.md) | 319 | `result-track:379be9fc270c8bf51d6f812fcd1692070c6097be58a815df2ee775c6bc96e61c` |
| 31 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimitsofshape-source-edition-2.md) | 328 | `declaration-track:95c9901c74b8e41eb738d6adf82502c567e950156770b31bb7581b2bed84b385` |
| 32 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimitsofsize-source-edition-2.md) | 334 | `declaration-track:8ebd14243d06a3494893cafe8ae2d62a19a5ec568ff1487eff7d40cbe3747a45` |
| 33 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/haslimits-source-edition-2.md) | 338 | `declaration-track:a1f9cede2887a039fa6033b6445d47e6b28c4348acb3c7849aa649be2a47cf94` |
| 34 | `instance` | [forget₂Group_preservesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-group-preserveslimit.md) | 342 | `declaration-track:841dc5e184fec93f7c85b1c680d642e940be30f502abb381eec833b2fb86aee6` |
| 35 | `instance` | [forget₂Group_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-group-preserveslimitsofshape.md) | 353 | `declaration-track:a479758095a187809796d9bfecd4b6f4431a7d19a82f7e30a16a733ce255081c` |
| 36 | `instance` | [forget₂Group_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-group-preserveslimitsofsize.md) | 365 | `declaration-track:12b89bcdcc1f8a451edaf8cac15047ab78f1f7f682226337f8fb169bfe46507a` |
| 37 | `instance` | [forget₂Group_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-group-preserveslimits.md) | 369 | `declaration-track:a0eeae562e93b36911e787cd2e6def6bbe842d82a3db636abb385e5ca0817857` |
| 38 | `def` | [forget₂CommMon_preservesLimitsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-commmon-preserveslimitsaux.md) | 377 | `declaration-track:f4bba156522427f1c3840aabf7bd991e21e2fe0a070e8383c962ff2b0718f4fe` |
| 39 | `instance` | [forget₂CommMon_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-commmon-preserveslimitsofshape.md) | 389 | `declaration-track:4119a0a9d7e3644d57b543de114c2b25470359f251d4267d5bc95cf0f320d8b2` |
| 40 | `instance` | [forget₂CommMon_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-commmon-preserveslimitsofsize.md) | 402 | `declaration-track:df01142fe5f6360c9b53c6d560efad32fafe23ebcab95db1dce46fa1a6cb0270` |
| 41 | `instance` | [forget_preservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-preserveslimitsofshape-source-edition-2.md) | 410 | `declaration-track:95d4ea24c3ec24611ba636266e456a4abd8766bdaac971fca525c7fb4f239981` |
| 42 | `instance` | [forget_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-preserveslimitsofsize-source-edition-2.md) | 422 | `declaration-track:7a4e02db2e5efbfa1ef00656420d95f5cc285ed589ee9383e979a927a17ab2ff` |
| 43 | `instance` | [Grp Limits Namespaced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-sectionssubgr.md) | 425 | `declaration-track:205fde96e8236319a620931dec2e11e255a59345c41ea4a4e9728a711cc28602` |
| 44 | `instance` | [forget_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-preserveslimits.md) | 430 | `declaration-track:3b07a69592fb1dc4f79e91321219622d50c7c3584f3fc3e1bcfde0dc4903aed3` |
| 45 | `instance` | [forget_createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-createslimit-source-edition-3.md) | 434 | `declaration-track:ba56b47faaf387bdd30f148533ede2c77152a29a9d9bf1eacb518564d5d2d680` |
| 46 | `instance` | [forget_createsLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-createslimitsofshape-source-edition-2.md) | 440 | `declaration-track:e556a3cbefcd0e387a020311919eb397662a4735c8b638f2a4a0ffbd3ccc194b` |
| 47 | `instance` | [forget_createsLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/forget-createslimitsofsize-source-edition-2.md) | 449 | `declaration-track:44a8ed20b7b56e2a1373090e0e0f7d7b9fda664b71f19bf1e8fcd15329d335ed` |
| 48 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/example.md) | 453 | `declaration-track:046f9efa5f5d4a81cd73bc77e4cfccd6752eea3263a4d47532b2024f4bc0dedb` |
| 49 | `def` | [kernelIsoKer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/kernelisoker.md) | 462 | `declaration-track:4db284d96f22f007468f015ca8563335cce68662595227a6e7c6d4d898c7df0b` |
| 50 | `theorem` | [kernelIsoKer_hom_comp_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/kernelisoker-hom-comp-subtype.md) | 486 | `result-track:c7167d10c511af018c8c10e80cd18fab3c164cc3a445a62b4bf111a605e46ad8` |
| 51 | `theorem` | [kernelIsoKer_inv_comp_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/kernelisoker-inv-comp.md) | 490 | `result-track:5c2a13d70596296c894b8d32c7b3d30dbe3cdaf7a7c111381edddc099e45ebc2` |
| 52 | `def` | [kernelIsoKerOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpLimitsNamespaced.lean/declarations/kernelisokerover.md) | 498 | `declaration-track:596eb3e1b2d76d0000166bd844593d5ca4fe4dd13bc79629a2d9a61d2e15b509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a254e06e36bfb3ff9c59f4a173a31aa22249eba427267a9030e5949646fdecb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant6300094240e9e280c610db46ed7bee165587117daa4326eb36c9082fc8a0b088.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
