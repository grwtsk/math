# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CombinatorialAlgorithms.WeightedGreedyPartitions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c6ba06fa211b14107630531cf84f9deff978e22",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c6ba06fa211b14107630531cf84f9deff978e22`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.TakeDrop` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cost](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/cost.md) | 16 | `declaration-track:35a03c3758d5c99274627d8fefbeca8a604374320122012e363a8ec0b417fdf2` |
| 2 | `theorem` | [cost_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/cost-nil.md) | 18 | `result-track:e72f07132f2d52cbdca405acb6e0b22ff045cefd7fd6595fcdbbc7fee92dd329` |
| 3 | `theorem` | [cost_append](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/cost-append.md) | 20 | `result-track:95df7d9f03e3ffe6ad93f59a0c83679718cd66ff515bf234ef0d3b080bc84001` |
| 4 | `theorem` | [cost_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/cost-singleton.md) | 24 | `result-track:c44a7c657a1af1e8949f9988441d0e20aecce73bea8d8c7a7248327fe3387db1` |
| 5 | `structure` | [State](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/state.md) | 27 | `declaration-track:3803c7d79b79a0770fed542cea2712cb0e5993918483c271edb30b53ad5abbb0` |
| 6 | `def` | [initial](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/initial.md) | 33 | `declaration-track:b8003d551def7c996e47d44e5298e0e8f43f97a4fccb6d36a016ed4ae74f491c` |
| 7 | `def` | [history](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/history.md) | 35 | `declaration-track:56b10ce5d1d0a5333ddda52077bef86a67886a5ef5facb012b68a3d113c9e84c` |
| 8 | `def` | [splitBefore](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/splitbefore.md) | 37 | `declaration-track:7c1ba6946daf749910aea05871a01ba07bbb713675f1d891533eadbc7c26ecb8` |
| 9 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/instance.md) | 40 | `declaration-track:1ce00b8801f42113ad740d6d08561f86ccc1e7f2da3092cb30bbb8ee96d768fc` |
| 10 | `def` | [step](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/step.md) | 43 | `declaration-track:0a5f7d4835b48130fc88a3c9246ada16fe2760b8fd345f5d0d6da4c42dd8fea4` |
| 11 | `def` | [consume](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/consume.md) | 49 | `declaration-track:07d86dab172a813f00bd54a53816e4f9ba6e7c8e51460e758e6f1719bd999d10` |
| 12 | `def` | [finish](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/finish.md) | 53 | `declaration-track:7363b43d4424a5c658c282cd661caa52c9d57b3184caeb5ad03f81068ac3ceca` |
| 13 | `def` | [partition](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/partition.md) | 56 | `declaration-track:ac3a47cd12b716d97a7d63b7417e743f04941919579fd956fb82031692ca7e0f` |
| 14 | `def` | [PartValid](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/partvalid.md) | 59 | `declaration-track:2c71f77315fae320541d2f7a904544757d885097f2589c1a0cf0f3eec57b67a1` |
| 15 | `def` | [Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/valid.md) | 62 | `declaration-track:8753d61a4500eab593ef618003d15e8c7b681033f14449f28e290c3c74b6ee5d` |
| 16 | `theorem` | [initial_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/initial-valid.md) | 66 | `result-track:06e8e8069c86e436d9bba80b95c8885c8c23c3ecfdf3154d45dfb61c100ab5ec` |
| 17 | `theorem` | [step_history](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/step-history.md) | 70 | `result-track:e4638ab43185e9bfd13fe3213c8b68e7b022c726156dacec93a68bfea33f7d84` |
| 18 | `theorem` | [consume_history](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/consume-history.md) | 75 | `result-track:8de240d9e57d52d4674428443ed16d0c9428491adda9530db66a6c596d2ff8e8` |
| 19 | `theorem` | [finish_history](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/finish-history.md) | 81 | `result-track:28d04bd2da53a3293d9d76cd3efbcbcb94f226f7ebe4df8a9c9fc26c6533acf5` |
| 20 | `theorem` | [flatten_partition](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/flatten-partition.md) | 90 | `result-track:2e2382979ea3b0e883a92cd078c74ea78622c96465c71eb9b488965367eeb261` |
| 21 | `theorem` | [step_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/step-valid.md) | 95 | `result-track:cd34c814125c888edb02a7db5ac2a9c91ee28992b1fd56a707e86d48cf4f4e0e` |
| 22 | `theorem` | [consume_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/consume-valid.md) | 129 | `result-track:be9cf5e2b88800c736faded0030fec3617eda713120aae776071cb2ff9123e8f` |
| 23 | `theorem` | [finish_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/finish-valid.md) | 140 | `result-track:e7c72756127231c075e076189bf19e2397093c046bdc74871e76380c1cabea98` |
| 24 | `theorem` | [member_partition_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/member-partition-valid.md) | 158 | `result-track:46118cb593136373a3ab9eed2be2f842e02a0d32ea90adae5f4246175fa559c0` |
| 25 | `theorem` | [member_partition_ne_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/member-partition-ne-nil.md) | 166 | `result-track:50da1825d756b26c605bb7e2014cdccb510736f11bba84c41af7d24292b28f3d` |
| 26 | `theorem` | [member_partition_length_le](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/member-partition-length-le.md) | 171 | `result-track:934ccd55b0831af0338c89847754525bdea5d23038f55bdda12deda14c23f659` |
| 27 | `theorem` | [member_partition_cost_le](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/member-partition-cost-le.md) | 176 | `result-track:b8fd47a23f63c1a0b08b3684e337b3c118cb13dd8e6c90352b06504605032977` |
| 28 | `theorem` | [count_flatten_partition](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/count-flatten-partition.md) | 181 | `result-track:6476f10ab89d32ff027a77ae293fd36f54e9dafde36b5a99401f2c3ed3b39074` |
| 29 | `def` | [maxFiles](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/maxfiles.md) | 186 | `declaration-track:85f5ad29b8104858968d6ea9f32a278e4d1e338fea0cf447a189ded2dafc8b3b` |
| 30 | `def` | [maxBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/maxbytes.md) | 187 | `declaration-track:7002371ebe9cf43ea973f9352548ac334bc2ed1c0f97a1d2cec5fa579e7a8ab3` |
| 31 | `def` | [u64Modulus](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/u64modulus.md) | 188 | `declaration-track:08e0e85ab6193ff1e828ceef2e60c8b3aebcba675a7f561bc5859d88dc636132` |
| 32 | `theorem` | [profiled_sum_no_overflow](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/profiled-sum-no-overflow.md) | 191 | `result-track:44671c7e072f69e3e5e9874fa4a1286e47c5fd36a45b8c5677366931367e10d3` |
| 33 | `theorem` | [profiled_count_no_overflow](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/profiled-count-no-overflow.md) | 197 | `result-track:23383433465b3d2f9d2847be2e2b7e06121e810be6f198e14198c1a96c5c5e3e` |
| 34 | `theorem` | [profiled_u64_add_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/profiled-u64-add-exact.md) | 203 | `result-track:53de320858d4398789d5e011aa38582883b351b5eee596f0000c1a5dd9e10d05` |
| 35 | `theorem` | [profiled_UInt64_add_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/profiled-uint64-add-exact.md) | 211 | `result-track:c9591157235321086b904cfd96aa50f8be8421ce38c327bbf0f6a254223c6a86` |
| 36 | `def` | [ScalarGuard](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/scalarguard.md) | 220 | `declaration-track:1660515270c2729c6d29310550703ec168654190a5db2084ef5a7a31520b2c50` |
| 37 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/instance-source-edition-2.md) | 224 | `declaration-track:e1f8608a89eca7207b2bed65f44e630934e7d8bae579bdb35bca3dce33e521dc` |
| 38 | `def` | [scalarAdvance](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/scalaradvance.md) | 228 | `declaration-track:d318587fe43472a236f97b29261f8e737092c752ec789a086f5957fe20dabf42` |
| 39 | `theorem` | [scalarAdvance_rejects_invalid](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/scalaradvance-rejects-invalid.md) | 236 | `result-track:487af5580bb7f47b84aa903f6f7031428e2fb618cfc84a1ce237324eb41a775b` |
| 40 | `theorem` | [scalarAdvance_accepts_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/scalaradvance-accepts-iff.md) | 241 | `result-track:8dc5c2488053ee73f8f22356690e10f271191c8411135db334701dd44f2d9bd8` |
| 41 | `theorem` | [scalarAdvance_refines_step](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/scalaradvance-refines-step.md) | 251 | `result-track:e502da5be61178ec7f49aa1b74d3de1fa0c713507420b2f98771c66c01f4e5c2` |
| 42 | `theorem` | [scalarAdvance_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/scalaradvance-sound.md) | 273 | `result-track:2b51f051acac1543204b97fe90ea560b1c3b47af7d033aa1cd7dad11cd4606df` |
| 43 | `theorem` | [profiled_action_index_no_overflow](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/profiled-action-index-no-overflow.md) | 303 | `result-track:13d87111e3d8c7097904884b72f176cdbf1ad01773137add3baca6518ace3122` |
| 44 | `theorem` | [partition_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/partition-singleton.md) | 310 | `result-track:55cbd3a89a4f4a4497e388a3c37b2dff8007a1f3068768b8f38b776637c3f8c1` |
| 45 | `theorem` | [partition_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/partition-nil.md) | 315 | `result-track:12320c54e2aa26c864cbe44ba1db47e8df8a1803dca7a55ed1d0d2b5fe421d47` |
| 46 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/example-source-edition-4.md) | 318 | `declaration-track:bf7ef1e4ae425b3d6786ec5b3d4c48bb4299e6aaf7408a5a91bb50818548d090` |
| 47 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/example-source-edition-2.md) | 319 | `declaration-track:40e6d57e3c51a12ed04e9edce07fc50128eaee301ef008cb3ff1a3c9bc3d08c5` |
| 48 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/example.md) | 320 | `declaration-track:246b028e00fcf26b31ba563428e00d38b2f35e7c5ae6a40b983a6ba9933ab344` |
| 49 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/example-source-edition-5.md) | 321 | `declaration-track:d75e38772927fa82e0e5838b60d82fb6c53a2f9dd4912d7586c8fb99aec4c179` |
| 50 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/example-source-edition-6.md) | 322 | `declaration-track:f6b723990881238774833c5dc193de8b216471257ed53c759bc477e19da8872b` |
| 51 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/WeightedGreedyPartitions.lean/declarations/example-source-edition-3.md) | 323 | `declaration-track:ab0a21406d2e76cba44bb7ff3879fbd38299fa046ed641f1fc14f4394d9efb9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0446fd04fc6bdc762b1bed154e0b5b0537871f9ea8daa892a6c8b0d30fc5e45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CombinatorialAlgorithms/WeightedGreedyPartitions.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
