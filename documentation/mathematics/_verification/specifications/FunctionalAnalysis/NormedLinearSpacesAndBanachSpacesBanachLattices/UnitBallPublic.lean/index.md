# Verification target: Unit Ball Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88ff4da4729787c7de6744bd106241927ecbaa83",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UnitBall/Varianta672f0dd0e7fe37dbea5ef2b33e36c454e6f945314660066e3bc20af50a6e0d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88ff4da4729787c7de6744bd106241927ecbaa83`.

Source path: `GRWTSK/Topology/MetricTopology/UnitBall/Varianta672f0dd0e7fe37dbea5ef2b33e36c454e6f945314660066e3bc20af50a6e0d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UnitBall/Varianta672f0dd0e7fe37dbea5ef2b33e36c454e6f945314660066e3bc20af50a6e0d4.lean.json)

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
| 1 | `def` | [Subsemigroup.unitBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/subsemigroup-unitball.md) | 32 | `declaration-track:0b1cd1f1911cbca3688546689cb2cda7b0caa49f1bbc38773a777ebc1d7ce828` |
| 2 | `lemma` | [Subsemigroup.mem_unitBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/subsemigroup-mem-unitball.md) | 38 | `result-track:466e01404dee30375acb68adef2aeb5bd3de71eb6f2c367fe1f4a22438632354` |
| 3 | `instance` | [Metric.unitBall.instSemigroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-instsemigroup.md) | 42 | `declaration-track:396ee4e02ccf6eb6cacf0b9291a8afac22f791838399a7d18544e32c973dc811` |
| 4 | `instance` | [Metric.unitBall.instContinuousMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-instcontinuousmul.md) | 45 | `declaration-track:473cce058f2263cb910b5c16523259e5dcf63ce5e0cd47d6d366c35bc081b0ab` |
| 5 | `instance` | [Metric.unitBall.instCommSemigroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-instcommsemigroup.md) | 49 | `declaration-track:b81d4bd84000ad246d27175d2405f58a66699ca29c2ec4592861ce43a8b1785f` |
| 6 | `instance` | [Metric.unitBall.instHasDistribNeg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-insthasdistribneg.md) | 53 | `declaration-track:57d355844d333168168f7e14fa769b57f4e300453d8f7f219194ddd88b4e6c6a` |
| 7 | `theorem` | [Metric.unitBall.coe_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-coe-mul.md) | 58 | `result-track:94886d29e7359701fde2c57269b729bd8e1ddce424c0bc8d65c11afb92a5ec73` |
| 8 | `instance` | [Metric.unitBall.instZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-instzero.md) | 62 | `declaration-track:17b3b70070ba592320321131a156a0efa313b325155af21a85b1c36f2cef5814` |
| 9 | `theorem` | [Metric.unitBall.coe_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-coe-zero.md) | 66 | `result-track:4f707730144aa9f94d19204237ba73dc5c96a090daf289e30dc2238deae8dd8f` |
| 10 | `theorem` | [Metric.unitBall.coe_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-coe-eq-zero.md) | 71 | `result-track:ad0b58dace4ff7f08fb935b6627aed83b5d3f5f79e806714494e996a550f0bf1` |
| 11 | `instance` | [Metric.unitBall.instSemigroupWithZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-instsemigroupwithzero.md) | 75 | `declaration-track:1980f30753c524b80b9884abbaf2fdd752fcfa437bf2401f8e3404fcab09af62` |
| 12 | `instance` | [Metric.unitBall.instIsLeftCancelMulZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-instisleftcancelmulzero.md) | 80 | `declaration-track:07b94416d16799133c1cfecfd0694c04ff72f7191047e8c3b11d7568427f0edf` |
| 13 | `instance` | [Metric.unitBall.instIsRightCancelMulZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-instisrightcancelmulzero.md) | 84 | `declaration-track:e193e13b93817cff54622e8502a34e602a065e3301228a0734048b08b3a2a400` |
| 14 | `instance` | [Metric.unitBall.instIsCancelMulZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitball-instiscancelmulzero.md) | 88 | `declaration-track:f3379977731e438942ac5263772bc641a3961fa396bddc5fcb027e59386fef84` |
| 15 | `def` | [Subsemigroup.unitClosedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/subsemigroup-unitclosedball.md) | 96 | `declaration-track:0b352e1e576cf69fb2207a34edfb4bd31d0509b742bf951db989d0213d156144` |
| 16 | `instance` | [Metric.unitClosedBall.instSemigroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-instsemigroup.md) | 102 | `declaration-track:6379528a1b3dce0b1f46e59d2cfade07a93443036f2d031865658aaee22df5e5` |
| 17 | `instance` | [Metric.unitClosedBall.instHasDistribNeg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-insthasdistribneg.md) | 106 | `declaration-track:0f84dc4a4329d54fb49eae065d221eae7312a1cb844c460493b1d03fa887a57f` |
| 18 | `instance` | [Metric.unitClosedBall.instContinuousMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-instcontinuousmul.md) | 110 | `declaration-track:10f40f003d0f8c777579e310ca01efefcc600ab75bcc185006e4ec6048a2eaaa` |
| 19 | `theorem` | [Metric.unitClosedBall.coe_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-coe-mul.md) | 115 | `result-track:3a12acd9d84a55f79f1676726c9fc7135c85bf79cb4e39a5e5d16a1bf2173b35` |
| 20 | `instance` | [Metric.unitClosedBall.instZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-instzero.md) | 119 | `declaration-track:94d4499a94d80d6d9fae4633eea54bd6ec909e1fa4105bb306c620cf9b37d047` |
| 21 | `lemma` | [Metric.unitClosedBall.coe_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-coe-zero.md) | 124 | `result-track:c1e5da3b406f0e8aad6e70ef18024cd577663631fcc5d5bf28651448f95097d2` |
| 22 | `lemma` | [Metric.unitClosedBall.coe_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-coe-eq-zero.md) | 129 | `result-track:22986b983cf0126fc0fc7c61b6636ee986c98404460ac1fc81cb4236f5018541` |
| 23 | `instance` | [Metric.unitClosedBall.instSemigroupWithZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-instsemigroupwithzero.md) | 133 | `declaration-track:c83adb6ce6751a5b8333bcebe5fc0ca7c59af36d21af86c24040aac0c3341bc2` |
| 24 | `def` | [Submonoid.unitClosedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/submonoid-unitclosedball.md) | 139 | `declaration-track:dfd6048c8b07bf86379ac26d9c6d9cc0494224430cbffea35902e0e2b81ceef5` |
| 25 | `lemma` | [Submonoid.mem_unitClosedBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/submonoid-mem-unitclosedball.md) | 145 | `result-track:eeeb89af59cfeae12fcbe94e0cd8deab6142780a76841e658dc87ed89456763f` |
| 26 | `instance` | [Metric.unitClosedBall.instMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-instmonoid.md) | 149 | `declaration-track:d09b774f4a88ee6e48bf1ec00b0e67da32c22e9eb71cad1f126eab61d12a86d0` |
| 27 | `instance` | [Metric.unitClosedBall.instCommMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-instcommmonoid.md) | 153 | `declaration-track:0342668157211524331cef707339d48f506021e8b2986adb244a2d0cc9d86b51` |
| 28 | `theorem` | [Metric.unitClosedBall.coe_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-coe-one.md) | 158 | `result-track:09da22de6f693a334c0b599834466ccdb2a661383797fbfe0311660e4ca47712` |
| 29 | `theorem` | [Metric.unitClosedBall.coe_eq_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-coe-eq-one.md) | 163 | `result-track:e6cc0fff421cc91d147c65eb29bb01abb0322d0827a0582004a1b83a551d964f` |
| 30 | `theorem` | [Metric.unitClosedBall.coe_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-coe-pow.md) | 168 | `result-track:f9ff1e611dcfea8cc9697881d1c1ca7cc43783cab86ff877fb5d2e54411639a6` |
| 31 | `instance` | [Metric.unitClosedBall.instMonoidWithZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-instmonoidwithzero.md) | 172 | `declaration-track:2a41ad281980b47def1d7ee0d3f38e8cc299999ae91a4d45f9661001711a20cf` |
| 32 | `instance` | [Metric.unitClosedBall.instIsCancelMulZero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitclosedball-instiscancelmulzero.md) | 175 | `declaration-track:89d75449b0b1f077176466ed178b125ed1d5ba32b135072976cd15f1f72f6b7e` |
| 33 | `def` | [Submonoid.unitSphere](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/submonoid-unitsphere.md) | 186 | `declaration-track:be4247f8d5affcfc1ec9bdc54b63a4490fed7596c98fb3a685762d87e14affc4` |
| 34 | `instance` | [Metric.unitSphere.instInv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-instinv.md) | 194 | `declaration-track:c72e35ab743b33e1b0a98c5d583618922373982babece5742ddb840bd94c83be` |
| 35 | `theorem` | [Metric.unitSphere.coe_inv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-coe-inv.md) | 199 | `result-track:ae83af70016b52394a2ad8f8d7267accc1c91c8da7f842008605b2ee6e0956d9` |
| 36 | `instance` | [Metric.unitSphere.instDiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-instdiv.md) | 203 | `declaration-track:220c36381379229c32d6a9f86fb61dc3973e079d3244d693f067ccc24f93c775` |
| 37 | `theorem` | [Metric.unitSphere.coe_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-coe-div.md) | 208 | `result-track:0b663175a56b47c429b0024a0b0982e3425e1bf4ec213a9ddad60653b6de02fd` |
| 38 | `instance` | [Metric.unitSphere.instZPow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-instzpow.md) | 212 | `declaration-track:f6b79589151645a124507ca4b8261a759dc6f6cfa1836d247205171edd2a79ba` |
| 39 | `theorem` | [Metric.unitSphere.coe_zpow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-coe-zpow.md) | 217 | `result-track:0bb7b9cd0c6bd82db82d1c6ab798549198e234e245f3dabacde4e154cb174324` |
| 40 | `instance` | [Metric.unitSphere.instMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-instmonoid.md) | 221 | `declaration-track:84ba0ed890b165ea6a896e33f571f6abf63f4da6632c16b0b839c771ced2ef8b` |
| 41 | `instance` | [Metric.unitSphere.instCommMonoid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-instcommmonoid.md) | 225 | `declaration-track:fb1d5b82970c3256b9bd17d8c13a5608ac2e3443e02526c4181cf52709d1d1ee` |
| 42 | `theorem` | [Metric.unitSphere.coe_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-coe-one.md) | 230 | `result-track:6982a0c96c210f768267faf688ad3b533897fc1e855738e7146410cfa1725f37` |
| 43 | `theorem` | [Metric.unitSphere.coe_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-coe-mul.md) | 235 | `result-track:3fd2f6c6fc0ab6d2501f468a828307e197635822795fe07d4bf14c66ec0a4293` |
| 44 | `theorem` | [Metric.unitSphere.coe_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-coe-pow.md) | 240 | `result-track:532eaa7a17fb8742afba8c386e65b58598a6386799f630da7fa16a7e108418e5` |
| 45 | `def` | [unitSphereToUnits](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/unitspheretounits.md) | 245 | `declaration-track:a5d86258bf8fd3a413f83faad29bbb64c1acea031133689dfe080c652792cef3` |
| 46 | `theorem` | [unitSphereToUnits_apply_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/unitspheretounits-apply-coe.md) | 250 | `result-track:b05929b00f6d4e5e12c6a4b0c60f6b39704d39b2ffd41c1e58e0f21357d841f2` |
| 47 | `theorem` | [unitSphereToUnits_injective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/unitspheretounits-injective.md) | 254 | `result-track:5b74dad2c566a7dce651bd7063e7b912c416c5d8262942f9c5c8bdfc1d441dec` |
| 48 | `instance` | [Metric.unitSphere.instGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-unitsphere-instgroup.md) | 258 | `declaration-track:7b13fe3c968c5a5ebfa11f572bd955001430c7ea169aa732a16d0e995d717d36` |
| 49 | `instance` | [Metric.sphere.instHasDistribNeg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-sphere-insthasdistribneg.md) | 265 | `declaration-track:12ac231df9dd0d2b6ad6f755b7a3567078b42c16531b87a55bf68a4f961b94dd` |
| 50 | `instance` | [Metric.sphere.instContinuousMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-sphere-instcontinuousmul.md) | 269 | `declaration-track:025ae64c7ef93d2a14d120e95257609ce89ccdc4df381fb39bce06095a3327dc` |
| 51 | `instance` | [Metric.sphere.instIsTopologicalGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-sphere-instistopologicalgroup.md) | 273 | `declaration-track:959af92291c6c49f8fe90e87a7823b78baefb504b107f624d64a8d29c6668abb` |
| 52 | `instance` | [Metric.sphere.instCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/UnitBallPublic.lean/declarations/metric-sphere-instcommgroup.md) | 277 | `declaration-track:bf0de7bf83e8ec33cbd1ae771b6f0789841ed2937e2089690ca72cbc1a25c9a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dfbd60d9f1cf62a9ef87a0edcd90de0d261d796a182a6f75aacb29b8fd3c9b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/UnitBall/Varianta672f0dd0e7fe37dbea5ef2b33e36c454e6f945314660066e3bc20af50a6e0d4.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/UnitBall/Varianta672f0dd0e7fe37dbea5ef2b33e36c454e6f945314660066e3bc20af50a6e0d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
