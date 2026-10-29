# Verification target: Dilation Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "410d0b9a1cac1c4fc8eb5b2307c6f9b5930da429",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DilationExtIff.lean/index.md) · [Full source](../../../../GeneralTopology/DilationExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `410d0b9a1cac1c4fc8eb5b2307c6f9b5930da429`.

Source path: `GRWTSK/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Antilipschitz` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Dilation](../../../../GeneralTopology/DilationExtIff.lean/declarations/dilation.md) | 64 | `declaration-track:46bc12de18c2bacedc86d41dbd3177e50cbae1cf584637cf8deff7b9973a6478` |
| 2 | `class` | [DilationClass](../../../../GeneralTopology/DilationExtIff.lean/declarations/dilationclass.md) | 73 | `declaration-track:7b6ab2db827e8f56d48d380683d6a59ef207ed3b68f0da26a32eb392f1a844f9` |
| 3 | `instance` | [toDilationClass](../../../../GeneralTopology/DilationExtIff.lean/declarations/todilationclass.md) | 88 | `declaration-track:2456b284f314e31dabaa4e55932b26370b86f0e5a0a3e5fe7a13d387b32ba6a8` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationExtIff.lean/declarations/instance.md) | 94 | `declaration-track:3402459e4871da9a9a4b458f26075e2a88745cfafc472422d9453d22fb6404c8` |
| 5 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/DilationExtIff.lean/declarations/tofun-eq-coe.md) | 98 | `result-track:35c3fb08ec9531b6ef587ba73869bc35a118958c16777e593ceeef40f130526f` |
| 6 | `theorem` | [coe_mk](../../../../GeneralTopology/DilationExtIff.lean/declarations/coe-mk.md) | 103 | `result-track:bc9fbd8ea204097abec0d142fa5799e1b07fea6a38af00f58bc422b98ecb0c83` |
| 7 | `theorem` | [congr_fun](../../../../GeneralTopology/DilationExtIff.lean/declarations/congr-fun.md) | 107 | `result-track:f0066b83d144967d8c1f32b5da7998517b1ca457a0f361f8558584b538489881` |
| 8 | `theorem` | [congr_arg](../../../../GeneralTopology/DilationExtIff.lean/declarations/congr-arg.md) | 111 | `result-track:0666289756d83a20c14a506646402c391225074a8770f93a4422a734a57f9848` |
| 9 | `theorem` | [ext](../../../../GeneralTopology/DilationExtIff.lean/declarations/ext.md) | 116 | `result-track:005d4929a49806c651a1d53bc2d2628aed8fd3367057f1106af63352e58cf3bb` |
| 10 | `theorem` | [ext_iff](../../../../GeneralTopology/DilationExtIff.lean/declarations/ext-iff.md) | 120 | `result-track:dac24dddf2c947b6307df7b6ab4cac838cb22d2873d983073ed2c6cca9a2366c` |
| 11 | `theorem` | [mk_coe](../../../../GeneralTopology/DilationExtIff.lean/declarations/mk-coe.md) | 125 | `result-track:39c5a623761c75340f40cba50494dba844ca2bda2325988eb25a8236566b02ce` |
| 12 | `def` | [copy](../../../../GeneralTopology/DilationExtIff.lean/declarations/copy.md) | 132 | `declaration-track:8df4ce7b01877d24ec09ff9f43ae58c9934fb139fb1af77a02d2ee6c16f9d5e3` |
| 13 | `theorem` | [copy_eq_self](../../../../GeneralTopology/DilationExtIff.lean/declarations/copy-eq-self.md) | 137 | `result-track:7cb7ae37521520496163337b9262c89e9cacd13ac24b6fe191d39249963eb66d` |
| 14 | `def` | [ratio](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio.md) | 143 | `declaration-track:47ba184c0c326ee3dcd7109f1c1f936675a777ee8d18143a1b9e3a1697899e82` |
| 15 | `theorem` | [ratio_of_trivial](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-of-trivial.md) | 147 | `result-track:075095b24dd7b6d8d2e7f05c7293332fec5ea3c45ec08f1883acb9e6cd3acafe` |
| 16 | `theorem` | [ratio_of_subsingleton](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-of-subsingleton.md) | 152 | `result-track:7a2dc50ea6f58fb4cb7f285506d8579b18a0418cd4ba43ca1575abbdf9f0cdf4` |
| 17 | `theorem` | [ratio_ne_zero](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-ne-zero.md) | 155 | `result-track:505aa39c91370f54787bfb3353fd94e9d2ae5d75f5b3d98247778b761700fd79` |
| 18 | `theorem` | [ratio_pos](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-pos.md) | 161 | `result-track:2ad8195b3df72abcbb9fc348de37084c1f3fb4235fbf379e4c41555647b0000c` |
| 19 | `theorem` | [edist_eq](../../../../GeneralTopology/DilationExtIff.lean/declarations/edist-eq.md) | 166 | `result-track:38596e1d51148a8dcc7fca11dbe3f2dcd1007939bc50939b0e0111a9e9a4cfaa` |
| 20 | `theorem` | [nndist_eq](../../../../GeneralTopology/DilationExtIff.lean/declarations/nndist-eq.md) | 178 | `result-track:de5295ad8b036b6ab10933876644cd05b2fbbc7f0a4d45270c79a62fe8b43a08` |
| 21 | `theorem` | [dist_eq](../../../../GeneralTopology/DilationExtIff.lean/declarations/dist-eq.md) | 184 | `result-track:7e6e5a0c30c35102e609411e8ff68d37aedc4200441680ad719d6b6317ff32ea` |
| 22 | `theorem` | [ratio_unique](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-unique.md) | 191 | `result-track:577140193901ac9ba19da2fb9ab77839e67ac3c2e835b5734a1f5145f3dfefd5` |
| 23 | `theorem` | [ratio_unique_of_nndist_ne_zero](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-unique-of-nndist-ne-zero.md) | 198 | `result-track:ccf1207a0ad61ae230238f8fdd4d97abb8512b3eb9a8137818dcab988c31c819` |
| 24 | `theorem` | [ratio_unique_of_dist_ne_zero](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-unique-of-dist-ne-zero.md) | 207 | `result-track:3399da1351939ebceb4ef41938eac015b55c1d3686e7e96a13d43e3816460a98` |
| 25 | `def` | [mkOfNNDistEq](../../../../GeneralTopology/DilationExtIff.lean/declarations/mkofnndisteq.md) | 215 | `declaration-track:2bd25dae257d3f48bb335b1c33908de7d15df122fb116c92ebc18a77976a3230` |
| 26 | `theorem` | [coe_mkOfNNDistEq](../../../../GeneralTopology/DilationExtIff.lean/declarations/coe-mkofnndisteq.md) | 225 | `result-track:421339785ecc79ae02bbd6716b57f2f36d7a5cf9f1881aa99bdf9c1bcc8cab0a` |
| 27 | `theorem` | [mk_coe_of_nndist_eq](../../../../GeneralTopology/DilationExtIff.lean/declarations/mk-coe-of-nndist-eq.md) | 231 | `result-track:5fd6536d0531e8ab0a00dfafdd95935fd3db6b08b912567fd4c800be721783f9` |
| 28 | `def` | [mkOfDistEq](../../../../GeneralTopology/DilationExtIff.lean/declarations/mkofdisteq.md) | 237 | `declaration-track:446b76afad091cf9a419c916524b0c9dd4fd75a4075bdf143fb7484a9cb964c3` |
| 29 | `theorem` | [coe_mkOfDistEq](../../../../GeneralTopology/DilationExtIff.lean/declarations/coe-mkofdisteq.md) | 245 | `result-track:511688e1fb4f15052c582af5b76894a3e8cabf7862cfece7ba9bd065c9c0b536` |
| 30 | `theorem` | [mk_coe_of_dist_eq](../../../../GeneralTopology/DilationExtIff.lean/declarations/mk-coe-of-dist-eq.md) | 251 | `result-track:35cc4ff02c5cc32e3da9188a5fdf309268cf5aa76000339f1c3740985be90758` |
| 31 | `theorem` | [lipschitz](../../../../GeneralTopology/DilationExtIff.lean/declarations/lipschitz.md) | 266 | `result-track:02386ec460131761eef846c8d8fd44131f59ee74fa830058b20564bc9fb05c5f` |
| 32 | `theorem` | [antilipschitz](../../../../GeneralTopology/DilationExtIff.lean/declarations/antilipschitz.md) | 269 | `result-track:83a3e84d90f19e80f83aacab544f77c7a9f148d7a8a96c97cbc5205a90f58ca8` |
| 33 | `theorem` | [injective](../../../../GeneralTopology/DilationExtIff.lean/declarations/injective.md) | 276 | `result-track:0d4b32610f3463e855d26b3d9e178ce467437fdb199b7619c272c3cbd62f0e23` |
| 34 | `def` | [id](../../../../GeneralTopology/DilationExtIff.lean/declarations/id.md) | 282 | `declaration-track:a086ef4394147dec37ae0243819a7b1bd32971ebe453cc5c039a77e707142613` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationExtIff.lean/declarations/instance-source-edition-3.md) | 287 | `declaration-track:e40d8fa4bde24225a427723e695756e829e71e1e9cda10dc4162e1ad5129a14d` |
| 36 | `theorem` | [coe_id](../../../../GeneralTopology/DilationExtIff.lean/declarations/coe-id.md) | 291 | `result-track:d9c8d72e33f876cd9afb27adcb8e4b4bb1d672b230e9565bf5eda0948d016b95` |
| 37 | `theorem` | [ratio_id](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-id.md) | 295 | `result-track:8fda1adb78cd68c4b270ddcaea3f650c3abd9c83eedb5d71a1b67b86b580a609` |
| 38 | `def` | [comp](../../../../GeneralTopology/DilationExtIff.lean/declarations/comp.md) | 305 | `declaration-track:60097fbc2161a31f626f27f1e8990269a001857b8b5cd05e183cf32f8cdb5cdf` |
| 39 | `theorem` | [comp_assoc](../../../../GeneralTopology/DilationExtIff.lean/declarations/comp-assoc.md) | 311 | `result-track:4efe6cd4406b2b639a4a973cb86b45b1ebf8ad69b9695032f68013645e474ee7` |
| 40 | `theorem` | [coe_comp](../../../../GeneralTopology/DilationExtIff.lean/declarations/coe-comp.md) | 317 | `result-track:7e80dbd233c431deec9be04a0653773a1b5758fc428c3f4a7db95993f1e01022` |
| 41 | `theorem` | [comp_apply](../../../../GeneralTopology/DilationExtIff.lean/declarations/comp-apply.md) | 321 | `result-track:a23caea888b830c2d9255cd965e00dbc8a39931c8b80ebbc63595ab6c85af8be` |
| 42 | `theorem` | [ratio_comp'](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-comp-source-edition-2.md) | 331 | `result-track:64acf0d243b6fe5ff3aacbd8f20d09f70deee658d12388f28f3609cf2664f59e` |
| 43 | `theorem` | [comp_id](../../../../GeneralTopology/DilationExtIff.lean/declarations/comp-id.md) | 341 | `result-track:d74f0fd31c4c359bec1c2c0e4c75ed4aaa570ed891e1a434639fadeada191fe5` |
| 44 | `theorem` | [id_comp](../../../../GeneralTopology/DilationExtIff.lean/declarations/id-comp.md) | 346 | `result-track:aded1fb9a436596aca662818a4aad1949a84c20cbeb2af08dc9c043bdeaa6d85` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationExtIff.lean/declarations/instance-source-edition-2.md) | 350 | `declaration-track:942a98cb651cefba90859c2d8a3d2ea20934058d631c159da9de296ffcfa1050` |
| 46 | `theorem` | [one_def](../../../../GeneralTopology/DilationExtIff.lean/declarations/one-def.md) | 357 | `result-track:dd9511f0aa394df9c48626c9e9bf0e2651c058d63579bf303f3a1346c5289450` |
| 47 | `theorem` | [mul_def](../../../../GeneralTopology/DilationExtIff.lean/declarations/mul-def.md) | 361 | `result-track:e70b0773e512a6e51f27743ffec22b104ec012c52794d079bdbc44678569863f` |
| 48 | `theorem` | [coe_one](../../../../GeneralTopology/DilationExtIff.lean/declarations/coe-one.md) | 366 | `result-track:ebdb9d1bf0eaf02e77a077b85371c7ae5422460f7772c91ae0e8bf3620b58b99` |
| 49 | `theorem` | [coe_mul](../../../../GeneralTopology/DilationExtIff.lean/declarations/coe-mul.md) | 371 | `result-track:91b5ec7fa4c0449a9c99580a9f8642518d6a57a15b401d902657b71bc3abe3f2` |
| 50 | `theorem` | [ratio_one](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-one.md) | 375 | `result-track:3cf512f9d52bff98cb438de7303831ab8130fa14cd74cbcf00e6beea0a81a717` |
| 51 | `theorem` | [ratio_mul](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-mul.md) | 378 | `result-track:242cd88a5574e8b39b75f8a4429ae166637e21290f9663f71c9a145dde3620df` |
| 52 | `def` | [ratioHom](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratiohom.md) | 386 | `declaration-track:28177081f2b6fe57ab481833f6792b64525473c00768b0202ebd417f815ef485` |
| 53 | `theorem` | [ratio_pow](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-pow.md) | 389 | `result-track:6118078ced1269ecbc1f18f0585cc363b90713a555b16fa6a086212a105d23e1` |
| 54 | `theorem` | [cancel_right](../../../../GeneralTopology/DilationExtIff.lean/declarations/cancel-right.md) | 392 | `result-track:984218128b366a56fcffa133021397d68535e4ddf82ef4b45aa2b469af8e8cbf` |
| 55 | `theorem` | [cancel_left](../../../../GeneralTopology/DilationExtIff.lean/declarations/cancel-left.md) | 397 | `result-track:0cca0db7915382a8837ebccf194e570d847c09982d1d269e915f3d96a7b7f3ab` |
| 56 | `theorem` | [uniformInducing](../../../../GeneralTopology/DilationExtIff.lean/declarations/uniforminducing.md) | 403 | `result-track:bd349e335416081ef8c47e97b147c1e8c4b5f077c8e6ad48483663d622c8c90f` |
| 57 | `theorem` | [tendsto_nhds_iff](../../../../GeneralTopology/DilationExtIff.lean/declarations/tendsto-nhds-iff.md) | 407 | `result-track:a96760d3c76645c8041af04eced6901c36adbbe620a80af37160196085ecf4c4` |
| 58 | `theorem` | [toContinuous](../../../../GeneralTopology/DilationExtIff.lean/declarations/tocontinuous.md) | 413 | `result-track:ccb11a85ece6caca09d8135fa3fcbcf8962c484c53e291802d971e6da7cb1f9e` |
| 59 | `theorem` | [ediam_image](../../../../GeneralTopology/DilationExtIff.lean/declarations/ediam-image.md) | 418 | `result-track:622aed7bbd018ac146b582909032d425a551b06ee7273ca7af15885e146088f4` |
| 60 | `theorem` | [ediam_range](../../../../GeneralTopology/DilationExtIff.lean/declarations/ediam-range.md) | 426 | `result-track:14f138e8529e48e635866537c3628d45a1a9a8654c19f2ebf435a18d02f135b0` |
| 61 | `theorem` | [mapsTo_emetric_ball](../../../../GeneralTopology/DilationExtIff.lean/declarations/mapsto-emetric-ball.md) | 431 | `result-track:2e943119a21c7be9eeb9e9471c9e63ba1093979219b9b498765e458984e4d6c2` |
| 62 | `theorem` | [mapsTo_emetric_closedBall](../../../../GeneralTopology/DilationExtIff.lean/declarations/mapsto-emetric-closedball.md) | 438 | `result-track:f947881edacb97e7cb00a3bbd9d02b908f2e4c544ca797acb2ded4a44577b2b2` |
| 63 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/DilationExtIff.lean/declarations/comp-continuouson-iff.md) | 444 | `result-track:3714f3a283d6a4ffc137ed24a9f860225a93fe44ba0c17f0ce9de1f66db91056` |
| 64 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/DilationExtIff.lean/declarations/comp-continuous-iff.md) | 449 | `result-track:7a1b5024f12d5424bcd8966f08a5af61affd996fa70aad750bf7b5fe73af7d17` |
| 65 | `theorem` | [uniformEmbedding](../../../../GeneralTopology/DilationExtIff.lean/declarations/uniformembedding.md) | 461 | `result-track:204d6b1d5e58926301f5ba28b2a00ce48fbb4a418c470fcc37cefba81aa8b9b8` |
| 66 | `theorem` | [embedding](../../../../GeneralTopology/DilationExtIff.lean/declarations/embedding.md) | 467 | `result-track:a290e43af6f8802a9b9a51818f2fcc684ef0cb41b7b4069a471a77e5fc941f76` |
| 67 | `theorem` | [closedEmbedding](../../../../GeneralTopology/DilationExtIff.lean/declarations/closedembedding.md) | 473 | `result-track:d9412960fa4c79977b8a62b4aa38b2638cf29edd052de74ebb26150c7e295a16` |
| 68 | `theorem` | [ratio_comp](../../../../GeneralTopology/DilationExtIff.lean/declarations/ratio-comp.md) | 486 | `result-track:0e14c658e2df29305ea1e646ae631559d196e2e436483d562d7e0b0f7d592d25` |
| 69 | `theorem` | [diam_image](../../../../GeneralTopology/DilationExtIff.lean/declarations/diam-image.md) | 496 | `result-track:26298b57a486be81ce32332c5f18751ec6aaec7ea847a506232a74a2e4c20863` |
| 70 | `theorem` | [diam_range](../../../../GeneralTopology/DilationExtIff.lean/declarations/diam-range.md) | 500 | `result-track:a9f823854941eb0598c705ef0f5ba7ef6dfb0e47ee47eb4d470cd7fa0098cb13` |
| 71 | `theorem` | [mapsTo_ball](../../../../GeneralTopology/DilationExtIff.lean/declarations/mapsto-ball.md) | 505 | `result-track:f5f6a3370add7415d85735c376e87dabb83678b5cca3117904a6c447eac71121` |
| 72 | `theorem` | [mapsTo_sphere](../../../../GeneralTopology/DilationExtIff.lean/declarations/mapsto-sphere.md) | 511 | `result-track:e9a8613550bd7b2322faba9f6363905a7418f409c31b03af1bcff09186bc1905` |
| 73 | `theorem` | [mapsTo_closedBall](../../../../GeneralTopology/DilationExtIff.lean/declarations/mapsto-closedball.md) | 517 | `result-track:0381c31ff11eeafd73e9b15a080de95aedfffa52d4ccaa14fded839b4f57ad40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96b01c19b5cda810b5be7a89bf18788f6ca0437cd63cc309b284fa7beaefc8cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Dilation/Variant80c7dca93c672922717d2927af31820bab7ac246dbd951af805bf18322982b09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
