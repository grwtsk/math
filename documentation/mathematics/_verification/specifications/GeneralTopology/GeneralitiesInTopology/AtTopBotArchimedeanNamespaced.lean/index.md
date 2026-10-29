# Verification target: At Top Bot Archimedean Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "334f836fcb839132c661c409183b0aabe4d60a77",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant68a223f2d30276b48f886c2ac23b45c84d739c4c950618a99fc7eed93a5862a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `334f836fcb839132c661c409183b0aabe4d60a77`.

Source path: `GRWTSK/Topology/GeneralTopology/Archimedean/Variant68a223f2d30276b48f886c2ac23b45c84d739c4c950618a99fc7eed93a5862a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Archimedean/Variant68a223f2d30276b48f886c2ac23b45c84d739c4c950618a99fc7eed93a5862a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountablyGenerated` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.comap_cast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/nat-comap-cast-attop.md) | 34 | `result-track:25a699ff3df54ce6fb35b6201051aae0d6286e08756871cab613e3a87d8cd04b` |
| 2 | `theorem` | [tendsto_natCast_atTop_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-natcast-attop-iff.md) | 38 | `result-track:f972750a733662f32b71d578f6ab66532b1815d7a7fa6f5872de71cb472c1327` |
| 3 | `theorem` | [tendsto_natCast_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-natcast-attop-attop.md) | 43 | `result-track:cbe6faaabc2ca18c2eeee85ccd295b04f4f1f57f92c2675f3b806757db71dde5` |
| 4 | `theorem` | [Filter.Eventually.natCast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/filter-eventually-natcast-attop.md) | 48 | `result-track:71310467473b0c80933c4aceda37c84239ceee5639fc1687b330367ad9f43f43` |
| 5 | `theorem` | [Int.comap_cast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/int-comap-cast-attop.md) | 53 | `result-track:20b54d8d2a23e69a6955682638ac735372635643c37af870f1b21d4d442cc934` |
| 6 | `theorem` | [Int.comap_cast_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/int-comap-cast-atbot.md) | 60 | `result-track:074753fefff03b47df6702c851619e087be7393ad0e0f41612b12d07fc9d8ba0` |
| 7 | `theorem` | [tendsto_intCast_atTop_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-intcast-attop-iff.md) | 66 | `result-track:43626b34ed70567159604e8b3cbbe4a086790bd14159469848aefb30180d5067` |
| 8 | `theorem` | [tendsto_intCast_atBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-intcast-atbot-iff.md) | 71 | `result-track:75c4c7740ac00bbf8943d032c1d33113f43dd508fcda6f5f3e4880f3ed65a75e` |
| 9 | `theorem` | [tendsto_intCast_atTop_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-intcast-attop-attop.md) | 76 | `result-track:6d65f6466390273f152ade6aebcfdfc80f9edfbbc6190cb4643773423afc1975` |
| 10 | `theorem` | [Filter.Eventually.intCast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/filter-eventually-intcast-attop.md) | 81 | `result-track:f4904ff7a71cd82e92fbbdc7701781d175228d13feafddf517346248e0644c71` |
| 11 | `theorem` | [Filter.Eventually.intCast_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/filter-eventually-intcast-atbot.md) | 86 | `result-track:d02a5bee806a4901e792495adfd5f66566c0b31b805c138f466a696453e844d1` |
| 12 | `theorem` | [Rat.comap_cast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/rat-comap-cast-attop.md) | 92 | `result-track:93bfe7e1202a4523ececbb0d26e9433e3afa4b43388d84c24423efaf9a02abec` |
| 13 | `theorem` | [Rat.comap_cast_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/rat-comap-cast-atbot.md) | 97 | `result-track:8d52ad50d236bfaf92cab9c0644221cf95042bb469962fe7b9970d437133c1aa` |
| 14 | `theorem` | [tendsto_ratCast_atTop_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-ratcast-attop-iff.md) | 104 | `result-track:3c5c03b8e38134ddb191e6553d3ce177b4e4ef379886b95ad0dcdb33f1b2bed0` |
| 15 | `theorem` | [tendsto_ratCast_atBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-ratcast-atbot-iff.md) | 109 | `result-track:cba045945d39ec1d6813f2fde97ba1c2afa0ebe76198d881ac56ac53b32881bd` |
| 16 | `theorem` | [Filter.Eventually.ratCast_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/filter-eventually-ratcast-attop.md) | 114 | `result-track:917b321d46f656c0eabb9335e911dcff95f2942993392844578c53c3bb68211c` |
| 17 | `theorem` | [Filter.Eventually.ratCast_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/filter-eventually-ratcast-atbot.md) | 119 | `result-track:1b41a6f5bf0efa211ab18ccdc91b81236cf33946153c4fc2af8a2ebe9d061abb` |
| 18 | `theorem` | [atTop_hasAntitoneBasis_of_archimedean](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/attop-hasantitonebasis-of-archimedean.md) | 124 | `result-track:f4a03f786bdbb1219def5e639bb72fcb4745e12f6481dbeab2193a168aae308c` |
| 19 | `theorem` | [atTop_hasCountableBasis_of_archimedean](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/attop-hascountablebasis-of-archimedean.md) | 129 | `result-track:3f33b3ff64a33da2c73207946bd7d0458f3db1c32806d267f9e8d8c8209a9be5` |
| 20 | `theorem` | [atBot_hasCountableBasis_of_archimedean](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/atbot-hascountablebasis-of-archimedean.md) | 134 | `result-track:8aaeb624a0b95900d0bcd56145af0f6a5fffd8c84c5a035d7fe74c974e1ee1e2` |
| 21 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/instance-source-edition-2.md) | 143 | `declaration-track:977faa5df12c1c8438a00342bd0cedcd0f88af2257faf3de79f2911a2ad6c51a` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/instance.md) | 148 | `declaration-track:70504f11b63d2505e6b6f32b9e89cf9ba09cbd00732fb8e24521d55f720b15b0` |
| 23 | `theorem` | [Tendsto.const_mul_atTop'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-const-mul-attop.md) | 165 | `result-track:da6d1b1d87753f4a61e31a9129eadd0aaecb6873979ee91cfc01bbbf68e5060d` |
| 24 | `theorem` | [Tendsto.atTop_mul_const'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-attop-mul-const.md) | 183 | `result-track:73d7cd2e6fac6a50017c9aaea23fc87e2f1e50b8653f0a86670fa3997fa7830a` |
| 25 | `theorem` | [Tendsto.atTop_mul_const_of_neg'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-attop-mul-const-of-neg.md) | 205 | `result-track:d62a17ee0a5f6a3b828a3ef41c8ed0fcead9a050fb52b2e0b50b6984d31bb03a` |
| 26 | `theorem` | [Tendsto.atBot_mul_const'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-atbot-mul-const.md) | 211 | `result-track:f23c32a0e53348f2b4c8b2a15b25f2f3ca99e62e9a6c138de8e259bdc699f8f2` |
| 27 | `theorem` | [Tendsto.atBot_mul_const_of_neg'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-atbot-mul-const-of-neg.md) | 218 | `result-track:05cb259ece62c04f76f8c115ab362541ab2eaa9afa7243e6f43562e03db373bd` |
| 28 | `theorem` | [Tendsto.atTop_nsmul_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-attop-nsmul-const.md) | 228 | `result-track:342ae4fcac4075ebc5a37719fe7572f5d3ba9b362339d03bf1b513de202f9bac` |
| 29 | `theorem` | [Tendsto.atTop_nsmul_neg_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-attop-nsmul-neg-const.md) | 240 | `result-track:377bf50a45753679a12bb2f1569371921b652ae3bd0a992613c2babfdf61bbda` |
| 30 | `theorem` | [Tendsto.atTop_zsmul_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-attop-zsmul-const.md) | 243 | `result-track:9c2696151d7e8b8fe7eb301868fa70cab6ed1c52e7147a1540f7ba431504ee06` |
| 31 | `theorem` | [Tendsto.atTop_zsmul_neg_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-attop-zsmul-neg-const.md) | 250 | `result-track:f7fa9e31724b663b0e7e0512c19ee93d33118532adb81ba02d32eff2f31b57bd` |
| 32 | `theorem` | [Tendsto.atBot_zsmul_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-atbot-zsmul-const.md) | 253 | `result-track:08831fe129add26fef73001bad1ed166c2c475fe40f20926edb5ce9f24c7c75b` |
| 33 | `theorem` | [Tendsto.atBot_zsmul_neg_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotArchimedeanNamespaced.lean/declarations/tendsto-atbot-zsmul-neg-const.md) | 258 | `result-track:8d078be6fa042cae3e33e21775561ef3534caca6e9d72a3941f2bc45a2d69f3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f8bec658737faf0e06e631e383a8708967d9cb9cd329991e2e098c7efed84ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Archimedean/Variant68a223f2d30276b48f886c2ac23b45c84d739c4c950618a99fc7eed93a5862a2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Archimedean/Variant68a223f2d30276b48f886c2ac23b45c84d739c4c950618a99fc7eed93a5862a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
