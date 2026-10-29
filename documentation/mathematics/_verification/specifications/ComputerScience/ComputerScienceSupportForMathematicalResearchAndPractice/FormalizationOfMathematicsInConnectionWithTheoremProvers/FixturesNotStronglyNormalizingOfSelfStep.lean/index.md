# Verification target: Fixtures Not Strongly Normalizing Of Self Step

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37c1f413eccd1c7581963b7c5db4a4811fde0fcf",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantd1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37c1f413eccd1c7581963b7c5db4a4811fde0fcf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantd1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantd1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Reduction.FiniteHeight` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_strongly_normalizing_of_self_step](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/not-strongly-normalizing-of-self-step.md) | 17 | `result-track:b13d14bcd7fd9be3aa55ca827aed03a457d30ece616c4fb463a747e6e26972f8` |
| 2 | `theorem` | [erased_self_loop_control](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/erased-self-loop-control.md) | 27 | `result-track:1ebdfc1763b84b357a1d6d26ae9aeca3ace145dd63ed754b5feb1c40e995ad9f` |
| 3 | `def` | [ToggleForward](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/toggleforward.md) | 35 | `declaration-track:55f300659515563f534416c9c229911f2d5b8c17d205d17d125a0159afb2d0b7` |
| 4 | `def` | [ToggleBackward](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/togglebackward.md) | 38 | `declaration-track:40b558ab094df8417a9b908de977661cbee47fabd20e97c4c3d3c8f07ba64229` |
| 5 | `theorem` | [toggle_components_terminate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/toggle-components-terminate.md) | 41 | `result-track:32e881e4a9b9e366ff5fbe264a2766ac7b4b986c681e06193790fb04a6fa075a` |
| 6 | `theorem` | [toggle_union_diverges](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/toggle-union-diverges.md) | 52 | `result-track:0c050930ea1bf302b3b21057ba6e0eb5055a10035a2ed6d34387ce64955de390` |
| 7 | `inductive` | [UnboundedAdminState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/unboundedadminstate.md) | 66 | `declaration-track:32eccc598480c2174d706146b2679f5e85fb906f70a475713e9f1155b67212f8` |
| 8 | `inductive` | [UnboundedAdminStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/unboundedadminstep.md) | 72 | `declaration-track:d5421b516198bfd0e8485ff221afbff2cde9c6f18ba8fe54a24db9b6c3076c49` |
| 9 | `def` | [unboundedAdminEncoding](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/unboundedadminencoding.md) | 77 | `declaration-track:66f5f0edb0b239a595bfd56d01d7b373880c25ebaa8b5d9a15fa1718fe68cdc2` |
| 10 | `def` | [unboundedAdminMeasure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/unboundedadminmeasure.md) | 82 | `declaration-track:98ca7433caf8b049cb15ca0f12ec41d3bffbeb5a13ee218f045daaa239899d89` |
| 11 | `def` | [UnboundedAdministrative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/unboundedadministrative.md) | 87 | `declaration-track:f9ece72d424a8c02e37aa4ea180221f9c9d5f31663cdb84ce09c3fe57296d870` |
| 12 | `theorem` | [unbounded_admin_strongly_normalizing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/unbounded-admin-strongly-normalizing.md) | 91 | `result-track:5ce6dc1c3c8d13f3aa873eb56929912d240ab43e712bf2976566fb0371ea96e3` |
| 13 | `theorem` | [unbounded_admin_chain_trace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/unbounded-admin-chain-trace.md) | 105 | `result-track:afe937d86965339e9c7ee1a207058df5747a4046907fa8c35fc3aa9b2e6b8a60` |
| 14 | `theorem` | [unbounded_admin_root_has_no_budget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/unbounded-admin-root-has-no-budget.md) | 112 | `result-track:7d72143a0d6cf96fc4329b95e33c3b0eac67938686d1c88f9eeefdc405911172` |
| 15 | `theorem` | [unbounded_admin_has_no_natural_rank](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/unbounded-admin-has-no-natural-rank.md) | 117 | `result-track:0ae322cb83a2ba6ef3794471f3b5d504dad4be8e3ed3e9095a78307d7311c94b` |
| 16 | `theorem` | [target_encoding_does_not_reflect_normal_forms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FixturesNotStronglyNormalizingOfSelfStep.lean/declarations/target-encoding-does-not-reflect-normal-forms.md) | 126 | `result-track:6357862e301db6da238816ff339550da23b1cfd14bdccdfdbe4e2d5e56b1308c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe8947302cf3827494f577410a30280c8bb3929046b7f0ad2bb5c7728830ed6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantd1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantd1a4643afd761d127840df957e6ff890ecc6179dee3188fc848d129cce5908c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
