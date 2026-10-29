# Verification target: Unit Ball Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1facadf3a00b1cc75ec1ea83da39f643145b1573",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UnitBall/Variantc67f331b20c12fdc581c3c3ded13e40088ab83ce38a446f5ee5a66e18f481589.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1facadf3a00b1cc75ec1ea83da39f643145b1573`.

Source path: `GRWTSK/Topology/MetricTopology/UnitBall/Variantc67f331b20c12fdc581c3c3ded13e40088ab83ce38a446f5ee5a66e18f481589.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UnitBall/Variantc67f331b20c12fdc581c3c3ded13e40088ab83ce38a446f5ee5a66e18f481589.lean.json)

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
| 1 | `def` | [Subsemigroup.unitBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/subsemigroup-unitball.md) | 40 | `declaration-track:3a59fd8e32e7bee89e1f8d49818b772ff159dab5b617362736dffacf3b466df3` |
| 2 | `lemma` | [Subsemigroup.mem_unitBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/subsemigroup-mem-unitball.md) | 46 | `result-track:09ad27dc52df64eb33c95cb5db4da03d7bffecb627eb75715d7e1517d3c83489` |
| 3 | `instance` | [Metric.unitBall.instSemigroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-instsemigroup.md) | 50 | `declaration-track:dd387b95c8d80f30472a775a9a6a7cfbdd25ca6f0d38510a8c8261697c0678af` |
| 4 | `instance` | [Metric.unitBall.instContinuousMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-instcontinuousmul.md) | 53 | `declaration-track:29cd66905c6e2ee266342868f2c3585c77608e7f41be03ed5c1ade73c83d521a` |
| 5 | `instance` | [Metric.unitBall.instCommSemigroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-instcommsemigroup.md) | 57 | `declaration-track:a439ccbadd506ed7e645f54ba6c8b82eb0a1147cb0e3ca9407dd7bfad6d66d5f` |
| 6 | `instance` | [Metric.unitBall.instHasDistribNeg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-insthasdistribneg.md) | 61 | `declaration-track:b96003025edbd110085d6c6643405de62e6f122e0d3b6a26a5a4d09fc587ec4f` |
| 7 | `theorem` | [Metric.unitBall.coe_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-coe-mul.md) | 66 | `result-track:38205abcf7110b0f360d5ba5d44163e4b1236a4adba6fb4222d1609417ffe4ac` |
| 8 | `instance` | [Metric.unitBall.instZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-instzero.md) | 70 | `declaration-track:e8f6d5c7a407e9ecb5fe9887791b0553cff4cfbbcbf8b5e913ea39e942050ec8` |
| 9 | `theorem` | [Metric.unitBall.coe_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-coe-zero.md) | 74 | `result-track:b594cd95fc4315024992a07a1e529eb98faf62a4fb4b7a5b9ba3ea778e8448ef` |
| 10 | `theorem` | [Metric.unitBall.coe_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-coe-eq-zero.md) | 79 | `result-track:fdfd67b091f5782918b371c71dd8d6d8c1cc032355614c97cd7894775e090fd0` |
| 11 | `instance` | [Metric.unitBall.instSemigroupWithZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-instsemigroupwithzero.md) | 83 | `declaration-track:40a88cd1e7aec00c7fb1dac30ca1be5c4e5f134b3b243a9b3f14dd439df57ce2` |
| 12 | `instance` | [Metric.unitBall.instIsLeftCancelMulZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-instisleftcancelmulzero.md) | 88 | `declaration-track:5a9add5fb7afd5ae5bf72156b93a56251acef54d4aac021fa56f24eef64de7ac` |
| 13 | `instance` | [Metric.unitBall.instIsRightCancelMulZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-instisrightcancelmulzero.md) | 92 | `declaration-track:bc0024b23cca2c55ddaef11c416e852d811e46ab9a1aa472e814e6459a6d2a75` |
| 14 | `instance` | [Metric.unitBall.instIsCancelMulZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitball-instiscancelmulzero.md) | 96 | `declaration-track:f69a98d652c03ace868b3f9ece83c32dd3e6a490edf19b7897d94cb5f31124af` |
| 15 | `def` | [Subsemigroup.unitClosedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/subsemigroup-unitclosedball.md) | 104 | `declaration-track:df53f0d52b980dc87b3b7d0eaf193738e38ae41474d6d80acd0f06c15a8de9e2` |
| 16 | `instance` | [Metric.unitClosedBall.instSemigroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-instsemigroup.md) | 110 | `declaration-track:20c30a06956e025e0bb3e770396b7fed0eb03df4ced082dd5082206abd5cb7e7` |
| 17 | `instance` | [Metric.unitClosedBall.instHasDistribNeg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-insthasdistribneg.md) | 114 | `declaration-track:6330206d2885d71ef60a43b848dc60c7a40a9003e5c1bcf5a2bf4a8c4d2fab3d` |
| 18 | `instance` | [Metric.unitClosedBall.instContinuousMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-instcontinuousmul.md) | 118 | `declaration-track:dc42143f4c2c38c1ef33578071a86460da26ce53f5fcda7450c8ed97d9d47d9f` |
| 19 | `theorem` | [Metric.unitClosedBall.coe_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-coe-mul.md) | 123 | `result-track:ff69b10439cf43075e57f5e7726cf3d4d9e83511df0264ed4428527da4806755` |
| 20 | `instance` | [Metric.unitClosedBall.instZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-instzero.md) | 127 | `declaration-track:77d4f11754c3bb5583c978a7b209c01d2e3a3b5cb724d5a1d27b5795325281c2` |
| 21 | `lemma` | [Metric.unitClosedBall.coe_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-coe-zero.md) | 132 | `result-track:5f5a0238fba6011323b4e29d33944f7f4269ec880b4b032f2b8f05d1f1e0915a` |
| 22 | `lemma` | [Metric.unitClosedBall.coe_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-coe-eq-zero.md) | 137 | `result-track:c96ce8a1a37b7696887de0b741d582af338fc43f33d8730016bed7d5b919c421` |
| 23 | `instance` | [Metric.unitClosedBall.instSemigroupWithZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-instsemigroupwithzero.md) | 141 | `declaration-track:224432acdf4ac5832620a06b584e701e9ba5b02bda241775b25ba0637a0b5e36` |
| 24 | `def` | [Submonoid.unitClosedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/submonoid-unitclosedball.md) | 147 | `declaration-track:52b5975e21b7a6536338d0ba1df818a2b7d01b56e70f4cb1ab022ec325206257` |
| 25 | `lemma` | [Submonoid.mem_unitClosedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/submonoid-mem-unitclosedball.md) | 153 | `result-track:c9b215a8e3dca7f4a277c7799501a6a5f1450ef880d77f392725316731a4f684` |
| 26 | `instance` | [Metric.unitClosedBall.instMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-instmonoid.md) | 157 | `declaration-track:2d65f41818e20a48a5b12577be055ab216b0372ea4df0de856d6a88a68af38c7` |
| 27 | `instance` | [Metric.unitClosedBall.instCommMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-instcommmonoid.md) | 161 | `declaration-track:167b92e0895334c67370c1e9f6e669e6f4876a32846f7d099bc1cd1452330b9a` |
| 28 | `theorem` | [Metric.unitClosedBall.coe_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-coe-one.md) | 166 | `result-track:4b7f093dffc22b752c9448cef873ec8bdb076f8fdb79203a44199bcda30319af` |
| 29 | `theorem` | [Metric.unitClosedBall.coe_eq_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-coe-eq-one.md) | 171 | `result-track:dfd764e99713897e9de5e93de145cedc5cefa8cddbfa7ffc742bdaf85186cb38` |
| 30 | `theorem` | [Metric.unitClosedBall.coe_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-coe-pow.md) | 176 | `result-track:a7aed7f9bb9df726853a414c775ca0c81f6beb85dfb3a961d2fc7e796c1e9af1` |
| 31 | `instance` | [Metric.unitClosedBall.instMonoidWithZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-instmonoidwithzero.md) | 180 | `declaration-track:84ed0840e2f49e4b20243f2c771179b2df19608583994dda75eb90b171e180b3` |
| 32 | `instance` | [Metric.unitClosedBall.instIsCancelMulZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitclosedball-instiscancelmulzero.md) | 183 | `declaration-track:317cff0b3f5e7e537ff0df1cd1103707b5f77ae1f6214ba00356fa98ede499cb` |
| 33 | `def` | [Submonoid.unitSphere](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/submonoid-unitsphere.md) | 194 | `declaration-track:37b92d63de8a479163bd6408b892091fb438cabe3e32275e7e9953d7ee81d1e4` |
| 34 | `instance` | [Metric.unitSphere.instInv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-instinv.md) | 202 | `declaration-track:fa4ab31904a90eab5128a760907cb748d0b5398cf2e957a695695c1c23d3bdc8` |
| 35 | `theorem` | [Metric.unitSphere.coe_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-coe-inv.md) | 207 | `result-track:9d6bc1c0d45f9021f5b0653078d119bd5e25531791e14b5701f79aecf1e3b712` |
| 36 | `instance` | [Metric.unitSphere.instDiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-instdiv.md) | 211 | `declaration-track:32f8490154536bdc57e52f5f5228c2f6f6a8631de580765502d049821379513a` |
| 37 | `theorem` | [Metric.unitSphere.coe_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-coe-div.md) | 216 | `result-track:57ac9422237daf40250bfbf9e43905ff51bd088938b3f84a2a132ae18332fe8a` |
| 38 | `instance` | [Metric.unitSphere.instZPow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-instzpow.md) | 220 | `declaration-track:a470c496fc0383ac57e20e785ce3b3b76fd9a6e581782c6332e7ad796484a84d` |
| 39 | `theorem` | [Metric.unitSphere.coe_zpow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-coe-zpow.md) | 225 | `result-track:2bb11e9548ababe96d8ef1d319bab40f6d322c06364d82b7fb3755a55b825a6e` |
| 40 | `instance` | [Metric.unitSphere.instMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-instmonoid.md) | 229 | `declaration-track:ee3b96528d2700f7d6cc1dc32c11e5d79c0c1a506b79ef6a0665d68ef5c6b43d` |
| 41 | `instance` | [Metric.unitSphere.instCommMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-instcommmonoid.md) | 233 | `declaration-track:2295c52b9c8f2bf291c23f189064c9b3586475d78a164e8f3ef49e4eacae4d46` |
| 42 | `theorem` | [Metric.unitSphere.coe_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-coe-one.md) | 238 | `result-track:af8bbfe2ed26791ec3030948ffca5bf561e948d023282a19856480dade6e0d5e` |
| 43 | `theorem` | [Metric.unitSphere.coe_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-coe-mul.md) | 243 | `result-track:8a5d4e6c868c6d679235b34431c70290e0db572242c4dcda747c3c8be7364b8d` |
| 44 | `theorem` | [Metric.unitSphere.coe_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-coe-pow.md) | 248 | `result-track:ca481f82a167eb36ecf1a9b580c0786c23103e6fc15d1b648d1229e83437353a` |
| 45 | `def` | [unitSphereToUnits](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/unitspheretounits.md) | 253 | `declaration-track:724c33a603cec017801ce1e910044fcc44ee17872398e3290f0881a10f3ba885` |
| 46 | `theorem` | [unitSphereToUnits_apply_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/unitspheretounits-apply-coe.md) | 258 | `result-track:18147688cbf9f4b24e0d639e3bd94115f0ec135db05228e9358bb857417ed46b` |
| 47 | `theorem` | [unitSphereToUnits_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/unitspheretounits-injective.md) | 262 | `result-track:96608b5f56efb23afaac903af191998c77aae6594fb4df2a56ffcf2c120932c7` |
| 48 | `instance` | [Metric.unitSphere.instGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-unitsphere-instgroup.md) | 266 | `declaration-track:627c2761ec958f2908a54cc60d10b26fb6b8e4bad3c8e72ee7e6b54a1b9cab01` |
| 49 | `instance` | [Metric.sphere.instHasDistribNeg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-sphere-insthasdistribneg.md) | 273 | `declaration-track:186800dbf00287c897919bea7438e4a9b2e9345d4b8403ca1da03e5e34b33008` |
| 50 | `instance` | [Metric.sphere.instContinuousMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-sphere-instcontinuousmul.md) | 277 | `declaration-track:119e0624dd025cfa9fcdd10bb53a505a285afb30dbf1029fb29a0d35eb326738` |
| 51 | `instance` | [Metric.sphere.instIsTopologicalGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-sphere-instistopologicalgroup.md) | 281 | `declaration-track:fa4d9fe87b16a87c3b7775d35cd4c05de3ae2fa9fd8a3384d488097db572094b` |
| 52 | `instance` | [Metric.sphere.instCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallNamespacedPublic.lean/declarations/metric-sphere-instcommgroup.md) | 285 | `declaration-track:4f1d514a8a46e548adb2a099206a117610f244cdbee5ecf763c7596f00fe38c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a09a792b1e054c6cdc97be7dff838b0f6f84817b65ac1f3153cd13466be50a0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/UnitBall/Variantc67f331b20c12fdc581c3c3ded13e40088ab83ce38a446f5ee5a66e18f481589.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/UnitBall/Variantc67f331b20c12fdc581c3c3ded13e40088ab83ce38a446f5ee5a66e18f481589.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
