# Verification target: Separation Fixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6a35c0b1e030b716987f023769e14e77f639caf",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SeparationFixtures.lean/index.md) · [Full source](../../../../Combinatorics/SeparationFixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6a35c0b1e030b716987f023769e14e77f639caf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.MinimumObservation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BooleanPair](../../../../Combinatorics/SeparationFixtures.lean/declarations/booleanpair.md) | 17 | `declaration-track:951de496641f77b747ed1001f15d0f63df77ce3d684ea4fb0bed6e08fea5d691` |
| 2 | `def` | [coordinateObservation](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinateobservation.md) | 20 | `declaration-track:e61f744e660728aa37398431128dff29b452293ef9d89635a524eacfea6c9b09` |
| 3 | `def` | [constantObservation](../../../../Combinatorics/SeparationFixtures.lean/declarations/constantobservation.md) | 24 | `declaration-track:2d0367856a0a7648ccb83dc2b0070a0041968d794422cf4fd06ea96e0a59c7f4` |
| 4 | `def` | [sharedObservation](../../../../Combinatorics/SeparationFixtures.lean/declarations/sharedobservation.md) | 27 | `declaration-track:8e35b267652a5488496b6069edf8be07465be09eb756ecc494a3b5bcf48813e9` |
| 5 | `def` | [redundantObservation](../../../../Combinatorics/SeparationFixtures.lean/declarations/redundantobservation.md) | 30 | `declaration-track:62e8ecfe11294d74364afea79c479c53fccd5b98f27734214627359b11229be1` |
| 6 | `def` | [coordinateDistinction](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinatedistinction.md) | 34 | `declaration-track:2579491cf030d471ad1c9a84bead9ce12ff4cb03799c95beb28b5d5273b0b19a` |
| 7 | `theorem` | [coordinates_separate_identity](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinates-separate-identity.md) | 38 | `result-track:66706ff985327082ef365a6df35817df495e3d791b6c583850b4bba9ebac39d7` |
| 8 | `theorem` | [coordinates_full_tuple_factorization](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinates-full-tuple-factorization.md) | 43 | `result-track:16b7c2d5992f3fde8ff09c21b4404b25623b1fad352303990c871dccad5f74f7` |
| 9 | `theorem` | [first_test_separates_first](../../../../Combinatorics/SeparationFixtures.lean/declarations/first-test-separates-first.md) | 50 | `result-track:700024ddd1202a6235e43fa5d007754d213e539e37bf94f6105937a16e1fb28e` |
| 10 | `theorem` | [second_test_separates_second](../../../../Combinatorics/SeparationFixtures.lean/declarations/second-test-separates-second.md) | 55 | `result-track:ee37af07bda3750442cb87973f8af70a87828891769a7b70a3e3112ccd9d6c7f` |
| 11 | `theorem` | [first_test_loses_identity](../../../../Combinatorics/SeparationFixtures.lean/declarations/first-test-loses-identity.md) | 60 | `result-track:58395ff4c391a96da13b464e00fe98b71862788b4635deccb6124f2e4b081281` |
| 12 | `theorem` | [second_test_loses_identity](../../../../Combinatorics/SeparationFixtures.lean/declarations/second-test-loses-identity.md) | 65 | `result-track:727aec4a5cda40fdd52e5192d95d609b10894c9f3b9ed5e8c458e54308c67fe3` |
| 13 | `theorem` | [one_insert_splits_pair_but_not_target](../../../../Combinatorics/SeparationFixtures.lean/declarations/one-insert-splits-pair-but-not-target.md) | 70 | `result-track:16b08f90c7c03b661bd252800daa3ce84871fd18c9d9743efd4824194ad2d38b` |
| 14 | `theorem` | [empty_separates_constant](../../../../Combinatorics/SeparationFixtures.lean/declarations/empty-separates-constant.md) | 93 | `result-track:b98f25abd66120ee3fecdfab8d35d071795dba6e53aa6ee71d87b7d536b91541` |
| 15 | `theorem` | [constant_observation_loses_identity](../../../../Combinatorics/SeparationFixtures.lean/declarations/constant-observation-loses-identity.md) | 98 | `result-track:e81f5c519dbe120db071789fe9b194b1cba397c3b5478ff71403a280b0ed18a7` |
| 16 | `theorem` | [shared_test_separates_identity](../../../../Combinatorics/SeparationFixtures.lean/declarations/shared-test-separates-identity.md) | 105 | `result-track:f0139aa9cbed4bf3a0d999e6812168fc400ec0511716d5534bb8cfcc20062934` |
| 17 | `theorem` | [redundant_first_two_separate_identity](../../../../Combinatorics/SeparationFixtures.lean/declarations/redundant-first-two-separate-identity.md) | 110 | `result-track:ebe93fc0c4b47e228c13b3b1de6c666078616bb7a4e1102264c057337e295f18` |
| 18 | `theorem` | [coordinate_separator_sets_disjoint](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinate-separator-sets-disjoint.md) | 115 | `result-track:6a979c7f2283cdf955ef4a8af91cf8fbb6e6ae25ef6f4f4cb4a5b61c890c55a2` |
| 19 | `theorem` | [coordinate_card_lower_bound](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinate-card-lower-bound.md) | 127 | `result-track:2864e8d3dff4124c3681bf5e36428173cbad483c8079de75f35ffacd54a73e81` |
| 20 | `theorem` | [coordinate_hitting_iff](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinate-hitting-iff.md) | 137 | `result-track:bece969bd7facefb902591b9a9f59e286fa60a00532d4cce71aab65478e79ebd` |
| 21 | `def` | [coordinatePolicy](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinatepolicy.md) | 145 | `declaration-track:d87759b5a5e122e1431db68e90746a9fe56450d3d037ceb36d837ac3af6a4969` |
| 22 | `def` | [coordinateNotion](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinatenotion.md) | 150 | `declaration-track:5f67a86dde5d79b881d647140460d0be68e39a012a68aa72d7d6bcb051dc9136` |
| 23 | `theorem` | [cutoff_two_determines_identity](../../../../Combinatorics/SeparationFixtures.lean/declarations/cutoff-two-determines-identity.md) | 156 | `result-track:5cfd777bf7cbd180855341fda20c6ac2ca4d5eed10b2f9d5a1c373f1f5e75ac0` |
| 24 | `theorem` | [coordinate_additive_cost_exceeds_cutoff](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinate-additive-cost-exceeds-cutoff.md) | 162 | `result-track:97cea91ba9a4a164821155e60e595524ebf1f14cde5a768c741d66f249f0028c` |
| 25 | `def` | [emptyObservation](../../../../Combinatorics/SeparationFixtures.lean/declarations/emptyobservation.md) | 168 | `declaration-track:0d317b6261d04a17a0621c2e3ac838f6e5eb1615ab13f7375c432e374ab31dae` |
| 26 | `theorem` | [empty_source_separates](../../../../Combinatorics/SeparationFixtures.lean/declarations/empty-source-separates.md) | 171 | `result-track:a01d0948d3842c0be4a0257b07bdee1906b830e191eaac5fcb3260f00caf3d00` |
| 27 | `theorem` | [empty_source_quotient_factorization](../../../../Combinatorics/SeparationFixtures.lean/declarations/empty-source-quotient-factorization.md) | 177 | `result-track:5f1e765eb7df0400f4ebc9aa5ad40a2ae688fe10af60f6f3f505c18dbb5cc5e2` |
| 28 | `theorem` | [empty_source_has_no_full_tuple_decoder](../../../../Combinatorics/SeparationFixtures.lean/declarations/empty-source-has-no-full-tuple-decoder.md) | 183 | `result-track:56247ec79394a6cd1928a6f96cc41816d748bde8b18bd98db8e4b717faa8b0a4` |
| 29 | `theorem` | [constant_target_rank_zero](../../../../Combinatorics/SeparationFixtures.lean/declarations/constant-target-rank-zero.md) | 190 | `result-track:ff65c4c890afeabe967170856b36578379b3c80164d8f6cd5cf091b4c57db143` |
| 30 | `theorem` | [constant_observation_identity_rank_top](../../../../Combinatorics/SeparationFixtures.lean/declarations/constant-observation-identity-rank-top.md) | 195 | `result-track:f1ddd0a363ec8ffc6fcec563c48233be5ec87679de3894da87bf128af52ccfa1` |
| 31 | `theorem` | [coordinate_identity_rank_two](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinate-identity-rank-two.md) | 201 | `result-track:db6a3870add8a6247d657c8db9c73db1df14e0a660752c998476aa5aa6b2de97` |
| 32 | `theorem` | [coordinate_component_ranks_one](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinate-component-ranks-one.md) | 212 | `result-track:ad3bfca259078072d830da49d58ce11b9041f65ffc1b52c117f19fc77f2efe51` |
| 33 | `theorem` | [coordinate_pair_rank_additive](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinate-pair-rank-additive.md) | 219 | `result-track:9f1fd4543ea60be168bbcdafe20390c13f87bb736e58bd3b37389a233bafe07e` |
| 34 | `theorem` | [coordinate_refinement_rank_le](../../../../Combinatorics/SeparationFixtures.lean/declarations/coordinate-refinement-rank-le.md) | 228 | `result-track:0a5f16c7754672e7afb3e4e06162489de1d9ff8d1979adc1e653a800f7b0d3b7` |
| 35 | `theorem` | [redundant_test_leaves_rank](../../../../Combinatorics/SeparationFixtures.lean/declarations/redundant-test-leaves-rank.md) | 234 | `result-track:0cf2d84b7d7efff2147a3f56419b78dc75c4ff29ef9a9a841b47eb8632eeb6b1` |
| 36 | `theorem` | [redundant_inventory_rank_two](../../../../Combinatorics/SeparationFixtures.lean/declarations/redundant-inventory-rank-two.md) | 241 | `result-track:3f5539e41757e96cecea54a4dc30c77ff5140dae2f86f15766a569bc21226724` |
| 37 | `theorem` | [shared_pair_rank_one](../../../../Combinatorics/SeparationFixtures.lean/declarations/shared-pair-rank-one.md) | 246 | `result-track:2fcdf26f61cad7e4b390f37d2b8673e3e75af1fa61a90eb137f518e08daabc8f` |
| 38 | `theorem` | [shared_component_ranks_one](../../../../Combinatorics/SeparationFixtures.lean/declarations/shared-component-ranks-one.md) | 251 | `result-track:97cb1bbb33752d1e5ef31a95a2ad86b81ab6e41c808e6f47903cfc34c0853c7a` |
| 39 | `theorem` | [shared_test_strict_rank_saving](../../../../Combinatorics/SeparationFixtures.lean/declarations/shared-test-strict-rank-saving.md) | 257 | `result-track:9094c696921093dcdca2f00857ed01e0e448ef1fb5d67d5f5ead5703ecbc9280` |
| 40 | `theorem` | [shared_test_strict_unit_cost_saving](../../../../Combinatorics/SeparationFixtures.lean/declarations/shared-test-strict-unit-cost-saving.md) | 265 | `result-track:73552f327f3506c886d9ced0d307a1d7e482f5682b4f672032f85c70c8fee3d7` |
| 41 | `theorem` | [integer_declared_cost_three](../../../../Combinatorics/SeparationFixtures.lean/declarations/integer-declared-cost-three.md) | 276 | `result-track:71d77ae8c6a573f96ed603d78422926931021eafdeee9495e9e52e07812cf600` |
| 42 | `theorem` | [zero_cost_nonconstant_target](../../../../Combinatorics/SeparationFixtures.lean/declarations/zero-cost-nonconstant-target.md) | 282 | `result-track:9d755ba5b6dc29681b785ae144acfe1037138e59a92085057cf7559e837f03e9` |
| 43 | `theorem` | [cutoff_vs_minimum_additive_cost](../../../../Combinatorics/SeparationFixtures.lean/declarations/cutoff-vs-minimum-additive-cost.md) | 290 | `result-track:8e06b8b57d775d4e5ad553e9cda25b54a76cd37751e1ca198b2ea7391e554817` |
| 44 | `theorem` | [empty_source_rank_zero](../../../../Combinatorics/SeparationFixtures.lean/declarations/empty-source-rank-zero.md) | 299 | `result-track:9ac2cafe36dc2816688941f574ba3286c51a5108ae78b7074ee832035e282d5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3515e6999d5cd974a822e59cd3af28153faf2d5eb436bb5a092c8923b504465c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
