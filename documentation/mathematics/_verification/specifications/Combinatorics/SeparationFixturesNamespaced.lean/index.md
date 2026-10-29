# Verification target: Separation Fixtures Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4abb93d19a679f666f87c8522036b6ba5e5b61c2",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SeparationFixturesNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/SeparationFixturesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4abb93d19a679f666f87c8522036b6ba5e5b61c2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.MinimumObservation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BooleanPair](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/booleanpair.md) | 25 | `declaration-track:42b36e334c78672357e2dcaedd9274a7c53b899ec72687a1c329faf6c6cc4fcc` |
| 2 | `def` | [coordinateObservation](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinateobservation.md) | 28 | `declaration-track:290480dc5aa811afe722ed29cf032f5ab9e54f7ed74a0c8421feca660d81d89c` |
| 3 | `def` | [constantObservation](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/constantobservation.md) | 32 | `declaration-track:5436f560a43e2a8cf5025121d6a54175c35260f546d1e4cb6e14124c67830ab7` |
| 4 | `def` | [sharedObservation](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/sharedobservation.md) | 35 | `declaration-track:315256e167ea0d1665ba1559084ed49c79842a690b1c42dc9677e5f034109cb2` |
| 5 | `def` | [redundantObservation](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/redundantobservation.md) | 38 | `declaration-track:85e0566c664dfe5123efd44c025d9532e7b722c1431556fe8954ce24e8f0101c` |
| 6 | `def` | [coordinateDistinction](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinatedistinction.md) | 42 | `declaration-track:f3be6a95d881269c3b018ea3ec6c5ed57aa8bedcd10bdf15f09f83ab20371f4b` |
| 7 | `theorem` | [coordinates_separate_identity](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinates-separate-identity.md) | 46 | `result-track:23d9636324f3f24838c5613d08947406f7684ee611565f4b0e052a236a80f215` |
| 8 | `theorem` | [coordinates_full_tuple_factorization](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinates-full-tuple-factorization.md) | 51 | `result-track:81220e8e39702b5e0681c39875d5041c848f3ff7c3b699c8ed6b60aaa6cc0706` |
| 9 | `theorem` | [first_test_separates_first](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/first-test-separates-first.md) | 58 | `result-track:171c349ea2d1301b74b688ade8330c3850e3f1bf38352aa445250bf7ae68d602` |
| 10 | `theorem` | [second_test_separates_second](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/second-test-separates-second.md) | 63 | `result-track:24e53b5369086c837106f70e59f14f83b5b4f38eb17cfdc5c64495930aac82ac` |
| 11 | `theorem` | [first_test_loses_identity](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/first-test-loses-identity.md) | 68 | `result-track:808dea65eb2eb82b9f88e4fa5b9afe4f43f4331fb7addd2a180bc34d69cab2ce` |
| 12 | `theorem` | [second_test_loses_identity](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/second-test-loses-identity.md) | 73 | `result-track:970c734cb7a99fb4afbea817f6d570b675308da887340d452cd4ee22663a8330` |
| 13 | `theorem` | [one_insert_splits_pair_but_not_target](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/one-insert-splits-pair-but-not-target.md) | 78 | `result-track:1676d65dcebc301bfd2f1279d921a23df15ff1c1a639a8c4244f4e01d139c87f` |
| 14 | `theorem` | [empty_separates_constant](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/empty-separates-constant.md) | 101 | `result-track:c2a2e7e12b7c699eb76e9d67be5864f5ec245a4b9ebe8a87d40e96d17615ec74` |
| 15 | `theorem` | [constant_observation_loses_identity](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/constant-observation-loses-identity.md) | 106 | `result-track:3f994b6fcec775976420cf73fba4c5318299c16231ed5b99e7b361ce15966ee8` |
| 16 | `theorem` | [shared_test_separates_identity](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/shared-test-separates-identity.md) | 113 | `result-track:e64d9df21429a6afea6cd37f62c21db56d26ea26dca3be9ab753cb9f75ee8a8f` |
| 17 | `theorem` | [redundant_first_two_separate_identity](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/redundant-first-two-separate-identity.md) | 118 | `result-track:fd85e391cdd0abbcb8ad8006547eaddb2b11ac4b065119db225c684c36384cab` |
| 18 | `theorem` | [coordinate_separator_sets_disjoint](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinate-separator-sets-disjoint.md) | 123 | `result-track:0bb958793490802468c1e02db9fdbe91d2a01dad0ce83b23bd3965c7156a2e57` |
| 19 | `theorem` | [coordinate_card_lower_bound](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinate-card-lower-bound.md) | 135 | `result-track:e21dee5eb754220810fdb339dd8e16f8b7a21c1868f4ca2ce02f466ef9809898` |
| 20 | `theorem` | [coordinate_hitting_iff](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinate-hitting-iff.md) | 145 | `result-track:2bfb19226d8e8f1ff9718d101fc9871323a1575d0bd64454eadc6ced665187a6` |
| 21 | `def` | [coordinatePolicy](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinatepolicy.md) | 153 | `declaration-track:34f108415aec81211291bd285bc83c95f2c71cdfe53f7e65fd8f6f4a6a2120f4` |
| 22 | `def` | [coordinateNotion](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinatenotion.md) | 158 | `declaration-track:a3930bb3fbaa205bc1baa2fac0ab80bb043ff6f54d92d0fde77c8769486f9408` |
| 23 | `theorem` | [cutoff_two_determines_identity](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/cutoff-two-determines-identity.md) | 164 | `result-track:65404664fce78651bf3003924096454d5966d806cb942d0a0066c46c402d7948` |
| 24 | `theorem` | [coordinate_additive_cost_exceeds_cutoff](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinate-additive-cost-exceeds-cutoff.md) | 170 | `result-track:0a860ee7a3d75f79ee85b88fe5debd181c667564ab26c8b871419974ec2dcde3` |
| 25 | `def` | [emptyObservation](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/emptyobservation.md) | 176 | `declaration-track:69e78c42e35dacf16b8c7bb565c43cba8af8a83f201aa7d75f673c717df0930e` |
| 26 | `theorem` | [empty_source_separates](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/empty-source-separates.md) | 179 | `result-track:4a612347c2f324bfa70e7ecd434c7cd72dc17103066f855a9f8227b4e2e5c183` |
| 27 | `theorem` | [empty_source_quotient_factorization](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/empty-source-quotient-factorization.md) | 185 | `result-track:db57366b1c59ca7f05f96b23c2966490830ceb3aec5cde914a6a78129a65d6ef` |
| 28 | `theorem` | [empty_source_has_no_full_tuple_decoder](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/empty-source-has-no-full-tuple-decoder.md) | 191 | `result-track:47c41bd2654d2ae9234ced3daf733826bd79bd9d435d7c3c7415d497cbcf8b79` |
| 29 | `theorem` | [constant_target_rank_zero](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/constant-target-rank-zero.md) | 198 | `result-track:84b7a22da3467a6c0a7e88913c522d50984675e825068f6370dd52260a3fa79b` |
| 30 | `theorem` | [constant_observation_identity_rank_top](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/constant-observation-identity-rank-top.md) | 203 | `result-track:10bf850c49dd33adc302ac75462f1a2e8d19d69874b6311e8e0df0eeec7b840c` |
| 31 | `theorem` | [coordinate_identity_rank_two](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinate-identity-rank-two.md) | 209 | `result-track:cd7a03dce38029647079df3ac18671abfa65f876ee0c4257ee25ad7fb82e699a` |
| 32 | `theorem` | [coordinate_component_ranks_one](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinate-component-ranks-one.md) | 220 | `result-track:5e891ec139ad656560ff6f5eb06b2f7c1969a9fc192f384c5be63e7ba6690606` |
| 33 | `theorem` | [coordinate_pair_rank_additive](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinate-pair-rank-additive.md) | 227 | `result-track:aad0868471072174f71339532a6e8aae2099b7e1f4f2333abd33de4cd435b7f0` |
| 34 | `theorem` | [coordinate_refinement_rank_le](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/coordinate-refinement-rank-le.md) | 236 | `result-track:c768ffd3e181cbb61b7defa9446ed079b1cd80a6edbeb7d3fc1f835f76123fd0` |
| 35 | `theorem` | [redundant_test_leaves_rank](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/redundant-test-leaves-rank.md) | 242 | `result-track:db19480076d5af18c2ee832dc95773d38c41a48efcc6592874902a95973ca952` |
| 36 | `theorem` | [redundant_inventory_rank_two](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/redundant-inventory-rank-two.md) | 249 | `result-track:1908ea0332957a29b7415c572df3552cef4123fe7732f164e48ec300ce586b70` |
| 37 | `theorem` | [shared_pair_rank_one](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/shared-pair-rank-one.md) | 254 | `result-track:49e092c6c385c62dd094992acc79b87200391d4c0fe9b2a224020a396705fcf0` |
| 38 | `theorem` | [shared_component_ranks_one](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/shared-component-ranks-one.md) | 259 | `result-track:441ea7dc2cf9ba91adabb904a1fb35cb43c2f4c3df43341c21807b58d89cf7e5` |
| 39 | `theorem` | [shared_test_strict_rank_saving](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/shared-test-strict-rank-saving.md) | 265 | `result-track:33af26d21931e4b8bc66225543781ebff1a9fd851620e7be643f988d6dd764c1` |
| 40 | `theorem` | [shared_test_strict_unit_cost_saving](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/shared-test-strict-unit-cost-saving.md) | 273 | `result-track:d3d0d57913cf00eb58062b97f331c207abb5801573c9d2b748da95b6fd94ca34` |
| 41 | `theorem` | [integer_declared_cost_three](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/integer-declared-cost-three.md) | 284 | `result-track:4d18965d2ae7c450443409b0b02e73242dcd2d69995d8450807e178e95804d41` |
| 42 | `theorem` | [zero_cost_nonconstant_target](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/zero-cost-nonconstant-target.md) | 290 | `result-track:a64ceb4ce088a5fa05cd22c21755dce5c689029464d60752689db990ef514387` |
| 43 | `theorem` | [cutoff_vs_minimum_additive_cost](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/cutoff-vs-minimum-additive-cost.md) | 298 | `result-track:ecb264b03978145bc5b8b9fcdf12c6e2fe4e682ac46d742a467594ad407de145` |
| 44 | `theorem` | [empty_source_rank_zero](../../../../Combinatorics/SeparationFixturesNamespaced.lean/declarations/empty-source-rank-zero.md) | 307 | `result-track:2e26897bb6e31924e2d01a96152e434f0ea141817623dd6254a9741464c13f50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f68c745ee17881c786d95965c183d36b8bb47ca5f9d79f2378a73c5c8ef0d6a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SeparationFixtures/Variant9e8244d094ed0d58a764b70e05692e52bef24821af9accb7e45e9292f10e8e71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
