# Verification target: GRWTSK.Topology.GeneralTopology.Piecewise.Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fcb9e290ca73882fdb5cde61853318fc2106ac7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fcb9e290ca73882fdb5cde61853318fc2106ac7`.

Source path: `GRWTSK/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousOn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuousWithinAt_update_same](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuouswithinat-update-same--a165072cdd47313e45350d1f.md) | 19 | `result-track:a165072cdd47313e45350d1f8adbf36784d24268ac96596787a009f5da8cd677` |
| 2 | `theorem` | [continuousAt_update_same](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuousat-update-same--2fb6040f692d21ef59e56466.md) | 29 | `result-track:2fb6040f692d21ef59e5646629dbf80d4b6fbb2ae42c0755b646d4fbab15b730` |
| 3 | `theorem` | [ContinuousOn.if'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuouson-if--bae0e6f3656cfec457d81ad3.md) | 33 | `result-track:bae0e6f3656cfec457d81ad3e04aebe44dd6d45958cdd73989e8189cf18428ad` |
| 4 | `theorem` | [ContinuousOn.piecewise'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuouson-piecewise--16c2f58ab843d282580e1907.md) | 59 | `result-track:16c2f58ab843d282580e19077f26d7b20c802264ce9ef17b15a8dc16467dc5f1` |
| 5 | `theorem` | [ContinuousOn.if](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuouson-if--9fd1ba6dcdc4bd5f75f07d83.md) | 66 | `result-track:9fd1ba6dcdc4bd5f75f07d83d05c5863fe434511e8a22ea0b4eeaf657623fdb7` |
| 6 | `theorem` | [ContinuousOn.piecewise](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuouson-piecewise--a535170e6baf73ec5b99e4bc.md) | 85 | `result-track:a535170e6baf73ec5b99e4bc2e725135415b6b2f68c6cf5779b838ec1539c091` |
| 7 | `theorem` | [continuous_if'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuous-if--4a443a276fc3fe750ca541ea.md) | 90 | `result-track:4a443a276fc3fe750ca541ea35bd2dd3db1c1d8a0098c285a9062fb31c285709` |
| 8 | `theorem` | [continuous_if](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuous-if--f36fe6a9665631175fd3374c.md) | 98 | `result-track:f36fe6a9665631175fd3374c2e5a964fa1e0eda390e8bcd19639a39536b3bee3` |
| 9 | `theorem` | [Continuous.if](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuous-if--fb86f8bc6d3befae12c74dd3.md) | 105 | `result-track:fb86f8bc6d3befae12c74dd3252b1c6e46c42fcc94aa163965d6f1a590a57cf9` |
| 10 | `theorem` | [continuous_if_const](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuous-if-const--91a10c0dc8c3d3dda63691e4.md) | 110 | `result-track:91a10c0dc8c3d3dda63691e48be56a2681dd6f046b4a2dde1591bc8431549de4` |
| 11 | `theorem` | [Continuous.if_const](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuous-if-const--5c347c4d2930c4e1caf7a473.md) | 115 | `result-track:5c347c4d2930c4e1caf7a473d7d1294b62e31ec7fec5b2db20e3536154b5ac48` |
| 12 | `theorem` | [continuous_piecewise](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuous-piecewise--152a513ba69c72574d614ca6.md) | 119 | `result-track:152a513ba69c72574d614ca6df5727f6adbcf14803450c34baa81d1cae4f2f31` |
| 13 | `theorem` | [Continuous.piecewise](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuous-piecewise--a3d1cd8e2b3aa0a9c16a8e09.md) | 124 | `result-track:a3d1cd8e2b3aa0a9c16a8e0926f0b0eb7e7cc762370ef2a7a1e1f68316e04d17` |
| 14 | `theorem` | [IsOpen.ite'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/isopen-ite--4535c6196e5420fb5f7c8f23.md) | 129 | `result-track:4535c6196e5420fb5f7c8f2301092bc652d6d52c6eccb7309f8bb79e374366c2` |
| 15 | `theorem` | [IsOpen.ite](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/isopen-ite--5f237a08a1f92a7085fee625.md) | 138 | `result-track:5f237a08a1f92a7085fee625aba9e669d9ef54587d3ef781913d6aa735258585` |
| 16 | `theorem` | [ite_inter_closure_eq_of_inter_frontier_eq](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/ite-inter-closure-eq-of-inter-frontier-eq--809d5ac0e262ed141d7a6588.md) | 142 | `result-track:809d5ac0e262ed141d7a658830fc337de9e8d726e6025df873e3f06b8db0ca67` |
| 17 | `theorem` | [ite_inter_closure_compl_eq_of_inter_frontier_eq](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/ite-inter-closure-compl-eq-of-inter-frontier-eq--d681c3c42d5168a244218a6d.md) | 147 | `result-track:d681c3c42d5168a244218a6d4037d1ddcd57d7d94b08677129a25209dc5c10b6` |
| 18 | `theorem` | [continuousOn_piecewise_ite'](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuouson-piecewise-ite--28e58d55acbe7808f8dfe49b.md) | 152 | `result-track:28e58d55acbe7808f8dfe49b78518c587c13418bb4c8bc2c71dc46c030565eb2` |
| 19 | `theorem` | [continuousOn_piecewise_ite](../../../../../mathematics/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/declarations/continuouson-piecewise-ite--9bd0cbb3a9700b1a1be2015e.md) | 161 | `result-track:9bd0cbb3a9700b1a1be2015e68f6ce140c8265ec234339c4b845ed0dfff6e7e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
