# Verification target: Embedding Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "575bea33c92b621ceb196eb8bfa36d822435b1be",
  "lexical_observation_count": 122,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `575bea33c92b621ceb196eb8bfa36d822435b1be`.

Source path: `GRWTSK/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean.json)

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
| 1 | `structure` | [MeasurableEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableembedding-source-edition-2.md) | 60 | `declaration-track:fc54e342ab301e8381106dd570018ceb93468baa671f3db204680832c69495f2` |
| 2 | `theorem` | [measurableSet_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableset-image.md) | 74 | `result-track:6b22cf2712f272f4356698c227b9d00d5a7bd5ad2974bf0f1b20c17fa6cd1d87` |
| 3 | `theorem` | [id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/id.md) | 79 | `result-track:7766b191f30cd74c3fd8876832e43c195890235ee6228762fa108899e3158e15` |
| 4 | `theorem` | [comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/comp.md) | 82 | `result-track:881b6400ac665caa31034c0bfabe9f0c4e57b067b64fbb6bf9c2a2f8f512a163` |
| 5 | `theorem` | [subtype_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/subtype-coe.md) | 87 | `result-track:703916df81f86b943a4d3d5665c27de3cd408ad88be45e9bd7643cf4a8fdf0ce` |
| 6 | `theorem` | [measurableSet_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableset-range.md) | 92 | `result-track:c5954f3a51b59626374760abb6a22f22aa1522efd04f27aebca20c12fdac5e87` |
| 7 | `theorem` | [measurableSet_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableset-preimage.md) | 96 | `result-track:2a7764455e00b622376fc6461503ea588deb361e7dc60c3f52870123441b5a44` |
| 8 | `theorem` | [measurable_rangeSplitting](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurable-rangesplitting.md) | 100 | `result-track:733848c9fdf61fc9a99de34503626fb6d55134b3846118d79c90cf4704904d9b` |
| 9 | `theorem` | [measurable_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurable-extend.md) | 106 | `result-track:581e2d573948738f1a620e3428a5049401ce6cae5b7f2f8984c0afd59e6533f1` |
| 10 | `theorem` | [exists_measurable_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/exists-measurable-extend.md) | 114 | `result-track:403f9384ebceb0710242dc641e8cea4e803b67c3c1c9808053fbbf3f1f85f895` |
| 11 | `theorem` | [measurable_comp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurable-comp-iff.md) | 120 | `result-track:31bd7336e687aff018be1ff2fd25ac20d892e38175e2b8f6ac551a6d67dada9d` |
| 12 | `lemma` | [natCast](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/natcast.md) | 126 | `result-track:f860850783c0952f82a57611936305de244cd7b4ca4f6c6fe73e50a91167c464` |
| 13 | `lemma` | [MeasurableSet.of_union_range_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableset-of-union-range-cover-source-edition-2.md) | 142 | `result-track:928ba047c928fd05bf2067a791e6bb3f785f544036642cd578abbd2e346fdc8a` |
| 14 | `lemma` | [MeasurableSet.of_union₃_range_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableset-of-union-range-cover.md) | 148 | `result-track:844cd140335eb94fb2fad389d4d06750f560e9a05f5d1d86688a46c909a22929` |
| 15 | `lemma` | [Measurable.of_union_range_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurable-of-union-range-cover.md) | 157 | `result-track:776fbaa562e16e087566469049a305bd7b74213f7985e00d1763b2b22372c959` |
| 16 | `lemma` | [Measurable.of_union₃_range_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurable-of-union-range-cover-source-edition-2.md) | 162 | `result-track:c4d993991c98eec303569cbc536f37f1ba66aff5b97e36ffdc3fbd652e55202e` |
| 17 | `theorem` | [MeasurableSet.exists_measurable_proj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableset-exists-measurable-proj.md) | 170 | `result-track:36fcf1d5a69c67ddc979ef77fde8f3c7c63f5d1364cd5997a5629b3dae29f8f9` |
| 18 | `structure` | [MeasurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableequiv.md) | 179 | `declaration-track:d8fd67f40bd37c82171bfa33a40ad334b5409749fa1a4f0b81bff2717920f757` |
| 19 | `theorem` | [toEquiv_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/toequiv-injective.md) | 192 | `result-track:16dc007f24d2ed72503fb4d29a1dd5e4095d8d66382345e0e6dbf308b0259a3a` |
| 20 | `instance` | [instEquivLike](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/instequivlike.md) | 197 | `declaration-track:77cd0c0a40be5671d43bd75fc0a5f424effd15a499fb466780a7012ea4b9c1fb` |
| 21 | `theorem` | [coe_toEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-toequiv.md) | 205 | `result-track:38f55d82565bb63672633862b5f8fc0d4bac1599daf19e92d9190eafbe7a59fb` |
| 22 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurable.md) | 209 | `result-track:35f6e1d7d54a898b95ecc6f8c9f5c9002ea4cce08ad8dd7cdfb822f59fa5ac93` |
| 23 | `theorem` | [coe_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-mk.md) | 213 | `result-track:056911f7f3570d9018e27ec6546980896a349356a5f0bd8c5a6cb9fff3c55fbe` |
| 24 | `def` | [refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/refl.md) | 218 | `declaration-track:92fccc894aaafab4c4875fe3420548ca7c3827b2c4505c5c8495dca61eb031d3` |
| 25 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/instinhabited.md) | 221 | `declaration-track:7eb238654df668371804c440e5f749b1a79715268f8c4f6e6a31488c69982768` |
| 26 | `def` | [trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/trans.md) | 224 | `declaration-track:ed7aa442657d64fc4e4c68fb2266f9b2e682f7d9f327033a46de2e23c62d04c7` |
| 27 | `theorem` | [coe_trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-trans.md) | 229 | `result-track:a43795ee113361a2b5d582f0978c7d19fac4451e842d2830c0fd7e00ab8b2529` |
| 28 | `def` | [symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm.md) | 232 | `declaration-track:11d2b65916cc3746920ea2a4e62d9503c0191db6625af3ce6de1666cc88a582c` |
| 29 | `theorem` | [coe_toEquiv_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-toequiv-symm.md) | 237 | `result-track:6f9c2b2181e2454c8785f77e179c5068570634f417a4320768e1eb9e22f7fa88` |
| 30 | `def` | [Simps.apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/simps-apply.md) | 242 | `declaration-track:fcfe8b7390fbee8fe4fb0296f14a3ee03f32f10cd5f53ac0baf8b125ab479603` |
| 31 | `def` | [Simps.symm_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/simps-symm-apply.md) | 245 | `declaration-track:a79a16e94f5bcc55c1dde294a9e0d92cc470c4e5e83017b5fb9edb5e483e70ce` |
| 32 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/ext.md) | 249 | `result-track:1b5dfe6a1b237279d5c45711c48a0561e1916ad61760980d265795be3b5e29f5` |
| 33 | `theorem` | [symm_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm-mk.md) | 252 | `result-track:d3d607d15e8fe89fc5715e38f358215afc50bea5d974b285f1ec50e244154805` |
| 34 | `theorem` | [symm_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm-symm.md) | 259 | `result-track:426909caf8de225450a4c4844cded16eaf1a3edd784afe70719394b54d6b660e` |
| 35 | `theorem` | [symm_bijective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm-bijective.md) | 261 | `result-track:d0776046048507c0a51055218edd6c1211df9b7e44487bddb8edc173024e2d37` |
| 36 | `theorem` | [symm_refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm-refl.md) | 266 | `result-track:5b49156278009aff07a3bec7f5f6ec458ed5a7592125194dd684583014edead8` |
| 37 | `theorem` | [symm_comp_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm-comp-self.md) | 270 | `result-track:0bfc1f4df9803602124360ec2c47eac7438b9955a10c2820204bf2a5cee9677b` |
| 38 | `theorem` | [self_comp_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/self-comp-symm.md) | 274 | `result-track:3d66b62712f1791a988a7f56c54f10dfe2b8e70d0580cff3ab790196d40f49ad` |
| 39 | `theorem` | [apply_symm_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/apply-symm-apply.md) | 278 | `result-track:c6242ba99a91f054d881f74748f455420690d074fbc9a1455aafc0c51e7b3d7a` |
| 40 | `theorem` | [symm_apply_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm-apply-apply.md) | 282 | `result-track:30db98e4c901f2b55ea5c76f9df5e834aa2d7c96b02431df8e7d8df8dc2daf33` |
| 41 | `theorem` | [symm_trans_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm-trans-self.md) | 286 | `result-track:dbd6296ac8e82542698dcd9d4898b8d7d3d935786661375dc760b3906575b2ca` |
| 42 | `theorem` | [self_trans_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/self-trans-symm.md) | 290 | `result-track:3e65e60929b243e935042ef489ba255a7d2ac263e1c77a71e5cd888d7f6f2c01` |
| 43 | `theorem` | [trans_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/trans-symm.md) | 294 | `result-track:2314bbc6d43a44c108471fac46e51c62723d107cbe370a4ca6c39bfe3f1aec3b` |
| 44 | `theorem` | [symm_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm-apply-eq.md) | 297 | `result-track:681e1851de02bf12ec11aae0f7e99d047e4c40909a3cb894c03d4ee58cc64c3d` |
| 45 | `theorem` | [eq_symm_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/eq-symm-apply.md) | 300 | `result-track:a54b19065c13ac83e89a45606de737e05b85df23ffef7506449691a99c49c282` |
| 46 | `theorem` | [surjective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/surjective.md) | 303 | `result-track:b347d80e732e9416c4c5618e5ff2b85fa959371b6d5b642559d1974a0595af93` |
| 47 | `theorem` | [bijective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/bijective.md) | 306 | `result-track:d80e27b379d95e33b39bf719b025edfa8632ecdfdc0661a6a072c18ef4241b1a` |
| 48 | `theorem` | [injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/injective.md) | 309 | `result-track:b50ead59c03bfe2c8d25b77389d52932b35b5c0e4c92d7ff9ae7896952060c6f` |
| 49 | `theorem` | [symm_preimage_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/symm-preimage-preimage.md) | 313 | `result-track:b939e481d197d43adfde78ea13b9a8b1a2725510ceac8518438da7710cbad767` |
| 50 | `theorem` | [image_eq_preimage_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/image-eq-preimage-symm.md) | 316 | `result-track:cc3f37cd5ffbb866c25a1f0f87846da6b8186519d4e6f268885bb43ebbc13b08` |
| 51 | `lemma` | [preimage_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/preimage-symm.md) | 319 | `result-track:73a92a0909b8a27527fcae5547b8df04caf7b68fcc905d91ee0f2a70950b7195` |
| 52 | `lemma` | [image_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/image-symm.md) | 322 | `result-track:2c2887d8f8c80d2ab2aa445071083f73b5172ae6f093a9c13ac5b78349364f3e` |
| 53 | `lemma` | [eq_image_iff_symm_image_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/eq-image-iff-symm-image-eq.md) | 324 | `result-track:a490fe87224fb165f13cfbcde228de59350fcca90ae0a08b33be014bc2561b18` |
| 54 | `lemma` | [image_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/image-preimage.md) | 329 | `result-track:cf768678c8fd17a98d4a7ee58e3dbaf93067bf1bed7799ff6c851e1584ec2f5d` |
| 55 | `lemma` | [preimage_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/preimage-image.md) | 333 | `result-track:5b90807fb8728f512b062fd6bfb4986adc09308d2beed460404118d564c756dd` |
| 56 | `theorem` | [measurableSet_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableset-preimage-source-edition-2.md) | 337 | `result-track:f98d400de9922453cbf03b585d781b0540fba4e7f4a657ba0602a9d0461e4606` |
| 57 | `theorem` | [measurableSet_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableset-image-source-edition-2.md) | 343 | `result-track:ca44e07bcbb1a1cbfb51af3686b7643da76e9f9e028eed22498bc6e73ddb0aed` |
| 58 | `theorem` | [map_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/map-eq.md) | 346 | `result-track:cf1f0daeb30f18fa4780d7c117b94a24395b4022c13a84cc9759cc43c7fb24be` |
| 59 | `theorem` | [measurableEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurableembedding.md) | 350 | `result-track:07733f5e2b269aa7ec9ccba6721004dd3e63baeaea76d593676d997f745fc4aa` |
| 60 | `def` | [cast](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/cast.md) | 356 | `declaration-track:8913d19caedd1486ce75155fba2b22d80e5dfdbd35367cd6f978e19e5479b743` |
| 61 | `def` | [ulift.](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/ulift.md) | 361 | `declaration-track:50fc6e73ad016dac2e345a4446333e801b9d005fe1559d0a83f533319acad282` |
| 62 | `theorem` | [measurable_comp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurable-comp-iff-source-edition-2.md) | 364 | `result-track:e10b2d3d6b977ef612337f33aadac56bdcc6e9cd63ed35acf8fdbd96d7389007` |
| 63 | `def` | [ofUniqueOfUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/ofuniqueofunique.md) | 373 | `declaration-track:d673bff7c83d1c71e4bb43806abeed12f2bc672e3370d3c446010a64dbbba020` |
| 64 | `def` | [prodCongr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/prodcongr.md) | 379 | `declaration-track:40dfbdb0f99f9cecfc636c5ba99209e564068b12208788fa6b9d48485229918c` |
| 65 | `def` | [prodComm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/prodcomm.md) | 383 | `declaration-track:e91357580adaaa2337630ba68d023fca2d376a3087cd89b6f9dc3ef36fa026c3` |
| 66 | `def` | [prodAssoc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/prodassoc.md) | 388 | `declaration-track:5a3d7eb58e159b623e6e2475fa6c226b0a9046ec0ee875c6ef54c5fd5de8760b` |
| 67 | `def` | [punitProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/punitprod.md) | 394 | `declaration-track:fa5eb54ad29489d1a07b67d67edaeb9318735f19e0a464ef91614b839dd84d79` |
| 68 | `def` | [prodPUnit](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/prodpunit.md) | 400 | `declaration-track:38c3a4c7e7303484bdfd6baac73954a2dc6d1d7a27bd98f727dc79115ad2d3f7` |
| 69 | `def` | [sumCongr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/sumcongr.md) | 407 | `declaration-track:d950ea7b94e1c4b4c386854bcbeeb8c822016b85e6cc6ab83f04952c897ad60d` |
| 70 | `def` | [Set.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/set-prod.md) | 413 | `declaration-track:85ddea59f9564fa8a073576b1f1e8d0ffd2e89d4d4589166bcbeae6912a50cce` |
| 71 | `def` | [Set.univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/set-univ.md) | 419 | `declaration-track:fbf0b2bc28b343f7dc84946d72fa055d3484c3a645bca19baff13937bd4c004e` |
| 72 | `def` | [Set.singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/set-singleton.md) | 425 | `declaration-track:19b721d5798cef99e13e56165f737dd39c233937077feda78b46309b6688730b` |
| 73 | `def` | [Set.rangeInl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/set-rangeinl.md) | 429 | `declaration-track:8ac31e09e2cff1ed404518369be4e3fea2be4d49f34b4731d15854edc4d65012` |
| 74 | `def` | [Set.rangeInr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/set-rangeinr.md) | 437 | `declaration-track:30617ebc2dc7fc906dfa6a3a33daa22d066efb9c7c36775e9a4f7e8a6627edbe` |
| 75 | `def` | [sumProdDistrib](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/sumproddistrib.md) | 445 | `declaration-track:e0a5f3d617ca97a85ca36984c941ae6b3f7b29af3d53a9fb795d3c0a9567a3f2` |
| 76 | `def` | [prodSumDistrib](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/prodsumdistrib.md) | 465 | `declaration-track:8b62014ab123391b14f6f3d7a21f7235d0f48f8c3c664fa10ff1ad6eebfa4c50` |
| 77 | `def` | [sumProdSum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/sumprodsum.md) | 470 | `declaration-track:3ab96fc3ea58bc7ac1f5d23bce62608ac900ce7954e28ddd85b9a67c997ca74b` |
| 78 | `def` | [subtypePiEquivPi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/subtypepiequivpi.md) | 478 | `declaration-track:21cb2eb1a78aa6920b5268df951b2134000e1c2cc136f7805ce5c63adbbd7797` |
| 79 | `def` | [piCongrRight](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/picongrright.md) | 488 | `declaration-track:abdfc144baf24f6070068cc09bde66c6bb5be7cedd4d79b65eeffc1bf29d4229` |
| 80 | `def` | [piCongrLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/picongrleft.md) | 495 | `declaration-track:454eb8307835033a3f42ee1089a8c9c8f0181bd62426864657ecf4dc8100bb48` |
| 81 | `theorem` | [coe_piCongrLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-picongrleft.md) | 501 | `result-track:667f45c8c2a7740a832e20d8ce3a1ef9e2fb1563a9d252c754732d380c37a372` |
| 82 | `lemma` | [piCongrLeft_apply_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/picongrleft-apply-apply.md) | 504 | `result-track:51757c1af9fec6c56d53bc49b96c1b6dda1bfdf3c7f27bdd7e2ed36125fe2efb` |
| 83 | `def` | [arrowProdEquivProdArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/arrowprodequivprodarrow.md) | 510 | `declaration-track:f26bdccc76971ada673dce37d61cd206567c90532421ddd0fcfff829af309e3b` |
| 84 | `def` | [arrowCongr'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/arrowcongr.md) | 521 | `declaration-track:883d3c37d3de8e38d8614f9dbc1a255b336f709dd052f8ba2a977b5c5c9a3582` |
| 85 | `def` | [piMeasurableEquivTProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/pimeasurableequivtprod.md) | 534 | `declaration-track:6d229b10f0326fcc0ca0cf4da11407a1b5ab80cbca6963012533d6dc969b06a6` |
| 86 | `def` | [piUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/piunique.md) | 543 | `declaration-track:091dbadc935c592463df671f628ac568ff4b4ac1cbe04acfabbbd3570eeddeba` |
| 87 | `def` | [funUnique](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/fununique.md) | 548 | `declaration-track:5eb3e37c7cf35821c31c86288e61fb9e76ae05531def087f9c1903905e2727f3` |
| 88 | `def` | [piFinTwo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/pifintwo.md) | 553 | `declaration-track:08e0ec529afd24a86c6e5785ee772b3f3ab4e84f187c172767c3010f287b7d14` |
| 89 | `def` | [finTwoArrow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/fintwoarrow.md) | 559 | `declaration-track:0918ac939f7169990576f46c129607a747c7012acd7eea369e44ce969079fc88` |
| 90 | `def` | [piFinSuccAbove](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/pifinsuccabove.md) | 567 | `declaration-track:e058fdeba32fc1a174e6fbdd80feb26d4d8b324b55ec49b3501af6b6eef6f566` |
| 91 | `def` | [piEquivPiSubtypeProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/piequivpisubtypeprod.md) | 580 | `declaration-track:4c60218acd778eb0c66ec247abbce826fa79190792fef24a8cb9899753f5cd39` |
| 92 | `def` | [sumPiEquivProdPi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/sumpiequivprodpi.md) | 587 | `declaration-track:c0762b45610b2d45c8d83d68bbb6918aaf665f984adc4561801c6cb9373e2039` |
| 93 | `theorem` | [coe_sumPiEquivProdPi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-sumpiequivprodpi.md) | 596 | `result-track:1182cab21fe6ba709bf8080aa6c355a36603b3ecb355460d6eaa91d613c52ff1` |
| 94 | `theorem` | [coe_sumPiEquivProdPi_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-sumpiequivprodpi-symm.md) | 599 | `result-track:f4f5d325f402cae3477ba33b60be8ba98d1a9330f6b58bc3f71efbefeda3150c` |
| 95 | `def` | [piOptionEquivProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/pioptionequivprod.md) | 604 | `declaration-track:764127bf575580dceb25163d69fd1faa6076f7b9331bf08ea7c33ce7fc05fb4a` |
| 96 | `def` | [piFinsetUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/pifinsetunion.md) | 620 | `declaration-track:533f54a7aedf91d040f5f9fba79be315fc8aa5a400331c8858a474416a3348ff` |
| 97 | `def` | [sumCompl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/sumcompl.md) | 628 | `declaration-track:8bb2fdae658fd960faf62813a1b43ff9cfb911b2082d794c8006b789f903b45a` |
| 98 | `def` | [ofInvolutive](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/ofinvolutive.md) | 637 | `declaration-track:037a4c231e623a013732fee3b4d942dfa91f3ce9add8cefec64aa41352c1c60c` |
| 99 | `theorem` | [ofInvolutive_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/ofinvolutive-apply.md) | 640 | `result-track:41f6e93e75c0d60d47eabe59930df2470615cd2fb08cbdb7a1f2eac853d6bab5` |
| 100 | `theorem` | [ofInvolutive_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/ofinvolutive-symm.md) | 643 | `result-track:3935a82e104aad9ec11a36def91716169645cf5444bd406d3b014aca8daaa677` |
| 101 | `def` | [setOfPred](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/setofpred.md) | 648 | `declaration-track:8ebb03ec25d32856cd5a4f21311abe26283d541c3670e3330f66c78f6930c819` |
| 102 | `lemma` | [coe_setOfPred](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-setofpred.md) | 661 | `result-track:16017c6dc2a79b969ec25265a0974f23fe3b810666b540f7c553cb62e0968cfa` |
| 103 | `theorem` | [comap_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/comap-eq.md) | 673 | `result-track:fff099b536bf5539a53ea286ea01a86015f7bd6fe034e91ef9f782ff8af2ecaa` |
| 104 | `theorem` | [iff_comap_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/iff-comap-eq.md) | 677 | `result-track:94884cf9145841f3cf021d647dfaaae0ba6c1eb59dca6da806c6943fe78a2dfc` |
| 105 | `def` | [equivImage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/equivimage.md) | 690 | `declaration-track:e2a33345774c6ba94180444ebddfddb752190854ff0f67644fcc4919c5dff832` |
| 106 | `def` | [equivRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/equivrange.md) | 700 | `declaration-track:e1ad130c73e4f12bb32ff66f4c69849d730158cd37714f0b36075ddba97cea79` |
| 107 | `theorem` | [of_measurable_inverse_on_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/of-measurable-inverse-on-range.md) | 704 | `result-track:e32058279c30aaf194ee2e333ee85f2364a126d42bb17efd48b84583ebbc92e1` |
| 108 | `theorem` | [of_measurable_inverse](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/of-measurable-inverse.md) | 712 | `result-track:05a7986caf77c14d1c56e486802d0f02a051ef365bbe0815df4807aa5e098000` |
| 109 | `def` | [schroederBernstein](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/schroederbernstein.md) | 718 | `declaration-track:cb2e0c778df9e12da1029d75cc899e4b524a3bd1dc010ec654bd6843f5814755` |
| 110 | `lemma` | [equivRange_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/equivrange-apply.md) | 770 | `result-track:3ae3b65c9bcc733ad574cef87d6fb5451657d326f0e7f71ef1b7a36e6cf55142` |
| 111 | `lemma` | [equivRange_symm_apply_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/equivrange-symm-apply-mk.md) | 776 | `result-track:5a4f7ae4208ec77b0a53bb436c9fbad958eec366bf46e54e61e43c957b217969` |
| 112 | `def` | [invFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/invfun.md) | 783 | `declaration-track:c39a5e42cdecf0a16ac17b1854c24f6d4894f1212eb37ce70e14355beab7d76e` |
| 113 | `lemma` | [measurable_invFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurable-invfun.md) | 788 | `result-track:322eecf82ffbe62328ba27aa8f7720e75f7341cc7b7d6d08e9e3dd5945381b71` |
| 114 | `lemma` | [leftInverse_invFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/leftinverse-invfun.md) | 793 | `result-track:3bfc3e0d0ada2c3a8f526fdf8cf0d67248e7c72ce0131db2595aba08a774207c` |
| 115 | `theorem` | [MeasurableSpace.comap_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurablespace-comap-compl.md) | 799 | `result-track:c1e4fa852a6244de6fa2097b2bf96cbd9a85ae7ade9a80eabb50b29d91da247b` |
| 116 | `theorem` | [MeasurableSpace.comap_not](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/measurablespace-comap-not.md) | 807 | `result-track:62121a32320419d30765e5cee686ec621781d91a71fcd668b72c80da804ab431` |
| 117 | `def` | [piCurry](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/picurry.md) | 820 | `declaration-track:6c1b4248843ed991c4a7473d80e8eee976aef94b35a2907052911207bab96e64` |
| 118 | `lemma` | [coe_piCurry](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-picurry.md) | 825 | `result-track:8e1bfa115f815ff67eeff6d47545363a34276083e43639d2a71485950657eb96` |
| 119 | `lemma` | [coe_piCurry_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-picurry-symm.md) | 828 | `result-track:94d3851aa5d78c72940feba39d4f87fd3831725d16062ca0e0b7c4c0802e9746` |
| 120 | `def` | [curry](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/curry.md) | 834 | `declaration-track:6bea2c92a167063215d92ed8121302980818a08315f9ed7c78f39725747e85ee` |
| 121 | `lemma` | [coe_curry](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-curry.md) | 837 | `result-track:4a2a13254088400bd27cb87fcba3f58992eb98ec28b6860e971ca27b5ddb51ef` |
| 122 | `lemma` | [coe_curry_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/EmbeddingPublic.lean/declarations/coe-curry-symm.md) | 839 | `result-track:e6866f32b546fc64e8520de91aeecbb0e174f9042e37db56ec552f05fdc45462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9eca6f957992a34e299f36451deedde19cba88850d60328127773621b3e22f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Embedding/Variant5e5d08983056c64996f116898887cbe46781ebf7c700172fb04f1f39d27c0bb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
