# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d96bf9c9283d5b84177fcd19135b52765008cfb5",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d96bf9c9283d5b84177fcd19135b52765008cfb5`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Multilinear.Bounded` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.UniformConvergence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Section` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Hom.ContinuousEvalConst` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/touniformonfun--529baff9f8f7e4a2a4feba24.md) | 40 | `declaration-track:529baff9f8f7e4a2a4feba24ed221e3887fa759235dad1c842d2070081aab23a` |
| 2 | `lemma` | [range_toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/range-touniformonfun--b4899eb9a199bce1b4e65770.md) | 45 | `result-track:b4899eb9a199bce1b4e657707c4279e6b903f0bb8d2e624009a915c413cdb885` |
| 3 | `lemma` | [toUniformOnFun_toFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/touniformonfun-tofun--1e28d3187acbc49fe73a8eac.md) | 61 | `result-track:1e28d3187acbc49fe73a8eaca3c5e16b7ebebf041258c8da54cb825ca7897eac` |
| 4 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/insttopologicalspace--13c9fe128bdd80557c75f37c.md) | 65 | `declaration-track:13c9fe128bdd80557c75f37cb0d22bb5a41e913fc78ddb14184c988db171c44f` |
| 5 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instuniformspace--8602a703c1a0aec3212ba000.md) | 70 | `declaration-track:8602a703c1a0aec3212ba0002a7fac6ea25e0c492e76e0a10d98a736c3110a23` |
| 6 | `lemma` | [isUniformInducing_toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/isuniforminducing-touniformonfun--e541a767bce62f19a31cf8b0.md) | 79 | `result-track:e541a767bce62f19a31cf8b027fc5237e303bc81e1ee3b23221f70449a9e11e6` |
| 7 | `lemma` | [isUniformEmbedding_toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/isuniformembedding-touniformonfun--9988b9f3b742702c8ba76078.md) | 83 | `result-track:9988b9f3b742702c8ba760783970d15d5ac861571c539a65048a3bb67d880bcc` |
| 8 | `lemma` | [isEmbedding_toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/isembedding-touniformonfun--a958935d6928920bcb4c12b1.md) | 87 | `result-track:a958935d6928920bcb4c12b136926f6abc9223353e3e489cdd58dffc879f549e` |
| 9 | `theorem` | [uniformContinuous_coe_fun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/uniformcontinuous-coe-fun--b308515c2a6f67a06ae6d143.md) | 95 | `result-track:b308515c2a6f67a06ae6d143e7e1642e9a847fd2f67b5776a4317cfbb33bb478` |
| 10 | `theorem` | [uniformContinuous_eval_const](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/uniformcontinuous-eval-const--14e794afa2c71491306b3fe9.md) | 100 | `result-track:14e794afa2c71491306b3fe96eb9e4b5e8bf7ed1eb127b3a927b4e3fbc0bc9b5` |
| 11 | `instance` | [instIsUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instisuniformaddgroup--c6c9b191905dda1427e9c3cb.md) | 104 | `declaration-track:c6c9b191905dda1427e9c3cb0b20a096862e02fa27eadf94cfb962e075987383` |
| 12 | `instance` | [instUniformContinuousConstSMul](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instuniformcontinuousconstsmul--a4304a94ee87bf7ab4638168.md) | 109 | `declaration-track:a4304a94ee87bf7ab463816868465ea6810c399c48802106c85342e1a9a5aa38` |
| 13 | `theorem` | [isUniformInducing_postcomp](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/isuniforminducing-postcomp--0d9d14f4a1918c913fd39f3d.md) | 115 | `result-track:0d9d14f4a1918c913fd39f3dbb1d1e6597418ffb1f418527e3f8602626b1f895` |
| 14 | `theorem` | [completeSpace](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/completespace--59c0054312afbb2e41c276e0.md) | 128 | `result-track:59c0054312afbb2e41c276e0e52bfff0b761720a610a2f97d64ba24b8ee04d93` |
| 15 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instcompletespace--eb2311853852d71c7ecbda37.md) | 150 | `declaration-track:eb2311853852d71c7ecbda376cdc29227e6bc863076ab85ccaf0f335544e5da1` |
| 16 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/isuniformembedding-restrictscalars--5c8c1f8f88a98fbff2d0541d.md) | 162 | `result-track:5c8c1f8f88a98fbff2d0541da9b2672fd81d555e0c0d827acef957c9f6cbaa2e` |
| 17 | `theorem` | [uniformContinuous_restrictScalars](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/uniformcontinuous-restrictscalars--2d5ec1dd37ce274ac87892e4.md) | 171 | `result-track:2d5ec1dd37ce274ac87892e4095f3c3e026958f1daceddd0e895b7130b321edc` |
| 18 | `instance` | [instIsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instistopologicaladdgroup--59e93ea1e84a981255f2cdf9.md) | 182 | `declaration-track:59e93ea1e84a981255f2cdf99b82b2271420e6fbfbd7dda22d9fe362156f255e` |
| 19 | `instance` | [instContinuousConstSMul](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instcontinuousconstsmul--621671435139142afab61623.md) | 187 | `declaration-track:621671435139142afab6162340fb268fc36eb208095c29ae7e5f3d21d354a116` |
| 20 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instcontinuoussmul--a1a47d6c36290958660efce2.md) | 194 | `declaration-track:a1a47d6c36290958660efce2e5ebdd0df07e99ba5f6675289ebdd03411cf4946` |
| 21 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/hasbasis-nhds-zero-of-basis--0c039e50f96e97c6a4c0ca4d.md) | 203 | `result-track:0c039e50f96e97c6a4c0ca4d8c0153dce28bc1c39d047b9c8b1550dc5805bd9b` |
| 22 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/hasbasis-nhds-zero--fe89067e80e64885a04473ac.md) | 215 | `result-track:fe89067e80e64885a04473acde5d8a41eb5052d14fbf1e6753133c3f5e7aeb22` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instance--22ad2a946ba0f7b56ea933eb.md) | 223 | `declaration-track:22ad2a946ba0f7b56ea933eb36c6ddf153276f86604c6805da717a2a8cd8a12c` |
| 24 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instt2space--6b9625ceb08b0ace92478aed.md) | 229 | `declaration-track:6b9625ceb08b0ace92478aed3741b05aabd54dc682076d62a13f2da31cab6b1d` |
| 25 | `instance` | [instT3Space](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/instt3space--e4526a478ad8dbc39a26111e.md) | 232 | `declaration-track:e4526a478ad8dbc39a26111e836586722c51fd00044c97a7c33856264781126a` |
| 26 | `theorem` | [isEmbedding_restrictScalars](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/isembedding-restrictscalars--6c3dbb0ba034c1aa41134d1d.md) | 240 | `result-track:6c3dbb0ba034c1aa41134d1d696c9ef193860c472ef168cebf5a8dee2f4bf67f` |
| 27 | `theorem` | [continuous_restrictScalars](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/continuous-restrictscalars--7c434120dddfd52b14eb04aa.md) | 251 | `result-track:7c434120dddfd52b14eb04aa9a6894c9de75e6a9c6204482e0205e95ef09467d` |
| 28 | `def` | [restrictScalarsLinear](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/restrictscalarslinear--f804ee4336ccaf75d7fa1683.md) | 259 | `declaration-track:f804ee4336ccaf75d7fa16833b136b6cf88c38923ea8093fd7a2115b946a6f11` |
| 29 | `def` | [apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/apply--10e15f0c5cf08e40bae2c5ab.md) | 270 | `declaration-track:10e15f0c5cf08e40bae2c5ab351e0ca712989dfd49c30647494a70d859266504` |
| 30 | `lemma` | [apply_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/apply-apply--72eae6a215b2dc8412fce909.md) | 279 | `result-track:72eae6a215b2dc8412fce90989974e70b2b60558da09a1ffc266cfd218b951ad` |
| 31 | `theorem` | [hasSum_eval](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/hassum-eval--7e941292bc9409270f59bac4.md) | 282 | `result-track:7e941292bc9409270f59bac49a8e8c5b26640637272626f4f71b3cc371e2ea11` |
| 32 | `theorem` | [tsum_eval](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/declarations/tsum-eval--7cf8fa61eb82045b1a7d44dd.md) | 287 | `result-track:7cf8fa61eb82045b1a7d44dd7b5b9b393ab9c7597595a45c1fe812d2e8ac7b36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
