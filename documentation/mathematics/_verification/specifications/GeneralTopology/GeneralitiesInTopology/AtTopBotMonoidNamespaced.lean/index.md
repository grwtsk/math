# Verification target: At Top Bot Monoid Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "652eb661b8e7c0f2e110bebb030dd2c1af10b2bb",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `652eb661b8e7c0f2e110bebb030dd2c1af10b2bb`.

Source path: `GRWTSK/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.Pow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Tendsto` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Tendsto.one_eventuallyLE_mul_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-one-eventuallyle-mul-attop.md) | 31 | `result-track:8c03413d0c4e72b0f1349cae403b6d37bbc4a4286fe382b456f2f97164e1dbea` |
| 2 | `theorem` | [Tendsto.eventuallyLE_one_mul_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-eventuallyle-one-mul-atbot.md) | 39 | `result-track:37e5769913bd950cb17ab3d6f657fe2e28e3ab1b0165246f97458eaac3c95a56` |
| 3 | `theorem` | [Tendsto.one_le_mul_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-one-le-mul-attop.md) | 47 | `result-track:f90eb5828dea1a5b68fed3f7dc094dd3de887456cab64c78ad555978b9fab011` |
| 4 | `theorem` | [Tendsto.le_one_mul_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-le-one-mul-atbot.md) | 55 | `result-track:959857b2d56d280a28fc8701b092d233a3f91a950794641e1935f24f18a8db0e` |
| 5 | `theorem` | [Tendsto.atTop_mul_one_eventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-mul-one-eventuallyle.md) | 63 | `result-track:f9e6f66b390084d85a8cbb95f004da06a6a5fb29a9467090ff2cf754ed0693ea` |
| 6 | `theorem` | [Tendsto.atBot_mul_eventuallyLE_one](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-mul-eventuallyle-one.md) | 71 | `result-track:a0e6d9a6e38e94b8a357f4254463482f94be2031451749535b5c16f231f6744d` |
| 7 | `theorem` | [Tendsto.atTop_mul_one_le](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-mul-one-le.md) | 79 | `result-track:3e9f70fb37d779fc691c008d68855e72599b22da7737dfb687392381a987e883` |
| 8 | `theorem` | [Tendsto.atBot_mul_le_one](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-mul-le-one.md) | 87 | `result-track:a35d00328fe30c11c5af15c19a5a54c7862413aaa4a7d7e8201533c1ac30a0b9` |
| 9 | `theorem` | [Tendsto.atTop_mul_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-mul-attop.md) | 99 | `result-track:b95338a9dccc04fedf35ed1fc9fd31e889b0654f80b48dd704d7a3beb47eab8e` |
| 10 | `theorem` | [Tendsto.atBot_mul_atBot](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-mul-atbot.md) | 111 | `result-track:664099a055dd5e0a626986e93eb96eee7f564d5b5306847a9e9ffa97f023d57b` |
| 11 | `theorem` | [Tendsto.atTop_pow](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-pow.md) | 119 | `result-track:cb87312dfa3831c47551767d67f67b6d517a1214e506510ccb67fefe4cb0418c` |
| 12 | `theorem` | [Tendsto.atBot_pow](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-pow.md) | 125 | `result-track:e7b712803c885ce75bf41dd26f322ba4751bb874200004fbf96549814252abb7` |
| 13 | `theorem` | [Tendsto.atTop_of_const_mul](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-const-mul.md) | 140 | `result-track:2e2a9290e9499a104dd76088acc0fcfd30bf041926fb571ffb8514c76f0f73f6` |
| 14 | `theorem` | [Tendsto.atBot_of_const_mul](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-const-mul.md) | 147 | `result-track:b8ef0c655c1eef9ff417b8cfa358ca6fd545b82aa4bb603adf56211f40e4a2f5` |
| 15 | `theorem` | [Tendsto.atTop_of_mul_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-mul-const.md) | 158 | `result-track:a0d94ae79ea65e09935dced6fad47c319499d5034fe05c9fd9064e2da7c5a9a9` |
| 16 | `theorem` | [Tendsto.atBot_of_mul_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-mul-const.md) | 165 | `result-track:b9a5a203d48fbc39536d9291318c37aa7301e418a80c05323be5e97058d4fd5b` |
| 17 | `theorem` | [Tendsto.atTop_of_isBoundedUnder_le_mul](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-isboundedunder-le-mul.md) | 175 | `result-track:6b185e61c5c8bf4a0dd37a5faaeefdb943a5eb50a5a91b5aa2fbbe6731a2c41e` |
| 18 | `theorem` | [Tendsto.atBot_of_isBoundedUnder_ge_mul](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-isboundedunder-ge-mul.md) | 182 | `result-track:e06990b48f85a2653154a1ad958c7e6538975277ef87e596dd9ecf0c5e2b5f85` |
| 19 | `theorem` | [Tendsto.atTop_of_le_const_mul](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-le-const-mul.md) | 187 | `result-track:e69b386e7d6c2013e3a6eafe435124f3b9f561d1048718063c269ba05f87a8d5` |
| 20 | `theorem` | [Tendsto.atBot_of_const_le_mul](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-const-le-mul.md) | 192 | `result-track:b6e4acfc1d18541b737c1b31ff1ec7235f0d4c0dfe1952ab73896cf82690ac22` |
| 21 | `theorem` | [Tendsto.atTop_of_mul_isBoundedUnder_le](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-mul-isboundedunder-le.md) | 197 | `result-track:81e7f8b90c40e273608dd1a914e6fd73f083bebc88ba982d0b9645e0ccf8d636` |
| 22 | `theorem` | [Tendsto.atBot_of_mul_isBoundedUnder_ge](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-mul-isboundedunder-ge.md) | 204 | `result-track:96145813a3504a5d3c1c26e973b4537d138cf214f9816193250b87b3aa84a7b7` |
| 23 | `theorem` | [Tendsto.atTop_of_mul_le_const](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-mul-le-const.md) | 209 | `result-track:b1205dfda0b5584a7f39212b97912ad3b4f8f3337608ad6c038b2b0d436d1e2d` |
| 24 | `theorem` | [Tendsto.atBot_of_mul_const_le](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-mul-const-le.md) | 214 | `result-track:f39e5cc5dad084fd9aa2d3dc699d9f62c03d43b373f3c0e379bf9e3b84ab6b13` |
| 25 | `theorem` | [tendsto_atTop_of_add_bdd_above_left'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-add-bdd-above-left.md) | 226 | `result-track:0a514b2c4499c5704f19963f7a906f1529d599f517b4061284a886f2b1c10c7c` |
| 26 | `theorem` | [tendsto_atBot_of_add_bdd_below_left'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-add-bdd-below-left-source-edition-2.md) | 231 | `result-track:8f37050bcd6257da52da6e92a80ae3edd3bc568c23927ebf4539b517ee7977ca` |
| 27 | `theorem` | [tendsto_atTop_of_add_bdd_above_left](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-add-bdd-above-left-source-edition-2.md) | 236 | `result-track:9388efd608a5c262a8c93119fa99163619838df497ce285347c5b4e9ed794203` |
| 28 | `theorem` | [tendsto_atBot_of_add_bdd_below_left](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-add-bdd-below-left.md) | 241 | `result-track:5aa17e7f36720f1e982863756abe1a2bd9af191aef602f9eccccc1e7e66db66d` |
| 29 | `theorem` | [tendsto_atTop_of_add_bdd_above_right'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-add-bdd-above-right-source-edition-2.md) | 246 | `result-track:b3334da45ce05a2544dc4259d8074b064de0187958c827628d42f0b9b99b20a6` |
| 30 | `theorem` | [tendsto_atBot_of_add_bdd_below_right'](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-add-bdd-below-right-source-edition-2.md) | 251 | `result-track:adeca6a1d003f219fa700c29ce12426a39188ccdf9028bf01d9a5f56063b4f15` |
| 31 | `theorem` | [tendsto_atTop_of_add_bdd_above_right](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-attop-of-add-bdd-above-right.md) | 256 | `result-track:01fe20936c96c451aeff266be998e6095df5ccee5cc8a948714e3003b0053813` |
| 32 | `theorem` | [tendsto_atBot_of_add_bdd_below_right](../../../../../GeneralTopology/GeneralitiesInTopology/AtTopBotMonoidNamespaced.lean/declarations/tendsto-atbot-of-add-bdd-below-right.md) | 261 | `result-track:55e3d9532b54cada01ae641b79a2a9b6e8d907b2cc39156b8d7ac46373d19f8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f975a3f57b83d89909809faad42c2291a575f8bfaa9661a3ae1490db57b4f689 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Monoid/Variant1b78ab76557182d6df0d65fa0d986ae802fa1185ed656b7aa12628e6da13e2bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
