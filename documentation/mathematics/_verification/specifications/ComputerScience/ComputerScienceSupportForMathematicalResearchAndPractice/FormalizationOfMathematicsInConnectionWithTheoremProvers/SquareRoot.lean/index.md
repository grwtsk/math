# Verification target: Square Root

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "052a51a5d44e9be857a0828873ecb630bf4d718c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Varianta8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `052a51a5d44e9be857a0828873ecb630bf4d718c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Varianta8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Varianta8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Correspondence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniformTraceScaleCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/uniformtracescalecertificate.md) | 22 | `declaration-track:6ddb1617247ccb2225fdab4e266466c163ae50c388f68cb0d29f5f2ccde6c6a7` |
| 2 | `structure` | [UniformTraceScaleObligation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/uniformtracescaleobligation.md) | 39 | `declaration-track:d27258cba184224f7c4c4b85a1fc9050e407b29d7863201708dc04215ba93cc2` |
| 3 | `theorem` | [boundaryLaw_squareRoot_assembly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/boundarylaw-squareroot-assembly.md) | 50 | `result-track:15d4ef7eb2ff647e0f91a93e7dabcc8de74a3d6d650581566938450faf058087` |
| 4 | `theorem` | [committedRealization_squareRoot_assembly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/committedrealization-squareroot-assembly.md) | 69 | `result-track:1e814255f141244e1a063caee9fa6d6d28d656efcf913b9dffb3b22bfd1378ce` |
| 5 | `theorem` | [robustPerturbation_squareRoot_assembly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/robustperturbation-squareroot-assembly.md) | 95 | `result-track:c27f4828e496d79b7e4a03f5e107ae00debfb8b2902cb56c0cd9c5788d6ac18f` |
| 6 | `theorem` | [commonBoundaryTrace_squareRoot_assembly](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/commonboundarytrace-squareroot-assembly.md) | 112 | `result-track:e3ba6fef5b785c69b6b4c5b7d36fba45e541d5a213e5f19be6f8306f9c1623c4` |
| 7 | `inductive` | [RequiredFormalObligation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/requiredformalobligation.md) | 157 | `declaration-track:180ff407f254a781301b13e9088d5f65bd86a2ec61188d1354912cdd93c89e2c` |
| 8 | `structure` | [FormalObligationStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/formalobligationstatus.md) | 180 | `declaration-track:9cff10ec1312f80c3c8d298ca0f97728f7adeffdb64020a591a413b22ee408a1` |
| 9 | `def` | [requiredFormalObligationStatuses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/requiredformalobligationstatuses.md) | 185 | `declaration-track:fa304e526fcd6362f33e2b4cfa06bbf96aa6a79a8451cb95f2d848ae4e802675` |
| 10 | `def` | [provedFormalObligationCount](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/provedformalobligationcount.md) | 229 | `declaration-track:6f33e2bcfc55007c2beba9776c99c6ce8a4c34273d41cf4bf52b3b6ac604ddf0` |
| 11 | `def` | [openFormalObligationCount](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/openformalobligationcount.md) | 233 | `declaration-track:46cd75547c419d4d21ecdb8d6aba14cc32c12a6af245b736684e7012ad15741a` |
| 12 | `theorem` | [requiredFormalObligation_count](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/requiredformalobligation-count.md) | 237 | `result-track:9ccd6b428ba4ddff2ca6d25ba515791e032ad90dd957e35acf9c3478bc7e4d15` |
| 13 | `theorem` | [provedFormalObligation_count](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/provedformalobligation-count.md) | 241 | `result-track:10d5587923855c22edbf3ae0d74f42d09328b8a1e06097a705f789c1414e6a43` |
| 14 | `theorem` | [openFormalObligation_count](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SquareRoot.lean/declarations/openformalobligation-count.md) | 245 | `result-track:2853f63836d90640abc85715319f7761d3f623b678d17fd58e2055d74e9ad410` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3fdbffac88ff0615feb32098ec398b9e38867d001a661eecf3b5df160b4436d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Varianta8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SquareRoot/Varianta8440acbcde0df0b57ef31db6c4e97387127c7326caecfc5e47c8860229550dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
