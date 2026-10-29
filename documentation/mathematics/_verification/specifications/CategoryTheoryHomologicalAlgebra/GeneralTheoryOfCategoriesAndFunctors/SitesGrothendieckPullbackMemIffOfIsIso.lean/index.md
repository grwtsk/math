# Verification target: Sites Grothendieck Pullback Mem Iff Of Is Iso

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96320b32e57cf7bef3c65089b4fc20ff1f255dcf",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96320b32e57cf7bef3c65089b4fc20ff1f255dcf`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sieves` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Multiequalizer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Copy` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GrothendieckTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/grothendiecktopology.md) | 72 | `declaration-track:16c42071a09bc1378a3fa0b5935eaa805574be303f954a3c0d8d25892cdd6147` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-2.md) | 89 | `declaration-track:61ddc1e83fdb2c4c6455d9548139e0de27a757efa5d1c5c846d7ed4659e467d2` |
| 3 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/ext-source-edition-2.md) | 102 | `result-track:e5387477a67e1a5d21335bef342aac70d418f5a188465a6dc9c661a10544f030` |
| 4 | `theorem` | [mem_sieves_iff_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/mem-sieves-iff-coe.md) | 106 | `result-track:e6aa545bfb002dcc9d872728697057194fa27a589f5931e5e76f81ea7f0380ca` |
| 5 | `theorem` | [top_mem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/top-mem.md) | 111 | `result-track:c67213bd82bbd7936adcba226449c407647c3aee81959314b825e759fd1dd6e1` |
| 6 | `theorem` | [pullback_stable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/pullback-stable.md) | 116 | `result-track:6cb0626c2761b31af44963ab859fdae400c1706dc4a21ed36091c56f72c6d89c` |
| 7 | `lemma` | [pullback_mem_iff_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/pullback-mem-iff-of-isiso.md) | 121 | `result-track:434e4f49588b7a88d6d448a18bc1f8b8bb4fa0452a295401904e9cfec7091dad` |
| 8 | `theorem` | [transitive](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/transitive.md) | 127 | `result-track:be70c84fa9281abed6d0279065fb8ebc9a2064e7e0f2aaf3b6a9c508cefb994e` |
| 9 | `theorem` | [covering_of_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/covering-of-eq-top.md) | 131 | `result-track:1f32b6069d386be5ffb357c07566515c6ae38b04ffbd4c227a6549eaac966968` |
| 10 | `theorem` | [superset_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/superset-covering.md) | 137 | `result-track:7429eb95aa94ffcdc2d31361cfe75bb6418fd4f9aca93ec1c27d2c97d0f4dec9` |
| 11 | `theorem` | [intersection_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/intersection-covering.md) | 148 | `result-track:7108a748bf0b2eb1df36f4f7399356c34042868913afe665baf37afc5f82332f` |
| 12 | `theorem` | [intersection_covering_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/intersection-covering-iff.md) | 155 | `result-track:079bdc2d35c70a6826f329c8c28799d5bf14221ad032b340a9631af2b3ee06ab` |
| 13 | `theorem` | [bind_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/bind-covering.md) | 159 | `result-track:60b1a1e460fc1b9eb3fe958a76926478a34275e771bc3c6becc601d0ca48ecf4` |
| 14 | `def` | [Covers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/covers.md) | 166 | `declaration-track:b677f862dd0835e47c0c5b66ee12130d440d7f041cf156118f27e904a9b72565` |
| 15 | `theorem` | [covers_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/covers-iff.md) | 169 | `result-track:2a6981819a529a99b58f034adb63d338df88ef8f8ba3524149abaadf183ec5d4` |
| 16 | `theorem` | [covering_iff_covers_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/covering-iff-covers-id.md) | 172 | `result-track:1b089851ce65d32e696591185f2a8f8aaaeccefb7f0bfa28c0a0b8badb2bbfed` |
| 17 | `theorem` | [arrow_max](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-max.md) | 175 | `result-track:1666c369606f768217d8aef59dd9256ba8e311b6e8b17a92d5cc1ff86815cce3` |
| 18 | `theorem` | [arrow_stable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-stable.md) | 180 | `result-track:f5476e3118189f57dd75faafdd25549f5ff3f56608107ac91ef6307cdaa44a2b` |
| 19 | `theorem` | [arrow_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-trans.md) | 188 | `result-track:195e75c6556afa33871a1e8360e280ed7f74f8b183b346b73d5fc099928dceba` |
| 20 | `theorem` | [arrow_intersect](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-intersect.md) | 196 | `result-track:24dc6c88652b7ffbb311421bdf80093f7a8f250f26fa797c2346ffec493a5787` |
| 21 | `def` | [trivial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/trivial.md) | 207 | `declaration-track:e777b9d94950029d7b30833a55223b6525efc2404cf88bf1cbd0d94465ce82dc` |
| 22 | `def` | [discrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/discrete.md) | 221 | `declaration-track:a03b31765474e2d30e6a67da3654980b7b0721c4980d05442bf1865c2b4d854c` |
| 23 | `theorem` | [trivial_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/trivial-covering.md) | 229 | `result-track:d67c150124a0aa20a8968d301f39583a47850b958a2dad17ddc03c329e6c88ef` |
| 24 | `instance` | [instLEGrothendieckTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instlegrothendiecktopology.md) | 233 | `declaration-track:6cebaec5dffbecc94fb9a36271045cc7d9b1735c755829c4dbb84cb498df6d7c` |
| 25 | `theorem` | [le_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/le-def.md) | 236 | `result-track:bc821b9c03e6d9da5d1a2573d7603a38abbf7ea2a83a29f9046129a5f480a4ae` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-4.md) | 240 | `declaration-track:7f9869d7bf3a6cd4bfb3f88d45080aeaea3734239b91b7ffc0f5c168f72f77b1` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance.md) | 247 | `declaration-track:0c5f38f38511144d8dd6fe8ec9af5dbb2df7a97d67fb83c429f6b7b7e14996bd` |
| 28 | `lemma` | [mem_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/mem-sinf.md) | 261 | `result-track:16b9d7a708b139e6b5971ec06a8cbe74e44a04afeb87b169a9a4d5953a6410b6` |
| 29 | `theorem` | [isGLB_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/isglb-sinf.md) | 267 | `result-track:095af77adf8f90cf2ff80daf2e4ef208c55d5af9f3b61a083631cb8972c5fe57` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-10.md) | 275 | `declaration-track:dd3be9be99f042004ede6b3ce4a96198fb5b625f1ed87af1f715af49aaa67e1d` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-9.md) | 291 | `declaration-track:b517e38a065061e0c04054c9c93b48dd7c8c99a9f77e8670d9a37b5ed5314030` |
| 32 | `theorem` | [trivial_eq_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/trivial-eq-bot.md) | 295 | `result-track:4124dca9e1e6ee157cc002461b1d198c75b6cefe41cdc4dad4b7990a083bfc9f` |
| 33 | `theorem` | [discrete_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/discrete-eq-top.md) | 299 | `result-track:68cda09dc4768159e73a738e0f9ff0e79798a8433df34b72a15f6f4b9c96c0dd` |
| 34 | `theorem` | [bot_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/bot-covering.md) | 303 | `result-track:57e899dd72f6f0d4456d63320cf19cb42a838b7fde7ee858f5a3039ce2f1e7cf` |
| 35 | `theorem` | [top_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/top-covering.md) | 307 | `result-track:71e96e63bc74c45d7dbd2b3e3df170e0d0594fa24962d47c086115bad3507d3c` |
| 36 | `theorem` | [bot_covers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/bot-covers.md) | 310 | `result-track:838f00d0d86bf7d0b84a408a7674a8cc763eaf66b50b030356ad92cfdb108967` |
| 37 | `theorem` | [top_covers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/top-covers.md) | 314 | `result-track:10ae802dffdbddd4567883677e239708f20e88a40537d825b5a3992f52afa699` |
| 38 | `def` | [dense](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/dense.md) | 321 | `declaration-track:3d5293df8d23653781ec19dd1df92971925349dec4ffdbe73cc853fd8316fda8` |
| 39 | `theorem` | [dense_covering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/dense-covering.md) | 334 | `result-track:cc784831a3453a6f4aeff9759dc5c340732ff547626f7fd34d5b8aa4edfea699` |
| 40 | `def` | [RightOreCondition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/rightorecondition.md) | 342 | `declaration-track:257386ab0fda1a86a563c1ebb8483a23d996856d2906b6e1d217175db9a53457` |
| 41 | `theorem` | [right_ore_of_pullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/right-ore-of-pullbacks.md) | 345 | `result-track:5bd538fbc6d5a33286ce8b89481cc1f64d07f05dd07749267554808c65562206` |
| 42 | `def` | [atomic](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/atomic.md) | 353 | `declaration-track:ff432d4de9aadfa0804b98afc81811643969296c63ba326b88c5e9c65532c27f` |
| 43 | `def` | [Cover](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/cover.md) | 370 | `declaration-track:b0158aea80cb79a5e29e516d55fdb8328baf44e1f0303fe04a9e741274fe1113` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-7.md) | 375 | `declaration-track:ab58ce3730f74ae18933e7b5b9e799cd066fc1f1a42402009f627210296179f4` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-3.md) | 382 | `declaration-track:6720e4b7a689634139370bb40f1cca005a0cbc45076f0c48b196e05ab82f4b50` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-5.md) | 384 | `declaration-track:887cc742e44d401ac6052e12b9b1270e460f97608a31375541abfe4cea4d9601` |
| 47 | `theorem` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/condition.md) | 386 | `result-track:5fe37fef8e73f17508939e4f47aadb744f56837573e2d7b3a1e3f1bd96a2cff8` |
| 48 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/ext.md) | 389 | `result-track:57c1bacd0562098a3e48e564d36a173eaade8236c2a5b387597caf71201eca83` |
| 49 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-8.md) | 392 | `declaration-track:acf8dbc24eab073a058285ed778b56b4efe267d14e12d9fedfda38c564f05d47` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-11.md) | 397 | `declaration-track:e846807cc8863db1e8c10c6cab0f7fd4bcfa8d4a301f4ded1a2536ca7cdc20be` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/instance-source-edition-6.md) | 405 | `declaration-track:955bf46f3da812c9eb9d8deb04fb25d80a6966dc9b3dac4fe3d3aa8442637df9` |
| 52 | `structure` | [Arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow.md) | 410 | `declaration-track:5070e27b01a1894b38d9876b02094f003a3f93249e2356c52e429ad6ac8446a8` |
| 53 | `structure` | [Arrow.Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-relation.md) | 421 | `declaration-track:37bcd86cb68c79fb84bbd65777f19e9d58eea35faffec05edbe3b39ad7106041` |
| 54 | `def` | [Arrow.precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-precomp.md) | 436 | `declaration-track:e44e5ea099b7d6ab44917053a754a12a40ab2f5b743b434ea0f63a596773b610` |
| 55 | `def` | [Arrow.precompRelation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-precomprelation.md) | 442 | `declaration-track:f4a971bfdcad398ae7971b929cd9b1b800a6db478e46ff2272978a3c2e217bae` |
| 56 | `def` | [Arrow.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-map.md) | 450 | `declaration-track:21515fa1e734ce0259b6b1760bd5580422f260e93013a18ac1f8fc6e0eaa9b19` |
| 57 | `def` | [Arrow.Relation.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-relation-map.md) | 455 | `declaration-track:816289bfc6bc3921b668c00bdd322ee516e9e3f975600f746465f3d0d630c4a3` |
| 58 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/pullback.md) | 460 | `declaration-track:22f0c4afb2827a7565dd28e614e5d7fdde03ef41e709ded7a90c6ee3ecdc15f0` |
| 59 | `def` | [Arrow.base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-base.md) | 465 | `declaration-track:7e08e759223ee0fcd6c46b858a2ea7f4153c99108f9f4dc288fc047d67cdde03` |
| 60 | `def` | [Arrow.Relation.base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-relation-base.md) | 469 | `declaration-track:49aaa139a454be06e18f499ce24f32ab0bd22eaa0e657d6782a7798dcfc5c7cd` |
| 61 | `theorem` | [coe_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/coe-pullback.md) | 475 | `result-track:110df38a11acaf729ded76bc62626e6f626ddc7bf6b0f7e6aa09e025d5c0284c` |
| 62 | `def` | [pullbackId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/pullbackid-source-edition-2.md) | 480 | `declaration-track:ee330f16f5a671979c4852072684488de6ad49cefa4790b954057f441aa10b14` |
| 63 | `def` | [pullbackComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/pullbackcomp.md) | 484 | `declaration-track:5642b3132ef45e587690c73213ff53e7c113f01b707c4120394583e97981712c` |
| 64 | `def` | [bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/bind.md) | 489 | `declaration-track:6c3346cc4f0e4e18fc3ad3c83c42a2d7ced23f5418e25a53f7d9aa57e159b269` |
| 65 | `def` | [bindToBase](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/bindtobase.md) | 494 | `declaration-track:99796e2a3da9dc46418506faf1a7a12638d7705e101bda3f812571975f4ecb57` |
| 66 | `def` | [Arrow.middle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-middle.md) | 503 | `declaration-track:a965078c8e79f683f83a0a84fa0cc71444780cf4c0e2a20b1bc47e705a9c32ea` |
| 67 | `def` | [Arrow.toMiddleHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-tomiddlehom.md) | 509 | `declaration-track:b6f2b890f927b60a1d91e9ce79d4c47ff5d0a4f8029acb09b16d4b9d81da65e7` |
| 68 | `def` | [Arrow.fromMiddleHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-frommiddlehom.md) | 515 | `declaration-track:dc6ffa2bfaa2e8d24f882095909eeedf82a0651196cb8e91f8aaa4a70f66421b` |
| 69 | `theorem` | [Arrow.from_middle_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-from-middle-condition.md) | 519 | `result-track:c628ad8fabfaed41f0b238cc6f541d4e9bd94e3f6966518cb228a3dd32e7ec5d` |
| 70 | `def` | [Arrow.fromMiddle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-frommiddle.md) | 525 | `declaration-track:6e1258c1c714f638a28ecddc06575f3fefd249f16e38fb66b7a0188fb83822fe` |
| 71 | `theorem` | [Arrow.to_middle_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-to-middle-condition.md) | 529 | `result-track:62f9179cb66e9849a074fe47dbea7662054e64faa9b8a91c51bd1ba3a9bdab35` |
| 72 | `def` | [Arrow.toMiddle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-tomiddle.md) | 535 | `declaration-track:7d62bf7aabfb7d9ec3846c6ad99cdd6a1c455c724977942d350aaf187f4a94b2` |
| 73 | `theorem` | [Arrow.middle_spec](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/arrow-middle-spec.md) | 539 | `result-track:26413940dce67b7644e2fb260ac0e97093b66eeec175bd65858c1dcb3d5b6087` |
| 74 | `structure` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/relation.md) | 545 | `declaration-track:76413cbdec0492a669b0d2cf005e3abe38561d837a0123d9165d639b459bca37` |
| 75 | `def` | [Relation.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/relation-mk.md) | 556 | `declaration-track:8c06a2667738029bbd58a07af99b2facbb37b5206fc161c93653b19ccd73e73a` |
| 76 | `def` | [shape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/shape.md) | 565 | `declaration-track:c67660f63a8e5bf563d198acadd8ee5f90767ad20bfc6533fda25037a830dfec` |
| 77 | `def` | [index](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/index.md) | 575 | `declaration-track:74376ebc4a76e2a065a783c246a56fad9b03822bda92771083f8a21982e3d3b5` |
| 78 | `abbrev` | [multifork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/multifork.md) | 587 | `declaration-track:b86d78356a45d6d312e9d00a729f0f34d5883b8f72f2f91023f8197704523e6d` |
| 79 | `abbrev` | [toMultiequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/tomultiequalizer.md) | 598 | `declaration-track:b45724058c0eaed8bbbdac44e4b0421edb883fba02dd453e90fc9d604f4ff064` |
| 80 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/pullback-source-edition-2.md) | 611 | `declaration-track:aaf30a8859a58b3f4aa7a5da81524ee723880d1e5b73832d8a2abe784b448434` |
| 81 | `def` | [pullbackId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/pullbackid.md) | 616 | `declaration-track:ad3ed4594b38366c469ab801462aa7c5d4412d802cdaa54a7bd35ece651abded` |
| 82 | `def` | [pullbackComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SitesGrothendieckPullbackMemIffOfIsIso.lean/declarations/pullbackcomp-source-edition-2.md) | 621 | `declaration-track:dccd6853cbebe2f94e92792adcdb725067dcae28aebd4369312624e40fb965be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=125984333600c4d519f3e381ed74dc71fe9e52a5e1d2cf4d2f5c5d635c11166b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant3a60a2eceb11e2400dfc3ce1b179788d8af9f99ffa92324711a74ecb26766339.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
