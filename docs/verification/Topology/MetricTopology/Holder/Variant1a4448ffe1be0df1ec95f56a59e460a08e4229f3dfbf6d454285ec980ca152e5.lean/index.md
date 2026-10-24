# Verification target: GRWTSK.Topology.MetricTopology.Holder.Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6dd43c9b7f42d1b33b0fa0f36d15e57ffa2a888d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6dd43c9b7f42d1b33b0fa0f36d15e57ffa2a888d`.

Source path: `GRWTSK/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HolderWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/holderwith--e5c97dcc6077e5fe5c075659.md) | 50 | `declaration-track:e5c97dcc6077e5fe5c0756592b4517113f89c01f4dd617c8bf8cd29be951220e` |
| 2 | `def` | [HolderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/holderonwith--1c8fb9fd4639db568bad0696.md) | 57 | `declaration-track:1c8fb9fd4639db568bad06968c3f16ec7b8210ac8900330d0b8dae2795f1d273` |
| 3 | `theorem` | [holderOnWith_empty](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/holderonwith-empty--54600bad67a1704a4cead0e1.md) | 62 | `result-track:54600bad67a1704a4cead0e15690b91843a9daffeec9714de0bc5c448e980b02` |
| 4 | `theorem` | [holderOnWith_singleton](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/holderonwith-singleton--5e59c81f46bb4bbd37db66fd.md) | 66 | `result-track:5e59c81f46bb4bbd37db66fdf5bfad362b80838419290b68a4365ee6a76a8058` |
| 5 | `theorem` | [Set.Subsingleton.holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/set-subsingleton-holderonwith--38a4243298facc82f67a5949.md) | 72 | `result-track:38a4243298facc82f67a594948d3a416077b99d1d4aab9b39e9edb26d79850ac` |
| 6 | `theorem` | [holderOnWith_univ](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/holderonwith-univ--c13b22a53ea1f53308e0c4d8.md) | 77 | `result-track:c13b22a53ea1f53308e0c4d81077a3b610598efb15c68239d3250d003aad5d93` |
| 7 | `theorem` | [holderOnWith_one](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/holderonwith-one--951c144067f1fc9f9c663c7b.md) | 82 | `result-track:951c144067f1fc9f9c663c7b725e4d212836355b0dcc7e4f344c755ea43dabd2` |
| 8 | `theorem` | [holderWith_one](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/holderwith-one--0f14720fe136d85d07c1ab0a.md) | 91 | `result-track:0f14720fe136d85d07c1ab0ad5048d735a17bfb10388413a478207fd89dbce69` |
| 9 | `theorem` | [holderWith_id](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/holderwith-id--365cf3942f8c137c98796c16.md) | 98 | `result-track:365cf3942f8c137c98796c16fd9717ce22d21c2d53e3dfb21d29231dd2ef0340` |
| 10 | `theorem` | [HolderWith.holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/holderwith-holderonwith--587d45c276ff01e34bc511e7.md) | 102 | `result-track:587d45c276ff01e34bc511e73794789e4671c7121284a8e7cf94cd3913c15c6f` |
| 11 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/edist-le--60cbb5abc046ed0a8f68b4c0.md) | 110 | `result-track:60cbb5abc046ed0a8f68b4c0a7312e381d2e848930aba1dd27d6111b5cdb969f` |
| 12 | `theorem` | [edist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/edist-le-of-le--70dfd62eae1adbd65b16f634.md) | 115 | `result-track:70dfd62eae1adbd65b16f63408ac3a779dc96160686e0be2c63bc5a7c33acec0` |
| 13 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/comp--a89e1fa769a3ed581e31f183.md) | 120 | `result-track:a89e1fa769a3ed581e31f18361af35b4212497e56de40bdbbc5d5faa32e9dc51` |
| 14 | `theorem` | [comp_holderWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/comp-holderwith--ab41dde72b2789109b0750dc.md) | 129 | `result-track:ab41dde72b2789109b0750dcc9258d7854c90833024c97c05c07334cd02b2adc` |
| 15 | `theorem` | [uniformContinuousOn](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/uniformcontinuouson--caa09b2f4c21230448714731.md) | 136 | `result-track:caa09b2f4c2123044871473126fabe32409284e5a426d1d48597147b7817e5bc` |
| 16 | `theorem` | [continuousOn](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/continuouson--427a8db3800a940c0b80ce40.md) | 145 | `result-track:427a8db3800a940c0b80ce40be49e1789051cf492bfdd03fb92a651c5b37ed8b` |
| 17 | `theorem` | [mono](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/mono--9b5bde3b564407ac975576c1.md) | 149 | `result-track:9b5bde3b564407ac975576c172d4743cb103c6acc9a496c94e3d038ce1729ec0` |
| 18 | `theorem` | [ediam_image_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/ediam-image-le-of-le--18e1980e7a8032b75fe335ae.md) | 153 | `result-track:18e1980e7a8032b75fe335aebda10f03ab20dccb752eaa7e82fe20911dd41c91` |
| 19 | `theorem` | [ediam_image_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/ediam-image-le--71ee4db9e3fa23b3dec9febf.md) | 159 | `result-track:71ee4db9e3fa23b3dec9febf9596f1548cfab151af2076b1345ce750fd5ad401` |
| 20 | `theorem` | [ediam_image_le_of_subset](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/ediam-image-le-of-subset--4e5197136480b04aca683bf9.md) | 164 | `result-track:4e5197136480b04aca683bf9d46debd063360e19a9a9c96772001aaeb83a424c` |
| 21 | `theorem` | [ediam_image_le_of_subset_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/ediam-image-le-of-subset-of-le--0a3c50baf172614c2426cce5.md) | 169 | `result-track:0a3c50baf172614c2426cce59a42a94f2ac95ce1f391ef6fda1d0371dc51721f` |
| 22 | `theorem` | [ediam_image_inter_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/ediam-image-inter-le-of-le--fc4b15dc091554609972a7bf.md) | 174 | `result-track:fc4b15dc091554609972a7bf7c65ddc9daef952d18723fd357de07de0413ef45` |
| 23 | `theorem` | [ediam_image_inter_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/ediam-image-inter-le--58d213335c34bdef8888c16c.md) | 180 | `result-track:58d213335c34bdef8888c16c4b813741743ed8fc21780acecf935974cfc444bd` |
| 24 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/edist-le--21431dc06ddc5facda317a82.md) | 191 | `result-track:21431dc06ddc5facda317a825d193b4bfb1b8238c123694ba035cfbcfd94df72` |
| 25 | `theorem` | [edist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/edist-le-of-le--a769bfd7506380a2618fedea.md) | 196 | `result-track:a769bfd7506380a2618fedeac2e18a10c2a4102ca802588d71cce6343d965fa3` |
| 26 | `theorem` | [comp](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/comp--bf41245be65f1e83e83b4a62.md) | 201 | `result-track:bf41245be65f1e83e83b4a627e9e493b01657ebc9e875c107ea5557aaf7c57c7` |
| 27 | `theorem` | [comp_holderOnWith](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/comp-holderonwith--59bcc594d0b67512d4a4ad4f.md) | 206 | `result-track:59bcc594d0b67512d4a4ad4fb804faeb517866820c64ddd9aba5c8b2d90c3910` |
| 28 | `theorem` | [uniformContinuous](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/uniformcontinuous--542a75d1db87ef5e664807b6.md) | 213 | `result-track:542a75d1db87ef5e664807b690a774d37d18e3d08fc727108a1e93facb3d3d36` |
| 29 | `theorem` | [continuous](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/continuous--5a891bc642b970b71c7fcfc7.md) | 217 | `result-track:5a891bc642b970b71c7fcfc79f3b9565548786426c9aed5c7361fa6e8939f665` |
| 30 | `theorem` | [ediam_image_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/ediam-image-le--fdb78af401a51bc9b7c57c46.md) | 221 | `result-track:fdb78af401a51bc9b7c57c46cc5d416bd072cb7dede26a31c22b57ef68a38f2a` |
| 31 | `theorem` | [nndist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/nndist-le-of-le--c6320533ca00287cdf42c937.md) | 237 | `result-track:c6320533ca00287cdf42c93723af275ba58ad937f0b3535b4c7b99c1e635960b` |
| 32 | `theorem` | [nndist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/nndist-le--bcfb0d2d66e2ea0009909684.md) | 246 | `result-track:bcfb0d2d66e2ea0009909684b96db2a855d8903c45e51b2329fbf9a5953c8203` |
| 33 | `theorem` | [dist_le_of_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/dist-le-of-le--c21a729feb35ed5d8ed791e4.md) | 251 | `result-track:c21a729feb35ed5d8ed791e441cceca750ddfd9a85d6dc98a0c38c7bc2fbfdcf` |
| 34 | `theorem` | [dist_le](../../../../../mathematics/Topology/MetricTopology/Holder/Variant1a4448ffe1be0df1ec95f56a59e460a08e4229f3dfbf6d454285ec980ca152e5.lean/declarations/dist-le--c52adc9ea161bda65ccbf461.md) | 259 | `result-track:c52adc9ea161bda65ccbf461568d6297f8a8b565d03f6c4aaaaeb45c1d283a08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
