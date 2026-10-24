# Verification target: GRWTSK.Topology.MetricTopology.MetricSpace.Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b22f646d1821791679b7ea52cad2aff5e09b7af5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b22f646d1821791679b7ea52cad2aff5e09b7af5`.

Source path: `GRWTSK/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean.json)

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
| 1 | `class` | [IsConvexDist](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/isconvexdist--3a734e611f23c6a1c2daa87a.md) | 59 | `declaration-track:3a734e611f23c6a1c2daa87a6e1baf411375831132a58992def99b8cc2cac150` |
| 2 | `lemma` | [dist_iConvexComb_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-iconvexcomb-le--64a31510604ba895ebff1e11.md) | 69 | `result-track:64a31510604ba895ebff1e114b5cb68e10268035978f9b6685ef3bc2cd07463a` |
| 3 | `lemma` | [dist_iConvexComb_left_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-iconvexcomb-left-le--08bd37d0398552601eb574bf.md) | 76 | `result-track:08bd37d0398552601eb574bfbdb26d919383c6fc6d84ba66be01a8d8c0a81ae1` |
| 4 | `lemma` | [dist_iConvexComb_right_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-iconvexcomb-right-le--b1a956c0195c5e9f353dea92.md) | 80 | `result-track:b1a956c0195c5e9f353dea92c1cebd83fb749d82dea9f450826f3ef414837db7` |
| 5 | `lemma` | [dist_sConvexComb_left_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-sconvexcomb-left-le--fbb7a5399985ab2cd0685555.md) | 84 | `result-track:fbb7a5399985ab2cd0685555dfb23c0ca4debbade70d8273efd64996b2ec3778` |
| 6 | `lemma` | [dist_sConvexComb_right_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-sconvexcomb-right-le--b7faea0a3bda80b3cd1e8de0.md) | 88 | `result-track:b7faea0a3bda80b3cd1e8de04565f07738c66a7159b88f233a77392c4cea79dc` |
| 7 | `lemma` | [dist_convexCombPair_left](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-convexcombpair-left--8840854e58d98ee4e8363210.md) | 93 | `result-track:8840854e58d98ee4e836321061552edd09b62f6cf60c2b32e9af5a9871c2b768` |
| 8 | `lemma` | [dist_convexCombPair_right](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-convexcombpair-right--3562af7ef92c95835a0a7c03.md) | 108 | `result-track:3562af7ef92c95835a0a7c03f1521849b4f4b53aad08bba77e968bb60165660a` |
| 9 | `lemma` | [dist_left_convexCombPair](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-left-convexcombpair--ebea8f2512ec309db863b39c.md) | 114 | `result-track:ebea8f2512ec309db863b39ccba31ce107b9e5f757d5d8b4062880e684f6125c` |
| 10 | `lemma` | [dist_right_convexCombPair](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-right-convexcombpair--2ca98118e4628ad77c9368e2.md) | 120 | `result-track:2ca98118e4628ad77c9368e2e3cd2335cf979d86dfccd1872602af797ede5325` |
| 11 | `lemma` | [dist_convexCombPair_convexCombPair](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-convexcombpair-convexcombpair--4c853c6cf3a691ffa535e055.md) | 129 | `result-track:4c853c6cf3a691ffa535e0555f00ab50d7de20caf50c274b2112193f6208ab23` |
| 12 | `lemma` | [dist_convexCombPair_convexCombPair_le](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/dist-convexcombpair-convexcombpair-le--daa1cb6d0e3ef2668122b075.md) | 165 | `result-track:daa1cb6d0e3ef2668122b07561c6ac0c713b5148b138fe0aec810581b2a032b2` |
| 13 | `lemma` | [continuous_convexCombPair](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/continuous-convexcombpair--8f161bf6964ebc45229029b7.md) | 176 | `result-track:8f161bf6964ebc45229029b7241c3c3aeb5774f7aace73287ccb22452ffa39ee` |
| 14 | `lemma` | [continuous_convexCombPair_of_isBounded](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/continuous-convexcombpair-of-isbounded--e0d5f09dd44775d446aae91c.md) | 198 | `result-track:e0d5f09dd44775d446aae91ced42d5bf6bd106848407b1eb0a6d31b2e54cdc9d` |
| 15 | `lemma` | [continuous_convexCombPair'](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/continuous-convexcombpair--7b87828c7b5258855e0f4254.md) | 249 | `result-track:7b87828c7b5258855e0f42547615e71e69ad5c9c97607545f683b3899a696b50` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/instance--59ae563d8eea4f6aa7333083.md) | 260 | `declaration-track:59ae563d8eea4f6aa7333083e1fe053ec91dd6f7bcf71596310659706871b061` |
| 17 | `instance` | [IsConvexDist.subtype](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/isconvexdist-subtype--88b5cf2de9e2b77b9c3fb7fa.md) | 274 | `declaration-track:88b5cf2de9e2b77b9c3fb7fa5d10e6ea945c9454c8e082236f883eef7f66e2a0` |
| 18 | `instance` | [IsConvexDist.submodule](../../../../../mathematics/Topology/MetricTopology/MetricSpace/Variant4ff82e257969f74a654b74b0d592ff3f48f07bf9c2a3b21a5075a6a6485b8d1d.lean/declarations/isconvexdist-submodule--0d7f45d413f82b494e4ea5da.md) | 282 | `declaration-track:0d7f45d413f82b494e4ea5da7e92c7ec7b724391da7acf9e2b4a9bc99042a707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
