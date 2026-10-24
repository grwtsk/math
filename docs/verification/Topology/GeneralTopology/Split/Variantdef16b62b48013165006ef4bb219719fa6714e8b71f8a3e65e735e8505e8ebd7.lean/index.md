# Verification target: GRWTSK.Topology.GeneralTopology.Split.Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c780ac9575d5245f41bed13852b225a0efc89d3",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c780ac9575d5245f41bed13852b225a0efc89d3`.

Source path: `GRWTSK/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean.json)

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
| 1 | `def` | [splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitlower--fc94ab2c44d6c443a6b2c39c.md) | 63 | `declaration-track:fc94ab2c44d6c443a6b2c39c6e302fc4e9b6527506ca4c10b1912b5e252ac22a` |
| 2 | `theorem` | [coe_splitLower](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/coe-splitlower--8e38d3c450ef4e1ff26b9b0b.md) | 67 | `result-track:8e38d3c450ef4e1ff26b9b0b0cb117095706a7c5713cae75e04f66c43edc41a3` |
| 3 | `theorem` | [splitLower_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitlower-le--675b382c360c11d90c2b0668.md) | 74 | `result-track:675b382c360c11d90c2b06684cca709f3d42c2e1f69dab8e0e96708e98f0ec44` |
| 4 | `theorem` | [splitLower_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitlower-eq-bot--df45cd7b26117c910f29ae0c.md) | 78 | `result-track:df45cd7b26117c910f29ae0cc0d3ca2a5861a2adf1f84d504c0c4236bbd17b5a` |
| 5 | `theorem` | [splitLower_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitlower-eq-self--34efa85c225a66976896357f.md) | 84 | `result-track:34efa85c225a66976896357f120917133b87e8ed69dfa6eb1b8281387c1aa315` |
| 6 | `theorem` | [splitLower_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitlower-def--91ea04998d2ae8351d985b0a.md) | 87 | `result-track:91ea04998d2ae8351d985b0a3339af673148126efc40f1e00c78915fafbc4b3b` |
| 7 | `def` | [splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitupper--94abd21ff9091bd006fd16cb.md) | 100 | `declaration-track:94abd21ff9091bd006fd16cbda54567df7ef3b20d37100d5be950637983a4b09` |
| 8 | `theorem` | [coe_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/coe-splitupper--f98d73b51e5ab99d1dfabac7.md) | 104 | `result-track:f98d73b51e5ab99d1dfabac7bbff5aa29d5ef68cfec4f69120bd12b9293bb406` |
| 9 | `theorem` | [splitUpper_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitupper-le--98b10e57affff23c3fe67c75.md) | 113 | `result-track:98b10e57affff23c3fe67c75bc19601e96f1f888e2f65dc0cda877fe7ce479ca` |
| 10 | `theorem` | [splitUpper_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitupper-eq-bot--f915921af499a729704cc2bd.md) | 117 | `result-track:f915921af499a729704cc2bde21afd6b7d4ca58910220066647a2f861701123b` |
| 11 | `theorem` | [splitUpper_eq_self](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitupper-eq-self--a11107aab746112268d8eca4.md) | 123 | `result-track:a11107aab746112268d8eca452fa9fd3d4d949cf9f8be6238431e6eab0479d61` |
| 12 | `theorem` | [splitUpper_def](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitupper-def--ff1e6dae2a4f74485ae1e58b.md) | 126 | `result-track:ff1e6dae2a4f74485ae1e58b487fd0f19a14add4ab89ce813b1982e5ca8c500b` |
| 13 | `theorem` | [disjoint_splitLower_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/disjoint-splitlower-splitupper--c79944b0f5ee8c34302af123.md) | 134 | `result-track:c79944b0f5ee8c34302af12315d44f85ee1a9d17f65215fa57c429cc4cee8fb6` |
| 14 | `theorem` | [splitLower_ne_splitUpper](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitlower-ne-splitupper--19537d96b47ad42c6f2c1345.md) | 141 | `result-track:19537d96b47ad42c6f2c1345ddcb11b05ce949bb23ec8f378c149dbe7d69c18b` |
| 15 | `def` | [split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/split--735a8ca18db7a362047a97ee.md) | 158 | `declaration-track:735a8ca18db7a362047a97ee0eb11cfce9ceb44e015943b944e67ce095e84c74` |
| 16 | `theorem` | [mem_split_iff](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/mem-split-iff--ba8b15e95c10a9deb11a7f5d.md) | 171 | `result-track:ba8b15e95c10a9deb11a7f5d803b2a2d234b132f5917cb9fc96de9f45896dcdc` |
| 17 | `theorem` | [mem_split_iff'](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/mem-split-iff--f36338665dc920f69b4d9d8d.md) | 174 | `result-track:f36338665dc920f69b4d9d8d7bb6b22d3ac37df1b76a66a6eb2bcf23db20e637` |
| 18 | `theorem` | [iUnion_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/iunion-split--d71f2cd8283ce05a43ce1c4b.md) | 179 | `result-track:d71f2cd8283ce05a43ce1c4bb787b9c0181dcd118ddece529787bac13e9e0758` |
| 19 | `theorem` | [isPartitionSplit](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/ispartitionsplit--536e7bc4196014c8feb23b5b.md) | 182 | `result-track:536e7bc4196014c8feb23b5b7795fb50269d7dd8d34feb1795240a1c0746c046` |
| 20 | `theorem` | [sum_split_boxes](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/sum-split-boxes--28fa763c8a08fd08595df422.md) | 185 | `result-track:28fa763c8a08fd08595df4227863338ced9261625c3408eb502e4e1d679d4151` |
| 21 | `theorem` | [split_of_notMem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/split-of-notmem-ioo--f5f36aee02e2f736347d754b.md) | 192 | `result-track:f5f36aee02e2f736347d754bc15f667385bfab32685e23466e7ce433209b5e55` |
| 22 | `theorem` | [coe_eq_of_mem_split_of_mem_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/coe-eq-of-mem-split-of-mem-le--ad92ee82ad85c4158418dad9.md) | 203 | `result-track:ad92ee82ad85c4158418dad976773fa046dfd743707b7a261eec1891047a7688` |
| 23 | `theorem` | [coe_eq_of_mem_split_of_lt_mem](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/coe-eq-of-mem-split-of-lt-mem--f1a1cfc918d0e9af093c894d.md) | 209 | `result-track:f1a1cfc918d0e9af093c894dd5bb2e03cd70e6e29bf308d5ca0ba98da207addc` |
| 24 | `theorem` | [restrict_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/restrict-split--ac0ed153e9d000e8185cbdda.md) | 216 | `result-track:ac0ed153e9d000e8185cbddab8650d8c941c16bbf2e1219202592e3d4c3d61cb` |
| 25 | `theorem` | [inf_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/inf-split--9e41bef4e09ec5e4ab78bb60.md) | 223 | `result-track:9e41bef4e09ec5e4ab78bb60066fcd90d739a6192c8f3b2adc3a92141a81424d` |
| 26 | `def` | [splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitmany--cbcdd3041a681d4806cc4d11.md) | 229 | `declaration-track:cbcdd3041a681d4806cc4d119619949151da4dcf5bebea978775b6610639f50f` |
| 27 | `theorem` | [splitMany_empty](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitmany-empty--1b497198829bcaa2dcd66e02.md) | 233 | `result-track:1b497198829bcaa2dcd66e026211dcffd6716ce8daab3d88d3bdb99b7fa8969a` |
| 28 | `theorem` | [splitMany_insert](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitmany-insert--ce21635a82503415b8681272.md) | 238 | `result-track:ce21635a82503415b8681272c1cf2bb930f40b4230bec91e88e92240ee75f6e1` |
| 29 | `theorem` | [splitMany_le_split](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/splitmany-le-split--d5ae295b6a5235dbdeabb4a1.md) | 242 | `result-track:d5ae295b6a5235dbdeabb4a1c354616ac5a49512ebbb3bda5466098e421fbd63` |
| 30 | `theorem` | [isPartition_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/ispartition-splitmany--07dece981cdffc8aa9309606.md) | 246 | `result-track:07dece981cdffc8aa9309606d88e256daa65616974e0bd0665e2b96f634e57e3` |
| 31 | `theorem` | [iUnion_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/iunion-splitmany--7a95eab04a2452c6ef3aebb6.md) | 252 | `result-track:7a95eab04a2452c6ef3aebb68561c41cd8f45bfa88d3ced4ba901eb96564bca2` |
| 32 | `theorem` | [inf_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/inf-splitmany--bf3aba3da11c5944df1ff72d.md) | 255 | `result-track:bf3aba3da11c5944df1ff72d28f7fde011ffe5c92eb976ac54a3166d4c8334e7` |
| 33 | `theorem` | [not_disjoint_imp_le_of_subset_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/not-disjoint-imp-le-of-subset-of-mem-splitmany--236d18c743746d08586f26fe.md) | 267 | `result-track:236d18c743746d08586f26feaaa1866c5df0c4251110e794a37096c4256d90f2` |
| 34 | `theorem` | [eventually_not_disjoint_imp_le_of_mem_splitMany](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/eventually-not-disjoint-imp-le-of-mem-splitmany--92c0d0fa98a9ebcaf1b212d9.md) | 291 | `result-track:92c0d0fa98a9ebcaf1b212d906451a1541c932cb0ed8a1827709a74f18d330b3` |
| 35 | `theorem` | [eventually_splitMany_inf_eq_filter](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/eventually-splitmany-inf-eq-filter--c4e5f1c1b4ddc93214e088d3.md) | 302 | `result-track:c4e5f1c1b4ddc93214e088d389061b09d7d8d662603361462b2a246ca3d3e86f` |
| 36 | `theorem` | [exists_splitMany_inf_eq_filter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/exists-splitmany-inf-eq-filter-of-finite--0da93389b7c557e6ad3bb9e2.md) | 317 | `result-track:0da93389b7c557e6ad3bb9e2febb94878ab06eb691a9e96889b73d5936bcbc20` |
| 37 | `theorem` | [IsPartition.exists_splitMany_le](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/ispartition-exists-splitmany-le--191cfd1a388ea990a2da6d64.md) | 325 | `result-track:191cfd1a388ea990a2da6d648a8e30abb53dcd8f0119f89087f980c85d47af81` |
| 38 | `theorem` | [exists_iUnion_eq_diff](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/exists-iunion-eq-diff--232f20b81a2679f62c83d522.md) | 333 | `result-track:232f20b81a2679f62c83d522b2c1bdfd8d5354f6cc8e4901874c86118aeab51a` |
| 39 | `def` | [compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/compl--70b660024e922c1d2450ced6.md) | 341 | `declaration-track:70b660024e922c1d2450ced68f8aecb3ac83b0ce91f6e5c02ad415a36f31b35a` |
| 40 | `theorem` | [iUnion_compl](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/iunion-compl--bfe90544856d588408d04382.md) | 345 | `result-track:bfe90544856d588408d0438266f6aea4df1249867803fb24b4fa05187306e79f` |
| 41 | `theorem` | [compl_congr](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/compl-congr--3e7e6ae954c85846efc8472f.md) | 350 | `result-track:3e7e6ae954c85846efc8472f3ca4b6964f87462b138645961e47a8b3572b89e4` |
| 42 | `theorem` | [IsPartition.compl_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/ispartition-compl-eq-bot--f1854cd3debd842f001893bc.md) | 355 | `result-track:f1854cd3debd842f001893bc6dcbc553c40695923a0337e7f369cefb609978fd` |
| 43 | `theorem` | [compl_top](../../../../../mathematics/Topology/GeneralTopology/Split/Variantdef16b62b48013165006ef4bb219719fa6714e8b71f8a3e65e735e8505e8ebd7.lean/declarations/compl-top--ebf9488c4ea4b97d7f8cb404.md) | 359 | `result-track:ebf9488c4ea4b97d7f8cb404804d84573da764b00fd5c4aa7c975ddd74fb6cc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
