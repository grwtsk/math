# Verification target: Finite Boundary Calculus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cc6a8741be8450b1f4646dc74d1a3d2db9eddc8",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756/Variant92b38245132eb514dac2d7a82becb95275ecd1c9ba257a178627c99a76d051e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cc6a8741be8450b1f4646dc74d1a3d2db9eddc8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756/Variant92b38245132eb514dac2d7a82becb95275ecd1c9ba257a178627c99a76d051e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756/Variant92b38245132eb514dac2d7a82becb95275ecd1c9ba257a178627c99a76d051e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FiniteBoundaryEventFamily](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryeventfamily.md) | 10 | `declaration-track:d447db06276c932c9a22091b7b9111abbaba04d942096d81c32e3a08e2cce216` |
| 2 | `def` | [finiteBoundaryEventFamilies](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryeventfamilies.md) | 19 | `declaration-track:aec4fd11a1ae78861fcc71c985c8aa36a8033f889d5d15c265645b2e2af90fa0` |
| 3 | `theorem` | [finite_boundary_event_family_count_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finite-boundary-event-family-count-declared.md) | 28 | `result-track:644972b2b78a659db307d99aa0f9195a19cf123b05cdbd1afcc1c902c8382154` |
| 4 | `inductive` | [FiniteBoundaryProvRole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryprovrole.md) | 32 | `declaration-track:c27d9ef58b4ab6128f88426326ce4bf2b1c35beb47071ca7aeb85e8fe2a7f944` |
| 5 | `def` | [finiteBoundaryProvRoles](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryprovroles.md) | 38 | `declaration-track:99730d403e07d649ab8d923f29ab51840a87f43c09aa303cd2a9ea0598cb13b8` |
| 6 | `theorem` | [finite_boundary_prov_role_count_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finite-boundary-prov-role-count-declared.md) | 44 | `result-track:9311a513542204a81318ba6109cb15e0fc7a67080a2bdcc671f18d15e35e3764` |
| 7 | `inductive` | [FiniteBoundaryEvidencePath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryevidencepath.md) | 48 | `declaration-track:80e67f4a584246a25cf03a487a6c230869a1694bdf08d46eb88cfd455a09008c` |
| 8 | `def` | [finiteBoundaryEvidencePaths](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryevidencepaths.md) | 56 | `declaration-track:2f0896aa12e3a705b8dbe29feaf8c2efbabb09a687262ae5ec692a34ae5bf597` |
| 9 | `theorem` | [finite_boundary_evidence_path_count_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finite-boundary-evidence-path-count-declared.md) | 64 | `result-track:67dfd3ac8ce9746db3d19497b99c360f366e9029def1fab178e6eeddc01687bc` |
| 10 | `inductive` | [FiniteBoundaryResidueKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryresiduekind.md) | 68 | `declaration-track:27b87bde2a5532f4aa57c1b3e2a9a416b5042643e1b2add5fe85fc72c1c5ed19` |
| 11 | `def` | [finiteBoundaryResidueKinds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryresiduekinds.md) | 79 | `declaration-track:ac6eaae237b0fea037d19d42c5c4fb740065cc0a3c0565c49c91216f0b5fd6ed` |
| 12 | `theorem` | [finite_boundary_residue_kind_count_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finite-boundary-residue-kind-count-declared.md) | 90 | `result-track:bf3bafdd0d7f13083da6adf71da5a1d7532a0263ade92a67f666c2d0815d5f28` |
| 13 | `inductive` | [FiniteBoundaryValidator](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryvalidator.md) | 94 | `declaration-track:69bbaff038a8a83ef48736be81d74ef74e34f32592233b8c1337f870698ea974` |
| 14 | `def` | [finiteBoundaryValidators](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundaryvalidators.md) | 111 | `declaration-track:5688c6059c69fd4f5c7a7aeb4966d1cd825451410ecdb3576467610c24485e52` |
| 15 | `theorem` | [finite_boundary_validator_count_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finite-boundary-validator-count-declared.md) | 128 | `result-track:268ab096201d337e15d42db9fca11dde9b0514b4da0159ee90460b5ff91378af` |
| 16 | `structure` | [FiniteBoundaryCalculusBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundarycalculusboundary.md) | 132 | `declaration-track:533100a3cee998c5201ab0603d1b9cc0b8adedf34d6e7a19607891e28d11383b` |
| 17 | `def` | [finiteBoundaryCalculusBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundarycalculusboundary-source-edition-2.md) | 145 | `declaration-track:80dcfb8c94da0529fec35b62c854cd79f0d7500fb1930dac8f81da00e9d283eb` |
| 18 | `def` | [FiniteBoundaryCalculusFiniteWitness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finiteboundarycalculusfinitewitness.md) | 158 | `declaration-track:8a7ee3f790634849dbc51df54dc516b683ca24fd77b95304c696c8ecd5790767` |
| 19 | `theorem` | [finite_boundary_calculus_finite_witness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteBoundaryCalculus.lean/declarations/finite-boundary-calculus-finite-witness.md) | 176 | `result-track:a787a1097d2b794d53ebde2578b3e16006490b77a2512a5b206bc537c6aedb4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd0e724030290f17ba8854db8b19e69d4a957fd132d4ea45d6742cd7fc3cc802 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756/Variant92b38245132eb514dac2d7a82becb95275ecd1c9ba257a178627c99a76d051e2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f46696e697465426f756e6461727943616c63756/Variant92b38245132eb514dac2d7a82becb95275ecd1c9ba257a178627c99a76d051e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
