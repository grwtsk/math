# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformMulAction.Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac397a06074e0502e7ee9fd38abf61cd7587e2e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac397a06074e0502e7ee9fd38abf61cd7587e2e`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniformContinuousConstVAdd](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuousconstvadd--47392627d2aa9f493ba9a6cb.md) | 40 | `declaration-track:47392627d2aa9f493ba9a6cbcfe40c2ac0418dbae6c0dc6817b8786befe31e54` |
| 2 | `class` | [UniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuousconstsmul--a5339f6e4a4140a604b39efd.md) | 46 | `declaration-track:a5339f6e4a4140a604b39efdfdcb1d581d375e4123a722128e6213decda023bc` |
| 3 | `instance` | [AddMonoid.uniformContinuousConstSMul_nat](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/addmonoid-uniformcontinuousconstsmul-nat--8a6d50fc5eb6d31ff8dc1e55.md) | 53 | `declaration-track:8a6d50fc5eb6d31ff8dc1e5560ec0833c5eef2fd39fc7c2492ccfb49743e015a` |
| 4 | `instance` | [AddGroup.uniformContinuousConstSMul_int](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/addgroup-uniformcontinuousconstsmul-int--95c74e6473e918da6ca77f7b.md) | 57 | `declaration-track:95c74e6473e918da6ca77f7be2894b897b6fc8e3576f72647122e6d97a6e849e` |
| 5 | `theorem` | [uniformContinuousConstSMul_of_continuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuousconstsmul-of-continuousconstsmul--b2a43feaf7c2ca7ba6787c27.md) | 64 | `result-track:b2a43feaf7c2ca7ba6787c273563c2bb4e0115d6e8a7872387d574a618bbfc27` |
| 6 | `instance` | [Ring.uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/ring-uniformcontinuousconstsmul--5bcae0c31943ae49268a2982.md) | 72 | `declaration-track:5bcae0c31943ae49268a29829afd35de902e62e80ce68d6527dc156f26025dd4` |
| 7 | `instance` | [Ring.uniformContinuousConstSMul_op](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/ring-uniformcontinuousconstsmul-op--9b175080a0d9ea52fcf05491.md) | 77 | `declaration-track:9b175080a0d9ea52fcf054913948ac34d74ec85fc025adaec7a65c86e360b410` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/instance--836e6201a492dfc03594a962.md) | 86 | `declaration-track:836e6201a492dfc03594a962c16a91c5cd5263015daa1800acf006dc1afd8ea7` |
| 9 | `theorem` | [UniformContinuous.const_smul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuous-const-smul--fb0132cfcd6b9823cc9699cf.md) | 93 | `result-track:fb0132cfcd6b9823cc9699cfa2d5453ac065419deab44a36adc36baf1da81526` |
| 10 | `lemma` | [IsUniformInducing.uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/isuniforminducing-uniformcontinuousconstsmul--af86ccbd6a9218a5c3bb3162.md) | 98 | `result-track:af86ccbd6a9218a5c3bb3162342fde59e3b9e5e76b59bce2e003882aa6345d7e` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/instance--eddbdf9ca4dfc2bec10d9d63.md) | 109 | `declaration-track:eddbdf9ca4dfc2bec10d9d637d6f832aa2672fa0708cfff4be5601e51c41e357` |
| 12 | `instance` | [MulOpposite.uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/mulopposite-uniformcontinuousconstsmul--3a14d503703fbfdfaa785aa1.md) | 114 | `declaration-track:3a14d503703fbfdfaa785aa1b2d40a271a92987cd10f60c03dae2082d50ceac3` |
| 13 | `instance` | [IsUniformGroup.instUniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/isuniformgroup-instuniformcontinuousconstsmul--bab260a91d424b48fef772a7.md) | 122 | `declaration-track:bab260a91d424b48fef772a7032e406b019d18549710d1906a82cef0984520ac` |
| 14 | `theorem` | [UniformContinuous.const_mul'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuous-const-mul--f123f0c43cd734dd721115b7.md) | 131 | `result-track:f123f0c43cd734dd721115b71700ee2b28661bc3a01b90426662fe9fbfc12d47` |
| 15 | `theorem` | [UniformContinuous.mul_const'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuous-mul-const--8a6bd43ff2d67e002df46ea4.md) | 136 | `result-track:8a6bd43ff2d67e002df46ea47863f53197941633beb616e5c95ab064bfeb41c5` |
| 16 | `theorem` | [uniformContinuous_mul_left'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuous-mul-left--a76a1b1aa15f7734e3b75677.md) | 140 | `result-track:a76a1b1aa15f7734e3b756776ef03cc09e4ba5e57166c906debac1f022ca5825` |
| 17 | `theorem` | [uniformContinuous_mul_right'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuous-mul-right--664840f17fbcbfbded1ac24e.md) | 144 | `result-track:664840f17fbcbfbded1ac24eb5705fae41be493a551e9a7725aaabeb3a7d8a52` |
| 18 | `theorem` | [UniformContinuous.div_const'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuous-div-const--8f1510f32c4813bc61143832.md) | 149 | `result-track:8f1510f32c4813bc61143832eff6bddfc73f2f1bdbe474263c501457f93bb20f` |
| 19 | `theorem` | [uniformContinuous_div_const'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/uniformcontinuous-div-const--c8c24de763f3a7e63ccf93b4.md) | 155 | `result-track:c8c24de763f3a7e63ccf93b4f069b57ec51f89a19d5478936e60effce3684aac` |
| 20 | `theorem` | [IsUnit.smul_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/isunit-smul-uniformity--a1ea00de4461b34e194291b9.md) | 169 | `result-track:a1ea00de4461b34e194291b9b04a519d1ea98e03a76b8ea1d24d04cbe07ac9b7` |
| 21 | `theorem` | [smul_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/smul-uniformity--dec814afd0e1a2d83579ee36.md) | 177 | `result-track:dec814afd0e1a2d83579ee36793081e40f6d2a6ab65db0f932cdf9cf5cf8d081` |
| 22 | `theorem` | [smul_uniformity₀](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/smul-uniformity--a5cdc835603333511bc286c1.md) | 181 | `result-track:a5cdc835603333511bc286c169e33892378d2730f864571812e1c77395a05800` |
| 23 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/instance--c7ac1af0bf711ffca2876ef2.md) | 196 | `declaration-track:c7ac1af0bf711ffca2876ef201a349568e0f8ce1e3a3b73a07bb5ecf5f009233` |
| 24 | `theorem` | [smul_def](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/smul-def--e2c6c19713d774021d648c60.md) | 200 | `result-track:e2c6c19713d774021d648c60d316e4c4e32efe01bc43c36ba2c05ad34cf1b6c2` |
| 25 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/instance--abd88f3993c1023096c9b6c0.md) | 204 | `declaration-track:abd88f3993c1023096c9b6c0ed0887e7fcbcc1c62f3017b8db7f0ea02b1cc72a` |
| 26 | `instance` | [instIsScalarTower](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/instisscalartower--afbad34c3e79af44820b35ff.md) | 208 | `declaration-track:afbad34c3e79af44820b35ff72fb77fd826cfaec4590027413f0a9ee8ca7b054` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/instance--633a49f65fef3d63297fa478.md) | 217 | `declaration-track:633a49f65fef3d63297fa478f8a8e839ef2340390cfc290cac1bce545860083d` |
| 28 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/instance--79a440b5d351fbc08e7370cd.md) | 227 | `declaration-track:79a440b5d351fbc08e7370cd3f436ac019bd798aaef09bf3aa50fd50ccc51f40` |
| 29 | `theorem` | [coe_smul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/coe-smul--5423109eabae10b6c302c6eb.md) | 234 | `result-track:5423109eabae10b6c302c6eb47e9731ad836ca13c76bf4f3110f6a6ca2065701` |
| 30 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant3c09f8ac1a1a330b742c7bca629c0db031cc737d3ddb5876aae0b12a7ecee87c.lean/declarations/instance--b19cec92add863d89c02a246.md) | 240 | `declaration-track:b19cec92add863d89c02a246b82f0d99adab38f906d82cc1a32a72604d8a57c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
