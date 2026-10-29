# Verification target: Pi System Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "884137e2e65b412a594237275890f04d4f73cbea",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Varianta29f9d43c59df6ee8ed2a1390141188b1ebd2352292b318a511eb531655a3428.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `884137e2e65b412a594237275890f04d4f73cbea`.

Source path: `GRWTSK/Analysis/MeasureTheory/PiSystem/Varianta29f9d43c59df6ee8ed2a1390141188b1ebd2352292b318a511eb531655a3428.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PiSystem/Varianta29f9d43c59df6ee8ed2a1390141188b1ebd2352292b318a511eb531655a3428.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem.md) | 80 | `declaration-track:f29803c2da43d17ffd36ffa8ca82212e8cd99e2a5cc3f7227d0ba3335e05acc2` |
| 2 | `theorem` | [isPiSystem_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-measurableset.md) | 85 | `result-track:05094f544eb762d9b692e5ae974ee75f8ee49594f4809ace99a7a8429f0ad5b8` |
| 3 | `theorem` | [IsPiSystem.singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-singleton.md) | 90 | `result-track:37a523a84738faae07df18e2f1a459ca8d49a9c6281d271f06e2afb5a02e25d6` |
| 4 | `theorem` | [IsPiSystem.insert_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-insert-empty.md) | 95 | `result-track:54dc32a29d9c1d0e7f5c968026dc95c618424119f5c4062a4c077fee963c71dd` |
| 5 | `theorem` | [IsPiSystem.insert_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-insert-univ.md) | 104 | `result-track:dc56608532f1cd29eb0fbaaf0f5e2a67d0f4cb155c2bc117d37f8411dc093a1c` |
| 6 | `theorem` | [IsPiSystem.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-comap.md) | 113 | `result-track:6de2948f69f2523639d1012ea350ac874a0482757c47b588d07f0192721423a2` |
| 7 | `lemma` | [IsPiSystem.dissipate_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-dissipate-mem.md) | 121 | `result-track:78b534d199bda522072478b95b69fd1b3b1d69a288ae800e0cc3e01e18dc451c` |
| 8 | `theorem` | [isPiSystem_iUnion_of_directed_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-iunion-of-directed-le.md) | 130 | `result-track:c63eb6d545f7ccbbdf49659720751b7090b520ce2db11952da6e577a66da42af` |
| 9 | `theorem` | [isPiSystem_iUnion_of_monotone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-iunion-of-monotone.md) | 140 | `result-track:941324e2c01eb6be0d03087c3dca8121ce9f0454bed9ce693390cdfb501421b9` |
| 10 | `lemma` | [IsPiSystem.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-prod.md) | 145 | `result-track:2e9829a91d3afca93f52aecb066ee97734031c06c8317ae4e847c3478af65d0b` |
| 11 | `lemma` | [IsPiSystem.biInter_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-biinter-mem.md) | 152 | `result-track:6e403294562843b2c80b21ac4dc10a3e30c9b59b3178a1aabf1b0c4e59e67d4c` |
| 12 | `theorem` | [isPiSystem_image_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-image-iio.md) | 167 | `result-track:371c639eedbf91583367ed6094a72c1868047ab9f3331e491312b52d5a8eea8b` |
| 13 | `theorem` | [isPiSystem_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-iio.md) | 171 | `result-track:0c85230cd4b9582cc0b5850889cf6fa80c0a151ebfe62145cac25a7cbcd97520` |
| 14 | `theorem` | [isPiSystem_image_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-image-ioi.md) | 174 | `result-track:97da5f850c7ee408cc424d2c8c8d0c8a9e2cec8ea29e7fdceccc3b6524d1eeb8` |
| 15 | `theorem` | [isPiSystem_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ioi.md) | 177 | `result-track:1660e451516b882b3e3ad9fc1f1c0447596041a3121cff697e379e0ef53062f5` |
| 16 | `theorem` | [isPiSystem_image_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-image-iic.md) | 180 | `result-track:7981748efbd8912c412ba9f2039aa0169ff9df7bbde9651d286c1ba78e3ac660` |
| 17 | `theorem` | [isPiSystem_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-iic.md) | 184 | `result-track:aa6f1f9a7688fc95330fa40cb3b2aff437e59f326aff8d5d7e5e1fc5f82c7d4c` |
| 18 | `theorem` | [isPiSystem_image_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-image-ici.md) | 187 | `result-track:0d16621eeec893274168253e05396edde994262196c392494b210106cd179e9f` |
| 19 | `theorem` | [isPiSystem_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ici.md) | 190 | `result-track:e0ad6d8758e2ece0a7f778a34524c2c794a32f7769d1ca66955ede2e7ba273bf` |
| 20 | `theorem` | [isPiSystem_Ixx_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ixx-mem.md) | 193 | `result-track:e2d39dfd67628f8171c1a737d23d6d8062c8cc169132e86b8cdd6aa6242854df` |
| 21 | `theorem` | [isPiSystem_Ixx](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ixx.md) | 201 | `result-track:216a30de1bc8006e9f798242ab2c28e06243e7b218dfef5d0ee129d9a6a50712` |
| 22 | `theorem` | [isPiSystem_Ioo_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ioo-mem.md) | 207 | `result-track:733c7a63e75c148e59d4de86c404c9fc6f1cbf93d8fb519477d88040a312a63e` |
| 23 | `theorem` | [isPiSystem_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ioo.md) | 211 | `result-track:f32c93b0099939eff8154ae645c919fbdca1d6f30f006e5ac265d3bc8a328436` |
| 24 | `theorem` | [isPiSystem_Ioc_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ioc-mem.md) | 215 | `result-track:3b2a618a195316f68a263d7b7c5d0030df1a18552a5e24d560a853ca753f1ee4` |
| 25 | `theorem` | [isPiSystem_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ioc.md) | 219 | `result-track:d13ac85d200a60c9e5e918d10f5171e6cde2732b071c3763eeec7f7206f88513` |
| 26 | `theorem` | [isPiSystem_Ico_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ico-mem.md) | 223 | `result-track:0da1012f40202653b5c61be6e200f9fe444468b5eddfef34ae6192084fb735e3` |
| 27 | `theorem` | [isPiSystem_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-ico.md) | 227 | `result-track:cf92c2222f6430c1181a1dcc0d9d0170496510d2173b0a4bdb11367ccf48e2ec` |
| 28 | `theorem` | [isPiSystem_Icc_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-icc-mem.md) | 231 | `result-track:302bfb4df3fb4335e0f195ea1e133541e44e9157a90dc84ee280ebf5d25671d5` |
| 29 | `theorem` | [isPiSystem_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-icc.md) | 235 | `result-track:8c5b44d21555eeaea39d35edf7b2abf88724579e0ac5cf74af047df1e8de965c` |
| 30 | `inductive` | [GeneratePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatepisystem-source-edition-2.md) | 243 | `declaration-track:3d6ac9c2a6708bb329462e4cf44acc926c534e18365f6d8d15b57faf176e2960` |
| 31 | `def` | [generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatepisystem.md) | 251 | `declaration-track:2fcc068c8136ea68c4fd3f835bf000aa54b93c399c682b9f9119f308d6ab67b1` |
| 32 | `theorem` | [isPiSystem_generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-generatepisystem.md) | 253 | `result-track:3a6571e07fafd18a6ec682c912a87f033c16f31031d8c79d44c162302a876d64` |
| 33 | `theorem` | [subset_generatePiSystem_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/subset-generatepisystem-self.md) | 256 | `result-track:db9f44d0cbe0a052b56e7be252fa84a3ffcbef6c10152ff0479a3ad3bc15f237` |
| 34 | `lemma` | [generatePiSystem_induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatepisystem-induction.md) | 263 | `result-track:ea3109d73d27214a4e694909c99d4288ebe92da0d2c7fe0ce8ed717697cbde98` |
| 35 | `lemma` | [generatePiSystem_min](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatepisystem-min.md) | 274 | `result-track:0594eca83158cf9437212614b07e8b7b8de08d52d40d0a1f042cc72992dd290a` |
| 36 | `theorem` | [generatePiSystem_subset_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatepisystem-subset-self.md) | 280 | `result-track:5db1e914ada6e5e3fe6832daad3330e78fa8fef1161fdcb8982b4c8392217299` |
| 37 | `theorem` | [generatePiSystem_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatepisystem-eq.md) | 283 | `result-track:1df725cfae9f1147688be286b0f5a5856f494674e86845f0b10220143e4156c8` |
| 38 | `theorem` | [generatePiSystem_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatepisystem-mono.md) | 286 | `result-track:78d903957db5ff7d3344242c085714781ef58e1f6feb92667fdd43f249999005` |
| 39 | `theorem` | [generatePiSystem_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatepisystem-measurableset.md) | 291 | `result-track:baba47e11d00d81e0214b13a164f2215487bf981fb6743951816952abaea6d27` |
| 40 | `theorem` | [generateFrom_measurableSet_of_generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatefrom-measurableset-of-generatepisystem.md) | 298 | `result-track:31d7ddc4a1aacfdd768b35073cad947741e4125fe52cd6fcba1f9b5090dce203` |
| 41 | `theorem` | [generateFrom_generatePiSystem_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatefrom-generatepisystem-eq.md) | 303 | `result-track:cb32330b74149d3f3e821969ebaed18bbb2f980f6d56eaa1dd98075c052e3d68` |
| 42 | `theorem` | [mem_generatePiSystem_iUnion_elim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/mem-generatepisystem-iunion-elim-source-edition-2.md) | 312 | `result-track:518fabba80629477ea83b4ccfd3c506f00a819154f2510501d130223914e2216` |
| 43 | `theorem` | [mem_generatePiSystem_iUnion_elim'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/mem-generatepisystem-iunion-elim.md) | 343 | `result-track:1af406e8f35994ebe7e7cce0f6068bfa07de4bfd48b293e0a8a804fe38c83c34` |
| 44 | `def` | [piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/piiunioninter.md) | 385 | `declaration-track:1380367f5d74e97b787db69a758065bc0ba27333e12f0106bc1060ba57c811c5` |
| 45 | `theorem` | [piiUnionInter_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/piiunioninter-singleton.md) | 389 | `result-track:9c252df5847536b69308e88b2e5aa3c02e41d0a82a6eb7c7de0e3319b40f435d` |
| 46 | `theorem` | [piiUnionInter_singleton_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/piiunioninter-singleton-left.md) | 419 | `result-track:89f6145e255468659f4e480d17216958bb1353e2d0f188abe1b8b7e99950ea50` |
| 47 | `theorem` | [generateFrom_piiUnionInter_singleton_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatefrom-piiunioninter-singleton-left.md) | 427 | `result-track:8b2b774238a8c9bf49cfd2a1345a426e551b70d694a8eadda6f8358275bbad4b` |
| 48 | `theorem` | [isPiSystem_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ispisystem-piiunioninter.md) | 441 | `result-track:0c06880ca5d402b50dbadabb423f456d5a963038d8f11499677f5d95ffb67423` |
| 49 | `theorem` | [piiUnionInter_mono_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/piiunioninter-mono-left.md) | 470 | `result-track:2047b6cc71ebaf4cbac468b34d64a773d3f86b83aa94adce712514a39a315584` |
| 50 | `theorem` | [piiUnionInter_mono_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/piiunioninter-mono-right.md) | 474 | `result-track:e3989289a79e18c9dce223e0033f87cb3988d6f80e385f917b2f0c31f616fc10` |
| 51 | `theorem` | [generateFrom_piiUnionInter_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatefrom-piiunioninter-le.md) | 478 | `result-track:70a183962aaa218b23edb40c9d64d4edd69ac4ac29588c3abc1495450d3c939e` |
| 52 | `theorem` | [subset_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/subset-piiunioninter.md) | 485 | `result-track:3ea7aabff94d6d2c974276817a75ae62d12aa0ecb232a98c9ce03521923334a7` |
| 53 | `theorem` | [mem_piiUnionInter_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/mem-piiunioninter-of-measurableset.md) | 495 | `result-track:432966bca49fd4cdd09c7b0965734707fcaec5596cad62dc8ffeee9f0f029560` |
| 54 | `theorem` | [le_generateFrom_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/le-generatefrom-piiunioninter.md) | 500 | `result-track:bfbb9e5a64f79ec467616fbf7db197dd76576021dc16ff3b1010b564dac7fe08` |
| 55 | `theorem` | [measurableSet_iSup_of_mem_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/measurableset-isup-of-mem-piiunioninter.md) | 504 | `result-track:1b2895752dde72d8ca59fc6d9e996bdd9870be0bfd0d42f7a24eb37d71e6adac` |
| 56 | `theorem` | [generateFrom_piiUnionInter_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatefrom-piiunioninter-measurableset.md) | 513 | `result-track:e4b91ce50e0a8a53de86dfbe3db4ef7c3e4b3e64d1069e87a10d3eb9f2330a19` |
| 57 | `structure` | [DynkinSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/dynkinsystem.md) | 542 | `declaration-track:8dfb0d8d8e708785b061c1cb22ba525dcc6b64cbe9e88419f58d54dc7309c841` |
| 58 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ext.md) | 556 | `result-track:14a349884b46bb795f813ad216a2eb990aa75ba7d12f29322f758be32f51b32a` |
| 59 | `theorem` | [has_compl_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/has-compl-iff.md) | 564 | `result-track:eb8e4e89c9b8552c51c75a68414cbe23deefd044e89f1f73396d6e1696685e80` |
| 60 | `theorem` | [has_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/has-univ.md) | 567 | `result-track:f60986fb5a4d142fc46723d16ef6da79a582115019b6db92d030aa0146f30840` |
| 61 | `theorem` | [has_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/has-iunion.md) | 569 | `result-track:8a17ce0d0f8ad715b8b5788325b2c6e3ee22216f9dbe74107bcd47471c67595d` |
| 62 | `theorem` | [has_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/has-union.md) | 577 | `result-track:2c920ce098cf6d8a6df290e1cb19fdb165bf39ef9882ac732ea098be0ceb6760` |
| 63 | `theorem` | [has_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/has-sdiff.md) | 582 | `result-track:a6427a1101d5f4190934378861aed4b493c2096dc64cc15830b90ece887bec85` |
| 64 | `instance` | [instLEDynkinSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/instledynkinsystem.md) | 590 | `declaration-track:e6229c51610466abb75019b8111ae927a638443925b893e1f7bf01a8ffaada58` |
| 65 | `theorem` | [le_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/le-def.md) | 592 | `result-track:9d30195e54d395849dafaa381355928e9bb5a3055f3015beaa271c11d61110f1` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/instance.md) | 595 | `declaration-track:20dc80d57fc782e0420aaee4f060c8fb25e5a46c4bbd7a55bfa355c9c3de5946` |
| 67 | `def` | [ofMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ofmeasurablespace.md) | 602 | `declaration-track:882de7b6a4e9bd379c83e55fd46a2d337af5519ce359a682b8aa338c647768b3` |
| 68 | `theorem` | [ofMeasurableSpace_le_ofMeasurableSpace_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ofmeasurablespace-le-ofmeasurablespace-iff.md) | 608 | `result-track:304a71216c223853e5270a3bb8b4fb0ceb3beee12384b04a729c2b066ed10423` |
| 69 | `inductive` | [GenerateHas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatehas.md) | 614 | `declaration-track:580a6468b00e8b8ab14512a6fd5b90c10f2d878d6fd8770732a903204be696b6` |
| 70 | `theorem` | [generateHas_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatehas-compl.md) | 621 | `result-track:6798a5ae1ec22f1f81885081d8fceea4ed6d01515e7efe702a845582c724c735` |
| 71 | `def` | [generate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generate.md) | 628 | `declaration-track:7a400f3e423b7e8fe4c19ad763edc4364593a499a7412f341ac4afe7ac7744b4` |
| 72 | `theorem` | [generateHas_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatehas-def.md) | 634 | `result-track:4b1feb7bb77f4f1ea3f5ad5f64710cdc6161b7559cce631d44492786845750e7` |
| 73 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 637 | `declaration-track:9ea887c021c58f3d3481d7555ed8e5615d8895a7daee1c1922857a1b53c6d6e2` |
| 74 | `def` | [toMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/tomeasurablespace.md) | 642 | `declaration-track:1fab12bf67a18cb62e175bd3796d18495a943db8321386d5c6f74700c8d3fbd0` |
| 75 | `theorem` | [ofMeasurableSpace_toMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/ofmeasurablespace-tomeasurablespace.md) | 653 | `result-track:ada1b12497ff7e108f6dd368bbd5247e9a9414ab082ad9f0f20a2e9a148b40a6` |
| 76 | `def` | [restrictOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/restricton.md) | 659 | `declaration-track:3b93f0154f29ee0013d3790e131ca52e70a026710a0bdc5eff3789802ba6cf04` |
| 77 | `theorem` | [generate_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generate-le.md) | 673 | `result-track:a693e945b66ba712a1ce3f111dcad8c2e819cfc2b608b9016dd76d4a11bfcb58` |
| 78 | `theorem` | [generate_has_subset_generate_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generate-has-subset-generate-measurable.md) | 676 | `result-track:aef09f0d1a9dfdabfce6df56a457aad5fcc4841290ec6e7be4a060a2e4d2fd43` |
| 79 | `theorem` | [generate_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generate-inter.md) | 680 | `result-track:a64e86fb9dcb987d3e5218b3058cdffe5f59d6d1a106b33ef0b1bbe96c7a1d10` |
| 80 | `theorem` | [generateFrom_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/generatefrom-eq.md) | 701 | `result-track:59a798395fa2842beba15d52791b3d532f8571dc0f87dbcc6ec4babc315367ed` |
| 81 | `theorem` | [induction_on_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemNamespacedPublic.lean/declarations/induction-on-inter.md) | 721 | `result-track:d183144c92a715b8262eb1531cb2c900e710562aa823b6c136cb3b22c21eabac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be8bc513d3ea753d853b7f9b0301368b52528a828027907a9e2e91bd2ce873c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/PiSystem/Varianta29f9d43c59df6ee8ed2a1390141188b1ebd2352292b318a511eb531655a3428.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/PiSystem/Varianta29f9d43c59df6ee8ed2a1390141188b1ebd2352292b318a511eb531655a3428.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
