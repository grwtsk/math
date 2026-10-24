# Verification target: GRWTSK.Topology.GeneralTopology.TopCatAdjunction.Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fff0143b0c24fa20851b56757f4ce90564d2750",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fff0143b0c24fa20851b56757f4ce90564d2750`.

Source path: `GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CondensedSet.coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/condensedset-coinducingcoprod--e585a95ed5f5b8f139f092e6.md) | 32 | `declaration-track:e585a95ed5f5b8f139f092e600c235c3ae455ec00014535746cb3b6aa09dd65c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/instance--acb1f9309131531a39e94871.md) | 41 | `declaration-track:acb1f9309131531a39e94871742df8ba58749dab02394fe7aa0442ad1494c6f7` |
| 3 | `abbrev` | [CondensedSet.toTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/condensedset-totopcat--4c6ce7d2e2afae968eb6f6dd.md) | 45 | `declaration-track:4c6ce7d2e2afae968eb6f6dd66e276246d7778536150ea96e217564b79143a1a` |
| 4 | `lemma` | [continuous_coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/continuous-coinducingcoprod--9a8b230f7cb205e2cece3b6a.md) | 51 | `result-track:9a8b230f7cb205e2cece3b6aef3f735382748eb1d0e6e1c9b5b3c36c22b3e366` |
| 5 | `def` | [toTopCatMap](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/totopcatmap--76dbe3d6a9ff623263fc7df6.md) | 62 | `declaration-track:76dbe3d6a9ff623263fc7df685f52e7c540716f3da3b4ca1eb6b3c04d834c07a` |
| 6 | `def` | [condensedSetToTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/condensedsettotopcat--5bfa3ccb4af68ee608b78ea1.md) | 79 | `declaration-track:5bfa3ccb4af68ee608b78ea116c410a4540835646ea14a8d6b0b1605f9f17908` |
| 7 | `def` | [topCatAdjunctionCounit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/topcatadjunctioncounit--b9765348732e7dd19298788a.md) | 88 | `declaration-track:b9765348732e7dd19298788a17639c90985ee29491cf28f9dd46d57db85524b5` |
| 8 | `def` | [topCatAdjunctionCounitEquiv](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/topcatadjunctioncounitequiv--22524299cab8fbcebeff492a.md) | 98 | `declaration-track:22524299cab8fbcebeff492aed31b9cd0151e9053573672a92be74e2cf82ae41` |
| 9 | `lemma` | [topCatAdjunctionCounit_bijective](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/topcatadjunctioncounit-bijective--45662ac0793c9ced9360d813.md) | 103 | `result-track:45662ac0793c9ced9360d813327ae63e493c5f264ce7ccbeea9ead18243f3653` |
| 10 | `def` | [topCatAdjunctionUnit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/topcatadjunctionunit--d2d5e079fc819cde973a7917.md) | 110 | `declaration-track:d2d5e079fc819cde973a7917b1e43ad64ae49bad9f285b99432853a57ea55222` |
| 11 | `def` | [topCatAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/topcatadjunction--4056d4422e9f3df2f7a15fe3.md) | 129 | `declaration-track:4056d4422e9f3df2f7a15fe3601f419d7393a43eeecca25c156605289a60da08` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/instance--007da2119237c024d993c841.md) | 137 | `declaration-track:007da2119237c024d993c841a0344517fc92a61bbc9e7b46e020ea99d5453a81` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/instance--1629b02e5ed1a96395ad9229.md) | 141 | `declaration-track:1629b02e5ed1a96395ad922906e331bef985f558897206863a4243930ad57718` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/instance--83b0e97ec2afdb8920310b10.md) | 145 | `declaration-track:83b0e97ec2afdb8920310b10cd409fd75d3eb56d7cddc988457c38239d079d1e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/instance--e1faf52db4b9e40daf27035d.md) | 151 | `declaration-track:e1faf52db4b9e40daf27035d1b9fe2361480a0877c9245cab7b7010aafc02eb6` |
| 16 | `def` | [condensedSetToCompactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/condensedsettocompactlygenerated--40e703ddc7b6d679fb4af9a8.md) | 156 | `declaration-track:40e703ddc7b6d679fb4af9a8695360663d0653847f3bf96441f3995cfc1fa3a8` |
| 17 | `def` | [compactlyGeneratedToCondensedSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/compactlygeneratedtocondensedset--9b397171ffdf0fcf92bd19e3.md) | 163 | `declaration-track:9b397171ffdf0fcf92bd19e3a151ceedff98a75afcdcd8524f477a9d63305802` |
| 18 | `def` | [compactlyGeneratedAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/compactlygeneratedadjunction--363d5c5591be0f26eb2a3383.md) | 172 | `declaration-track:363d5c5591be0f26eb2a33833fed806c4e7fcb8cb7f93f17f240818dbb059c95` |
| 19 | `def` | [compactlyGeneratedAdjunctionCounitHomeo](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/compactlygeneratedadjunctioncounithomeo--125d75fe1252346c907ef290.md) | 182 | `declaration-track:125d75fe1252346c907ef290a0be37cfdbc9c3a80d5d1a085446e9747d186847` |
| 20 | `def` | [compactlyGeneratedAdjunctionCounitIso](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/compactlygeneratedadjunctioncounitiso--bc15e4b3d18cba7b22862667.md) | 194 | `declaration-track:bc15e4b3d18cba7b228626678cc86f6fb42e5c7313e9f7cc99cb4c77e22d188a` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/instance--d470188ba4017325b09a4644.md) | 198 | `declaration-track:d470188ba4017325b09a464422149cf12853dce154c5f26c3a5943d13ca3e35f` |
| 22 | `def` | [fullyFaithfulCompactlyGeneratedToCondensedSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variantda7b9fd371a7fa54b3a5700d09cb770aee3a8d5f4d54cf67550e136ea67b8c7e.lean/declarations/fullyfaithfulcompactlygeneratedtocondensedset--a4b3a4382b639d3d2e9301ee.md) | 207 | `declaration-track:a4b3a4382b639d3d2e9301ee5e9b4c98c5e6c05f8304e0b5b56588285fa095fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
