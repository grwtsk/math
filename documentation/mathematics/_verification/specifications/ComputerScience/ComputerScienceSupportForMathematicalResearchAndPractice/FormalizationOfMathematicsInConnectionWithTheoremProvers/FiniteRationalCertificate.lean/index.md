# Verification target: Finite Rational Certificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5e95371ef447fd0e23618227a85a647463f177d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Varianta328df0caf9aadbb14473681d66c785365c2149d3498ca5ec33dd4886b636ea4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5e95371ef447fd0e23618227a85a647463f177d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Varianta328df0caf9aadbb14473681d66c785365c2149d3498ca5ec33dd4886b636ea4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Varianta328df0caf9aadbb14473681d66c785365c2149d3498ca5ec33dd4886b636ea4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verifiedHeight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/verifiedheight.md) | 9 | `declaration-track:7e24d77610ee595f14f024a28226bd49429cc96dbfcb36642de9b96592bf8b39` |
| 2 | `def` | [limitingNormalization](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/limitingnormalization.md) | 10 | `declaration-track:f8e1a527fcce27b7eae981f0b220dfcc6ff9f5c6b36de5e4cc345eba540563b2` |
| 3 | `def` | [rationalTail](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/rationaltail.md) | 11 | `declaration-track:905e4575c7c7d414f9dbbfc09fa822dbbaee3d5085060f2c5d8fca7a6da175eb` |
| 4 | `def` | [finiteBudget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/finitebudget.md) | 12 | `declaration-track:6a83ef05f41a9e044b4f32b1f3119a988818bde4d75e06f490f8059ae2dddafd` |
| 5 | `theorem` | [budget160_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/budget160-lt.md) | 15 | `result-track:a503854021c709d90e1dbbe0b272b05235f73e3d38407a79b04c6c847fba1d46` |
| 6 | `theorem` | [budget176_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/budget176-lt.md) | 18 | `result-track:6f254a67babc9202f90da522af629c8cf239f65c510d21df5b4f94168d00d105` |
| 7 | `theorem` | [fixed_prime_coarse_constant](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/fixed-prime-coarse-constant.md) | 21 | `result-track:ed6d393b40e92898053cfb5e3216be13abf3b74cf51ce56b862668bf19c718d5` |
| 8 | `theorem` | [fixed_prime_coarse_lt_eleven](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/fixed-prime-coarse-lt-eleven.md) | 24 | `result-track:b8abde9a2ebbb4a0053f96c28bab08da3eb2120fd96945a626babff648451b08` |
| 9 | `theorem` | [transfer160_value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/transfer160-value.md) | 27 | `result-track:30958becc40dd0f4fe01110c0afbf04a8e4b6502d7a1e9758c851f9afffff828` |
| 10 | `theorem` | [transfer160_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/transfer160-gt.md) | 30 | `result-track:09784e4cbf8c87599e9545573578c39a7f24b576f69b03146e196c6c5f425899` |
| 11 | `theorem` | [transfer176_value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/transfer176-value.md) | 32 | `result-track:0df3b58f96512440c5245055a0d791df2b40151d7b54516f7c2681a35bbd9435` |
| 12 | `theorem` | [transfer176_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificate.lean/declarations/transfer176-gt.md) | 35 | `result-track:8ebf2f1cd7916188509a75292e3a3978f9ac6bcaad52d71ff73f44a552b3f71d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55c8ed9254c506ccc56481ea780301bde677159703d89aba96bcc05ac9d09829 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Varianta328df0caf9aadbb14473681d66c785365c2149d3498ca5ec33dd4886b636ea4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Varianta328df0caf9aadbb14473681d66c785365c2149d3498ca5ec33dd4886b636ea4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
