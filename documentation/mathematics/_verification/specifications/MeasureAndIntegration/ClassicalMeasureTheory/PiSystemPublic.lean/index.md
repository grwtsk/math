# Verification target: Pi System Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7685f54d839131e4181dd47acfc3d924f57818fb",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7685f54d839131e4181dd47acfc3d924f57818fb`.

Source path: `GRWTSK/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean.json)

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
| 1 | `def` | [IsPiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem.md) | 72 | `declaration-track:4b16ea2b2931dad00f83c5af8a9477454bbbd586c867fed5611f88f7d879209c` |
| 2 | `theorem` | [isPiSystem_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-measurableset.md) | 77 | `result-track:292d12cd9aada1df200576fd278cad54f7b338d1e3eb77d1500480c26e251fce` |
| 3 | `theorem` | [IsPiSystem.singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-singleton.md) | 82 | `result-track:29412723ff5513cda8c1bd7f39f3d18d08d8cc060fc697963f26de61b55a9f29` |
| 4 | `theorem` | [IsPiSystem.insert_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-insert-empty.md) | 87 | `result-track:7c963185be64b2a51a20ba7c89e773d74bfb3754b14d6fcee91accf20b0ee9f7` |
| 5 | `theorem` | [IsPiSystem.insert_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-insert-univ.md) | 96 | `result-track:bdd9777f571c1df4e9ae8dce55f6a0b8cb0c2e1fc26827318ab57dc810814dd7` |
| 6 | `theorem` | [IsPiSystem.comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-comap.md) | 105 | `result-track:1e7bfa5fcd5e49bac758e150bfac31f46743812c1f761da60f6f7be4bb5fb7a4` |
| 7 | `lemma` | [IsPiSystem.dissipate_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-dissipate-mem.md) | 113 | `result-track:f860b7a000b6357871aee75dcbb78a3845e92717f270a69aab0260255682b444` |
| 8 | `theorem` | [isPiSystem_iUnion_of_directed_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-iunion-of-directed-le.md) | 122 | `result-track:e1757afb4b5fd0e27e88dedc852fd4ca32a79b4d9679ca795c4a14b167e914ee` |
| 9 | `theorem` | [isPiSystem_iUnion_of_monotone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-iunion-of-monotone.md) | 132 | `result-track:76a2adc1bf63401137293609a76f3303ad7ca322d718f0d4ea60a9c5298f46b0` |
| 10 | `lemma` | [IsPiSystem.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-prod.md) | 137 | `result-track:74aa954302a8c348f86ca014451b2a139710bd1a0f9a4de3ffa1f86a00390d33` |
| 11 | `lemma` | [IsPiSystem.biInter_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-biinter-mem.md) | 144 | `result-track:f2fafb06ccf842fbfd2017eaca2f634bf394f8d5db8793dd01076ed93cedb2b4` |
| 12 | `theorem` | [isPiSystem_image_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-image-iio.md) | 159 | `result-track:4917f2df0770668752b5153f74c8d2c1de081efcf7f42091a65b0332fa19a213` |
| 13 | `theorem` | [isPiSystem_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-iio.md) | 163 | `result-track:d173c9ce1e0688b7a5f557a4cf04b594f942caafbfa2d8577a883da20d55a141` |
| 14 | `theorem` | [isPiSystem_image_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-image-ioi.md) | 166 | `result-track:877da0957cc2e3c43be9cde761f3f660181cdbe0e13d67cdd8e21f97220b1af4` |
| 15 | `theorem` | [isPiSystem_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ioi.md) | 169 | `result-track:fd0121790f0bc38afae49061919ff29e6f66a0e5d95c33e58999492aa7ae9e8e` |
| 16 | `theorem` | [isPiSystem_image_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-image-iic.md) | 172 | `result-track:6cb41a34767a942db62f509e5736fdfd2102389d2acf47798b06cdb9e2f52e9e` |
| 17 | `theorem` | [isPiSystem_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-iic.md) | 176 | `result-track:d77b92a351240235d03c3a0025eae4e2a05b2a7f17d3fdd54199d5107b54c233` |
| 18 | `theorem` | [isPiSystem_image_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-image-ici.md) | 179 | `result-track:d305db17a1f9bd9f5334b49dbce6b5662b2bc8da5c1a6c8b03ed951255098774` |
| 19 | `theorem` | [isPiSystem_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ici.md) | 182 | `result-track:b7d3b4cd430f025327c80ffcc182fca29bc11bde110aaa45c1dcd5baf0634695` |
| 20 | `theorem` | [isPiSystem_Ixx_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ixx-mem.md) | 185 | `result-track:8eb06ad65113d03f3bc9f330c44260e283e540618169efdff256a3018075874c` |
| 21 | `theorem` | [isPiSystem_Ixx](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ixx.md) | 193 | `result-track:322518d2cb7b020b23d771c82a8c8a575e3c07e7b00baa544374dfaba0b4db42` |
| 22 | `theorem` | [isPiSystem_Ioo_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ioo-mem.md) | 199 | `result-track:2a50cb86b737b16f24429fa1e13f720820c564dd71d453baaf1858db968f23ba` |
| 23 | `theorem` | [isPiSystem_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ioo.md) | 203 | `result-track:152f1449807cd8c79b3ec8086a2cd6341b4bb6f818c17024d7657fb6aa5bec2d` |
| 24 | `theorem` | [isPiSystem_Ioc_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ioc-mem.md) | 207 | `result-track:70f04f86a5760d24a663ad125e58e6a52c0b2b2009e7198db2ebc353a863b7d5` |
| 25 | `theorem` | [isPiSystem_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ioc.md) | 211 | `result-track:443fd60376e61a670fe1d73c5a96fff46cf96afebf474a5b11a4951735a35629` |
| 26 | `theorem` | [isPiSystem_Ico_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ico-mem.md) | 215 | `result-track:1e308d4fbb61c936bc28bcfd20c185e309107ac0610c3a6606d9c552a3baad49` |
| 27 | `theorem` | [isPiSystem_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-ico.md) | 219 | `result-track:3c488e8848082aebb082dd1725e0548ba8104a817a9357f68d6a1bd2dbf14ff5` |
| 28 | `theorem` | [isPiSystem_Icc_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-icc-mem.md) | 223 | `result-track:b02057f5069fc35664363ce4efdbf348da3755d88eaa4e1616a3d44825f5649d` |
| 29 | `theorem` | [isPiSystem_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-icc.md) | 227 | `result-track:5b7bc7ffa00d5fe121a6effa7d9e722304ca23cf8591961ff6ebdd3ce1948592` |
| 30 | `inductive` | [GeneratePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatepisystem-source-edition-2.md) | 235 | `declaration-track:dc5bf618e93c8e06a777d1e4873bcb196a8bb84bfd7d3d647dc647410e450073` |
| 31 | `def` | [generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatepisystem.md) | 243 | `declaration-track:7e18550d0827a68cd5237abbaa87d848bb9ace9c94de4aa186059e9f798bdf30` |
| 32 | `theorem` | [isPiSystem_generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-generatepisystem.md) | 245 | `result-track:ce495ad4230798cc4db2b7f2aca8a1c2f88df3940f66ac48ef536f0dbbd5b00c` |
| 33 | `theorem` | [subset_generatePiSystem_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/subset-generatepisystem-self.md) | 248 | `result-track:44c21965bd11409103f8cea8a33d27bb54cb29f5e088251fa8f004ce6c32c32b` |
| 34 | `lemma` | [generatePiSystem_induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatepisystem-induction.md) | 255 | `result-track:c3b0a7163f7e443c3f2cfccc4f92c41e67c268220a24e9d8c8eedc2b5588b8cc` |
| 35 | `lemma` | [generatePiSystem_min](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatepisystem-min.md) | 266 | `result-track:ec7f3b96395a20f2e013609c76f72a5378ac45451839b385e6dfd778de4eb40e` |
| 36 | `theorem` | [generatePiSystem_subset_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatepisystem-subset-self.md) | 272 | `result-track:21f3535e0dd6efc4a05a3568a9601766e24e664b5893f2cfcacd4c2f30029fc4` |
| 37 | `theorem` | [generatePiSystem_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatepisystem-eq.md) | 275 | `result-track:6140c7c740ad96d38e39561034c8ede954d0ddd3b7c84a0c5365cb28701522a4` |
| 38 | `theorem` | [generatePiSystem_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatepisystem-mono.md) | 278 | `result-track:aaa2f1f101adf4395842e751f3ee41f7521ee575144d05ddcb3f4b7334eb9cd5` |
| 39 | `theorem` | [generatePiSystem_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatepisystem-measurableset.md) | 283 | `result-track:7838ef88a20fa99a24d5367a1666b796f3169a23bc9a1c017d6cb23cfe402185` |
| 40 | `theorem` | [generateFrom_measurableSet_of_generatePiSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatefrom-measurableset-of-generatepisystem.md) | 290 | `result-track:966026d8e9f58e36474ddd3416b66ec55386b6dbfdb8d0438f68813380c86a8b` |
| 41 | `theorem` | [generateFrom_generatePiSystem_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatefrom-generatepisystem-eq.md) | 295 | `result-track:04862014388c98d016094825304518f96ef83f37775fc961768365cf8a4036e2` |
| 42 | `theorem` | [mem_generatePiSystem_iUnion_elim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/mem-generatepisystem-iunion-elim.md) | 304 | `result-track:7cb6640424d5940e7c8ee48ce2add3e3892c13fda63dd6052485c1a6f5c210c4` |
| 43 | `theorem` | [mem_generatePiSystem_iUnion_elim'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/mem-generatepisystem-iunion-elim-source-edition-2.md) | 335 | `result-track:8d13e567a393a05ecde0304e2f5d90f01e6319e6007c2cf87abcb317e43c0ef7` |
| 44 | `def` | [piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/piiunioninter.md) | 377 | `declaration-track:1d3d99a25078c71e5e0ec47f95154ecbb9dbd70ccddfc9d8a2db37d41daf1944` |
| 45 | `theorem` | [piiUnionInter_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/piiunioninter-singleton.md) | 381 | `result-track:5a1afa3507b64cf5378be0e95940bc0b540d8efee46c709a6bd50758fafc0cb4` |
| 46 | `theorem` | [piiUnionInter_singleton_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/piiunioninter-singleton-left.md) | 411 | `result-track:615bf6a8e9b6fcfb9618bb66cc4d673450918a50e3425453e1130fbf4c0c91a9` |
| 47 | `theorem` | [generateFrom_piiUnionInter_singleton_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatefrom-piiunioninter-singleton-left.md) | 419 | `result-track:4986670167b0d6d880ae1e215fd750c1b0c0b965f2c0534499890b02d9245ef9` |
| 48 | `theorem` | [isPiSystem_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ispisystem-piiunioninter.md) | 433 | `result-track:c5897252898aeed5e89cd5fe95453f92b4f8683cfb810dcbd1437e03b63ea3ee` |
| 49 | `theorem` | [piiUnionInter_mono_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/piiunioninter-mono-left.md) | 462 | `result-track:3ae7251634276a764297aca07a8abd8a5272bad970ae2c2a42f4dd0bf6948ff6` |
| 50 | `theorem` | [piiUnionInter_mono_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/piiunioninter-mono-right.md) | 466 | `result-track:fefba412f83141f6eb946acaf77e1e2c69e3f48a73d883fc709ce8207832cbcf` |
| 51 | `theorem` | [generateFrom_piiUnionInter_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatefrom-piiunioninter-le.md) | 470 | `result-track:e58023c825bfa2005ad02e70c7e120b64a0f672601a52950c827b5ad96772480` |
| 52 | `theorem` | [subset_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/subset-piiunioninter.md) | 477 | `result-track:9b4d63f40599abd9bb6e9c9a59774098691b531d0cb7c57841901090e772a377` |
| 53 | `theorem` | [mem_piiUnionInter_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/mem-piiunioninter-of-measurableset.md) | 487 | `result-track:7e83d663de09ad56c1b0ef361c6af781a0c2ff9136c9c1a69deaf2686588190d` |
| 54 | `theorem` | [le_generateFrom_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/le-generatefrom-piiunioninter.md) | 492 | `result-track:7ec35d85230e2b62241925ed25a935fa4ec52367c4be480515433e909f97b3cd` |
| 55 | `theorem` | [measurableSet_iSup_of_mem_piiUnionInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/measurableset-isup-of-mem-piiunioninter.md) | 496 | `result-track:2aa02a2ae2d31298379801b2ffd041b4b5c1cbbec782b456183baffdb797dbaf` |
| 56 | `theorem` | [generateFrom_piiUnionInter_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatefrom-piiunioninter-measurableset.md) | 505 | `result-track:94228d8d3f8e2a39dc96150c68bfb26310c9b02864df583166b2a668ec1cd32b` |
| 57 | `structure` | [DynkinSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/dynkinsystem.md) | 534 | `declaration-track:f6f4ca73860fd362991f989dceb379173836a7eda359c1480ec4fc61d0560a30` |
| 58 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ext.md) | 548 | `result-track:a07d3253bb8a9fa9ace1691806322a9125f9ef20fe2a621e5d7a576547b64fc0` |
| 59 | `theorem` | [has_compl_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/has-compl-iff.md) | 556 | `result-track:17941cfe827e5ab78b817a122c4a4f86dd7285caa288738c57b323134b674cf7` |
| 60 | `theorem` | [has_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/has-univ.md) | 559 | `result-track:2c191b6400b85e5c4f91248cd6c9e53ce4234e54ad89b6c51cca8276f2e8c88d` |
| 61 | `theorem` | [has_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/has-iunion.md) | 561 | `result-track:d5cd92a5644f2f4112ae1a44cdd81459479e29f37aaa11f5572a0937fcd9518c` |
| 62 | `theorem` | [has_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/has-union.md) | 569 | `result-track:97cea35dbccc1dd92b08e73b8405a3cb72d237aa8dc4b0ac4b386f1d2de317f8` |
| 63 | `theorem` | [has_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/has-sdiff.md) | 574 | `result-track:f218da18025ea6af0c6956a9f662c5f27d5ec04ff92e5171afff2b8c49607fb3` |
| 64 | `instance` | [instLEDynkinSystem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/instledynkinsystem.md) | 582 | `declaration-track:a52370059f05a324fd95e85a68b2a890fd824d36f2d263f8c1fa0a9fc4a11678` |
| 65 | `theorem` | [le_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/le-def.md) | 584 | `result-track:e3653f9eb9afe5bfc225b6ebfda59e35c8086ca862af96f549a31e28e19f4e99` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/instance-source-edition-2.md) | 587 | `declaration-track:5096d2169ba3164fdcf002675fb9b3bfdd7ed7617a106206899d736cd9c417e6` |
| 67 | `def` | [ofMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ofmeasurablespace.md) | 594 | `declaration-track:e667073bfa3d5ab7069783bfc78e05ba2cc9481b36adc3bb764e3ec662557a2e` |
| 68 | `theorem` | [ofMeasurableSpace_le_ofMeasurableSpace_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ofmeasurablespace-le-ofmeasurablespace-iff.md) | 600 | `result-track:4738cd6d9df58f6f244e890aa29192107aa2b1b22d0c2f02299a034f2d8a3027` |
| 69 | `inductive` | [GenerateHas](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatehas.md) | 606 | `declaration-track:eee891c75c33b6ef82b9e07e4749fb539c99f728a42e57dc1b30b6e2afa2b5ee` |
| 70 | `theorem` | [generateHas_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatehas-compl.md) | 613 | `result-track:6d27e1570b7da6e51359f2e3d9f01b98515ae4e3dc4958bedb9b2274481988ae` |
| 71 | `def` | [generate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generate.md) | 620 | `declaration-track:a71c4e5c72db51bbe0a34ef94c3513e006b1dde53dd7d125133d623a7886d92c` |
| 72 | `theorem` | [generateHas_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatehas-def.md) | 626 | `result-track:698cd5d833f3dde9190ddc4dbd71f2387e33163843b375f194043bfc96be536d` |
| 73 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/instance.md) | 629 | `declaration-track:4ea577b01f70aefefa2c284a13615b0f025b58759c7c2e425717eedab7877e94` |
| 74 | `def` | [toMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/tomeasurablespace.md) | 634 | `declaration-track:89f89a1da666d45afc80c6e130e208c5235983cc87ea5f3c6d8fee561e5e7e15` |
| 75 | `theorem` | [ofMeasurableSpace_toMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/ofmeasurablespace-tomeasurablespace.md) | 645 | `result-track:3e7dd23a953823e1f5a8e70a04968bc7fe8fc75daed6574452a0b0fe06ef12bf` |
| 76 | `def` | [restrictOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/restricton.md) | 651 | `declaration-track:53becbbb0c6c37c929f0407a0bd3887de2c9a1d4189fbf27f0d7fde3f6a4f0c0` |
| 77 | `theorem` | [generate_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generate-le.md) | 665 | `result-track:5255dc098ca0bf30700f5a6abdc34df7060d91c8ee8236abdbb4b178007219f3` |
| 78 | `theorem` | [generate_has_subset_generate_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generate-has-subset-generate-measurable.md) | 668 | `result-track:925b6e3f96260d1fcc590e3eb947b01c52980f8d9354637778ec45c2abb2c78b` |
| 79 | `theorem` | [generate_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generate-inter.md) | 672 | `result-track:b31422b42e3efe97d7aa7a058b5420e58c1553e838f89f4b4d95176472120f1d` |
| 80 | `theorem` | [generateFrom_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/generatefrom-eq.md) | 693 | `result-track:cbc1a0ae51af55b14fc42fa0025e533fa1cbc07a2ed4c03b53806e3062c82dd2` |
| 81 | `theorem` | [induction_on_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PiSystemPublic.lean/declarations/induction-on-inter.md) | 713 | `result-track:3872b7f3ccf9d50b41579b19c1e68356d9661ed70f1b292cb9e7a99c26ee6c7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7df691ea24110cd25755fe3d36736bed4592cb5566d9b100665f29575d2ca7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/PiSystem/Variantc45e57f43ef873cf043ec0e94d9319c900a740b21ff51b03dce12fc603982088.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
