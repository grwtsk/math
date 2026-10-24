# Verification target: GRWTSK.Topology.MetricTopology.MetricSpace.Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "765fba550482faddd0c55ca7289277e253e7798c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `765fba550482faddd0c55ca7289277e253e7798c`.

Source path: `GRWTSK/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean.json)

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
| 1 | `class` | [IsConvexDist](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/isconvexdist--e83cdf41416485c5887f95ed.md) | 67 | `declaration-track:e83cdf41416485c5887f95ed9589b84c447a68e7a33b0eb6769b58c550e4b2dd` |
| 2 | `lemma` | [dist_iConvexComb_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-iconvexcomb-le--c399166216d476c03c7da459.md) | 77 | `result-track:c399166216d476c03c7da459d23ee00f6052643eec89a05853e1131c05cafeec` |
| 3 | `lemma` | [dist_iConvexComb_left_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-iconvexcomb-left-le--0b93adfe28e2a8eeaf98acec.md) | 84 | `result-track:0b93adfe28e2a8eeaf98acec71df01f2328a865bafdd7392a21ce7b485ff38f5` |
| 4 | `lemma` | [dist_iConvexComb_right_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-iconvexcomb-right-le--c3efb16317a0a75c9a648243.md) | 88 | `result-track:c3efb16317a0a75c9a6482432fbfac3c27893028b3eec81d7650021a31a94b34` |
| 5 | `lemma` | [dist_sConvexComb_left_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-sconvexcomb-left-le--fa6e305b5a7cc132bfb7e713.md) | 92 | `result-track:fa6e305b5a7cc132bfb7e7132e0f8f54aacfadd29b6693f5282c2f25f384d4ad` |
| 6 | `lemma` | [dist_sConvexComb_right_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-sconvexcomb-right-le--7fcc4df6142bbdc53e114f9f.md) | 96 | `result-track:7fcc4df6142bbdc53e114f9f5216fde555af71324b9474ab9ba2d70b0f2fa91f` |
| 7 | `lemma` | [dist_convexCombPair_left](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-convexcombpair-left--22af4223476f94b470be2de9.md) | 101 | `result-track:22af4223476f94b470be2de9936a973a39cb337e69e78ccf8160953c426e98fc` |
| 8 | `lemma` | [dist_convexCombPair_right](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-convexcombpair-right--26805d582e18f2f5c8e949ae.md) | 116 | `result-track:26805d582e18f2f5c8e949ae6a720148b933b27ec15a1eb47decc668f34a9542` |
| 9 | `lemma` | [dist_left_convexCombPair](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-left-convexcombpair--62ae23723032a89463d027b8.md) | 122 | `result-track:62ae23723032a89463d027b8630d283dc47433c8d20cfa642647c9bbb292b4bc` |
| 10 | `lemma` | [dist_right_convexCombPair](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-right-convexcombpair--cfb753a60b2afecfed217083.md) | 128 | `result-track:cfb753a60b2afecfed2170838d6b15bc1debd510afe96b26d5c97f4adc97151c` |
| 11 | `lemma` | [dist_convexCombPair_convexCombPair](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-convexcombpair-convexcombpair--25c3a76ae44133bf8bc6d3bf.md) | 137 | `result-track:25c3a76ae44133bf8bc6d3bfcd1c36cf326b415cde49de9619e9a5642484a506` |
| 12 | `lemma` | [dist_convexCombPair_convexCombPair_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/dist-convexcombpair-convexcombpair-le--19c746d8c41ce26ecbd9d24d.md) | 173 | `result-track:19c746d8c41ce26ecbd9d24dae089341e01236f6ea83c6b413a9045188a5b89f` |
| 13 | `lemma` | [continuous_convexCombPair](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/continuous-convexcombpair--aec35a75ef77d746810da142.md) | 184 | `result-track:aec35a75ef77d746810da142b0f7fce56985388d61eaec1b6e85f70b74682eb6` |
| 14 | `lemma` | [continuous_convexCombPair_of_isBounded](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/continuous-convexcombpair-of-isbounded--2d492be4ab619f68e61e51b0.md) | 206 | `result-track:2d492be4ab619f68e61e51b03510133d56431a350865c8ff0c7705564857cf93` |
| 15 | `lemma` | [continuous_convexCombPair'](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/continuous-convexcombpair--67fb79fb1d45f97d5b07aa5d.md) | 257 | `result-track:67fb79fb1d45f97d5b07aa5d9f13f2093d49e9c1edc2357199d65664f0459360` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/instance--af4a6d3049ff035f5c5f5a13.md) | 268 | `declaration-track:af4a6d3049ff035f5c5f5a13f5ce4a2bc8ee3ffb43b09bb1e645e7fedab42b20` |
| 17 | `instance` | [IsConvexDist.subtype](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/isconvexdist-subtype--c124f4736212da75a4cf1418.md) | 282 | `declaration-track:c124f4736212da75a4cf1418d0a67b77cd22bb1ec80661825412cbabad95b716` |
| 18 | `instance` | [IsConvexDist.submodule](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variantacb1981d6b347a65ebee5ef0aa9848aac1ec59657831727480082fd3450d2693.lean/declarations/isconvexdist-submodule--3f0e3e7bc1304f40c916a4b1.md) | 290 | `declaration-track:3f0e3e7bc1304f40c916a4b13ccc22fceaa7656bc308b6b9056d6e6e0cad581d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
