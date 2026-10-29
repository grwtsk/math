# Verification target: Pi System

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb23303e80d3ad7be2580e2ccaad1e06f60fb32e",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variant4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb23303e80d3ad7be2580e2ccaad1e06f60fb32e`.

Source path: `GRWTSK/Analysis/MeasureTheory/PiSystem/Variant4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PiSystem/Variant4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Encodable.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem.md) | 67 | `declaration-track:b4b6bb37cebc0c6692b32472db34237514cf27aed20797d626db2672b2ea7479` |
| 2 | `theorem` | [isPiSystem_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-measurableset.md) | 72 | `result-track:539db07c09a416c1fd39edd1c4de5f548f2313ec00e9367abd056aab63ff8f93` |
| 3 | `theorem` | [IsPiSystem.singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-singleton.md) | 77 | `result-track:af811093b4b08e5bc19065fc666d9c73fb8d9ca80044b92665db2ea8eb7dd881` |
| 4 | `theorem` | [IsPiSystem.insert_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-insert-empty.md) | 82 | `result-track:fe4d87b1a10f90b93c592db81e0cacbf549a2061907d468adcb817d427766125` |
| 5 | `theorem` | [IsPiSystem.insert_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-insert-univ.md) | 91 | `result-track:7575988d084e047c8cb43c09cf5cce2f8eb39694a2106c7af4993d870cea41df` |
| 6 | `theorem` | [IsPiSystem.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-comap.md) | 100 | `result-track:9ac38a74945a5f1cacf4fab2f8a17a2ec09ef695656bef66f6947a52ccba5553` |
| 7 | `theorem` | [isPiSystem_iUnion_of_directed_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-iunion-of-directed-le.md) | 106 | `result-track:df56f098bc58f65b1c515389d791a12338d8a5e5e72135e03100facd805eacef` |
| 8 | `theorem` | [isPiSystem_iUnion_of_monotone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-iunion-of-monotone.md) | 116 | `result-track:c0c00964b0805f33ca54df356cb86b253c9a45aa231173ae5b83adf0569e5987` |
| 9 | `lemma` | [IsPiSystem.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-prod.md) | 121 | `result-track:f5f3cd5e42712d65f232394a1b76cfc9f74790c1e7940b298956117038b47276` |
| 10 | `theorem` | [isPiSystem_image_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-image-iio.md) | 131 | `result-track:e924e2317628c71cd0ec559f1924d68c61745eb7bb893e88d7c81757ecd7a1f5` |
| 11 | `theorem` | [isPiSystem_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-iio.md) | 135 | `result-track:80e76af6b7fe0e98426936bbe5974940d574a3ef495f9790cd970c8b2e065885` |
| 12 | `theorem` | [isPiSystem_image_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-image-ioi.md) | 138 | `result-track:04249e6cca2c046832b95277afacfab6729fa389cd2f6257e5a23603225c1f9a` |
| 13 | `theorem` | [isPiSystem_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ioi.md) | 141 | `result-track:abfd290ac3012280b9303d6ce8604180ec3e0a7f5e7eccf3b45e9efd22342615` |
| 14 | `theorem` | [isPiSystem_image_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-image-iic.md) | 144 | `result-track:389f90997c45e02f3086892131ad994cd55f7ec3a6211cb6b0d7717496f2c3d2` |
| 15 | `theorem` | [isPiSystem_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-iic.md) | 148 | `result-track:688c3dd9e902e862bfee1c986b1708131a3befc416e87afd6ddc04cf6e7fba49` |
| 16 | `theorem` | [isPiSystem_image_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-image-ici.md) | 151 | `result-track:c15e2466a81c5bb479099ca1820d9165af94abc359d86ad22acdc9c79b246233` |
| 17 | `theorem` | [isPiSystem_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ici.md) | 154 | `result-track:6917b90e409e86053e65d5a231f7b3a8dc01fa4627faa17fa715ab66c591de7a` |
| 18 | `theorem` | [isPiSystem_Ixx_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ixx-mem.md) | 157 | `result-track:78c4c9ef0ad556e7b786bd31094d99d1cb2af80d8564f1f7d6320125c3142a0c` |
| 19 | `theorem` | [isPiSystem_Ixx](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ixx.md) | 165 | `result-track:ac849e02ca332e783c85724bcd1e6f3e4ab775393e22496096e57393fa13f00b` |
| 20 | `theorem` | [isPiSystem_Ioo_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ioo-mem.md) | 171 | `result-track:651ac5d7d2c9ae01e993243dded9b6c4a4e336a9dfcbb6f41f68300394514f72` |
| 21 | `theorem` | [isPiSystem_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ioo.md) | 175 | `result-track:905b9c2fa298c0e16d7a2b1ef7c58dbe38fe6de403594b5b575060e80dbd4ac4` |
| 22 | `theorem` | [isPiSystem_Ioc_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ioc-mem.md) | 179 | `result-track:71a42fb210907e46bb4eb58dc7a8e01a2370104f81fdcd4085cef8a84d8eebec` |
| 23 | `theorem` | [isPiSystem_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ioc.md) | 183 | `result-track:86fefc6bda2519a2a1930ec7c519c6007187091ffa3a655d4cfcc1ef9e0e301b` |
| 24 | `theorem` | [isPiSystem_Ico_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ico-mem.md) | 187 | `result-track:2eebbfb9dd9e12115147276f46d31c4b246548e021f7f6b92192eddfa65e9ac1` |
| 25 | `theorem` | [isPiSystem_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-ico.md) | 191 | `result-track:951db617b3d65a3cd33b10ff4a22fb217ce3d0d574bb868666d6af173b1b2da6` |
| 26 | `theorem` | [isPiSystem_Icc_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-icc-mem.md) | 195 | `result-track:62f2e2ae3f2ee59623f20fb8b5748825b47bfd088cdd7652cd4bedf173793408` |
| 27 | `theorem` | [isPiSystem_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-icc.md) | 199 | `result-track:00e88c9c47c62bee3fa5351a4ea044e2592cbf11ca3fbb7f921fdcd0d0cfa228` |
| 28 | `inductive` | [generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatepisystem.md) | 207 | `declaration-track:ca3ac1b240075d02d2a81a78638eef8044d5317b076fd05575c9043045fa4e47` |
| 29 | `theorem` | [isPiSystem_generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-generatepisystem.md) | 212 | `result-track:77762a4a68e94440d84c0f6ac265c20675414f63cc9af2f3741c91d76d9678d6` |
| 30 | `theorem` | [subset_generatePiSystem_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/subset-generatepisystem-self.md) | 215 | `result-track:ffbac8989b397300a8710668cfed50868ef44b2da84a94aab09e34aee2c22c3c` |
| 31 | `theorem` | [generatePiSystem_subset_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatepisystem-subset-self.md) | 218 | `result-track:b1575e624fe2150f3557bafcc9f72a5a7609898a001c48f3b16ecda95eaffe64` |
| 32 | `theorem` | [generatePiSystem_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatepisystem-eq.md) | 224 | `result-track:303cf0a36b92aeed4c76d540b40db9f124a8f41f3ddb08b9bde1bb7176c464a6` |
| 33 | `theorem` | [generatePiSystem_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatepisystem-mono.md) | 227 | `result-track:e415342e3f84c9f028f831490a1229f91665bd88b7a32f13c491662cee559bc3` |
| 34 | `theorem` | [generatePiSystem_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatepisystem-measurableset.md) | 233 | `result-track:16a52b58034d2de5451b2e9de9800f37d231d781737405c5a956cf7dbc15c04c` |
| 35 | `theorem` | [generateFrom_measurableSet_of_generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatefrom-measurableset-of-generatepisystem.md) | 240 | `result-track:34de7e1ce649db698355e9dcd141895a4b8d978195efa8c78908ca1416700981` |
| 36 | `theorem` | [generateFrom_generatePiSystem_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatefrom-generatepisystem-eq.md) | 245 | `result-track:cfe39ff4cb76854c03dc7cb8215c465aa464fc03f10c22ab1c0a91f112792fb2` |
| 37 | `theorem` | [mem_generatePiSystem_iUnion_elim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/mem-generatepisystem-iunion-elim.md) | 254 | `result-track:557250e8ddba9972c4afc948f65f63b06d25967a753893eafceb25eadcaffbd4` |
| 38 | `theorem` | [mem_generatePiSystem_iUnion_elim'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/mem-generatepisystem-iunion-elim-source-edition-2.md) | 289 | `result-track:6e17094f44967580c7963c9b00d311b875eba1b28c47b78cd2f7521aa28e39c9` |
| 39 | `def` | [piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/piiunioninter.md) | 332 | `declaration-track:72f8a3ceba3b55135ade8a2cb6c04f5897850792fc341a4dbfbdb24ae4d0ee5b` |
| 40 | `theorem` | [piiUnionInter_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/piiunioninter-singleton.md) | 336 | `result-track:1237d87378001b8d8e1a7916c1bf937887f7e466a8e480d8175171afcf5ec023` |
| 41 | `theorem` | [piiUnionInter_singleton_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/piiunioninter-singleton-left.md) | 366 | `result-track:a06925bfd1992e979ef79c367e455bf1ebe686afe1cf3d0088db97f3b98e6f4d` |
| 42 | `theorem` | [generateFrom_piiUnionInter_singleton_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatefrom-piiunioninter-singleton-left.md) | 378 | `result-track:a5c9ae02675789cbdc712a550acef78492a6cd05e508ba282ef65cc92a2ced5c` |
| 43 | `theorem` | [isPiSystem_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ispisystem-piiunioninter.md) | 392 | `result-track:8dadbb52a94f230282180a7c721d5766da620d992cb72399b52e4b66c11b6496` |
| 44 | `theorem` | [piiUnionInter_mono_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/piiunioninter-mono-left.md) | 431 | `result-track:1f4297384579cc6d662df9c4e736126f01871f86e1fc37e4fd6a7b80c1c44ab8` |
| 45 | `theorem` | [piiUnionInter_mono_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/piiunioninter-mono-right.md) | 435 | `result-track:cf79cd89068a8412425e44a81cdcb9a0684799831171471c6e6bd5970e7c2179` |
| 46 | `theorem` | [generateFrom_piiUnionInter_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatefrom-piiunioninter-le.md) | 439 | `result-track:f762693b6ba32efa27cf0cdc8b611e43c4d5736754aa926da401b2b174645dd9` |
| 47 | `theorem` | [subset_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/subset-piiunioninter.md) | 446 | `result-track:bc49c07f52fcb301a9a907c5dbcb629a69c94bf2c6bb330c44f4f56eadcb2ac2` |
| 48 | `theorem` | [mem_piiUnionInter_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/mem-piiunioninter-of-measurableset.md) | 456 | `result-track:78437ea4c221a11e6eedf063224f6ece9bfcd84c13f00c4a4653aab8f99d43f3` |
| 49 | `theorem` | [le_generateFrom_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/le-generatefrom-piiunioninter.md) | 461 | `result-track:1e4fd38b58580ba04257e044aaa089dc9aa8862f4267b538149855c31b5759f5` |
| 50 | `theorem` | [measurableSet_iSup_of_mem_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/measurableset-isup-of-mem-piiunioninter.md) | 465 | `result-track:32828d7d8ef18310eeee7a8b5d8a3f29189394abc2c75a98898efbabba317c19` |
| 51 | `theorem` | [generateFrom_piiUnionInter_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatefrom-piiunioninter-measurableset.md) | 474 | `result-track:bbfaf9cd828c5dac68a3bdc174ec63c83ea2c4a28c666cb2448bbe02e709ba80` |
| 52 | `structure` | [DynkinSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/dynkinsystem.md) | 503 | `declaration-track:d372742bcee6d1e1e51505f6463c704594a2949fb4016c9fab0af82ee61ba8fd` |
| 53 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ext.md) | 517 | `result-track:f7f3ea8d0a85d6094134721081ab9be6ed9ae84a23a0e6370611adf5cb5950fb` |
| 54 | `theorem` | [has_compl_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/has-compl-iff.md) | 525 | `result-track:ba5ac2224105917c65e6d0d1aae7a4ec7fadc6f01cff84f0b4272d7799ea1256` |
| 55 | `theorem` | [has_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/has-univ.md) | 528 | `result-track:3a592d15121b96bba0068a83c129957f3df3f00faffbcf5d48af136cdd3b919b` |
| 56 | `theorem` | [has_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/has-iunion.md) | 530 | `result-track:be1a8765cea9abf5bb8a021f6207ad11daaf417774324cac63c34b50fbb8a989` |
| 57 | `theorem` | [has_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/has-union.md) | 538 | `result-track:946f49c2a4eaad1d9a9d55812b187c3c2389770f604b95afc66ca2c9c25bc4d7` |
| 58 | `theorem` | [has_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/has-diff.md) | 543 | `result-track:c72e89939cea84bfef98d32dc34ab3bcb7842ed8253a465b5b4935d1db233669` |
| 59 | `instance` | [instLEDynkinSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/instledynkinsystem.md) | 549 | `declaration-track:5625d319d19e7dbfaf33fc9e614c4c081816e0e69e4c4caac6668badeb35b12d` |
| 60 | `theorem` | [le_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/le-def.md) | 551 | `result-track:0cd2dc9f837fcfae0f55e83d424908584ee5111057edd12000607bd7159c84e3` |
| 61 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/instance.md) | 554 | `declaration-track:6ddbfc6a5f6911630c2912286109ea4d3f6e31919e9c773cbde10f14a6cad72f` |
| 62 | `def` | [ofMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ofmeasurablespace.md) | 561 | `declaration-track:26b9f142941aaa86f32200b54885fd83fb60bdf934efc9a4feeda9f7fe1cfa8a` |
| 63 | `theorem` | [ofMeasurableSpace_le_ofMeasurableSpace_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ofmeasurablespace-le-ofmeasurablespace-iff.md) | 567 | `result-track:3b1f7691766db6f8bb95a0e6c1300538315e3cf2fd9b21df62a28da3a3aa4ea8` |
| 64 | `inductive` | [GenerateHas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatehas.md) | 573 | `declaration-track:c19c9b659f1b26e3e1117a80e4c1af789d7f08b3c90ea1865a9bdacf75b95adc` |
| 65 | `theorem` | [generateHas_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatehas-compl.md) | 580 | `result-track:9329f2d331a28e94b378200112468031088af2db729071c7424f914c7f3675b0` |
| 66 | `def` | [generate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generate.md) | 587 | `declaration-track:10b22332b00dfc6121338fefa10bc6220e6e08d229846e10fcd0cea5657d103d` |
| 67 | `theorem` | [generateHas_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatehas-def.md) | 593 | `result-track:77516a6657f2b8c2bd4f7d0a53b593111099e25d55bc75c67b425ea437b7831c` |
| 68 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/instance-source-edition-2.md) | 596 | `declaration-track:db9ba64f3ee7b05c29adfc38bd76eaa9ae83d18eed602958499a4aadf0555100` |
| 69 | `def` | [toMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/tomeasurablespace.md) | 600 | `declaration-track:a6921d6fb9b65081b2b3965f495086f03f3ed9468c9ae07ffa54d3e6dc90e93b` |
| 70 | `theorem` | [ofMeasurableSpace_toMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/ofmeasurablespace-tomeasurablespace.md) | 611 | `result-track:e487d51996f2dedfa40dc63b0eae4bd85b5a2165f9c3a63c40eb0a6edaa0ce04` |
| 71 | `def` | [restrictOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/restricton.md) | 617 | `declaration-track:0a5e003070429694416d19819516f8e5770d6bdb1270a758e05c27ca02350b92` |
| 72 | `theorem` | [generate_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generate-le.md) | 631 | `result-track:ed0e6ce5e9dfe2a81607bb6f8ca44228389e49db84691358ff10bf31fd948b44` |
| 73 | `theorem` | [generate_has_subset_generate_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generate-has-subset-generate-measurable.md) | 634 | `result-track:29346a13d6fb8d67cb4f9500285f77fd4389fa07f9238bcf95a741a96ae435d5` |
| 74 | `theorem` | [generate_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generate-inter.md) | 638 | `result-track:adfbcfd933b30be2ae2e527dfe03e5331b7c117f61f4295a82de7ce16658dca8` |
| 75 | `theorem` | [generateFrom_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/generatefrom-eq.md) | 659 | `result-track:c01850d8e9637b3e3c15bae7196c9d9c5c95e1363a43f0c0fba23db7e3eec2ac` |
| 76 | `theorem` | [induction_on_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystem.lean/declarations/induction-on-inter.md) | 679 | `result-track:9632aea45ffb2d02f08dcc9af48deba97a08a61dfdb7152b2d2980bf14d2c497` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec56470c0f01a84c1f0333dd530e5c3d7112b1b4424297a36c0325ef50686614 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/PiSystem/Variant4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/PiSystem/Variant4db810a1e521e93761485acec164ce6dbb781295f32372f2306b89397ea8e57d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
