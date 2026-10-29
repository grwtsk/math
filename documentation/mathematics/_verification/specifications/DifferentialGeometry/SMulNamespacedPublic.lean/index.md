# Verification target: SMul Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f96c1a941b583f142a956cae85c952405c26f96d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f96c1a941b583f142a956cae85c952405c26f96d`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContMDiffVAdd](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffvadd.md) | 59 | `declaration-track:bad1e8fa091e5b1a52ee61ba7f90581fc13685c39c9bef52f96983ea5d9383f9` |
| 2 | `class` | [ContMDiffSMul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffsmul.md) | 76 | `declaration-track:ee9862fd05153a967e12afc927a27f08e2e4d41e3867b85935af1a45bde113e2` |
| 3 | `class` | [ContMDiffConstVAdd](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffconstvadd.md) | 88 | `declaration-track:04b26f10fa3e0c59484f8a18e03743af59df5958f1418a442bfeccf40d552d44` |
| 4 | `class` | [ContMDiffConstSMul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffconstsmul.md) | 99 | `declaration-track:ac7b90a3f7ff51d0a3df50d4ab1a368deb6ba5887e6f30600f76567a82bb335e` |
| 5 | `theorem` | [ContMDiffSMul.of_le](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffsmul-of-le.md) | 125 | `result-track:df274ed9afe721f4be0d4f1ec41fcb85a1f94da3c5cd31790ac0345fb5c77a79` |
| 6 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 129 | `declaration-track:e07a1ec910df51868767d462cb36458055f3011f2d1aa314386f0e0921e710ca` |
| 7 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 134 | `declaration-track:9094535e187d59c6c664acaffc1de28ed5d8a999dcf00e189a3af7c753e68f16` |
| 8 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 138 | `declaration-track:18afafdb19e9b2fee8ae9cab88451ab4ba8f54c20f67d83bea53ba56223ca5ad` |
| 9 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 142 | `declaration-track:7dbb2d7efc62a4fd4d29ee8518459d7457dc1425f67eef42f008807c3e31c649` |
| 10 | `lemma` | [ContMDiffSMul.continuousSMul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffsmul-continuoussmul.md) | 151 | `result-track:17c781ce02b1e56440d4b06b0856a7b351c5c9849b8e229be56f4922ec17d109` |
| 11 | `instance` | [ContMDiffMul.contMDiffSMul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffmul-contmdiffsmul.md) | 157 | `declaration-track:694d403924f97c5d032a8e745722e8845a38f4c6c37555d9be33f52c54e5125a` |
| 12 | `theorem` | [ContMDiffWithinAt.smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffwithinat-smul.md) | 167 | `result-track:a7332f740bfc6fea8478f36dbb7e233bf6ec03f9e23b8d9600b2a5140a19a2d6` |
| 13 | `theorem` | [ContMDiffAt.smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffat-smul.md) | 172 | `result-track:68fc4654e0a0eba24effea558c686bb5af675e48671020d8739e32504f5b98c7` |
| 14 | `theorem` | [ContMDiffOn.smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffon-smul.md) | 177 | `result-track:ccabf5a4acb0416b8bd3ce2d8d7fba346d9dc8fe5ed71537e8c889dad91f8969` |
| 15 | `theorem` | [ContMDiff.smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiff-smul.md) | 181 | `result-track:436e576c98eba2c97b376a434887327fc74d73d4542323b38673f9da846961f6` |
| 16 | `theorem` | [ContMDiffSMul.contMDiff_const_smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffsmul-contmdiff-const-smul.md) | 186 | `result-track:81c717774c7d08d3e1cb16f121c4a2b6d1b7d124f5a7d08348ba10cf4623fadc` |
| 17 | `instance` | [Prod.contMDiffSMul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/prod-contmdiffsmul.md) | 193 | `declaration-track:fb10412890d3f5173fc7531231b261030875a24e4980a7903cd7a91c4dba57b0` |
| 18 | `lemma` | [IsScalarTower.contMDiffSMul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/isscalartower-contmdiffsmul.md) | 201 | `result-track:822c92b013df154fba407f6259e78041cb4a0b643186ba63b3b42deab64b31d4` |
| 19 | `theorem` | [MulAction.contMDiffSMul_compHom](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/mulaction-contmdiffsmul-comphom.md) | 212 | `result-track:96a9e6164d95defad1d0cdf5b2104e323cdaf8af3cc2fbec078b7e7b3946a3b0` |
| 20 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance.md) | 221 | `declaration-track:1278fb6e4c0e076aff7c031b4ef63659eefd7d9ff52ae0aee56df31b88edddf5` |
| 21 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 228 | `declaration-track:86f1d4a1ef6d4a27b362823c9fd97439f43bc1a35e57e71505e8a67ce500a4aa` |
| 22 | `theorem` | [ContMDiffConstSMul.of_le](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffconstsmul-of-le.md) | 249 | `result-track:e1b7f2bb3c5f266e4abe25d24b0434dd0a2a4d4827c0a52bc22384d89175ded6` |
| 23 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 254 | `declaration-track:97a3acb462117978bcaf4ecac04e8e9d745febe97e285dc26cc32f7a64bef1f3` |
| 24 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 259 | `declaration-track:a87b77b242f6444df3613bbda6931d3d77fed1879d5cc45551ae933eb081f242` |
| 25 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 263 | `declaration-track:260ea41d0a0652fc126589f9b8c6db773876d4d28dc3aa7c6849a5094eba8642` |
| 26 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 267 | `declaration-track:ef3d0dfab42db18e15a17e5025158784e9e911661c2e1003338f8e07345b1071` |
| 27 | `lemma` | [ContMDiffConstSMul.continuousConstSMul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffconstsmul-continuousconstsmul.md) | 274 | `result-track:10e81a565ba1581114ce65f3ec1771e0c3d832d989e9d67af511b7bd10d30455` |
| 28 | `theorem` | [ContMDiffWithinAt.const_smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffwithinat-const-smul.md) | 285 | `result-track:ebc68d399837efd392e8c0970d47819ec890eb87d34e14c515686203f5e90a53` |
| 29 | `theorem` | [ContMDiffAt.const_smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffat-const-smul.md) | 290 | `result-track:1ccbee7266316d489bbd087cd41ae07e29e0dee6b7256d174f6d41680a4411b2` |
| 30 | `theorem` | [ContMDiffOn.const_smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiffon-const-smul.md) | 295 | `result-track:c999ef185cd76b96a3da2aa1cc05309f07c46e63a7f844e156016e75d1e91ee4` |
| 31 | `theorem` | [ContMDiff.const_smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/contmdiff-const-smul.md) | 299 | `result-track:87d2a1d41a51f4467c1c4b673e4e900f182130ec733d7439a4c2e693aaa64b94` |
| 32 | `instance` | [Prod.contMDiffConstSMul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/prod-contmdiffconstsmul.md) | 305 | `declaration-track:4f708a4219b681fad69174c2b375c6030231c0c1bc38c1eed86a9414605308c9` |
| 33 | `lemma` | [IsScalarTower.contMDiffConstSMul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/isscalartower-contmdiffconstsmul.md) | 314 | `result-track:6657bcc4462d5bf499577946b81aac29c68e2f467dda9ea597cc81fd816fad05` |
| 34 | `theorem` | [MulAction.contMDiffConstSMul_compHom](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/mulaction-contmdiffconstsmul-comphom.md) | 325 | `result-track:d2a26fcba10fb122a37575fa49623dd1bcdea61216e70e9d7afa37cb895b93a2` |
| 35 | `def` | [Diffeomorph.smul](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/diffeomorph-smul.md) | 353 | `declaration-track:601213acb23518e4019d6a1c9ff14bc1737e9ba2ff75727295e1036183ae7ae9` |
| 36 | `lemma` | [Diffeomorph.smul_toHomeomorph](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/diffeomorph-smul-tohomeomorph.md) | 359 | `result-track:f5aa454bd9b8bc82d66c27cd3fb7925ee4433380e21a3a99a9a0051e75ff383b` |
| 37 | `lemma` | [Diffeomorph.smul_apply](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/diffeomorph-smul-apply.md) | 365 | `result-track:4c832e9f9060900ac3a5086fe76e5a7f47d39464e805d5ced7609855ef413e60` |
| 38 | `lemma` | [Diffeomorph.smul_symm_apply](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/diffeomorph-smul-symm-apply.md) | 368 | `result-track:39fc04a67734b9fc9267b63876f42ce81a75b804698a31cee3ff4d1d7d4ef04c` |
| 39 | `lemma` | [Diffeomorph.smul_symm](../../../../DifferentialGeometry/SMulNamespacedPublic.lean/declarations/diffeomorph-smul-symm.md) | 371 | `result-track:33fdac69fd9f5d34cec654ba4c6cfa7f9a82b9d59f9443afefb9ee87d373c1e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3af76ac908643eda845b179ef2c14d43a5e4bd4b25de417ec8e98779862ff2db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/SMul/Variant113b1004d6f87412c0b1d1fc048f9f33ccd6555217237b4c753a0de3d5a048c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
