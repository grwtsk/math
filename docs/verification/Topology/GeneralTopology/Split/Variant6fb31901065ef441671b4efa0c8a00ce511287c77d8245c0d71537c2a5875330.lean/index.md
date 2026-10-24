# Verification target: GRWTSK.Topology.GeneralTopology.Split.Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a1a3b75199761e6c692626bb2f32c35008c22ee",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a1a3b75199761e6c692626bb2f32c35008c22ee`.

Source path: `GRWTSK/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitlower--f49fc966dc1ca89ad07af66a.md) | 67 | `declaration-track:f49fc966dc1ca89ad07af66a35417266f31f7e9aee31bd9c0808157b88d63903` |
| 2 | `theorem` | [coe_splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/coe-splitlower--f22505b0f483c8791dc08cd0.md) | 72 | `result-track:f22505b0f483c8791dc08cd07684d98c475aba6d9bce877ddb7822eae40d14e0` |
| 3 | `theorem` | [splitLower_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitlower-le--8d523b632db4fc1451225647.md) | 80 | `result-track:8d523b632db4fc1451225647cfde85687f236bd6af1667153c69c69728eab02f` |
| 4 | `theorem` | [splitLower_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitlower-eq-bot--2b67c3e80b4f57173a7f29ab.md) | 85 | `result-track:2b67c3e80b4f57173a7f29abb252d85727907a2e63682da9c8652a94ea47d33e` |
| 5 | `theorem` | [splitLower_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitlower-eq-self--b889f17896ea977b3094ab83.md) | 91 | `result-track:b889f17896ea977b3094ab835dc9a9e2146be922e1c44525ea51212109764be4` |
| 6 | `theorem` | [splitLower_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitlower-def--caf8c8e0373aad0d2d76a1de.md) | 95 | `result-track:caf8c8e0373aad0d2d76a1de9e19b9ae96a2f2e70d5bdede387952179803ac0c` |
| 7 | `def` | [splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitupper--6dff2aa7b9b8ed8d412fbe70.md) | 107 | `declaration-track:6dff2aa7b9b8ed8d412fbe70975f9393d07bc5f2faf35b679d933d720402555c` |
| 8 | `theorem` | [coe_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/coe-splitupper--666d9cdf5801c041f04f5bd4.md) | 112 | `result-track:666d9cdf5801c041f04f5bd4f926d997160a1bf4cc1a9a58bf126130944ecba4` |
| 9 | `theorem` | [splitUpper_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitupper-le--4da231f4be668bd71519ed3a.md) | 121 | `result-track:4da231f4be668bd71519ed3a1b43981a40b1986404a6d2084bf6905a58af3523` |
| 10 | `theorem` | [splitUpper_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitupper-eq-bot--a00f3c0c5f1bcb5097193b9e.md) | 126 | `result-track:a00f3c0c5f1bcb5097193b9ea5a6df3509c787bbb48548c81cb06c457d3fa10d` |
| 11 | `theorem` | [splitUpper_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitupper-eq-self--82e5f514438554c9a4bf5330.md) | 132 | `result-track:82e5f514438554c9a4bf5330a6517ec197466b5a55f5619927cd3723e2348eb1` |
| 12 | `theorem` | [splitUpper_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitupper-def--4312beb553c6442d998881db.md) | 136 | `result-track:4312beb553c6442d998881dbf9098798780866a4ef3f3a7713a44aad7e55d9b1` |
| 13 | `theorem` | [disjoint_splitLower_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/disjoint-splitlower-splitupper--d70bb6d35255e90fa54836d4.md) | 144 | `result-track:d70bb6d35255e90fa54836d45010f8d40cbdbb5480fba8e0603b826c1f0a6f26` |
| 14 | `theorem` | [splitLower_ne_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitlower-ne-splitupper--d7aacc4afc30c48476d406b2.md) | 152 | `result-track:d7aacc4afc30c48476d406b2320f52f02e9eb61b4baed40ad0998b5e7a43fca7` |
| 15 | `def` | [split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/split--e37b4e9fce408da8696a4b94.md) | 169 | `declaration-track:e37b4e9fce408da8696a4b94e70e67b998331a942e5d5bbfd0fd88849e8fee7c` |
| 16 | `theorem` | [mem_split_iff](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/mem-split-iff--6a73bc4f77510cba835d4bb4.md) | 183 | `result-track:6a73bc4f77510cba835d4bb4788fab24e97b9eda220bfba9cf4b3786a5ec565c` |
| 17 | `theorem` | [mem_split_iff'](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/mem-split-iff--c49ecec638db33559fb3c416.md) | 187 | `result-track:c49ecec638db33559fb3c416d9844883a287399910847cab3df308531f27d929` |
| 18 | `theorem` | [iUnion_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/iunion-split--fbfdd5768ccc410925b13a66.md) | 193 | `result-track:fbfdd5768ccc410925b13a66db16071c7541c153b4e4ee343c04850cff8b315f` |
| 19 | `theorem` | [isPartitionSplit](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/ispartitionsplit--6bd81967ed532f44f4afc765.md) | 197 | `result-track:6bd81967ed532f44f4afc765d18b186c486dd6904dfbacc5b924a8274eb9c954` |
| 20 | `theorem` | [sum_split_boxes](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/sum-split-boxes--357f6d19172116b08446f5c5.md) | 202 | `result-track:357f6d19172116b08446f5c5baeeae61cd11bbfc9df701daf824773bf6c86ddc` |
| 21 | `theorem` | [split_of_not_mem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/split-of-not-mem-ioo--4734490f7bcb76e5fcedd071.md) | 209 | `result-track:4734490f7bcb76e5fcedd071b80dab80e2e2666018c33b4451f718f6df563eb9` |
| 22 | `theorem` | [coe_eq_of_mem_split_of_mem_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/coe-eq-of-mem-split-of-mem-le--128c3d9332617669610405d8.md) | 219 | `result-track:128c3d9332617669610405d89e1957b86f06bebad7a80051311b7454ae4365dc` |
| 23 | `theorem` | [coe_eq_of_mem_split_of_lt_mem](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/coe-eq-of-mem-split-of-lt-mem--acd660e6b1e9dbbf1dbe74bb.md) | 226 | `result-track:acd660e6b1e9dbbf1dbe74bbc337ce8ce673766a6ede854e594f3543ba446b7e` |
| 24 | `theorem` | [restrict_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/restrict-split--b27411f7b02a30142522d8d3.md) | 234 | `result-track:b27411f7b02a30142522d8d36821f4c6edf2b9481dadcb57349133fc4d95e295` |
| 25 | `theorem` | [inf_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/inf-split--0ac35022911c2a137fc5b7d5.md) | 242 | `result-track:0ac35022911c2a137fc5b7d597cbf3cbcf3a0ffddebb5b4680c190cf89d55c93` |
| 26 | `def` | [splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitmany--da7d0d8f978996e0b189d35b.md) | 249 | `declaration-track:da7d0d8f978996e0b189d35b1c000dfb4d454d253dbd6d29efd23e010f973bae` |
| 27 | `theorem` | [splitMany_empty](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitmany-empty--247281c2b2b9c5f848b6de22.md) | 254 | `result-track:247281c2b2b9c5f848b6de22fd653a1081bd500e70fcd150998d182fea087718` |
| 28 | `theorem` | [splitMany_insert](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitmany-insert--032e3d0f032295a06890a3f0.md) | 259 | `result-track:032e3d0f032295a06890a3f03e7704b351b98d2e4fc471628923afa70b34e5ed` |
| 29 | `theorem` | [splitMany_le_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/splitmany-le-split--ca52287864948d8603a92cc7.md) | 264 | `result-track:ca52287864948d8603a92cc724171c824725ac803069d9582451c80222fa67c9` |
| 30 | `theorem` | [isPartition_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/ispartition-splitmany--7446e658cc9dbe2edf1c11ab.md) | 269 | `result-track:7446e658cc9dbe2edf1c11abfcf35e5c605715a1f8a0be54be46447e39b63c18` |
| 31 | `theorem` | [iUnion_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/iunion-splitmany--fbe239930f5ef380da09a5ca.md) | 275 | `result-track:fbe239930f5ef380da09a5ca2c2d95f56405a0b1f62925f75b60250425f70509` |
| 32 | `theorem` | [inf_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/inf-splitmany--b72b051eeb436f676bd3d0b5.md) | 279 | `result-track:b72b051eeb436f676bd3d0b573589c01be1ca085f09d486e6e97b59402a4f92d` |
| 33 | `theorem` | [not_disjoint_imp_le_of_subset_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/not-disjoint-imp-le-of-subset-of-mem-splitmany--7d29e9f77f314957d7780d8d.md) | 290 | `result-track:7d29e9f77f314957d7780d8de8b3c6e46454d25435568ef9f675fa5c86d57cd9` |
| 34 | `theorem` | [eventually_not_disjoint_imp_le_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/eventually-not-disjoint-imp-le-of-mem-splitmany--805d82868e67d17742f0fc8b.md) | 315 | `result-track:805d82868e67d17742f0fc8bc1ee52ec302f0c3057825e1037e109f558f6a830` |
| 35 | `theorem` | [eventually_splitMany_inf_eq_filter](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/eventually-splitmany-inf-eq-filter--89ccccc27f777b29306abdca.md) | 326 | `result-track:89ccccc27f777b29306abdca7aeee051eeaba493edb5f149fc9616f3ea26cde7` |
| 36 | `theorem` | [exists_splitMany_inf_eq_filter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/exists-splitmany-inf-eq-filter-of-finite--8a66678e563890131ec448ab.md) | 342 | `result-track:8a66678e563890131ec448abf3f5957a7bd7967ad63a9668ea295285fd2819fa` |
| 37 | `theorem` | [IsPartition.exists_splitMany_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/ispartition-exists-splitmany-le--d63a3bc3aaaa110da761616c.md) | 351 | `result-track:d63a3bc3aaaa110da761616c15f03ee160c7e44575188276c54dee27b11a1c8e` |
| 38 | `theorem` | [exists_iUnion_eq_diff](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/exists-iunion-eq-diff--01b51bba25e7a91bf1aa5e6b.md) | 360 | `result-track:01b51bba25e7a91bf1aa5e6bbbc944a7881fbf2662d36c96431b509a09d01894` |
| 39 | `def` | [compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/compl--b96ddfd122c1ae782cd3e322.md) | 369 | `declaration-track:b96ddfd122c1ae782cd3e322d1093a49fb882b8365a7e7a9ac4b27f70670fa59` |
| 40 | `theorem` | [iUnion_compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/iunion-compl--71261a88e2e1e47893e9b7e6.md) | 374 | `result-track:71261a88e2e1e47893e9b7e69f238c0c86c307f35bb57e72ea9fa0a15de5f0e2` |
| 41 | `theorem` | [compl_congr](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/compl-congr--743e4b7fe157e26b2b34138b.md) | 380 | `result-track:743e4b7fe157e26b2b34138b8ccf263eda5ed672745e8881c68a65651614db94` |
| 42 | `theorem` | [IsPartition.compl_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/ispartition-compl-eq-bot--b443f70263638a1465e939fe.md) | 386 | `result-track:b443f70263638a1465e939fe43706109e43f9752c2dfc68735a2dfc1de5e933f` |
| 43 | `theorem` | [compl_top](../../../../../mathematics/Topology/GeneralTopology/Split/Variant6fb31901065ef441671b4efa0c8a00ce511287c77d8245c0d71537c2a5875330.lean/declarations/compl-top--24cc79b7444992422a22060e.md) | 391 | `result-track:24cc79b7444992422a22060eb0624fe676d740a345212f2e40e7f4cfd00e5e72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
