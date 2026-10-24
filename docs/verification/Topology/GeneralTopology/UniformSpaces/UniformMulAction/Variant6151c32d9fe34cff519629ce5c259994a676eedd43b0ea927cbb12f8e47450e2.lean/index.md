# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.UniformMulAction.Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5751507f29d26a881520a915b60ed2d310659f8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5751507f29d26a881520a915b60ed2d310659f8`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.IsUniformGroup.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [UniformContinuousConstVAdd](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuousconstvadd--b83d79d3d18140b727a085be.md) | 42 | `declaration-track:b83d79d3d18140b727a085beeddd8e2c0b4d7880350e305592216317dd9b2a23` |
| 2 | `class` | [UniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuousconstsmul--fd4dc1b1012974f7eaae5f7e.md) | 48 | `declaration-track:fd4dc1b1012974f7eaae5f7ef3aeeb2a593667167bd8b58529e76b0c062f3781` |
| 3 | `instance` | [AddMonoid.uniformContinuousConstSMul_nat](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/addmonoid-uniformcontinuousconstsmul-nat--7c83f111c4358b28b2d9b823.md) | 55 | `declaration-track:7c83f111c4358b28b2d9b8237c55f758ed6346929cac3a2dcbb1b3d7ca4f8eae` |
| 4 | `instance` | [AddGroup.uniformContinuousConstSMul_int](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/addgroup-uniformcontinuousconstsmul-int--cc03cebd91a852c40cfbe339.md) | 59 | `declaration-track:cc03cebd91a852c40cfbe339ad7cb7f9b6767cbb508ce5fe32e302eb7115ac93` |
| 5 | `theorem` | [uniformContinuousConstSMul_of_continuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuousconstsmul-of-continuousconstsmul--f931f9aaf145e71aa3493095.md) | 66 | `result-track:f931f9aaf145e71aa3493095cde33c65504223a047af24dca6a3725774fb538d` |
| 6 | `instance` | [Ring.uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/ring-uniformcontinuousconstsmul--d1fca89026e80eb7d45b1660.md) | 74 | `declaration-track:d1fca89026e80eb7d45b1660045c62b1f39ae52f485cb66adad63eb1becdfe7c` |
| 7 | `instance` | [Ring.uniformContinuousConstSMul_op](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/ring-uniformcontinuousconstsmul-op--8735384647f8ff53e3afd085.md) | 79 | `declaration-track:8735384647f8ff53e3afd085bf2098f7690a5964020992aad3671798cf6e2a3c` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/instance--6139a86b0621b003917896e4.md) | 88 | `declaration-track:6139a86b0621b003917896e47b3e4b8973ac274a451b259050437f5365db6ca5` |
| 9 | `theorem` | [UniformContinuous.const_smul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuous-const-smul--b4df39c9a3fce2e2261d9a4e.md) | 95 | `result-track:b4df39c9a3fce2e2261d9a4e1bc39fb1dcace0de4c54b51daa8518421d00b094` |
| 10 | `lemma` | [IsUniformInducing.uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/isuniforminducing-uniformcontinuousconstsmul--6b56e8ebc56f20214c8cba53.md) | 100 | `result-track:6b56e8ebc56f20214c8cba533e4a8fe9202c67ed38319a07aba51ef5e023a346` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/instance--54d35877d8e0f4db2ebeb9b5.md) | 111 | `declaration-track:54d35877d8e0f4db2ebeb9b5383631db7a78afc38cb45463578b1a95de30bda2` |
| 12 | `instance` | [MulOpposite.uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/mulopposite-uniformcontinuousconstsmul--8b906957c58615bbb9ac4ef7.md) | 116 | `declaration-track:8b906957c58615bbb9ac4ef7c43fdf369a6abc17202b854cff13390bbec635f0` |
| 13 | `instance` | [IsUniformGroup.to_uniformContinuousConstSMul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/isuniformgroup-to-uniformcontinuousconstsmul--11f51a41024b2337dfb48d51.md) | 124 | `declaration-track:11f51a41024b2337dfb48d511cb42c8dca207998c13a3bc9ef308cea549eaccb` |
| 14 | `theorem` | [UniformContinuous.const_mul'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuous-const-mul--6c0a93cb6edc248b299c701b.md) | 132 | `result-track:6c0a93cb6edc248b299c701b13a682233f052f2bdbaca3429e845894f02ff3e9` |
| 15 | `theorem` | [UniformContinuous.mul_const'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuous-mul-const--18df41088168554947062a20.md) | 136 | `result-track:18df41088168554947062a204b33ac9746aaecda6ad923698595033d64a63c82` |
| 16 | `theorem` | [uniformContinuous_mul_left'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuous-mul-left--3535b8bd540b3f41798b492a.md) | 140 | `result-track:3535b8bd540b3f41798b492aba32c68c96394a423e15e8f6ee82d02709691da3` |
| 17 | `theorem` | [uniformContinuous_mul_right'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuous-mul-right--9d37f3c6aa350b65fe29d41a.md) | 144 | `result-track:9d37f3c6aa350b65fe29d41a66fb95cf4ac19f3e65eabc455b151836f134abc8` |
| 18 | `theorem` | [UniformContinuous.div_const'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuous-div-const--87c74a664ee5c8d6ae0853ef.md) | 148 | `result-track:87c74a664ee5c8d6ae0853effaa3938376db207ba074b97d1fd59c961b400543` |
| 19 | `theorem` | [uniformContinuous_div_const'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/uniformcontinuous-div-const--891f58a2c581f57adcce491b.md) | 154 | `result-track:891f58a2c581f57adcce491b186a2d3e59847cd65f19e1bc668bfb5d9790b056` |
| 20 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/instance--b46af83d54ddf669e15f7566.md) | 170 | `declaration-track:b46af83d54ddf669e15f7566a6a7009b0e227f4ffea44c64fc8f1538c7f02051` |
| 21 | `theorem` | [smul_def](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/smul-def--f3fde0941491d53d95f3abbe.md) | 174 | `result-track:f3fde0941491d53d95f3abbe2004bcbc842233bf3ba199452f86fca882e25845` |
| 22 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/instance--6514b0bab273192ca9ffdfcf.md) | 178 | `declaration-track:6514b0bab273192ca9ffdfcfb863a149a9753cd91e2475d7109a350c1af347b1` |
| 23 | `instance` | [instIsScalarTower](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/instisscalartower--fa774004aa2cf336e42f807e.md) | 182 | `declaration-track:fa774004aa2cf336e42f807e9eeb903b5a26d54a0dd39cada780c9443d5e82e9` |
| 24 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/instance--59dcd9f448664559fb913ed8.md) | 191 | `declaration-track:59dcd9f448664559fb913ed8173bf8445a0f28377e2cda84e156dd68e86e4d72` |
| 25 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/instance--1fffa02b282fb046d88a0449.md) | 201 | `declaration-track:1fffa02b282fb046d88a044937039198a3864fffd031dbeaf45cd934924bf968` |
| 26 | `theorem` | [coe_smul](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/coe-smul--0006f840d23ff0abd4d22d05.md) | 208 | `result-track:0006f840d23ff0abd4d22d05dd7557b50985b64d4f0558d177804144d3ec84e1` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/UniformMulAction/Variant6151c32d9fe34cff519629ce5c259994a676eedd43b0ea927cbb12f8e47450e2.lean/declarations/instance--78dc983ba9aabec8d50c9b98.md) | 214 | `declaration-track:78dc983ba9aabec8d50c9b98cc67f1d7bfdf66aad381f0f193bfd53ff434b876` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
