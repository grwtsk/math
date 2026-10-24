# Verification target: GRWTSK.Topology.MetricTopology.UnitBall.Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a765f7aed8f6ea2c76a7cb029c0667dcf9d0ceee",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a765f7aed8f6ea2c76a7cb029c0667dcf9d0ceee`.

Source path: `GRWTSK/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.BallSphere` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subsemigroup.unitBall](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/subsemigroup-unitball--4d6aecc1a7551fcbc8e89530.md) | 28 | `declaration-track:4d6aecc1a7551fcbc8e89530bebe92ab1bb124849487b4bdff3ad3f28ac5b711` |
| 2 | `instance` | [Metric.unitBall.instSemigroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-instsemigroup--a4a407b6ae11e9051c94b621.md) | 34 | `declaration-track:a4a407b6ae11e9051c94b621ffc2007859d56ea55b67aa1db482af7367564be7` |
| 3 | `instance` | [Metric.unitBall.instContinuousMul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-instcontinuousmul--ee047cea25a3d2ce432b4fdd.md) | 37 | `declaration-track:ee047cea25a3d2ce432b4fdd60bbc2defd87a12637251fd06b0f52a23accbec5` |
| 4 | `instance` | [Metric.unitBall.instCommSemigroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-instcommsemigroup--b7be59b08c3ad196c7d03475.md) | 41 | `declaration-track:b7be59b08c3ad196c7d03475be2c10fd33d3ebff849a3b842487779248f6d654` |
| 5 | `instance` | [Metric.unitBall.instHasDistribNeg](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-insthasdistribneg--7ae2b6f90ae5aafcd5bab8ca.md) | 45 | `declaration-track:7ae2b6f90ae5aafcd5bab8ca3eab8d3fe5d6439e014b535578a687e17d6a58bc` |
| 6 | `theorem` | [Metric.unitBall.coe_mul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-coe-mul--aed9971784281f16124c91f2.md) | 50 | `result-track:aed9971784281f16124c91f29278b5b1736f2b9f20be68856916abc32041f77d` |
| 7 | `instance` | [Metric.unitBall.instZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-instzero--eca849130050d2cefbc714c4.md) | 57 | `declaration-track:eca849130050d2cefbc714c40cc41b59ba5b15344855906b072b087b7fbe01b9` |
| 8 | `theorem` | [Metric.unitBall.coe_zero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-coe-zero--e41c1dddd3827fd9d5cb81c8.md) | 61 | `result-track:e41c1dddd3827fd9d5cb81c85cffebce1a08ec577157a08ea141025acd117ff8` |
| 9 | `theorem` | [Metric.unitBall.coe_eq_zero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-coe-eq-zero--c656f0ebb91a053cfd407e22.md) | 66 | `result-track:c656f0ebb91a053cfd407e2285c5ccd6c8525a0bfca59aa84222b295f04745f6` |
| 10 | `instance` | [Metric.unitBall.instSemigroupWithZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-instsemigroupwithzero--031dad672242d3da1defff1f.md) | 70 | `declaration-track:031dad672242d3da1defff1f76f9b88b8284b0b0f92d9bb553444dfc2cd6feb7` |
| 11 | `instance` | [Metric.unitBall.instIsLeftCancelMulZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-instisleftcancelmulzero--88ca8c6814c1c26075927685.md) | 75 | `declaration-track:88ca8c6814c1c26075927685f350050f7675779c91a1de051239a2b90bd93c26` |
| 12 | `instance` | [Metric.unitBall.instIsRightCancelMulZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-instisrightcancelmulzero--1e5737d409a596259d9ef482.md) | 79 | `declaration-track:1e5737d409a596259d9ef482b61eb416c5ceb29494027af3c95d574204ac05a3` |
| 13 | `instance` | [Metric.unitBall.instIsCancelMulZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitball-instiscancelmulzero--2e02eb1d6958c6c6b8d7b888.md) | 83 | `declaration-track:2e02eb1d6958c6c6b8d7b888eed6cb2c5139a79210eb7e673babce56ca750759` |
| 14 | `def` | [Subsemigroup.unitClosedBall](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/subsemigroup-unitclosedball--2e08b03a7d762107624981ed.md) | 91 | `declaration-track:2e08b03a7d762107624981ed96a4cc20355b5fa6ff88ae5801dd42c0189eb804` |
| 15 | `instance` | [Metric.unitClosedBall.instSemigroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-instsemigroup--61c1a6acde25566c6b662121.md) | 97 | `declaration-track:61c1a6acde25566c6b662121ff819343fc97b236ce8de65e559511480450ddbf` |
| 16 | `instance` | [Metric.unitClosedBall.instHasDistribNeg](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-insthasdistribneg--bd44ebe363c420dba27a3d08.md) | 101 | `declaration-track:bd44ebe363c420dba27a3d0869de2d919bf162eba0a4d41c39241106c10199f8` |
| 17 | `instance` | [Metric.unitClosedBall.instContinuousMul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-instcontinuousmul--013f3238186957652626964e.md) | 105 | `declaration-track:013f3238186957652626964ebcd9f008773150f3cf2cf2b4f915c7405920749c` |
| 18 | `theorem` | [Metric.unitClosedBall.coe_mul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-coe-mul--661554843a9a428cac7b1ad9.md) | 110 | `result-track:661554843a9a428cac7b1ad915813dcf2698a42f9c9ecab3f1149ebe6cac6e7a` |
| 19 | `instance` | [Metric.unitClosedBall.instZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-instzero--d9d98868fe0d9216b8d1132f.md) | 117 | `declaration-track:d9d98868fe0d9216b8d1132f4a86af5cb373b7b190478ff3da4c9056c931e3d0` |
| 20 | `lemma` | [Metric.unitClosedBall.coe_zero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-coe-zero--0c790d872f309888f4acb2e7.md) | 122 | `result-track:0c790d872f309888f4acb2e780a5e35d953445fd53a4159b4b867f406415adee` |
| 21 | `lemma` | [Metric.unitClosedBall.coe_eq_zero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-coe-eq-zero--9641764d6b4084a3704fe1f9.md) | 127 | `result-track:9641764d6b4084a3704fe1f93bb0cca3096aefee652f4ae5a4ea75c5cfef5215` |
| 22 | `instance` | [Metric.unitClosedBall.instSemigroupWithZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-instsemigroupwithzero--75e1f279cd566d0d5aaeb47b.md) | 131 | `declaration-track:75e1f279cd566d0d5aaeb47bd7df513d3f7fe750f083a70f5cfc73341c07862e` |
| 23 | `def` | [Submonoid.unitClosedBall](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/submonoid-unitclosedball--a7b64faed35f3a622480da98.md) | 137 | `declaration-track:a7b64faed35f3a622480da98228978087cae8f38e442f1dde973434e920f955c` |
| 24 | `instance` | [Metric.unitClosedBall.instMonoid](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-instmonoid--7d4a39d3d6cf68be3626eae2.md) | 142 | `declaration-track:7d4a39d3d6cf68be3626eae214298f7e92d8b723164cb59fc5e237e35e3b349a` |
| 25 | `instance` | [Metric.unitClosedBall.instCommMonoid](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-instcommmonoid--91601bd9ba07a9b872dcec0a.md) | 146 | `declaration-track:91601bd9ba07a9b872dcec0ab74bbf2d0123ca627b4c019b795d529d093bb570` |
| 26 | `theorem` | [Metric.unitClosedBall.coe_one](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-coe-one--68ea20bdd4f4f30996bd054b.md) | 151 | `result-track:68ea20bdd4f4f30996bd054b08b68d78d453eb74aed48139ecf00c62cc16b93d` |
| 27 | `theorem` | [Metric.unitClosedBall.coe_eq_one](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-coe-eq-one--17e28cc8dd98451cb53dd4be.md) | 159 | `result-track:17e28cc8dd98451cb53dd4be6481bd6d75656520cfca1a2bbda3dfc4ebe16a98` |
| 28 | `theorem` | [Metric.unitClosedBall.coe_pow](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-coe-pow--7452aede8f68f0d64f3d8c68.md) | 164 | `result-track:7452aede8f68f0d64f3d8c68853d9b4361de343ce1b6f83c172939f8a425c158` |
| 29 | `instance` | [Metric.unitClosedBall.instMonoidWithZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-instmonoidwithzero--145c968ee64d40852850136a.md) | 171 | `declaration-track:145c968ee64d40852850136ad0bbded7285a7f94ff4e41c34a7385c7440b08a1` |
| 30 | `instance` | [Metric.unitClosedBall.instCancelMonoidWithZero](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitclosedball-instcancelmonoidwithzero--9927fb180dfd32b2821cf510.md) | 174 | `declaration-track:9927fb180dfd32b2821cf510d44c2d5fc4ed9386f7a2aae55ceed15cebaf6c1c` |
| 31 | `def` | [Submonoid.unitSphere](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/submonoid-unitsphere--22723f1b2387ccdae1174a92.md) | 185 | `declaration-track:22723f1b2387ccdae1174a9249b3ec6bcbf324c229c9201d607c372968f6e671` |
| 32 | `instance` | [Metric.unitSphere.instInv](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-instinv--4850f736d61c23031ae6739a.md) | 193 | `declaration-track:4850f736d61c23031ae6739a541169d1c141d2106c81e7fdc9436aebb3bd4cbb` |
| 33 | `theorem` | [Metric.unitSphere.coe_inv](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-coe-inv--9bd5b72b7133cfdc3cf47847.md) | 198 | `result-track:9bd5b72b7133cfdc3cf478475b001aea4e4657f01fb4867f94c9baa89a73bbcc` |
| 34 | `instance` | [Metric.unitSphere.instDiv](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-instdiv--a6f7881aaac961a6f3ea2d50.md) | 205 | `declaration-track:a6f7881aaac961a6f3ea2d500f0533844b130d1a14118503772abc41dbde0fd8` |
| 35 | `theorem` | [Metric.unitSphere.coe_div](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-coe-div--1e266ba53ffdc154fc9b42d6.md) | 210 | `result-track:1e266ba53ffdc154fc9b42d61947363bdca9ce9f43c79ef3f61dc65d5f0c348d` |
| 36 | `instance` | [Metric.unitSphere.instZPow](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-instzpow--35d32808305948d13491149e.md) | 217 | `declaration-track:35d32808305948d13491149e6ebea95695eda1ac4bbd29fad5ff332baf6045b5` |
| 37 | `theorem` | [Metric.unitSphere.coe_zpow](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-coe-zpow--e1cb1c8a571351d3a98dc1c2.md) | 222 | `result-track:e1cb1c8a571351d3a98dc1c2d4aa94f1c2f7153174661ce6b9b252f5557b7e71` |
| 38 | `instance` | [Metric.unitSphere.instMonoid](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-instmonoid--5d3d933d64c238bc3b1c1644.md) | 229 | `declaration-track:5d3d933d64c238bc3b1c1644327a9d487da572a007ddaacebd54dbf7c9694549` |
| 39 | `instance` | [Metric.unitSphere.instCommMonoid](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-instcommmonoid--e75cd9e57b48d30dadff1eb3.md) | 233 | `declaration-track:e75cd9e57b48d30dadff1eb38e512b873ac9d186cbd57657c6f6e875f850d854` |
| 40 | `theorem` | [Metric.unitSphere.coe_one](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-coe-one--ed6b98e00848a9ac9a4e687f.md) | 238 | `result-track:ed6b98e00848a9ac9a4e687fb3d1c6eaa17d74c8b0eaab9ae28ee2e648d207ae` |
| 41 | `theorem` | [Metric.unitSphere.coe_mul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-coe-mul--74b4a667dc213819fa6ddf11.md) | 246 | `result-track:74b4a667dc213819fa6ddf11a138b1b090a5ed21d1948b48f905c625adf8dfb5` |
| 42 | `theorem` | [Metric.unitSphere.coe_pow](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-coe-pow--d8aa52b23622efaa4b0ff37f.md) | 254 | `result-track:d8aa52b23622efaa4b0ff37fcce15bb5dcc8cf6162a802e058d13cec57092687` |
| 43 | `def` | [unitSphereToUnits](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/unitspheretounits--6c7f55094cfb2220706dcdbd.md) | 262 | `declaration-track:6c7f55094cfb2220706dcdbdce055dcda646ad370f94de867aa8d83393a45d50` |
| 44 | `theorem` | [unitSphereToUnits_apply_coe](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/unitspheretounits-apply-coe--2a268612aac12ff8832ba1c2.md) | 267 | `result-track:2a268612aac12ff8832ba1c273337698c8398686372aeb3f1c614f544dd95691` |
| 45 | `theorem` | [unitSphereToUnits_injective](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/unitspheretounits-injective--b284208fb44b2ed26fa21f04.md) | 271 | `result-track:b284208fb44b2ed26fa21f04d53b2d3574a1a3415ca76049e2c6722c7f34fb8e` |
| 46 | `instance` | [Metric.unitSphere.instGroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-unitsphere-instgroup--e082a7d75690ae6a6bec871a.md) | 275 | `declaration-track:e082a7d75690ae6a6bec871a920416ce36ff411e8e533697cdf264d91c6e4a91` |
| 47 | `instance` | [Metric.sphere.instHasDistribNeg](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-sphere-insthasdistribneg--0080e870aa66c227143c2dcc.md) | 282 | `declaration-track:0080e870aa66c227143c2dcc8f0342a84e1de8c390dbc2886004f9a605751eac` |
| 48 | `instance` | [Metric.sphere.instContinuousMul](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-sphere-instcontinuousmul--1e75b4b7a0e93f2766ef4e1f.md) | 286 | `declaration-track:1e75b4b7a0e93f2766ef4e1f3279c9e63169fea0082ef6f105bc3b902dc49823` |
| 49 | `instance` | [Metric.sphere.instIsTopologicalGroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-sphere-instistopologicalgroup--3b460d8c1b309bf339eb503f.md) | 290 | `declaration-track:3b460d8c1b309bf339eb503ffa6cc1c0b5bda87338a3bdfe962a203bc40a4c80` |
| 50 | `instance` | [Metric.sphere.instCommGroup](../../../../../mathematics/Topology/MetricTopology/UnitBall/Variantd357180978e421024791dbf413127af26c3696864076caf9d64e6877dc2f24fa.lean/declarations/metric-sphere-instcommgroup--26da6ca3877ab3221fc21d62.md) | 294 | `declaration-track:26da6ca3877ab3221fc21d624bb64fc33756c5251fccaf8083ffb21bc4b81d1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
