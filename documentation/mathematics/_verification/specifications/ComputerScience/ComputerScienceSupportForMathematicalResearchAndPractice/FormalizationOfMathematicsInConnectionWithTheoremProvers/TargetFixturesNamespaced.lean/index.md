# Verification target: Target Fixtures Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcb2c937a8ce12c13a71f782ae9eb8dfaa972736",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetFixtures/Variant34c958352669e513f18b01db5283440e94a71e33c20a521fe702acb4f09a14fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcb2c937a8ce12c13a71f782ae9eb8dfaa972736`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetFixtures/Variant34c958352669e513f18b01db5283440e94a71e33c20a521fe702acb4f09a14fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetFixtures/Variant34c958352669e513f18b01db5283440e94a71e33c20a521fe702acb4f09a14fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Semantics.Atlas.Obstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [occurrences](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/occurrences.md) | 18 | `declaration-track:9325764abddccc33ffc780b2340849fec1e4c6ddf50e4c54e0bd139c9363a9d7` |
| 2 | `theorem` | [same_local_name_distinct_occurrences](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/same-local-name-distinct-occurrences.md) | 23 | `result-track:0980a70066a6853ad3b5e154dcc0e0232f54bc755e47a47dd8e709bc040321a6` |
| 3 | `abbrev` | [parityTargets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/paritytargets.md) | 28 | `declaration-track:f6b9b6a9665f8b68107f45e0f1291c4954938e656a32813e06c2d0eb929f4788` |
| 4 | `theorem` | [parity_quotient_exact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/parity-quotient-exact.md) | 40 | `result-track:7c2c1ce213a26e03420ccfa7504777ff3a8887f73287060636e5aea3f7a4cfb5` |
| 5 | `theorem` | [quotient_merges_invisible_pair](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/quotient-merges-invisible-pair.md) | 52 | `result-track:2eb344fca4d87ef0102ff684b0ee5a891092472156f6f9851a53607c31c666af` |
| 6 | `theorem` | [quotient_retains_required_distinction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/quotient-retains-required-distinction.md) | 56 | `result-track:eccae69da348255bf6798a8c645964d0afb14c1dd8a0db944834a51452f13c1a` |
| 7 | `def` | [coarse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/coarse.md) | 63 | `declaration-track:3daa93b428538402a5d3f24dd9c6c12f7b151b9564636869d6d1bb90b236979d` |
| 8 | `def` | [parityCollision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/paritycollision.md) | 68 | `declaration-track:2bc14278ddbab9b1d0bb1c8db92de9bb1f0fe3492733967b46bde86c0c3d306e` |
| 9 | `theorem` | [coarse_cannot_recover_parity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/coarse-cannot-recover-parity.md) | 72 | `result-track:a09b85dbe6fbd1b026438a5e3012437984a3dc2aeb142c194a586ff4d6387590` |
| 10 | `theorem` | [exhaustive_check_rejects_collision](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/exhaustive-check-rejects-collision.md) | 76 | `result-track:d8907fc2cc66d9e6ad166ea6bc588cebc0a7fcea726cbadcd64de9f79197e690` |
| 11 | `theorem` | [exhaustive_check_certifies_target_coordinate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/exhaustive-check-certifies-target-coordinate.md) | 79 | `result-track:70b9e35de2704f00276cc24704f95b5b0133d5607eebb42bc6313d2c48756eb4` |
| 12 | `theorem` | [target_coordinate_refines_coarse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/target-coordinate-refines-coarse.md) | 83 | `result-track:d038cdf9f69ef6d1aac4a30778488425b7a18cb4e759396341d81b540599047a` |
| 13 | `theorem` | [refinement_restores_recoverability](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/refinement-restores-recoverability.md) | 87 | `result-track:4fbb0a665a37922370beeb0f1291b66a7044637817246f35f9a020eee9f5173f` |
| 14 | `theorem` | [refined_coordinate_family_separates](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TargetFixturesNamespaced.lean/declarations/refined-coordinate-family-separates.md) | 91 | `result-track:a931bbd64decb8536f5a1ff781ac7bb20a471a30ddfe347d4758854c66e741da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5489bf43856f4470bfa4d68c2d994195b17274d905e9fdce06fb8fe4f0d8decf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetFixtures/Variant34c958352669e513f18b01db5283440e94a71e33c20a521fe702acb4f09a14fe.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TargetFixtures/Variant34c958352669e513f18b01db5283440e94a71e33c20a521fe702acb4f09a14fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
