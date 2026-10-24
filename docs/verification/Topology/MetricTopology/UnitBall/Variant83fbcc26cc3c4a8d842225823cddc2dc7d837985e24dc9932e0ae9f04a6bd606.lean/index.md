# Verification target: GRWTSK.Topology.MetricTopology.UnitBall.Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28b32fc076d0d53bd4ff77e53944b541bc03761c",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28b32fc076d0d53bd4ff77e53944b541bc03761c`.

Source path: `GRWTSK/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.BallSphere` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subsemigroup.unitBall](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/subsemigroup-unitball--5fba98ca6bae0336eb6e59be.md) | 36 | `declaration-track:5fba98ca6bae0336eb6e59beeb659edb6e4f5981621b875ba919ce26bc2b72eb` |
| 2 | `instance` | [Metric.unitBall.instSemigroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-instsemigroup--523a78a709518c1fc72ca3b0.md) | 42 | `declaration-track:523a78a709518c1fc72ca3b02b9fe7d1f157f09f75377f6e94bffb4e7b128cd1` |
| 3 | `instance` | [Metric.unitBall.instContinuousMul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-instcontinuousmul--2eebf9c8657476f19319f9b4.md) | 45 | `declaration-track:2eebf9c8657476f19319f9b4ebb1987175eb0ecacb2bfae74d293f20d701fc3d` |
| 4 | `instance` | [Metric.unitBall.instCommSemigroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-instcommsemigroup--a9ea9c7d5bfab9be3a74b2e1.md) | 49 | `declaration-track:a9ea9c7d5bfab9be3a74b2e1eeb3b462351631d8121e21700049288203cd564d` |
| 5 | `instance` | [Metric.unitBall.instHasDistribNeg](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-insthasdistribneg--4c08f4fcfd3c33fd88769160.md) | 53 | `declaration-track:4c08f4fcfd3c33fd887691607a9fddfbc73eb17f638847ee0525e608fe5de4c8` |
| 6 | `theorem` | [Metric.unitBall.coe_mul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-coe-mul--52291073098a9a1661b3d2b6.md) | 58 | `result-track:52291073098a9a1661b3d2b64a3de21b341bc3767beef213174f15f748950878` |
| 7 | `instance` | [Metric.unitBall.instZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-instzero--ff23b78db88056f40e5e87da.md) | 65 | `declaration-track:ff23b78db88056f40e5e87dab5eb436a96aad8b582ec835120ac751e43e774c7` |
| 8 | `theorem` | [Metric.unitBall.coe_zero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-coe-zero--35e7fb4bed2cc614fb8cbfa6.md) | 69 | `result-track:35e7fb4bed2cc614fb8cbfa660502fecc90ae9792b336e89a0cc23ec9d80752a` |
| 9 | `theorem` | [Metric.unitBall.coe_eq_zero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-coe-eq-zero--ba15670eaf1caa774b96a95f.md) | 74 | `result-track:ba15670eaf1caa774b96a95f568a37906912e33b6e595cf74398cc53aa83d123` |
| 10 | `instance` | [Metric.unitBall.instSemigroupWithZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-instsemigroupwithzero--7ba21931a81c1ca5371d2db8.md) | 78 | `declaration-track:7ba21931a81c1ca5371d2db81aa1dd31ebfa09bce77f230bdb65b8b63052519a` |
| 11 | `instance` | [Metric.unitBall.instIsLeftCancelMulZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-instisleftcancelmulzero--6d981070e9d3b437db2aa61f.md) | 83 | `declaration-track:6d981070e9d3b437db2aa61f7e20439244801b18b1816902d08c7a6f62172d10` |
| 12 | `instance` | [Metric.unitBall.instIsRightCancelMulZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-instisrightcancelmulzero--cb95f9cb0b6d254113522e15.md) | 87 | `declaration-track:cb95f9cb0b6d254113522e15defa16ee130280056c24214966d55036e93f6a35` |
| 13 | `instance` | [Metric.unitBall.instIsCancelMulZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitball-instiscancelmulzero--ceb127027b145f9255590248.md) | 91 | `declaration-track:ceb127027b145f92555902480f31df78a62395c17093064de0edd1c443a7bb50` |
| 14 | `def` | [Subsemigroup.unitClosedBall](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/subsemigroup-unitclosedball--176fc35c8a2f44f65ec8d36d.md) | 99 | `declaration-track:176fc35c8a2f44f65ec8d36d6a490347c1ce770daae1f3f1eecabb199252bc1e` |
| 15 | `instance` | [Metric.unitClosedBall.instSemigroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-instsemigroup--aae130c2696435a6fefb1795.md) | 105 | `declaration-track:aae130c2696435a6fefb17959a4acc43077b4f9872bb8d7135f44b40a6e1fd2c` |
| 16 | `instance` | [Metric.unitClosedBall.instHasDistribNeg](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-insthasdistribneg--2254b4aa03a7d45be2d8b492.md) | 109 | `declaration-track:2254b4aa03a7d45be2d8b4925fc383732589685236248a50c81a2002026e3bb9` |
| 17 | `instance` | [Metric.unitClosedBall.instContinuousMul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-instcontinuousmul--abc3b2bc1c54376267d37e96.md) | 113 | `declaration-track:abc3b2bc1c54376267d37e967e43049a4fe5d6cb0db3f10055b15655798466a3` |
| 18 | `theorem` | [Metric.unitClosedBall.coe_mul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-coe-mul--ec447eea14b44b8d1a40d374.md) | 118 | `result-track:ec447eea14b44b8d1a40d374c5befc9665d02ebc1b83a2706d2eb145dd4996bd` |
| 19 | `instance` | [Metric.unitClosedBall.instZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-instzero--c2a3fe7deccfde6deecf5bfe.md) | 125 | `declaration-track:c2a3fe7deccfde6deecf5bfe795af5e624a05e2416bc9175061e28373a399e41` |
| 20 | `lemma` | [Metric.unitClosedBall.coe_zero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-coe-zero--57fc4d949484cfda581ab2e3.md) | 130 | `result-track:57fc4d949484cfda581ab2e3a72bb522bbbe4c382ba8265fc0525f8714824918` |
| 21 | `lemma` | [Metric.unitClosedBall.coe_eq_zero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-coe-eq-zero--082adc18731adc6c63b38a28.md) | 135 | `result-track:082adc18731adc6c63b38a28bcc1f7101ba8385f69149e831d9ce2d1e56932ac` |
| 22 | `instance` | [Metric.unitClosedBall.instSemigroupWithZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-instsemigroupwithzero--8dd3e1e3de404e09955893a7.md) | 139 | `declaration-track:8dd3e1e3de404e09955893a7639dbc8a45ff79b93b3a179fec745f368fe94733` |
| 23 | `def` | [Submonoid.unitClosedBall](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/submonoid-unitclosedball--e3f7c0fb531357cf23ecc867.md) | 145 | `declaration-track:e3f7c0fb531357cf23ecc86751ea6d36c46fcc447ed5c5ea1c062a8c32463ce9` |
| 24 | `instance` | [Metric.unitClosedBall.instMonoid](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-instmonoid--5d0ba182cb15e5dfa54ff847.md) | 150 | `declaration-track:5d0ba182cb15e5dfa54ff84700c4134b7f067a5876e7d5cc462ac2386a41ff31` |
| 25 | `instance` | [Metric.unitClosedBall.instCommMonoid](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-instcommmonoid--dd7bd887d2b8092b06f7cc2e.md) | 154 | `declaration-track:dd7bd887d2b8092b06f7cc2e05235b7b5e2916976f39b107e784c2c5d154e160` |
| 26 | `theorem` | [Metric.unitClosedBall.coe_one](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-coe-one--04ec8afc7aea7489b4dbb09f.md) | 159 | `result-track:04ec8afc7aea7489b4dbb09fea98af2e08d5d9a9e997984d67ff2d3dc6d18ea0` |
| 27 | `theorem` | [Metric.unitClosedBall.coe_eq_one](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-coe-eq-one--9838b28c173580374756ae8d.md) | 167 | `result-track:9838b28c173580374756ae8d808fe81c34a1d0fb51424b9fa340feef0752c824` |
| 28 | `theorem` | [Metric.unitClosedBall.coe_pow](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-coe-pow--f4298588ceffb48676446748.md) | 172 | `result-track:f4298588ceffb486764467488f48b320fd29ef075343de04b47692e7213ed7b3` |
| 29 | `instance` | [Metric.unitClosedBall.instMonoidWithZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-instmonoidwithzero--b0603baa435b5938cfdbd5c5.md) | 179 | `declaration-track:b0603baa435b5938cfdbd5c5d500c4fda480660ad48c75d40cbd968cd4342d97` |
| 30 | `instance` | [Metric.unitClosedBall.instCancelMonoidWithZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitclosedball-instcancelmonoidwithzero--cdcd683b875a2e5f9d67d761.md) | 182 | `declaration-track:cdcd683b875a2e5f9d67d761f7f05990dd95a8a7f1f433707fafaf25201ff78a` |
| 31 | `def` | [Submonoid.unitSphere](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/submonoid-unitsphere--f3034407b46059a4e8bc8c29.md) | 193 | `declaration-track:f3034407b46059a4e8bc8c29bfdce8984d725d0ff32e8a4397ba97dacaecf957` |
| 32 | `instance` | [Metric.unitSphere.instInv](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-instinv--1aee343eee13c876fb9d7c90.md) | 201 | `declaration-track:1aee343eee13c876fb9d7c900ae4f342dc447289caaae6d0203fe2e9cf92fcf6` |
| 33 | `theorem` | [Metric.unitSphere.coe_inv](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-coe-inv--9dce002ea183c96c85e3ac3c.md) | 206 | `result-track:9dce002ea183c96c85e3ac3c375731cd565d6b7bec084fecb9f4b9f3c9e574f1` |
| 34 | `instance` | [Metric.unitSphere.instDiv](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-instdiv--6b5f0cf31b86514061eb5343.md) | 213 | `declaration-track:6b5f0cf31b86514061eb534311463f41b6855dfa5e865fa85174de7dc98d8d5b` |
| 35 | `theorem` | [Metric.unitSphere.coe_div](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-coe-div--4b07a556d68e98b43359eeb3.md) | 218 | `result-track:4b07a556d68e98b43359eeb373fb629f7bd7abe471a5f66caec52629a66e1b60` |
| 36 | `instance` | [Metric.unitSphere.instZPow](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-instzpow--45f00694fa0ef995485668d8.md) | 225 | `declaration-track:45f00694fa0ef995485668d81a5f7bd3158125913b2fb13b423a91fc80160625` |
| 37 | `theorem` | [Metric.unitSphere.coe_zpow](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-coe-zpow--ceb73045bbc13fec02fc9d65.md) | 230 | `result-track:ceb73045bbc13fec02fc9d65953966fdc785e0ed528801d29484fa56b19eb12d` |
| 38 | `instance` | [Metric.unitSphere.instMonoid](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-instmonoid--feb041e17c7b798d8d0fa602.md) | 237 | `declaration-track:feb041e17c7b798d8d0fa602d7ee3a5938d35625a398b8c19753d766ad976c5e` |
| 39 | `instance` | [Metric.unitSphere.instCommMonoid](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-instcommmonoid--8a0de91a1c0bf10350bbd8e0.md) | 241 | `declaration-track:8a0de91a1c0bf10350bbd8e0d326fab625dc92759d2cd2d0b903b005af1b40ec` |
| 40 | `theorem` | [Metric.unitSphere.coe_one](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-coe-one--bbb548324e86bc4b4dc66356.md) | 246 | `result-track:bbb548324e86bc4b4dc66356174b3c7f735e52cefa022e7a069bb81e392d442b` |
| 41 | `theorem` | [Metric.unitSphere.coe_mul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-coe-mul--b71bd38339ca7dec0293ab34.md) | 254 | `result-track:b71bd38339ca7dec0293ab343576d39df3af8f7330809949f3f12a8fbc21d453` |
| 42 | `theorem` | [Metric.unitSphere.coe_pow](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-coe-pow--3127403a39e998bb1166c421.md) | 262 | `result-track:3127403a39e998bb1166c421081853557037bef9673e0fbf09546e9fc44fd7fc` |
| 43 | `def` | [unitSphereToUnits](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/unitspheretounits--363e7ba586694a0d5d82238c.md) | 270 | `declaration-track:363e7ba586694a0d5d82238c7df02ce34a1eb0c0b2d36f01d726de2145d8fb22` |
| 44 | `theorem` | [unitSphereToUnits_apply_coe](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/unitspheretounits-apply-coe--01b2146cfdcf2e8ca72c4038.md) | 275 | `result-track:01b2146cfdcf2e8ca72c403882996b0b8643e5c01aaa9bf14c754383f1e12af7` |
| 45 | `theorem` | [unitSphereToUnits_injective](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/unitspheretounits-injective--f67e1a8be6bd679014348c9b.md) | 279 | `result-track:f67e1a8be6bd679014348c9b2e3b41efbf865e1b6abe490aee06e6b0b044732c` |
| 46 | `instance` | [Metric.unitSphere.instGroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-unitsphere-instgroup--7712e82d66fdaeccf9e7b285.md) | 283 | `declaration-track:7712e82d66fdaeccf9e7b285ab5d864940c6237c11a48fb84a687735249f72a3` |
| 47 | `instance` | [Metric.sphere.instHasDistribNeg](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-sphere-insthasdistribneg--06695d98c556114de17bf2ff.md) | 290 | `declaration-track:06695d98c556114de17bf2ff0d4daf80f0a2a21fa4cca78fe19e5386addcaa55` |
| 48 | `instance` | [Metric.sphere.instContinuousMul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-sphere-instcontinuousmul--921dfc42dadac9b11e2bb62d.md) | 294 | `declaration-track:921dfc42dadac9b11e2bb62d1c6f6f883a3daca658b4834cb6781fafe409eea4` |
| 49 | `instance` | [Metric.sphere.instIsTopologicalGroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-sphere-instistopologicalgroup--6e020594cd9b8980622be91c.md) | 298 | `declaration-track:6e020594cd9b8980622be91c0f69380253042dddb1bb22032dca9d918b9b87a9` |
| 50 | `instance` | [Metric.sphere.instCommGroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variant83fbcc26cc3c4a8d842225823cddc2dc7d837985e24dc9932e0ae9f04a6bd606.lean/declarations/metric-sphere-instcommgroup--cf4c156c75c53ff12226daab.md) | 302 | `declaration-track:cf4c156c75c53ff12226daab24b12a481f720ad6b8535b35bffdd2b9b82e2ad4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
