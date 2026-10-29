# Verification target: Assembly Fixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd4231ae0f9ffd18ae3352a20c94502fbf3c0c3f",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/AssemblyFixtures/Variant61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd4231ae0f9ffd18ae3352a20c94502fbf3c0c3f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/AssemblyFixtures/Variant61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ProofTheory/AssemblyFixtures/Variant61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullFixtures` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Descent` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atomTerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/atomterm.md) | 20 | `declaration-track:2dc55a50238b2b83475cc4354224ddd014c6c6e7c69ad8ab54c59a5cad7d7153` |
| 2 | `def` | [tagTerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/tagterm.md) | 22 | `declaration-track:7f6c40872bf0eb196da8a9c818495635a805257f9f475fffb47afaa93edbf35a` |
| 3 | `def` | [tagTagTerm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/tagtagterm.md) | 24 | `declaration-track:d8deae84a2cd597d664c6be134f2d6512e5a5c3b8ca51bb411b468b3812d0256` |
| 4 | `def` | [generator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/generator.md) | 27 | `declaration-track:5f598b4c689f783550acd58e1fbf66dc09e260e189969c72d1c95a3452df8faa` |
| 5 | `def` | [instantiatedGenerator](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/instantiatedgenerator.md) | 31 | `declaration-track:a6436764f335f8c635da8f5cfd72dd6a91c0303565b06535532dd6fa3cb2c816` |
| 6 | `def` | [candidate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/candidate.md) | 35 | `declaration-track:5f596f0ba12e338fee8d138fda3a60c662bad18bd49033f9a40b81b5a0b97301` |
| 7 | `theorem` | [congruence_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/congruence-accepted.md) | 43 | `result-track:09fe0d6e19d76e3db211cd3e906e1f5f08ebbcf0d3805c1fc733aedbb63a8a07` |
| 8 | `def` | [checkedCongruence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/checkedcongruence.md) | 48 | `declaration-track:0a836ff8b70456fc1cf4684ff7492635599adb4368c40e3a93696b9530a364ff` |
| 9 | `theorem` | [checked_candidate_exact](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/checked-candidate-exact.md) | 51 | `result-track:b88555b475e943785d7fbdced528aaadeb34bdef825d15d497fb138e263fa0fc` |
| 10 | `theorem` | [descent_accepted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/descent-accepted.md) | 53 | `result-track:3c66fe63a4c4683dac15936f69b30dd3a4e13fd8fc3e44197bd42acc4c76fe8d` |
| 11 | `def` | [checkedDescent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/checkeddescent.md) | 56 | `declaration-track:c6863103c2cb61bbedbb050035d0d3205272bc3190433a1f609a8b8ccec27d5e` |
| 12 | `theorem` | [descent_verifier_returns_witness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/descent-verifier-returns-witness.md) | 59 | `result-track:597586b0203042ef28377db43cf277665b30c6809ac205cbc208358dec0ea1d6` |
| 13 | `theorem` | [end_to_end_positive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/end-to-end-positive.md) | 64 | `result-track:609e8c3ca4d54beca73b635343348cb51aaea2fe7dcfc12fdb98d2729b0c882a` |
| 14 | `theorem` | [tag_interpretation_is_nonidentity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/tag-interpretation-is-nonidentity.md) | 69 | `result-track:547d5a028427de27dc50e8ab88b77d3bad9c35c50915417cb5046e273f4dd7db` |
| 15 | `theorem` | [tag_twice_is_identity_everywhere](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/tag-twice-is-identity-everywhere.md) | 73 | `result-track:1435da6d62e349853320e5cc59e3a6e74e1bcfa84f813df046c0b7f18f393000` |
| 16 | `theorem` | [declared_generator_all_assignments](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/declared-generator-all-assignments.md) | 78 | `result-track:8af4ee299065bb9e0c3aa4eb5bdb28761c53a9e9d0190dd8cbf377875860cf5c` |
| 17 | `theorem` | [quotient_representatives_agree](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/quotient-representatives-agree.md) | 84 | `result-track:f8f84df8063288f6d396ec07456cd5f9be5b7dff558948543034c82bbf5a9cbf` |
| 18 | `def` | [wrongSource](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/wrongsource.md) | 93 | `declaration-track:19cb52cd1f7aee52193d3ee4cb5f67014da3eff3fa43a9987e45ff3a4f10f56e` |
| 19 | `theorem` | [wrong_source_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/wrong-source-rejected.md) | 97 | `result-track:9344acc6c351ae4e512c48ff1561326bf859bf531e32bdf4e68a03cd48f86ae1` |
| 20 | `def` | [wrongFullScope](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/wrongfullscope.md) | 102 | `declaration-track:585f3255e248f7b00c36c40e2a5ebb42e1b1ddd490098a4d7ed49136c5570f20` |
| 21 | `theorem` | [wrong_full_scope_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/wrong-full-scope-rejected.md) | 105 | `result-track:28c43d8254cfaf059f31443a170a104e46b0c361d13c9984b6ef75d4bd20a33c` |
| 22 | `theorem` | [unknown_generator_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/unknown-generator-rejected.md) | 109 | `result-track:07d29b104c086565e87871d61f89358083a3fcd36b26ad74a3e9387592cc440a` |
| 23 | `theorem` | [mismatched_transitivity_middle_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/mismatched-transitivity-middle-rejected.md) | 112 | `result-track:4a3f5678894b4161f9ddf9ccd1ef5b2dedb252ca21c3d33eb5095a7d62f86463` |
| 24 | `def` | [undeclaredIntermediate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/undeclaredintermediate.md) | 118 | `declaration-track:4e9d46e77fab2db1344ed34297b58aaf537cb64b3ea6f5fda8daa6215f3721e6` |
| 25 | `theorem` | [undeclared_intermediate_is_really_erased](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/undeclared-intermediate-is-really-erased.md) | 121 | `result-track:4c07fae43cf5b9b7894489d1b64acaf1212a0d12c28fea1a808b0ce55f01c3ff` |
| 26 | `theorem` | [undeclared_intermediate_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/undeclared-intermediate-rejected.md) | 124 | `result-track:9fd90f9ac33e4ec97647f23d67c74d33893b1e96ff2b966a6304af9a4d1c3309` |
| 27 | `theorem` | [undeclared_variable_itself_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/undeclared-variable-itself-rejected.md) | 127 | `result-track:7b652064d7ec26f81401720f291bef34fad4471609d3bf4386f59e84dea702d9` |
| 28 | `theorem` | [undeclared_substitution_image_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/undeclared-substitution-image-rejected.md) | 131 | `result-track:c3e3c80e3e8b8b19b126b9cc92b02c26f08bc7679176b12fbc88333cc5632064` |
| 29 | `def` | [missingGeneratorClosure](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/missinggeneratorclosure.md) | 136 | `declaration-track:1c5a417c879444300c4f66e11d52d79a370c904d21d41fd49062790b6b3b0e60` |
| 30 | `theorem` | [omission_of_generator_pair_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/omission-of-generator-pair-rejected.md) | 142 | `result-track:6c22ae34bb898e64f2531d1ad415a3d81d337be59ebf9a8daab0ba4ff6955a18` |
| 31 | `def` | [invalidPair](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/invalidpair.md) | 147 | `declaration-track:7083948e1539d1a1bce89d45bda6410a7f89bda3eaaf7a586b367d520a4257d8` |
| 32 | `theorem` | [wrong_derivation_endpoint_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/wrong-derivation-endpoint-rejected.md) | 149 | `result-track:7a5bd99a7c91c5857267edf711e371d82848d1b873d97c8f4980b163d3a35da4` |
| 33 | `def` | [inventedRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/inventedrelation.md) | 154 | `declaration-track:a1a02f5f3ca6ec10140293cea2b24710a74d50648a62bcf2aecd218d79d3c9b0` |
| 34 | `theorem` | [invented_relation_has_valid_structure](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/invented-relation-has-valid-structure.md) | 163 | `result-track:f5d402758ed23be876f408427f5b539e0632218bfc77b7cf8c8bd665123faf19` |
| 35 | `theorem` | [invented_relation_still_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/invented-relation-still-rejected.md) | 166 | `result-track:6578fd978f55c708df6ee64aad3aa3276abb4eb646782b59443aad355170803d` |
| 36 | `theorem` | [duplicate_relation_pair_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/duplicate-relation-pair-rejected.md) | 170 | `result-track:652b92e5b85e66c78ad1f86b02ba20424ee0063dfffaaacdd0436ae7cf7edc50` |
| 37 | `theorem` | [unknown_catalog_endpoint_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/unknown-catalog-endpoint-rejected.md) | 175 | `result-track:b7279da90cc8d4709df39a272a4aa10b9c0222dc05269071693486e399fb4671` |
| 38 | `def` | [constantInterpreterTable](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/constantinterpretertable.md) | 182 | `declaration-track:35853276d279febfef1e0c962ce7732e79dab058dc0a003c20f601be3d2560f8` |
| 39 | `def` | [constantInterpreterFull](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/constantinterpreterfull.md) | 186 | `declaration-track:77df8f384cd1eebd6166f5960ad5ea8f6947a803ece15d140c75bcd6580cbfd2` |
| 40 | `def` | [constantInterpreterCandidate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/constantinterpretercandidate.md) | 192 | `declaration-track:8ec78a96d17063c1bbac04e6a8f53da8a7cf4332027a0b7e7aecc6da6f20cc2e` |
| 41 | `theorem` | [constant_interpreter_is_a_total_well_formed_table](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/constant-interpreter-is-a-total-well-formed-table.md) | 195 | `result-track:011821687a36f7d72b318f848ad8df58685c79c43c46f4f7efee2b31deb0eb0b` |
| 42 | `theorem` | [constant_interpreter_agrees_on_assignment_zero](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/constant-interpreter-agrees-on-assignment-zero.md) | 198 | `result-track:10ad91e9be4dcbab2079ded509d3630ba37f0a089cf6895a02a13fa2ad7f402f` |
| 43 | `theorem` | [constant_interpreter_fails_assignment_one](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/constant-interpreter-fails-assignment-one.md) | 201 | `result-track:a78936cc31bf584cb130010dec9d3594966abd190314d82387e9c2bf43848437` |
| 44 | `theorem` | [constant_interpreter_agrees_on_every_catalog_pair](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/constant-interpreter-agrees-on-every-catalog-pair.md) | 204 | `result-track:775c750dd3ba8e9946d47f5e09ed432a6115e7a144736d0e0138be48248def43` |
| 45 | `theorem` | [sampled_interpreter_descent_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/sampled-interpreter-descent-rejected.md) | 209 | `result-track:8cb27a86666a68c624e90086944e7a91f7cf8c04e119acf2383d48f7de222866` |
| 46 | `def` | [HostileK8K9Checks](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/hostilek8k9checks.md) | 213 | `declaration-track:a0d4aa1846f3a3a33df2c07c365bac4b69899f9f9246427d87024f94779022c6` |
| 47 | `theorem` | [hostile_k8_k9_checks](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AssemblyFixtures.lean/declarations/hostile-k8-k9-checks.md) | 225 | `result-track:2077745cb7648158ea7b7933f97f0a7e30ac7c28e8d08b00c8a541a7ebff45b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3ecaec04aa0efba1d77dfe031008a0b67ac31e599a4b32b56438510efa1a282 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/AssemblyFixtures/Variant61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ProofTheory/AssemblyFixtures/Variant61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
