# Verification target: GRWTSK.Topology.GeneralTopology.PicardLindelof.Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "914aafa576d0474f49ba074168c387ae6059e2ff",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `914aafa576d0474f49ba074168c387ae6059e2ff`.

Source path: `GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean.json)

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
| 1 | `structure` | [IsPicardLindelof](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/ispicardlindelof--fd3d6c799db704737ef11687.md) | 87 | `declaration-track:fd3d6c799db704737ef11687ded748c32581629d1584cd6fd02f301b19173696` |
| 2 | `def` | [picard](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/picard--9a8c575245182aeb5e428a15.md) | 113 | `declaration-track:9a8c575245182aeb5e428a15f99eb6160617d570aba0b46020de49f170e803f9` |
| 3 | `lemma` | [picard_apply](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/picard-apply--8a7a7bc3ba5637cd67ad26ff.md) | 117 | `result-track:8a7a7bc3ba5637cd67ad26ffa6b6631473e91ee73af3ff829e6741ce2558cf08` |
| 4 | `lemma` | [picard_apply₀](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/picard-apply--507bb10e03d3e269f4ce10dd.md) | 119 | `result-track:507bb10e03d3e269f4ce10dd04cf2f1fe765798cd33d48777490c2c64923aabd` |
| 5 | `lemma` | [contDiffOn_comp](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/contdiffon-comp--612e4cf3c600b3c361d966f4.md) | 123 | `result-track:612e4cf3c600b3c361d966f4233f42663fb2cb966169edafec42c9b0a7dffaf7` |
| 6 | `lemma` | [continuousOn_comp](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/continuouson-comp--3cd1c02cda011f966dd2ef3c.md) | 131 | `result-track:3cd1c02cda011f966dd2ef3c893b0acda0479d379a6fb80ccd16d5d4fa02f73f` |
| 7 | `structure` | [FunSpace](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/funspace--07cdd656bd77f4b24ca38cab.md) | 151 | `declaration-track:07cdd656bd77f4b24ca38cab0bc8d2fa20b4686fa1a81c73ed86cf69cb382af9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/instance--0a97fc4fbd04e63891429cc5.md) | 166 | `declaration-track:0a97fc4fbd04e63891429cc58350f5cc0c845f465609e6b5108f4b3f82484ba6` |
| 9 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/ext--2f46e19f10bd243ea4422563.md) | 169 | `result-track:2f46e19f10bd243ea44225633442034617a633d8cd8c5d2b5b8697db07498227` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/instance--b1a72681a2ca6e353f314336.md) | 173 | `declaration-track:b1a72681a2ca6e353f314336d0ee8b17e5085d5babedc1ca2356a0aacedfa5b8` |
| 11 | `lemma` | [continuous](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/continuous--a775c6a44c8891e90b04b74d.md) | 176 | `result-track:a775c6a44c8891e90b04b74d797b3b6394d345eec1407f8e871bcadc8b656742` |
| 12 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/tocontinuousmap--ccaa2085ddb8651436084058.md) | 179 | `declaration-track:ccaa2085ddb86514360840586ec7bbe7f8c8a5a9a6814ba81b379b9c266c9c1c` |
| 13 | `lemma` | [toContinuousMap_apply_eq_apply](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/tocontinuousmap-apply-eq-apply--60da73be86c6f2ca7ed85b9c.md) | 183 | `result-track:60da73be86c6f2ca7ed85b9ca3351390e714a880c2560f41a629c36e34f05101` |
| 14 | `lemma` | [apply_of_zero](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/apply-of-zero--e11cebe57aaf32ac3157a24b.md) | 187 | `result-track:e11cebe57aaf32ac3157a24bf2eccf8bf9a06a9a016d23bb302cfe814241efa1` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/instance--908168bbd0b717d89b2db861.md) | 193 | `declaration-track:908168bbd0b717d89b2db861b26b9f64d0d9a17309d7d57c82573782b0dd0ac3` |
| 16 | `lemma` | [isUniformInducing_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/isuniforminducing-tocontinuousmap--0208045ab453cd8ea150f1b4.md) | 196 | `result-track:0208045ab453cd8ea150f1b4f109c4b62bbf886563d20d786152a4d85625b622` |
| 17 | `lemma` | [range_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/range-tocontinuousmap--e026773598dd17d273786e2e.md) | 199 | `result-track:e026773598dd17d273786e2ef13e199e1f13e155a851af64faa8d5096b8e1154` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/instance--4caeecd62bd6e2b42bcb54ee.md) | 210 | `declaration-track:4caeecd62bd6e2b42bcb54eed7740e90c40daaaa15522591fc6be6be580c797f` |
| 19 | `def` | [compProj](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/compproj--b623563dfeb4501c3cc8dee2.md) | 220 | `declaration-track:b623563dfeb4501c3cc8dee28a4f5c1070dbf2ad766509fe71aeaa44aeb2b05b` |
| 20 | `lemma` | [compProj_apply](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/compproj-apply--fa57e1aed70204c8ac906518.md) | 224 | `result-track:fa57e1aed70204c8ac9065181240c10f66f7637a3da4ed037667f9794ae7bab6` |
| 21 | `lemma` | [compProj_val](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/compproj-val--47e75cbb87eec660f2a15bfd.md) | 227 | `result-track:47e75cbb87eec660f2a15bfd017218bf07f6cc9b9be52c6ea63fa7db5c6998a5` |
| 22 | `lemma` | [compProj_of_mem](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/compproj-of-mem--4e252da8364a681777d09e89.md) | 230 | `result-track:4e252da8364a681777d09e893decd6cf64d06905907bb8b0809369d7e3ce2fcc` |
| 23 | `lemma` | [continuous_compProj](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/continuous-compproj--f0b2022d69c3d292906a644e.md) | 234 | `result-track:f0b2022d69c3d292906a644e1b49e0aba14c2905df5d1fdf37dc0e5b2df20aa2` |
| 24 | `lemma` | [mem_closedBall](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/mem-closedball--b97622dcafe249cce5563e1c.md) | 238 | `result-track:b97622dcafe249cce5563e1cd57e54c2ab1e68d2abca6e57e1f167d6e790f82e` |
| 25 | `lemma` | [compProj_mem_closedBall](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/compproj-mem-closedball--6cc62fe3585eb8c231946c19.md) | 254 | `result-track:6cc62fe3585eb8c231946c19a0f9b27207c46f7ede11c86b46a238e19391275a` |
| 26 | `lemma` | [continuousOn_comp_compProj](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/continuouson-comp-compproj--9887b26e618316223b506227.md) | 269 | `result-track:9887b26e618316223b506227793f4927afd1f62b6d55e7e76015670bf3e188a3` |
| 27 | `lemma` | [intervalIntegrable_comp_compProj](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/intervalintegrable-comp-compproj--c79f64007dd5ea9b4724b1ec.md) | 278 | `result-track:c79f64007dd5ea9b4724b1ec7d90a07f71c6cc1e256f89a76d53444cd5770f9b` |
| 28 | `def` | [next](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/next--9159f557e7c440622e778876.md) | 287 | `declaration-track:9159f557e7c440622e7788766bbb5ca123ef5b68b64c237cadc2b7e5405970d6` |
| 29 | `lemma` | [next_apply](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/next-apply--af023f0746dc77d40b84dbb7.md) | 302 | `result-track:af023f0746dc77d40b84dbb787d967220e1b29f34ac3ee83c5735a2693a6ff40` |
| 30 | `lemma` | [next_apply₀](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/next-apply--5a954b6070edb1be240724d5.md) | 306 | `result-track:5a954b6070edb1be240724d5cda0a94cccc7e861b12a524ea417c6e442d6eb05` |
| 31 | `lemma` | [isFixedPt_next_iff](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/isfixedpt-next-iff--f91bb7e25780c45d285f2a4c.md) | 311 | `result-track:f91bb7e25780c45d285f2a4c345ff10f6aaf5794b5bf8e67940ecd599c46eb43` |
| 32 | `lemma` | [dist_comp_iterate_next_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/dist-comp-iterate-next-le--7db709a66cdc08686216e561.md) | 321 | `result-track:7db709a66cdc08686216e56157ae6cb97b3161563292a044af4aa8ae94f3e468` |
| 33 | `lemma` | [dist_iterate_next_apply_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/dist-iterate-next-apply-le--6b82447a3bb0e440e2dd3101.md) | 338 | `result-track:6b82447a3bb0e440e2dd3101f19767765872343052b2345efbf9263e7a8ce0e5` |
| 34 | `lemma` | [dist_iterate_next_iterate_next_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/dist-iterate-next-iterate-next-le--84330e1da81bcdee2c9d2c9e.md) | 372 | `result-track:84330e1da81bcdee2c9d2c9ebfe4273942e510d53d910ecab0cd9b3c34bb4d4f` |
| 35 | `lemma` | [exists_contractingWith_iterate_next](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/exists-contractingwith-iterate-next--0ba2bbc88955400eb5397666.md) | 387 | `result-track:0ba2bbc88955400eb5397666f70cb3706c6f26f6fd34068b454ce715b2288d4a` |
| 36 | `lemma` | [exists_isFixedPt_next](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/exists-isfixedpt-next--802e0e0d138e9f58d3668ec2.md) | 400 | `result-track:802e0e0d138e9f58d3668ec2255ef8da6b6c14f961da50d843c18e89010758b6` |
| 37 | `lemma` | [dist_next_next](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/dist-next-next--9b5407b2a09febd1437db56c.md) | 415 | `result-track:9b5407b2a09febd1437db56cd37a8f0e1b924d485c759d05d8df87bc4df5dcca` |
| 38 | `lemma` | [dist_iterate_next_le](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/dist-iterate-next-le--ea2dce8c16ff778ea1c824b0.md) | 423 | `result-track:ea2dce8c16ff778ea1c824b0d0f6824316e683cecede594541d78e2672a96aa7` |
| 39 | `lemma` | [dist_iterate_iterate_next_le_of_lipschitzWith](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/dist-iterate-iterate-next-le-of-lipschitzwith--3e0e30c1c45d49adc8b16fac.md) | 435 | `result-track:3e0e30c1c45d49adc8b16fac3d0c3b7889a3a02520a40377095beffa21ba0431` |
| 40 | `lemma` | [exists_forall_closedBall_funSpace_dist_le_mul](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/exists-forall-closedball-funspace-dist-le-mul--33f5be586ddef6b29ba3d13d.md) | 455 | `result-track:33f5be586ddef6b29ba3d13debd7ac5b5a206eeb62f854d7390603f90ee80091` |
| 41 | `lemma` | [hasDerivWithinAt_picard_Icc](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/hasderivwithinat-picard-icc--082da2676afd37540a15b6e0.md) | 492 | `result-track:082da2676afd37540a15b6e06cd74bc2a12e7ea29f36a85635794d1460bf6d67` |
| 42 | `lemma` | [picard_eq_of_hasDerivAt](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/picard-eq-of-hasderivat--c70cfe3d69524727c74d0ba0.md) | 510 | `result-track:c70cfe3d69524727c74d0ba091dd499be0cfc08315099beee9dc920251a9b34c` |
| 43 | `lemma` | [contDiffOn_nat_picard_Icc](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/contdiffon-nat-picard-icc--440157486dc143ae86c07973.md) | 524 | `result-track:440157486dc143ae86c079731702ac26a76818246da2670bb53e2467c15c41e0` |
| 44 | `lemma` | [contDiffOn_enat_picard_Icc](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/contdiffon-enat-picard-icc--9027d4f1b35d8d400ed0cfd9.md) | 554 | `result-track:9027d4f1b35d8d400ed0cfd94a1886e8b82071ef39b6654243000981391a7ccd` |
| 45 | `theorem` | [contDiffOn_enat_Icc_of_hasDerivWithinAt](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/contdiffon-enat-icc-of-hasderivwithinat--d8f1926b30e937e410b3e8d5.md) | 568 | `result-track:d8f1926b30e937e410b3e8d51250871c36171eb9c0887ccbd19a12da74e51a80` |
| 46 | `lemma` | [continuousOn_uncurry](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/continuouson-uncurry--b94aa17aac81f8d026412629.md) | 609 | `result-track:b94aa17aac81f8d026412629e16ae6e1c62d79b0fc45171d956dc123c461748a` |
| 47 | `lemma` | [shrink](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/shrink--e90137441f69ac2abcd05d28.md) | 616 | `result-track:e90137441f69ac2abcd05d284a9f93a5a182cc1053efebff511111df13612eb0` |
| 48 | `lemma` | [shrink_time](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/shrink-time--37cc8d2b4494296e38dd92d0.md) | 631 | `result-track:37cc8d2b4494296e38dd92d028da9d1e09ba67077d9eb1752b42e638abf6b9fa` |
| 49 | `lemma` | [weaken_lipschitz](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/weaken-lipschitz--2a666a8b52c8eee9616da7a8.md) | 641 | `result-track:2a666a8b52c8eee9616da7a8328a98b1e8e2cb74ba0dabde51e099fbeef96962` |
| 50 | `lemma` | [exists_shrink_radius](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/exists-shrink-radius--1234474d7337f40d0be8d531.md) | 651 | `result-track:1234474d7337f40d0be8d531c67fd72b44de3ed3cd68998e2b8470c33c52ee87` |
| 51 | `lemma` | [of_time_independent](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/of-time-independent--b70315e91e53c54fffed70b4.md) | 670 | `result-track:b70315e91e53c54fffed70b4a4ff53319e5ddc866dd4041df065485acc85bfb6` |
| 52 | `lemma` | [of_contDiffAt_one](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/of-contdiffat-one--3a7b0f1f96bc24be1be5880b.md) | 683 | `result-track:3a7b0f1f96bc24be1be5880b98e65fce7b7dd8826a4ca003f0aa3c1c43f9fa90` |
| 53 | `theorem` | [exists_eq_forall_mem_Icc_eq_picard](../../../../../mathematics/Topology/GeneralTopology/PicardLindelof/Variant255b9169dc8655d23e58f681f90452f6fb1b4537e14c5b60dbdb6d99d5b2f5bd.lean/declarations/exists-eq-forall-mem-icc-eq-picard--09d8a3e5f894708af2ebf2d5.md) | 728 | `result-track:09d8a3e5f894708af2ebf2d5a72d5e18657c755843f7d26c4efc71513d1a3829` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
