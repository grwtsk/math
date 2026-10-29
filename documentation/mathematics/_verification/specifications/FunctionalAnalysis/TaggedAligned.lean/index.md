# Verification target: Tagged Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bbcace960582ec52e7a6c6ca542a72867708958",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/TaggedAligned.lean/index.md) · [Full source](../../../../FunctionalAnalysis/TaggedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bbcace960582ec52e7a6c6ca542a72867708958`.

Source path: `GRWTSK/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TaggedPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/taggedprepartition.md) | 41 | `declaration-track:be1e1cbf89e5fba8e3e7dc24530f21d15e4ca692f3e1bb32331cc15cf5caf2e2` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/instance.md) | 50 | `declaration-track:10650f19c56a12a4593ac8115eea77eca0f4453d2b7b421e7b113702a84468c6` |
| 3 | `theorem` | [mem_toPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/mem-toprepartition.md) | 54 | `result-track:e0a0f3d799b7835ba80436cb10a26ecda3046caca52f24e32cffd083de124190` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/mem-mk.md) | 58 | `result-track:335ec04471fc40cdf01c9bb259cddd2a028b68f63f9d3bf403897787a3a26b78` |
| 5 | `def` | [iUnion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/iunion.md) | 62 | `declaration-track:ca7cd3d540e24050d735b4309ae8cc1da013c338561e88609be377963fa5669a` |
| 6 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/iunion-def.md) | 66 | `result-track:378239eaf7cec133e64cc30b32489d84693cc7279f85b52ae8b02ee517afc4bc` |
| 7 | `theorem` | [iUnion_mk](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/iunion-mk.md) | 70 | `result-track:88d61880c60ef3b1b2ff22d04fe0a115b63c8179b49d42d1b015ab356d27e422` |
| 8 | `theorem` | [iUnion_toPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/iunion-toprepartition.md) | 74 | `result-track:240eee748bec26b6b2fd99f728b01197884da7b670858aa7dc2fff6b48859d32` |
| 9 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/mem-iunion.md) | 79 | `result-track:a2412bf8c7f0fdac756c897c46c4009fbee131e7a386cad23df8ca6f879aa2a8` |
| 10 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/subset-iunion.md) | 84 | `result-track:eee51c8ca652e2255f01a1b10a83c7e2490bfc17c4dd2d5b23da0a7b673cb1fd` |
| 11 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/iunion-subset.md) | 88 | `result-track:8861529942ee86606e4c3ddad32a490875074eb6fdab8cb647cb2791e527fef0` |
| 12 | `def` | [IsPartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ispartition.md) | 93 | `declaration-track:69087a68c4aa3c9c70b452ebd3eb2273e698c26c6c31cd9d01fe46a41b5a920e` |
| 13 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ispartition-iff-iunion-eq.md) | 97 | `result-track:020a9b6b9041b702f37ba963602ab1905d29ea613bd4ce41b7c1f1914944ee16` |
| 14 | `def` | [filter](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/filter.md) | 103 | `declaration-track:25ef6cd2828964b00be1bf4e14148580bc74e8e4b383860adc45ff22fc13a9c8` |
| 15 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/mem-filter.md) | 108 | `result-track:e57100b445c8a88277e517d2d2cba6618a25fcad6b94696697b3e069d66b604a` |
| 16 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/iunion-filter-not.md) | 113 | `result-track:7c519d77784d964cec074b798d08f14bacf64c12b15bcc6289bf61714fd4248c` |
| 17 | `def` | [biUnionTagged](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/biuniontagged.md) | 127 | `declaration-track:b0ca28d0b5d8340772fe0fed2df3f1da90b5888f87c5c5cc19febab60bc9c7e6` |
| 18 | `theorem` | [mem_biUnionTagged](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/mem-biuniontagged.md) | 135 | `result-track:6eec9bd2ba9293dcaa0dffde4d9dc9bf3e8c926c3ebbb5700402519027507d01` |
| 19 | `theorem` | [tag_biUnionTagged](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/tag-biuniontagged.md) | 140 | `result-track:a1da46d31ad4612fe2b45d13e9bb2d6479da58e71cef2d4348d249c73b531b4a` |
| 20 | `theorem` | [iUnion_biUnionTagged](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/iunion-biuniontagged.md) | 147 | `result-track:1e5756a18d8d28264916917e05696ffefa36d311e6dcd5e03dbb3c3c22d2d844` |
| 21 | `theorem` | [forall_biUnionTagged](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/forall-biuniontagged.md) | 152 | `result-track:c29c13b03d9221b26a6ff7f56749aad5ad24087c93b8434891e10807125755a6` |
| 22 | `theorem` | [IsPartition.biUnionTagged](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ispartition-biuniontagged.md) | 164 | `result-track:dae47544f028f69313094d46073db1cf1719ee890b2ac5f7022fa5924441b375` |
| 23 | `def` | [biUnionPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/biunionprepartition.md) | 182 | `declaration-track:9b496141dff1ecba36189c1da550e065a154edb3f4450ed89257db8dcefb4f32` |
| 24 | `theorem` | [IsPartition.biUnionPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ispartition-biunionprepartition.md) | 189 | `result-track:f83cd8b229709b3dc8e17a2d4a4e69d8160d812ffd033c8fd283f2a66709e022` |
| 25 | `def` | [infPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/infprepartition.md) | 199 | `declaration-track:621549eb62ad656aa7fdfca0949bbba1a8f0ea3ecf208ba6af0ae58d8cb0ef8f` |
| 26 | `theorem` | [infPrepartition_toPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/infprepartition-toprepartition.md) | 204 | `result-track:8281ef0cdcac957cf8ed1d6642ff1ae73eaab2024cdb5ade337803180bb0b6d4` |
| 27 | `theorem` | [mem_infPrepartition_comm](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/mem-infprepartition-comm.md) | 208 | `result-track:57d8c85288b96850474d51e4853bb56abe800c24498f15f02d76ed93ebdaef7a` |
| 28 | `theorem` | [IsPartition.infPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ispartition-infprepartition.md) | 213 | `result-track:1d7d90d64847236c9b0739ca5c4b35941190e9c6d32e5dbcd44bc7a46228f55a` |
| 29 | `def` | [IsHenstock](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ishenstock.md) | 222 | `declaration-track:4370bcf60855ee32f4a0e92d6893344dcd7b861f8f1a4fab8fc6a2fdb7307a81` |
| 30 | `theorem` | [isHenstock_biUnionTagged](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ishenstock-biuniontagged.md) | 228 | `result-track:2494f17772ad2c7e9995d6eb317ac66bc63a8140067042cc29399cbd5b8db141` |
| 31 | `theorem` | [IsHenstock.card_filter_tag_eq_le](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ishenstock-card-filter-tag-eq-le.md) | 235 | `result-track:7bb7e489840aa0b931d6bfd4780fbed30964126f6c8de23cecf8e014890c57da` |
| 32 | `def` | [IsSubordinate](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/issubordinate.md) | 249 | `declaration-track:d58ec6b24a12d1f7a0791af080aaf5ffda5b53e7669f8fa87383d535b34b500f` |
| 33 | `theorem` | [isSubordinate_biUnionTagged](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/issubordinate-biuniontagged.md) | 256 | `result-track:e47c06e36ecc8bdc6c5f1a396a317c5e32659a9013e8517fb2e2e34b241491b8` |
| 34 | `theorem` | [IsSubordinate.biUnionPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/issubordinate-biunionprepartition.md) | 262 | `result-track:a617a7a3e4b4e51ea12c4806ed530d866eaa625556e55dd8be61d222399f8cac` |
| 35 | `theorem` | [IsSubordinate.infPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/issubordinate-infprepartition.md) | 268 | `result-track:15748b0523a603bd3e636121c120a7740f610efa8d4e31914323c8174fe63c60` |
| 36 | `theorem` | [IsSubordinate.mono'](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/issubordinate-mono-source-edition-2.md) | 273 | `result-track:d18ec7b1b3cebeb2d53127c8d56c1afad26e5600a5bfb4e1e758117380e213d7` |
| 37 | `theorem` | [IsSubordinate.mono](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/issubordinate-mono.md) | 278 | `result-track:7380cdcee07df240469d75ca233ccd5435fa58c5bccb6d7700257e27a32dfb83` |
| 38 | `theorem` | [IsSubordinate.diam_le](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/issubordinate-diam-le.md) | 283 | `result-track:230d43a3cd12f123da2abd18eda877351a63328a246c6a51206a0011cef54728` |
| 39 | `def` | [single](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/single.md) | 293 | `declaration-track:f27bc74ea8e2d4aea3cb54361c58a68b5d66c785c55fb8043deabee53b3b5f00` |
| 40 | `theorem` | [mem_single](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/mem-single.md) | 298 | `result-track:6f01d26159775aaaaa9db449c6424ace274f7b63494af5ab7a3c25c687598307` |
| 41 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/instance-source-edition-2.md) | 302 | `declaration-track:93fba03f30ac91d5a9355d2bff32e5f98fd7c777da687660bfed46112904c687` |
| 42 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ispartition-single-iff.md) | 305 | `result-track:e453a0b699d458cd5a35e08059ae4086d1753fbaa886ef606e1d06aa4b0f69fd` |
| 43 | `theorem` | [isPartition_single](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ispartition-single.md) | 310 | `result-track:93de846e185613f2dcbe389f16c6ac03dc193089060f7ebfbed8fa6ba5da655d` |
| 44 | `theorem` | [forall_mem_single](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/forall-mem-single.md) | 314 | `result-track:3f484a336e23e9595a2dab0a8e13035621d7fa4ed79afb55642531a10dddfc21` |
| 45 | `theorem` | [isHenstock_single_iff](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ishenstock-single-iff.md) | 319 | `result-track:c3f40fda9498940c25ca98ff044c11368a93842069ccd8fd76b9d0db0b938d15` |
| 46 | `theorem` | [isHenstock_single](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ishenstock-single.md) | 326 | `result-track:c2fb793a69aad1ce16baced8e85fbf1de02b14735f857cd2bc13d69388b976aa` |
| 47 | `theorem` | [isSubordinate_single](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/issubordinate-single.md) | 332 | `result-track:3a57f70f636a418c4ba4d0f973386cf69528356dc83e486d3fc24625cb04cb49` |
| 48 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/iunion-single.md) | 338 | `result-track:4e58104d8711fff8f2aa42884b21f9c607bafaddcc8a6b83e40a44649dc6db88` |
| 49 | `def` | [disjUnion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/disjunion.md) | 343 | `declaration-track:af5f10a13eb25b322b6e3d39117ca9a06edacf9c955fb97d2dd615929e4c89c4` |
| 50 | `theorem` | [disjUnion_boxes](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/disjunion-boxes.md) | 354 | `result-track:cac2ad2415fea4f77b6b5a329682eef0cd9cd11701d8209920c20170d44920bd` |
| 51 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/mem-disjunion.md) | 359 | `result-track:d908d23cb262b39b8d8c4dc3e6cf2a8e85c3d6b7dece384a681dd471f9c09850` |
| 52 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/iunion-disjunion.md) | 365 | `result-track:e096cca501d4282abc5c47819328e526643821e44bc1fc31d5fbb5b9027b2c8a` |
| 53 | `theorem` | [disjUnion_tag_of_mem_left](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/disjunion-tag-of-mem-left.md) | 370 | `result-track:2c7d193baa5028ce5f509c42cf4409a893ba1b6926ba14e61ed8c7c36a503c5f` |
| 54 | `theorem` | [disjUnion_tag_of_mem_right](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/disjunion-tag-of-mem-right.md) | 375 | `result-track:85febce6acf89ff16361804d5896fd0bedbf448d43d29f66601e0c77ca08414a` |
| 55 | `theorem` | [IsSubordinate.disjUnion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/issubordinate-disjunion.md) | 380 | `result-track:fbf55f9c5af14410db0df2a1e4298fb7e0e7327a199ab2a4cc724d6ed890af44` |
| 56 | `theorem` | [IsHenstock.disjUnion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/ishenstock-disjunion.md) | 389 | `result-track:2974e5122da9091df06ceb4e38ee7c98ebce015d7b7df6c3531f6c667302c9b0` |
| 57 | `def` | [embedBox](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/embedbox.md) | 400 | `declaration-track:b60ab699b3f11b498c125bb57cc4e8a25ad2e0a40c7136596b8f5cbbcfa89f7b` |
| 58 | `def` | [distortion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/distortion.md) | 417 | `declaration-track:7e823f608b85d76f696c4778b3fcd032cbc88a14edb4986d04d2b8b87413ee4a` |
| 59 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/distortion-le-of-mem.md) | 421 | `result-track:7fd563b27acf7e1ac88c6f491814792b36b319f5456388a3b3eb6d5a19b73f75` |
| 60 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/distortion-le-iff.md) | 425 | `result-track:32eab1809e884aea1656a5581f79a0beb5f0711ddfb08df0c920cc0cc540c436` |
| 61 | `theorem` | [_root_.BoxIntegral.Prepartition.distortion_biUnionTagged](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/root-boxintegral-prepartition-distortion-biuniontagged.md) | 430 | `result-track:dbf47a9e6b6d34ff347e3c7668e0ff4e3def5f42cab862b695e6e33127874df4` |
| 62 | `theorem` | [distortion_biUnionPrepartition](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/distortion-biunionprepartition.md) | 437 | `result-track:45ec583aabe65aeef34c6806f29d2ffd72be63d830dbc8740fe13556edf9d53f` |
| 63 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/distortion-disjunion.md) | 443 | `result-track:32f3d7de0912a37ca28ef2d779d50973318a45e76972abc4fd6470c76c928993` |
| 64 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/distortion-of-const.md) | 448 | `result-track:7955ba109078deebc102a4c8687427c686f5fa856c0a0236a9b7f55f46fc3c92` |
| 65 | `theorem` | [distortion_single](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/distortion-single.md) | 454 | `result-track:d4289180abde2e6af8edd7490722cdcb794ff4879588681b9beaafd997f99523` |
| 66 | `theorem` | [distortion_filter_le](../../../../FunctionalAnalysis/TaggedAligned.lean/declarations/distortion-filter-le.md) | 459 | `result-track:5fa78de503f3dd07b830105f8a8814f87e67f69cdce2b5c172c7f6fe5d777991` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab0b0e7852b2763c8d4167897b59a46755340487af9d2ebfc16c779c7eb1a223 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Tagged/Variantdf9c65e5f07de224afc864a174c7e81be86a6c300a08b8399ae86308f849b4ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
