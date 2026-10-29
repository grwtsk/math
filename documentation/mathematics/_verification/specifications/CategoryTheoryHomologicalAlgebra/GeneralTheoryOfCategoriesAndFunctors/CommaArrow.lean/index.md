# Verification target: Comma Arrow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "481504032b549281cdde2cdad5d0ca7c8422e865",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantbcbe7a70da3a85fb6b49cf397cb5f36bb7092a4bc3c16484eb73549b8a15b5e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `481504032b549281cdde2cdad5d0ca7c8422e865`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantbcbe7a70da3a85fb6b49cf397cb5f36bb7092a4bc3c16484eb73549b8a15b5e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantbcbe7a70da3a85fb6b49cf397cb5f36bb7092a4bc3c16484eb73549b8a15b5e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/arrow.md) | 34 | `declaration-track:9ad5db928ac4b474fd564a8c5725e6ddd74e13b35a6bcdc64861ebaef86de7fe` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/instance-source-edition-2.md) | 39 | `declaration-track:54e7fbaa0847522df50fbc859d36ae03a3e14c87ea66797477f1d1c3573410b8` |
| 3 | `instance` | [Arrow.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/arrow-inhabited.md) | 42 | `declaration-track:9000d9912234780adf133a31a400b83c597a891ca755e6800ef6658cfaddccf5` |
| 4 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/hom-ext.md) | 50 | `result-track:88eaec03a4b3daee77208e10a89018f680e5ec1fc7f4f1ecce075d1d04f0710b` |
| 5 | `theorem` | [id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/id-left.md) | 55 | `result-track:688cc36e70144000fc6d61004e951bc1f2b4d42fe080496fc729848e73927a9f` |
| 6 | `theorem` | [id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/id-right.md) | 59 | `result-track:078e03e33040dbff42081438bab048dd35e5ecefa166bdec46da465878b45c5d` |
| 7 | `theorem` | [comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/comp-left.md) | 64 | `result-track:bbdcfefa0515183efa31db89120de6dc536ae9897f5a322c9407491d81ea2a0a` |
| 8 | `theorem` | [comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/comp-right.md) | 69 | `result-track:1b06b72fcde06e8e90c57d13aa9c49f80d966c09777637ad43d73d4f39cbcbd9` |
| 9 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/mk.md) | 74 | `declaration-track:0bfd2b4b94b308340cff5c5ecf3583e19f77510934dee092713ba28a65ed3f02` |
| 10 | `theorem` | [mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/mk-eq.md) | 80 | `result-track:1dd9e9e5556496f75439b52193e33c7f739f38f522bf7a8e2f9314020f9a4bcb` |
| 11 | `theorem` | [mk_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/mk-injective.md) | 84 | `result-track:a2625ea742063b8ac9532ed0d8aab0f6356d74bb5c5120ba1289f5b3651c0bd1` |
| 12 | `theorem` | [mk_inj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/mk-inj.md) | 89 | `result-track:b99b7439718975cf768f396550fc5d139b54281dd848e98329f22e7b57653b67` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/instance.md) | 92 | `declaration-track:1321146e30bdf1596be3aeb9822fd0f74e393d98ad6c64ded53d4656c2a73c66` |
| 14 | `lemma` | [mk_eq_mk_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/mk-eq-mk-iff.md) | 95 | `result-track:2f38b4834572ddf1aefc7c01fbc2f97f41ebac38e27709701991449fcdaea2e6` |
| 15 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/ext.md) | 109 | `result-track:9fde39ff7d16746ce7fc73c22c78a3eca16deb3ecbf83a7407823d0e483d48c1` |
| 16 | `lemma` | [arrow_mk_comp_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/arrow-mk-comp-eqtohom.md) | 115 | `result-track:65e58229800bf664271d251f175adfcbdc90de18d318d923c280d87ba2544ae2` |
| 17 | `lemma` | [arrow_mk_eqToHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/arrow-mk-eqtohom-comp.md) | 120 | `result-track:f23a029b538f52f22890097d16bc87906e8df0a4fce542e79c956f402664736a` |
| 18 | `def` | [homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/hommk.md) | 127 | `declaration-track:2373cb06666f4e9926e61a5d10f4cfad64ab458fe6ca0060bd271939344e9523` |
| 19 | `def` | [homMk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/hommk-source-edition-2.md) | 135 | `declaration-track:cf69fd8c0c4931d7412d53a16a7a404889715b50530a5172ad3d6f66d37d6f72` |
| 20 | `theorem` | [w_mk_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/w-mk-right.md) | 144 | `result-track:4f58639ed47bb40ee55d1c6925cfa16b772b7894a2b64d556552f6d8c3c5f459` |
| 21 | `theorem` | [w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/w.md) | 149 | `result-track:fb4270dfebe25cde2d434bb8d997903626237d829f6719f28b8937f13d067bc8` |
| 22 | `theorem` | [isIso_of_isIso_left_of_isIso_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isiso-of-isiso-left-of-isiso-right.md) | 152 | `result-track:ccb6f4319c9e5a2c610b2f8f7dac558305f5d5381845b2fd690e84deaddb73b5` |
| 23 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isomk.md) | 163 | `declaration-track:986628ff3e9eed04563f4976449a65dfbfb65becbdcf1de35795d2254f1b60db` |
| 24 | `abbrev` | [isoMk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isomk-source-edition-2.md) | 169 | `declaration-track:f0d635a6584ef54d9625664b1c85f6a02b808b7b7b989dfa9e7f9954bcba47ee` |
| 25 | `theorem` | [hom.congr_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/hom-congr-left.md) | 173 | `result-track:2e651131de5b906f92213a92d1bcf571270bad20d2360ac9561c54530874b603` |
| 26 | `theorem` | [hom.congr_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/hom-congr-right.md) | 176 | `result-track:8dc9fada8db4d8c08f83a6ebca0c2b44151444bfbc77bfe5c2eeac8546e389f5` |
| 27 | `theorem` | [iso_w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/iso-w-source-edition-2.md) | 179 | `result-track:d74770767c168b4b9cdd2fc550bb638804dc4338d6bd7b04a19b0c1f89101cf8` |
| 28 | `theorem` | [iso_w'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/iso-w.md) | 184 | `result-track:14d3836323a3527a971fda9b32aa7a1f49362868e749bbbd128db05945b3426d` |
| 29 | `instance` | [isIso_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isiso-left.md) | 192 | `declaration-track:38f9c6d2f7236efeecc9a993b450f68c18023e0a961a1b0e8a2678529d28070e` |
| 30 | `instance` | [isIso_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isiso-right.md) | 199 | `declaration-track:4efd8e872e7802ea30308ab8ed9037e4b8e8d0cbb1d2d0463f17c3b2d355b6e5` |
| 31 | `lemma` | [isIso_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isiso-of-isiso.md) | 206 | `result-track:4b7de16ea5560d40fb17f4167ff03bbe704b96cb4d4ec5e6ffbbc9012d8fd5a1` |
| 32 | `lemma` | [isIso_hom_iff_isIso_hom_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isiso-hom-iff-isiso-hom-of-isiso.md) | 211 | `result-track:d26166b61bfa44daa85abe5c55b335640954ec5e597e461f40f58cbf2e0b3a69` |
| 33 | `lemma` | [isIso_iff_isIso_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isiso-iff-isiso-of-isiso.md) | 215 | `result-track:2ffefa81475c8137f8805bbab1480846b53777e9409c2004654a7bac497526e2` |
| 34 | `lemma` | [isIso_hom_iff_isIso_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isiso-hom-iff-isiso-of-isiso.md) | 219 | `result-track:9a5220bbe311db326cf28f16350fd15e63327901a17fb2f2eee3ca6a2bc9f8ec` |
| 35 | `theorem` | [inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/inv-left.md) | 224 | `result-track:85cd81221363d16e5940b0a42ebed79090911b792383b64e8a3a257d770632d0` |
| 36 | `theorem` | [inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/inv-right.md) | 228 | `result-track:82d6413d4348a224cb41cf2d61b045a8973f52b19b194b85c7788fc8ddbba277` |
| 37 | `theorem` | [left_hom_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/left-hom-inv-right.md) | 231 | `result-track:4965ce55af07c92bc5e505df2a5a0f46ec0711f8afe504bee85da52e6e6a50f1` |
| 38 | `theorem` | [inv_left_hom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/inv-left-hom-right.md) | 234 | `result-track:b66e7a0c1f612a92b9b04c4a584b13b28c6e51ba4b5129f3740e984078f3482f` |
| 39 | `instance` | [mono_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/mono-left.md) | 237 | `declaration-track:4b1bc2688cff5e382ca29908bc3bf8e60f0833ac4a7c54219ecd79be00125113` |
| 40 | `instance` | [epi_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/epi-right.md) | 252 | `declaration-track:2b4f8cc1a2937bd97bb8ecdbf45b1a591a68d53420eea52384f667ed4c7f0674` |
| 41 | `lemma` | [hom_inv_id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/hom-inv-id-left.md) | 265 | `result-track:09142b373d443709fbdfa4ed31a78f683a69ac02712bc1186cf49e404522cb5c` |
| 42 | `lemma` | [inv_hom_id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/inv-hom-id-left.md) | 269 | `result-track:0be23a1b9113f6c4049ceda747d95d664417c26ce3bb45455740fadb7b4f9339` |
| 43 | `lemma` | [hom_inv_id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/hom-inv-id-right.md) | 273 | `result-track:50e578b20bd7624933a92a05d88ff40b21028eefea270cbaea2bc3feb3e174de` |
| 44 | `lemma` | [inv_hom_id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/inv-hom-id-right.md) | 277 | `result-track:2fb50937e4a346a6704880eba399e8920a5f1901c66d35eb2f94555588d5594d` |
| 45 | `theorem` | [square_to_iso_invert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/square-to-iso-invert.md) | 285 | `result-track:ad08778ef41381a67549f1da5403e6aae57574eaac83928a16436adb77faac22` |
| 46 | `theorem` | [square_from_iso_invert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/square-from-iso-invert.md) | 291 | `result-track:2fe8a813503436d60b997e8c97f5ccfb50652b6f11c0e251adafe73874788b98` |
| 47 | `def` | [squareToSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/squaretosnd.md) | 305 | `declaration-track:250ea572fd69e5ffb4e030cbe8d95ff27255ce994c34c538aa090bcb62587f1b` |
| 48 | `def` | [leftFunc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/leftfunc.md) | 312 | `declaration-track:0fa3685a4c157ad86790127a497bdc6479cca4e34bb2aa7d5744d364330cc6b9` |
| 49 | `def` | [rightFunc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/rightfunc.md) | 317 | `declaration-track:0677d466c2d36ff18e8addfac4d8d16cd0a174203a7d24bf869b812585c25dfb` |
| 50 | `def` | [leftToRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/lefttoright.md) | 322 | `declaration-track:0293c21ad226631ce25c26b875dec6eed7dfd1705d3c3c52e2ba15a7f0c38942` |
| 51 | `def` | [mapArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/maparrow.md) | 334 | `declaration-track:15d978363a2154bd9caba102138effe9b1678d0529592337d1dfb223dd406215` |
| 52 | `def` | [mapArrowFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/maparrowfunctor.md) | 350 | `declaration-track:f83e22ff09eff7c8d2ebabaf0030f3d1972b840cf56d2995c2dfdd89a2edc4bd` |
| 53 | `def` | [mapArrowEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/maparrowequivalence.md) | 360 | `declaration-track:546a64fb705ce24b428ca104cc9acf0ab2c675ea06039d920ced50a67c723538` |
| 54 | `instance` | [isEquivalence_mapArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/isequivalence-maparrow.md) | 366 | `declaration-track:8c29bde3770ddcc01946122b5b0afe2be12b86f982769747dc4737c46918b6eb` |
| 55 | `def` | [Arrow.isoOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/arrow-isoofnatiso.md) | 376 | `declaration-track:18e802f893d0d57fa3bf70cde504c5710cf6d9dd81efa6ba32de79088aff134c` |
| 56 | `def` | [Arrow.equivSigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/arrow-equivsigma.md) | 384 | `declaration-track:8fa7dfa4f1602d9eb8d9011ab9b25a3485b9f78a9dd1682aee8e2687298f49a4` |
| 57 | `def` | [Arrow.discreteEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/arrow-discreteequiv.md) | 392 | `declaration-track:e62be3867fbbd6dd24dd9b0657eb0f0d2393ee0503dad61982617d9ce07a9bc1` |
| 58 | `lemma` | [Arrow.functor_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaArrow.lean/declarations/arrow-functor-ext.md) | 403 | `result-track:c4329445f690bacf5a7731ff71a8245522bdb7d1ba040a7ad72ede765eecb50b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8012e356d82b30af373114a2d03cc497cf956d088f622a30ad2caadd722b37c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantbcbe7a70da3a85fb6b49cf397cb5f36bb7092a4bc3c16484eb73549b8a15b5e7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Arrow/Variantbcbe7a70da3a85fb6b49cf397cb5f36bb7092a4bc3c16484eb73549b8a15b5e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
