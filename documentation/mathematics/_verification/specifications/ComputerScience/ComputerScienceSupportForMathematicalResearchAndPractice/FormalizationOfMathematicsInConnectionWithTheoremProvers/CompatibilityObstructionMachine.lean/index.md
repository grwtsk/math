# Verification target: Compatibility Obstruction Machine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "393482a5d32cc494754d6bb5582b26d411f2f382",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibilityObstructionMachine/Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompatibilityObstructionMachine.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompatibilityObstructionMachine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `393482a5d32cc494754d6bb5582b26d411f2f382`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibilityObstructionMachine/Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibilityObstructionMachine/Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.CompatibilityObstructionMachine` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compatibility_machine_has_static_invariant](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompatibilityObstructionMachine.lean/declarations/compatibility-machine-has-static-invariant.md) | 19 | `result-track:83d4a346dc6441847b743797abf73958cbe868c694bc55a35a72eb19a367fcc6` |
| 2 | `theorem` | [compatibility_machine_has_forbidden_configuration](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompatibilityObstructionMachine.lean/declarations/compatibility-machine-has-forbidden-configuration.md) | 24 | `result-track:8be7fa98e58babffbb637c43df187df981cd41336b2739184b04050233f50f23` |
| 3 | `theorem` | [compatibility_machine_has_obstruction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompatibilityObstructionMachine.lean/declarations/compatibility-machine-has-obstruction.md) | 29 | `result-track:3e3cf64db7e163434d22867a2f4d67023928172a477fd25c5496dea6a8ba15e6` |
| 4 | `theorem` | [compatible_implies_allowed_if_supplied](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompatibilityObstructionMachine.lean/declarations/compatible-implies-allowed-if-supplied.md) | 34 | `result-track:a88d692a7bf041e1a108182b7823c37b66e4d180b55142ea40e5b80c0666409f` |
| 5 | `theorem` | [forbidden_forces_obstruction_if_supplied](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompatibilityObstructionMachine.lean/declarations/forbidden-forces-obstruction-if-supplied.md) | 40 | `result-track:8ef8b9d55cbb84a9952f7a0f8d82379b0da201476aa82ccb081737d1e29d2fce` |
| 6 | `theorem` | [riemann_profile_is_theorem_target](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompatibilityObstructionMachine.lean/declarations/riemann-profile-is-theorem-target.md) | 46 | `result-track:95582b11393437f35e10b40ee3b664250d1ed8deed7f1af94aaaf7c46f1f5935` |
| 7 | `theorem` | [p_vs_np_profile_is_speculative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CompatibilityObstructionMachine.lean/declarations/p-vs-np-profile-is-speculative.md) | 51 | `result-track:028688727ac105668190059675bd533d210810ec6b7bfbaed9f73ebbce3d1ab9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43202a307cac44da1231e9a9162c4e34a4add2f651d64d6ac772d35d16dd6443 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibilityObstructionMachine/Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibilityObstructionMachine/Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
