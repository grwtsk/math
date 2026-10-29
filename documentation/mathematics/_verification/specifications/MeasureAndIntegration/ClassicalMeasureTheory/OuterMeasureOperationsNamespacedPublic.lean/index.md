# Verification target: Outer Measure Operations Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a844236c624359d2345301c2019620894591a673",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Operations/Variantfff953c783db50983bd024b2dea0a29cc649479c557e55b59a486822aa0180b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a844236c624359d2345301c2019620894591a673`.

Source path: `GRWTSK/Analysis/MeasureTheory/Operations/Variantfff953c783db50983bd024b2dea0a29cc649479c557e55b59a486822aa0180b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Operations/Variantfff953c783db50983bd024b2dea0a29cc649479c557e55b59a486822aa0180b3.lean.json)

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
| 1 | `instance` | [instZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instzero.md) | 51 | `declaration-track:ec09f5dd0ae97611a609ca6da6a7d607dbf9d0f1188e9388c1bf59dd02155f69` |
| 2 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instance.md) | 57 | `declaration-track:62da69143cc6f5950a91403fbc4e6c9b3913a4190aa7c8b2e133ebec633a0f12` |
| 3 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instinhabited.md) | 62 | `declaration-track:7ededcfc2b5c1f12daf857469d6b72d5235531189be20baeb5fddb5ec579d5a0` |
| 4 | `instance` | [instAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instadd.md) | 65 | `declaration-track:d148676f46ed8e9535df5b9a1cb137235d05b6b54f59b0ba4a110126f2a037c6` |
| 5 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 76 | `declaration-track:cb857e940a58c3b588118ac1df2ca7e8edb21ebe6c0145fbea36b53f4279bd42` |
| 6 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instsmul.md) | 88 | `declaration-track:efa827532dc67b72d4e367cec7c4243cdbba383d22b9ff5ecc5acbbf1f51eecc` |
| 7 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 99 | `declaration-track:e0c72057c78343c12bc9e9c994b5235b7f918a56af7c5b48b3bf11d09b3b678c` |
| 8 | `instance` | [instSMulCommClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instsmulcommclass.md) | 106 | `declaration-track:5a002d20d57b3d571a3db1e0ef08a0a27ed2ef46e4d9121cc826542a60a24f81` |
| 9 | `instance` | [instIsScalarTower](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instisscalartower.md) | 109 | `declaration-track:819603383bbe196d52fe951240e84f053927ac27963a1585def86620c338764f` |
| 10 | `instance` | [instIsCentralScalar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instiscentralscalar.md) | 112 | `declaration-track:cebe767ef9a0b0d684d8201f35cfbdfd9cf29e6e90a44f4322b4c4f3014fe79d` |
| 11 | `instance` | [instMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instmulaction.md) | 117 | `declaration-track:1296a947b628c0cca8cec642e5fab8ab378713d97cf8cd694211845e2bacb7f8` |
| 12 | `instance` | [addCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/addcommmonoid.md) | 120 | `declaration-track:ee27f360b0ce763aee144df5f785f75ec6f71431b60e43aa357b80b7eafcb2b0` |
| 13 | `instance` | [instDistribMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instdistribmulaction.md) | 126 | `declaration-track:1be7a17d8b617de8e8cc2ae9cb1c8cf9eaa412b172286609b661af570e036d56` |
| 14 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instmodule.md) | 130 | `declaration-track:a8aaecbf130e26c6da9da6f4458fc6b06b3f515ca44de2e736486e69c5c75732` |
| 15 | `instance` | [instBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instbot.md) | 133 | `declaration-track:ee1be458a22ea2e5e55472c5529cf7efd09b7c4b8822b4220469a123aeeca473` |
| 16 | `theorem` | [coe_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/coe-bot.md) | 137 | `result-track:3d339d9e9e30c1fa60820f0456fd9bd71c5ae92089c9bbeaece447025d5efeef` |
| 17 | `instance` | [instPartialOrder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instpartialorder.md) | 140 | `declaration-track:a1bb5696ceb3ba01c1c51aeaaddb7966777029de691f5d4e76f84b6e6d056b27` |
| 18 | `instance` | [instIsOrderedAddMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instisorderedaddmonoid.md) | 146 | `declaration-track:a8e48cbc43e867acece32124dd5af1b05169d66cb4173c905ece9b76aae297b5` |
| 19 | `instance` | [orderBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/orderbot.md) | 149 | `declaration-track:03ce00f12493c758202aea0562ea1884779b26cd3f5c8e360bd460d20ef983d2` |
| 20 | `theorem` | [univ_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/univ-eq-zero-iff.md) | 153 | `result-track:616942333213f67d888f1c0f27874534b4d7880c866b4133bff827483c630225` |
| 21 | `instance` | [instSupSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instsupset.md) | 158 | `declaration-track:6fd30feb68950dc01c5850c8ba8955d080217cb9a3fa649b0cc4880fbafa3507` |
| 22 | `instance` | [instCompleteLattice](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instcompletelattice.md) | 171 | `declaration-track:981290ff9062fd6db2193878ab16a6e01dc51d3a2ee48428cea77214ac15798b` |
| 23 | `theorem` | [sSup_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/ssup-apply.md) | 177 | `result-track:786108853b1d717722a4ebbde75ae8645dbcb384ec1381e2af97f2cefec035fb` |
| 24 | `theorem` | [iSup_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/isup-apply.md) | 182 | `result-track:58263bd5807f1a8c1df72fc4354b679e96735d3135c4e1359e8ce456344c4286` |
| 25 | `theorem` | [coe_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/coe-isup.md) | 186 | `result-track:b05abc6e11f19ef1c87f1b1986bb89589a74c34e71fbe3d630cdf7f667737ec6` |
| 26 | `theorem` | [sup_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/sup-apply.md) | 190 | `result-track:e0dfe13220a38692d1c30e389e1066821261c646871c750234d4834b0d7e0f14` |
| 27 | `theorem` | [smul_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/smul-isup.md) | 193 | `result-track:48ca7767349dd9408b2cf95e1db31e870cab5b16a9352259d95af0f9b3d57433` |
| 28 | `theorem` | [mono''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/mono.md) | 201 | `result-track:978ce3a4e5fc0cf7b89896b116a817b449e9a6135d8a5533b4cfde4057c67511` |
| 29 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map.md) | 206 | `declaration-track:4ba2c0d78f76481d0eb6a47ec99775c8280eb51093e6b8e66522ea99771c4a06` |
| 30 | `theorem` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-apply.md) | 216 | `result-track:a4f0315d909d6e28a3512450707ffc2033d12ed00c127b2c64624b1bf5422c47` |
| 31 | `theorem` | [map_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-id.md) | 220 | `result-track:da5b107055acec197039927f5430f837ec7d8f9eeb12e659203dcee58110b107` |
| 32 | `theorem` | [map_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-map.md) | 224 | `result-track:0b38ebd02cb302d34c99fc1cf90b37ffda3d727c5e02fd9f769bde25df08c1ff` |
| 33 | `theorem` | [map_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-mono.md) | 229 | `result-track:f43bce30fc707226cf6415b19d4e0a83cfe80a44844c2e7cd1aca6d1c5e73e7b` |
| 34 | `theorem` | [map_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-sup.md) | 232 | `result-track:64e04a7bdd08c89f8b4c21854e2fdd25509cff82aae38412b5a4e5a66a3c6cbd` |
| 35 | `theorem` | [map_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-isup.md) | 236 | `result-track:a9ecf42353f45a9e2924d5940b3fc44cb680a4b24f647fdf49e872663b5eb4ba` |
| 36 | `instance` | [instFunctor](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instfunctor.md) | 239 | `declaration-track:e5e8901149308cb774822c62797e786856eedd69095f49d396152edac3bffd21` |
| 37 | `instance` | [instLawfulFunctor](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/instlawfulfunctor.md) | 241 | `declaration-track:70090ae8a2bcc23e7656dc1413f58ea84b0eaee0b21ae9de447b9cc74f7cd9cc` |
| 38 | `def` | [dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/dirac.md) | 244 | `declaration-track:8da640b5767dd34c3ffcf27820472f32cdeb41708ec5c121fd39016214e40fe0` |
| 39 | `theorem` | [dirac_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/dirac-apply.md) | 253 | `result-track:c1184d0b23bb6d81cc83a3d0aecce7f00729ec05cbde9e55ad14a3d51044d4bb` |
| 40 | `def` | [sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/sum.md) | 257 | `declaration-track:022cf00e1c917e032b8932937298ad89fcd0fe51038f36e961431982734ae4f4` |
| 41 | `theorem` | [sum_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/sum-apply.md) | 265 | `result-track:e32aac90e38d8b13dcfaf32a3f6f411a69c8ce66291a1c56ba65e926991ddeb4` |
| 42 | `theorem` | [smul_dirac_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/smul-dirac-apply.md) | 268 | `result-track:5f03eeacc5b7de5d4b16687a299450ab90dfce6d2cf00ed5dae4c1f3d8621d5a` |
| 43 | `def` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/comap.md) | 273 | `declaration-track:0f9023b6af78e2cf6a6cdf1cdafc2d0fba3dc40a18f3c0b4150bde631ae253f9` |
| 44 | `theorem` | [comap_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/comap-apply.md) | 283 | `result-track:988849d1c94cdade9ac19d6f57859e7f74c38b8561b1c9ccfd611aabcd7bb061` |
| 45 | `theorem` | [comap_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/comap-mono.md) | 287 | `result-track:ea52ee703044bed5393c67b92baad44e3425fa3e780d1a4bccdc3abeb2243629` |
| 46 | `theorem` | [comap_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/comap-isup.md) | 290 | `result-track:ff4ae970b3ed3ea3532f81747b6f72499b0c607486f1f8c288f5376ad9bf05f0` |
| 47 | `def` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/restrict.md) | 295 | `declaration-track:851046500bb858a8766f35ea205800e3a51d88956a839e4ec1eeb42387072c37` |
| 48 | `theorem` | [restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/restrict-apply.md) | 300 | `result-track:b6c508838a0631f37481be3069d05111946d3c4f7fcadea43f07d416ceb101cc` |
| 49 | `theorem` | [restrict_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/restrict-mono.md) | 304 | `result-track:2f38c8161ee3e711e8ce5baddf93609ec0d0548ae8539f99e0cef39d85ebb53d` |
| 50 | `theorem` | [restrict_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/restrict-univ.md) | 310 | `result-track:de69fa94a8bfc270069b39f2952fab1efa3cc8d7217db52d999829c601615882` |
| 51 | `theorem` | [restrict_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/restrict-empty.md) | 314 | `result-track:0a3d3e7d19f841aecfd77addcd5e01ecf17d06274f555232063c3846a8a9fbda` |
| 52 | `theorem` | [restrict_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/restrict-isup.md) | 318 | `result-track:7e1f46361c4b61f8b32ffadc7b5de8ca928b805928497a33ee648d43028cc9d8` |
| 53 | `theorem` | [map_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-comap.md) | 321 | `result-track:3c61f0813cb19f3eb0092e4961bef1a2d994aefe6a4f0d241b3287c240dc6289` |
| 54 | `theorem` | [map_comap_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-comap-le.md) | 324 | `result-track:2ee394b121d198185631bac62adb0bde438e1d586594af474628a09c5fead303` |
| 55 | `theorem` | [restrict_le_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/restrict-le-self.md) | 327 | `result-track:7ffa92d2cfcde22c2a47481af18a8f97f58060586d03d5ab663bcda12c09b0c4` |
| 56 | `theorem` | [map_le_restrict_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-le-restrict-range.md) | 331 | `result-track:d53a690a4d43e3bf55c067f624dff800215bdda52de4f7e28e988bf9c2a72d53` |
| 57 | `theorem` | [map_comap_of_surjective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-comap-of-surjective.md) | 335 | `result-track:6bc60ae5193f29fe1c7004cde97affe99451cd6562e7d4f0a78c7daafefb658d` |
| 58 | `theorem` | [le_comap_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/le-comap-map.md) | 339 | `result-track:637c38922897b5cb5a2dd7cb26b2674ec852e456549201df2b54616346efb043` |
| 59 | `theorem` | [comap_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/comap-map.md) | 342 | `result-track:d02c43e56f4934366d65927f6cb556c36d5bdfaf5d170707db1b13ab89328d93` |
| 60 | `theorem` | [top_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/top-apply-source-edition-2.md) | 346 | `result-track:f8a39f43ca8c1e23de9e5df204c8f3b67260c4d037c1afa7185a28ffadc2d4d4` |
| 61 | `theorem` | [top_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/top-apply.md) | 350 | `result-track:a3324f2f2ff9f8c0d93eb18bc36cb096f33d3f1b720ef6e02718078cdcf9c349` |
| 62 | `theorem` | [comap_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/comap-top.md) | 354 | `result-track:d89205d7fadf3468ef18db0f93586ab2ead684013a922ed1f2cd2ecf4102d4c1` |
| 63 | `theorem` | [map_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-top.md) | 357 | `result-track:31350bbbdceaac5d5289432d9ce49adbc39ac9ace52b83e45660663ab3f1b932` |
| 64 | `theorem` | [map_top_of_surjective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureOperationsNamespacedPublic.lean/declarations/map-top-of-surjective.md) | 363 | `result-track:60c84ea472057454b0ac439701e43225ee4ce41e0ef57259440f21ee391f7f29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=689a0babf2d6f29484d50bb56d8cb62a0e912d1829b77d173d8804ad2b889d8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Operations/Variantfff953c783db50983bd024b2dea0a29cc649479c557e55b59a486822aa0180b3.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Operations/Variantfff953c783db50983bd024b2dea0a29cc649479c557e55b59a486822aa0180b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
