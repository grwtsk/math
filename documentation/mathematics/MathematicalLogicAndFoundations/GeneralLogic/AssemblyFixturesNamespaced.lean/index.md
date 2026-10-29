# Assembly Fixtures Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/AssemblyFixtures/Variante1b17e974a0421eb5d331763e31a107adb7bc62b8a10c9e2ea80bf52e9d184fa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19bd442e42aa021d16a3cf61a9a9f2df4627358d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixturesNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [atomTerm](declarations/atomterm.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [tagTerm](declarations/tagterm.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [tagTagTerm](declarations/tagtagterm.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [generator](declarations/generator.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [instantiatedGenerator](declarations/instantiatedgenerator.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [candidate](declarations/candidate.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [congruence_accepted](declarations/congruence-accepted.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [checkedCongruence](declarations/checkedcongruence.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [checked_candidate_exact](declarations/checked-candidate-exact.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [descent_accepted](declarations/descent-accepted.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [checkedDescent](declarations/checkeddescent.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [descent_verifier_returns_witness](declarations/descent-verifier-returns-witness.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [end_to_end_positive](declarations/end-to-end-positive.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tag_interpretation_is_nonidentity](declarations/tag-interpretation-is-nonidentity.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tag_twice_is_identity_everywhere](declarations/tag-twice-is-identity-everywhere.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [declared_generator_all_assignments](declarations/declared-generator-all-assignments.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [quotient_representatives_agree](declarations/quotient-representatives-agree.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [wrongSource](declarations/wrongsource.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [wrong_source_rejected](declarations/wrong-source-rejected.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [wrongFullScope](declarations/wrongfullscope.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [wrong_full_scope_rejected](declarations/wrong-full-scope-rejected.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [unknown_generator_rejected](declarations/unknown-generator-rejected.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mismatched_transitivity_middle_rejected](declarations/mismatched-transitivity-middle-rejected.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [undeclaredIntermediate](declarations/undeclaredintermediate.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [undeclared_intermediate_is_really_erased](declarations/undeclared-intermediate-is-really-erased.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [undeclared_intermediate_rejected](declarations/undeclared-intermediate-rejected.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [undeclared_variable_itself_rejected](declarations/undeclared-variable-itself-rejected.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [undeclared_substitution_image_rejected](declarations/undeclared-substitution-image-rejected.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [missingGeneratorClosure](declarations/missinggeneratorclosure.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [omission_of_generator_pair_rejected](declarations/omission-of-generator-pair-rejected.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [invalidPair](declarations/invalidpair.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [wrong_derivation_endpoint_rejected](declarations/wrong-derivation-endpoint-rejected.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [inventedRelation](declarations/inventedrelation.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [invented_relation_has_valid_structure](declarations/invented-relation-has-valid-structure.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [invented_relation_still_rejected](declarations/invented-relation-still-rejected.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [duplicate_relation_pair_rejected](declarations/duplicate-relation-pair-rejected.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [unknown_catalog_endpoint_rejected](declarations/unknown-catalog-endpoint-rejected.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [constantInterpreterTable](declarations/constantinterpretertable.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [constantInterpreterFull](declarations/constantinterpreterfull.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [constantInterpreterCandidate](declarations/constantinterpretercandidate.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [constant_interpreter_is_a_total_well_formed_table](declarations/constant-interpreter-is-a-total-well-formed-table.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [constant_interpreter_agrees_on_assignment_zero](declarations/constant-interpreter-agrees-on-assignment-zero.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [constant_interpreter_fails_assignment_one](declarations/constant-interpreter-fails-assignment-one.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [constant_interpreter_agrees_on_every_catalog_pair](declarations/constant-interpreter-agrees-on-every-catalog-pair.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sampled_interpreter_descent_rejected](declarations/sampled-interpreter-descent-rejected.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [HostileK8K9Checks](declarations/hostilek8k9checks.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [hostile_k8_k9_checks](declarations/hostile-k8-k9-checks.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d9bae3944223336cbb511e08a352bf1b504a3caf5db26a070750533b0f081f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/AssemblyFixtures/Variante1b17e974a0421eb5d331763e31a107adb7bc62b8a10c9e2ea80bf52e9d184fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
