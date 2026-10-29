# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteMapOutputBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac71bbcb9a6b3c40f90db99e471e6cca32018372",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteMapOutputBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac71bbcb9a6b3c40f90db99e471e6cca32018372`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteMapOutputBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteMapOutputBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundedCostAdmission`](../../../../../ComputerScience/AlgorithmsInComputerScience/BoundedCostAdmission.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Files](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/files.md) | 12 | `declaration-track:897c7d1354ef9bd5866a89127d9ef888712e45a2274d6e566357816701c710ba` |
| 2 | `def` | [lookup](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lookup.md) | 14 | `declaration-track:8647e45f5efb2cfa1a627cfa1998053cf7530fd564b4db82f9bd5d8350c3830c` |
| 3 | `def` | [overwrite](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/overwrite.md) | 18 | `declaration-track:a06e93521ed20ab185108675e018cd28a352cdc90747a9543e904294027baba8` |
| 4 | `def` | [unique](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/unique.md) | 21 | `declaration-track:cbd2dbe3b3d14e0059900eff4911b7e3d467c8f00df3e0b1a280509cdf8e5591` |
| 5 | `theorem` | [lookup_overwrite_same](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lookup-overwrite-same.md) | 23 | `result-track:b023f73e1daaa9a41ce952b2538cd0a7786cd169c5125bd0d187b224d5d83ca4` |
| 6 | `theorem` | [lookup_filter_other](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lookup-filter-other.md) | 27 | `result-track:9bee201b6f638ced5445b1cf659ed54bc10882ee3f035288ac83196902c0b66e` |
| 7 | `theorem` | [lookup_overwrite_other](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lookup-overwrite-other.md) | 37 | `result-track:826786a81c1995e55e70e4081703ffd6944c7d75937d6019896e56b0f8adfab3` |
| 8 | `theorem` | [overwrite_lookup](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/overwrite-lookup.md) | 43 | `result-track:3d502ce2c60bae0f0b6a34d80d0996477f1790de57e0f757ec04de63de78a0fe` |
| 9 | `theorem` | [overwrite_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/overwrite-unique.md) | 50 | `result-track:7f8021d5cafad56c1f33fead362693602501e2de6dbeec5af1d5e7245963693b` |
| 10 | `def` | [lower](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lower.md) | 63 | `declaration-track:ef4bf1fceb246f8b932e13ae8a1f14148adc6e036aaae607f4beb3a8cd91f2ac` |
| 11 | `theorem` | [lower_keys](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lower-keys.md) | 66 | `result-track:d6c5105264acc7a9e4793ddb928a9b6fa108014f7db29a7e0e9873370c721aee` |
| 12 | `theorem` | [lower_length](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lower-length.md) | 70 | `result-track:6fbd8ac5c69cf4771816ec6d8b525a692394a7794a14da66ea022dbf8773b803` |
| 13 | `theorem` | [lower_lookup](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lower-lookup.md) | 73 | `result-track:186fc7feddb16070712bc5bb2080dfcc3ce7d160ebadf0c7f646607247ff8ffb` |
| 14 | `theorem` | [lower_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lower-unique.md) | 82 | `result-track:b116272f8a9f803bac02518821aeafb863020d54128fe6a7df0ffa83cd4648d4` |
| 15 | `theorem` | [lower_overwrite](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lower-overwrite.md) | 86 | `result-track:46a6647d6b88a15d67e42106e4c64601d02e334518d131eede247ae6aad804ab` |
| 16 | `theorem` | [overwrite_same_path](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/overwrite-same-path.md) | 97 | `result-track:2617444e3a799f90197e687b14886475cd1b61b4ffbf4217f963a50080aea66a` |
| 17 | `theorem` | [overwrite_idempotent](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/overwrite-idempotent.md) | 102 | `result-track:35e3d46ddc977d98eca786019e4d620efee6ebcffad38ab8ecf43a30d7023312` |
| 18 | `inductive` | [Area](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/area.md) | 106 | `declaration-track:05b2a22b7e7f2d6b0c6a7cf87dc63f6d41a4ddb8cd45a0f48a39e3700af573f9` |
| 19 | `inductive` | [FileKind](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/filekind.md) | 110 | `declaration-track:27ef023ee17d914b89afc6ae06fa227412f7beaa1bb6626803e31500c005d7b2` |
| 20 | `structure` | [Record](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/record.md) | 114 | `declaration-track:1119e0110ffd000244ff8276ecb3261b537fa0cfa553824c6cf5d872504c6ebe` |
| 21 | `def` | [emptyRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/emptyrecord.md) | 120 | `declaration-track:cbfac67f76d967ac3ca14d30d90f93b8881de9b529fdd585a8fe42f5dc68653d` |
| 22 | `structure` | [Action](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/action.md) | 123 | `declaration-track:c20acbe1bee2a20f5e4ada23553b2c703c5a04d750400c5d526bbaa9a3e93a64` |
| 23 | `inductive` | [PlaceholderKind](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/placeholderkind.md) | 129 | `declaration-track:cba3f8be0a199e3c7ae3e86466b4c97d1ec2b0ae14ca1cb923a4f51d4ac6161f` |
| 24 | `structure` | [Placeholder](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/placeholder.md) | 133 | `declaration-track:4eac1ffb9530106a85311bbcbad88f01f030f6c4fe9414a8d28f4e35ffcfcc5c` |
| 25 | `def` | [actionFold](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/actionfold.md) | 138 | `declaration-track:3f2ac7de8405025e88a50198b4003dae684323706ef039663e8b9e6d28cf1116` |
| 26 | `def` | [placeholderFold](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/placeholderfold.md) | 143 | `declaration-track:d35654a6541e17f5511f5edcfada9ce70c9026bcef803acc081d9f43c8021ce6` |
| 27 | `theorem` | [actionFold_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/actionfold-unique.md) | 148 | `result-track:289ecbb6f9c90b4e6287a9efa7763278a93ff1c9c1d9f38722342ee905971a14` |
| 28 | `theorem` | [placeholderFold_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/placeholderfold-unique.md) | 158 | `result-track:5597b941a8baecb5db6c39e6ae78ef392878ccffc8f2ad1d10eb9cc317103f9c` |
| 29 | `def` | [lowerAction](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/loweraction.md) | 169 | `declaration-track:8ebb9f1c684447c2d7168c2959e25f5dfdd821b5826b6f3533d378752a1f4187` |
| 30 | `theorem` | [lower_actionFold](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lower-actionfold.md) | 172 | `result-track:8ad9cb2051839f93e30cbe8a6bda5a884b21859b76d0b2719e9e49e6c42689ef` |
| 31 | `theorem` | [lower_placeholderFold](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/lower-placeholderfold.md) | 183 | `result-track:7154d3c51ae471182db69ed657c05b0817f87f4d9370735273a07b34c9a21bcc` |
| 32 | `structure` | [Plan](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/plan.md) | 193 | `declaration-track:5ba38765ba5790ef754b823745e1e3327946fac015b94e56d1d4dbca1968cf57` |
| 33 | `def` | [finalRecords](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/finalrecords.md) | 199 | `declaration-track:2c1fb0f73b1d7d386325463ec3c04832bdd9a64af53be5c151a436f6359e4f7a` |
| 34 | `def` | [finalCosts](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/finalcosts.md) | 203 | `declaration-track:a88a39de3ff355a5134aa651f67a890d6a4937b4204adbf5fff7466aad408ddb` |
| 35 | `theorem` | [final_lowering_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/final-lowering-exact.md) | 208 | `result-track:75b3d607bb193cc06a3eb52137b7e3004555377b9e28ee1d20fb259c32c50e5b` |
| 36 | `theorem` | [final_records_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/final-records-unique.md) | 222 | `result-track:d0ec10caa1efb130799f77a069e290b37a528ea71ef6ead36119bf0b88a162ec` |
| 37 | `theorem` | [taxonomy_records_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/taxonomy-records-unique.md) | 228 | `result-track:6ffc3de9037330626b17132c754ddbf93e6e95219b9341b9588702f87095356e` |
| 38 | `theorem` | [taxonomy_ignores_archive_preimage](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/taxonomy-ignores-archive-preimage.md) | 231 | `result-track:9759ee57ea91859bd0c4d58b5b4c8bce1d6d6edd64b9049b72b2270e8838c78a` |
| 39 | `theorem` | [archive_ignores_placeholders](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/archive-ignores-placeholders.md) | 234 | `result-track:0038e51a0ff5ebe2d4adcd229c9cd91bfd24c2d249b0c3953a5d9ebf693d6ed7` |
| 40 | `theorem` | [remove_placeholder_is_noop](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/remove-placeholder-is-noop.md) | 237 | `result-track:13a4f501b3355c97594e019ac1bb4eafe3f2f4be66a1228630df54c39c97c3b7` |
| 41 | `theorem` | [existing_placeholder_is_zero_output](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/existing-placeholder-is-zero-output.md) | 242 | `result-track:ff2a3b499267fa5d52e9a9324765ab6befda764a6e8c8bfef1ac48d1ff3ee99e` |
| 42 | `theorem` | [final_costs_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/final-costs-unique.md) | 247 | `result-track:fd31bf23d9786f3ed4757ca76473245710b88af3dc95025c2c20ca0665629f90` |
| 43 | `def` | [totalBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/totalbytes.md) | 252 | `declaration-track:f2645b89e6a523301a608be349441929d3cb5c5f8681936564465db1593d9d2f` |
| 44 | `def` | [mapWithin](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/mapwithin.md) | 254 | `declaration-track:cedff6cd07375fa2ea4f7c07f09aeb6ccdc8be0f60dbedff358c8a62f65c9a95` |
| 45 | `theorem` | [mapWithin_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/mapwithin-exact.md) | 258 | `result-track:b1fefb38b46d1a7c7340dc477e653e77ff7c64ce4c2d68616775044be3ca81ce` |
| 46 | `def` | [recordsWithin](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/recordswithin.md) | 262 | `declaration-track:3713001c58311aeab3db820cae1a3869793866a16e00b82efa732c1f38bec0a9` |
| 47 | `theorem` | [recordsWithin_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/recordswithin-exact.md) | 264 | `result-track:9ebe2701e1b959b6507052613df4301669c8668970a093d00aa1a913ab6368f7` |
| 48 | `theorem` | [record_cost_membership](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/record-cost-membership.md) | 269 | `result-track:092a73b60f47c0a7dff0eb11de8a1c1265347b0b60f5433ab80729e9f1921eda` |
| 49 | `theorem` | [record_cost_sum_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/record-cost-sum-exact.md) | 281 | `result-track:53245a346dd08c81c35aa7b07822aadee0bf9de9fa18465f825c08ba572cf561` |
| 50 | `theorem` | [totalBytes_permutation](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/totalbytes-permutation.md) | 285 | `result-track:1ce432dad91be90a589791a160fb598e8fca5bb6fab8cc767f09290853d29da7` |
| 51 | `theorem` | [mapWithin_permutation](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/mapwithin-permutation.md) | 289 | `result-track:00fe72638883a9931a239731d3550455570bae2c9c3791cc7fe29789bf63e39a` |
| 52 | `theorem` | [record_enumeration_bounds](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/record-enumeration-bounds.md) | 297 | `result-track:64823c6ee30b7099656baa9d9e09c50af00f39b0e3e017acd875c845564ba86d` |
| 53 | `theorem` | [excessive_map_count_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/excessive-map-count-rejected.md) | 304 | `result-track:d118c5253becb713b819d860571d1f1c2e58eaf839cac14c078262dc1a10a439` |
| 54 | `theorem` | [excessive_map_bytes_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/excessive-map-bytes-rejected.md) | 310 | `result-track:1cf00cd5cb6351abd6d6fc8fa4f3044e1f1c8ef53d5713b14a981276838034d1` |
| 55 | `def` | [planWithin](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/planwithin.md) | 316 | `declaration-track:21725896e4ee84b0703106f8d97b915c00f9313abb08b41323c5d4e894044435` |
| 56 | `theorem` | [planWithin_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/planwithin-exact.md) | 319 | `result-track:7f8bfb682b97bf27a2a01615add2b380ee28109f6524a4621242c92ec6521d14` |
| 57 | `theorem` | [checked_final_map_bounds](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checked-final-map-bounds.md) | 323 | `result-track:1d3f0a38cc4dfefe472823b8c1888f612ffa3bead85fe572de14958253946de0` |
| 58 | `theorem` | [checked_final_record_bounds](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checked-final-record-bounds.md) | 331 | `result-track:47d96d05e63780dfaea39d44908595cf694ef712ae241ba5685e3686b678e233` |
| 59 | `theorem` | [checked_final_sum_no_wrap](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checked-final-sum-no-wrap.md) | 338 | `result-track:c82675dd72fcac82ae708157f4b36e6b34670903de8e45c7224b6affe012ca10` |
| 60 | `theorem` | [checked_final_UInt64_sum](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checked-final-uint64-sum.md) | 347 | `result-track:35cce9bb2a05cd7e4cfcda047e8b36f013c9d929d88770ff126d92ab9a296fd6` |
| 61 | `theorem` | [checked_final_sum_prefixes](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checked-final-sum-prefixes.md) | 358 | `result-track:2493577228957cf164b45d5d30625d68094049b3c400771b6513a337c277660c` |
| 62 | `def` | [checkedActions](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checkedactions.md) | 370 | `declaration-track:f9b57abd1fa0e434f0b97e761ab9c7c33988850f77aa050154519ebf352e715f` |
| 63 | `theorem` | [checkedActions_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checkedactions-exact.md) | 380 | `result-track:8ab550a91778b9aef9041790e87678c997ea08daa5b925458aafd654378fd295` |
| 64 | `def` | [expectedRecords](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/expectedrecords.md) | 402 | `declaration-track:a70eebced59acb4d70924d1bebfe628954f2ad7021eaba97668ffdf9c4790d6a` |
| 65 | `theorem` | [expected_success_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/expected-success-exact.md) | 406 | `result-track:d416b3a30f7fd9e9b1581424fcb2cb33ad26305efb7843946907f9bfbbc9caa3` |
| 66 | `theorem` | [expected_success_costs](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/expected-success-costs.md) | 417 | `result-track:f0a1df2f3e5e5053d9373e2e10be5743b34671a9b9122cdbc09d9bc31f2505d9` |
| 67 | `theorem` | [checked_expected_output_bounds](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checked-expected-output-bounds.md) | 423 | `result-track:ee1ba8fcebf08e711255d05c5585a929c85166daaa8df0e575c22e21407688d8` |
| 68 | `theorem` | [checked_expected_output_keys_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checked-expected-output-keys-unique.md) | 430 | `result-track:00a46ff31f70fd2ced8d22e3193b72a336190e01c08aafc62b0617967db7760d` |
| 69 | `theorem` | [expected_enumeration_output_bounds](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/expected-enumeration-output-bounds.md) | 436 | `result-track:a75e56e2d29273a1310e545494ccc4d52f253b6db6b65dade843e156a95552ab` |
| 70 | `theorem` | [checked_both_output_byte_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checked-both-output-byte-bound.md) | 445 | `result-track:7fadb46041ba68b8876a9d372247699dda055d78b55df047ca5cca5cfef3ebbd` |
| 71 | `theorem` | [checked_both_output_count_bound](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/checked-both-output-count-bound.md) | 452 | `result-track:aedfb4f4913a491a32d172fd1a4bb2278649a8c69244bf31d954034b72f24232` |
| 72 | `def` | [fixturePlan](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixtureplan.md) | 459 | `declaration-track:a4421a35ab6e22db378185ba9472a116b3608c33cb51068ca3937fd710865fbf` |
| 73 | `theorem` | [fixture_plan_accepted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-plan-accepted.md) | 467 | `result-track:3fc7e388869daad711492bd6fb863a7e38e33003a8164f1a74473618f66be47a` |
| 74 | `theorem` | [fixture_taxonomy_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-taxonomy-exact.md) | 469 | `result-track:e158093fd25c19fe7d95657b217f765c912e0afa424d0b0772bb18574995f7c0` |
| 75 | `theorem` | [fixture_archive_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-archive-exact.md) | 472 | `result-track:7db5730da40ff537aa17cb900917d956c1a6b3f059ebc2e0187e2625cb658b20` |
| 76 | `theorem` | [fixture_taxonomy_bytes](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-taxonomy-bytes.md) | 475 | `result-track:4c0a432cba6a2c4d5950c7a9d674e14310676834d488f66b8a93a96c704e2451` |
| 77 | `theorem` | [fixture_archive_bytes](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-archive-bytes.md) | 477 | `result-track:ff5bdb20a99dc3929d9b97bc837632905379f26b1fef86475da11b4fa0506623` |
| 78 | `theorem` | [fixture_repeated_path_shared_once](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-repeated-path-shared-once.md) | 479 | `result-track:01bb091a2f8316277dc79da5a3569031d536d69930a0078b77596a61e60c403b` |
| 79 | `theorem` | [fixture_same_payload_different_paths_both_counted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-same-payload-different-paths-both-counted.md) | 482 | `result-track:3e3dd22bcf6514e9931fd0fef8947733b365b7f4f5672ff2e843fe86062ef88f` |
| 80 | `theorem` | [fixture_remove_placeholder_does_not_remove_source_output](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-remove-placeholder-does-not-remove-source-output.md) | 487 | `result-track:63cce49b2d7ce14221efc797afab7a09a1a595989683027f207e1611deeb7211` |
| 81 | `theorem` | [fixture_zero_placeholder_retained](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-zero-placeholder-retained.md) | 490 | `result-track:443c39260a6c81772417e242061fa87ab81e13cd7aadc3dbc38b74d4136cd46b` |
| 82 | `theorem` | [fixture_archive_preimage_retained](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-archive-preimage-retained.md) | 493 | `result-track:68382191936d73073162678087b679c37a506263969529081f9b17f7b9a0581c` |
| 83 | `theorem` | [fixture_expected_taxonomy_success](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-expected-taxonomy-success.md) | 496 | `result-track:8e8849a69cea2f6d3f9dd216ef56642c975866e2ba291bea10d0d08f56402e48` |
| 84 | `theorem` | [fixture_expected_archive_success](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/fixture-expected-archive-success.md) | 500 | `result-track:4880000f8b11dd494d146bd824f011007ead310ef1bc84ddab6416515de7e7de` |
| 85 | `theorem` | [placeholder_overwrites_taxonomy_cost_to_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/placeholder-overwrites-taxonomy-cost-to-zero.md) | 503 | `result-track:3f5d5ef4bfb5e42fca945e4d98090265843d246919dec0be3d56f5b636338725` |
| 86 | `theorem` | [taxonomy_placeholder_does_not_change_archive](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/taxonomy-placeholder-does-not-change-archive.md) | 507 | `result-track:13428793b502a5ea1302a0192bf8ec9da8b0cbc81dfe2fcb2be2a17dd607c46c` |
| 87 | `def` | [conflictingPlan](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/conflictingplan.md) | 511 | `declaration-track:46d4bcab852cf1ef639f1065cd5967df75120bcd6c9c7f443c0fd933b430f566` |
| 88 | `theorem` | [cost_admission_does_not_manufacture_full_record_collision_success](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/cost-admission-does-not-manufacture-full-record-collision-success.md) | 514 | `result-track:8e34cc6d2fe992add541752474e30cfcff127a64e077ba9c8d2c7df76320b275` |
| 89 | `theorem` | [changed_final_cost_is_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/changed-final-cost-is-checked.md) | 517 | `result-track:ca516f5dab9e2a8afcfc35f4bc8c61902f14c46bd0c7c08719bfefe58d0ba481` |
| 90 | `theorem` | [initial_archive_cost_is_checked](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/initial-archive-cost-is-checked.md) | 520 | `result-track:880381abf27cf68f2696afec0f33d70c5e267f345d0a43277acea74e23ead474` |
| 91 | `theorem` | [final_zero_overwrite_can_restore_budget](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/final-zero-overwrite-can-restore-budget.md) | 523 | `result-track:4b6a19f0ad1079b83ff0f62809191f50f75129782a2d724237d1f96bc3e34e39` |
| 92 | `theorem` | [exact_byte_limit_accepted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/exact-byte-limit-accepted.md) | 527 | `result-track:1e9d6bd3d0ef4d0b87fa6fea629bc1836a2195f4a49bf7cb66f28293440603da` |
| 93 | `theorem` | [byte_limit_plus_one_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/byte-limit-plus-one-rejected.md) | 529 | `result-track:0f3471c3fd64101fbcf18b62c5bcfbf3c43eb5746276f86bea90a57860175939` |
| 94 | `theorem` | [empty_plan_accepted](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/empty-plan-accepted.md) | 531 | `result-track:bf3509d887a91941e63a2280f2606951fdfa5dc3e168d87e275fe77e5570967a` |
| 95 | `theorem` | [empty_final_maps_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/FiniteMapOutputBounds.lean/declarations/empty-final-maps-exact.md) | 533 | `result-track:f9fc1b724a2c0d6872ff2549d899c6babe4c3122da2145b3ffe68fe0cd7fb246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2f058af2a065da3ca3162f318f2978563ba2a37d780fb4296db761833708692 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteMapOutputBounds.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteMapOutputBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
