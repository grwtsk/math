# Verification target: Symmetry Critical Involution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b5a0ef817dfd54694ce2b9a53448a31b0d94ce3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantf3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b5a0ef817dfd54694ce2b9a53448a31b0d94ce3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantf3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantf3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Lineage` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalInvolution](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/declarations/criticalinvolution.md) | 15 | `declaration-track:08ce46c9abd36ada37546ca9db9aa3f76490c8bda5aa13948d5f69faf3b4e004` |
| 2 | `structure` | [InvolutionInvariantCell](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/declarations/involutioninvariantcell.md) | 18 | `declaration-track:c11ddb9d97248dfe95e2bc12ade2d0e4eb87e0d2d9fa4efe6786e319c9a08216` |
| 3 | `structure` | [XiCriticalSymmetry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/declarations/xicriticalsymmetry.md) | 27 | `declaration-track:413670cb1b8e3d50c5f0c95e43b5d8c6f19ccbe88d0e850a28b8521cc6ebe137` |
| 4 | `theorem` | [unique_zero_in_invariant_cell_fixed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/declarations/unique-zero-in-invariant-cell-fixed.md) | 34 | `result-track:c43d55a5ebe704271a1e533f2980bdd56f959d8706f144b44d2a125b5cf16025` |
| 5 | `theorem` | [fixed_by_criticalInvolution_re_eq_half](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/declarations/fixed-by-criticalinvolution-re-eq-half.md) | 53 | `result-track:c1eecfe1f9c89afbfddcad06039b659f64cad939efce7ef45dd306f2e476a110` |
| 6 | `theorem` | [unique_zero_in_invariant_cell_on_line](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/declarations/unique-zero-in-invariant-cell-on-line.md) | 63 | `result-track:b00bc2a80d58bdb2661c0b987bc952bc4e6bf0b8483aa0f07c1ff3536ea2bed3` |
| 7 | `structure` | [CriticalLineCarrierCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/declarations/criticallinecarriercertificate.md) | 79 | `declaration-track:b556296d2af61e9c78c5ab4bd170a78eb1e2caad37b4d617efcb4c4804b0cf45` |
| 8 | `theorem` | [CriticalLineCarrierCertificate.ofUniqueInvariantCell](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SymmetryCriticalInvolution.lean/declarations/ofuniqueinvariantcell.md) | 88 | `result-track:27776f223f9a39af650b2114b4681f5316ac0aca3c1b0902c3696e27fb3323a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bb2f25df8062bafef84efb2c75f1f52fe85e0cdc0b118934fd940cdeda37460 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantf3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symmetry/Variantf3fb29a32970d58aeb64c5967a3347e2b9165a98950ecf8a44a4cd9f97170182.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
