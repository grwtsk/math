# Verification target: Ricci Inspired Surgery

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f0bd28a6412651525fc77e24b2a344501fa56ca",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RicciInspiredSurgery/Variantc6f4ff0760907bd80708f0dcf70d60f6052572f2203c18c495230fe8585ad283.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RicciInspiredSurgery.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RicciInspiredSurgery.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f0bd28a6412651525fc77e24b2a344501fa56ca`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RicciInspiredSurgery/Variantc6f4ff0760907bd80708f0dcf70d60f6052572f2203c18c495230fe8585ad283.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RicciInspiredSurgery/Variantc6f4ff0760907bd80708f0dcf70d60f6052572f2203c18c495230fe8585ad283.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.Derived.TorsionFlow` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CanonicalTorsionNeighborhood](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RicciInspiredSurgery.lean/declarations/canonicaltorsionneighborhood.md) | 16 | `declaration-track:e735f95d7f0582c5d03c764d2655a5d7c59b4c82ad15f2c2389c1a788f04abb6` |
| 2 | `structure` | [TorsionSurgeryStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RicciInspiredSurgery.lean/declarations/torsionsurgerystep.md) | 22 | `declaration-track:f7ffc134ee1a4a11f757213e18261d58bb0c4337b2b5a7977eec35d6eb4ebcab` |
| 3 | `def` | [surgery_step_to_flow_step](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RicciInspiredSurgery.lean/declarations/surgery-step-to-flow-step.md) | 28 | `declaration-track:6aa6b38a808a0c252082dcf46d69df318881aba65152dd9702b98ec68b5dd32e` |
| 4 | `theorem` | [surgery_step_euler_preserved](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RicciInspiredSurgery.lean/declarations/surgery-step-euler-preserved.md) | 34 | `result-track:275c12e6714dbdf3d227af28b2957f9d85e6b485bb3ff92939150feacf26716e` |
| 5 | `theorem` | [surgery_step_mass_nonincreasing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RicciInspiredSurgery.lean/declarations/surgery-step-mass-nonincreasing.md) | 40 | `result-track:7aa0c2deda7bdb43b8bfb290dfe9fb8d1e7e597fef4a31abaab43d43c48b654c` |
| 6 | `theorem` | [surgery_two_step_mass_nonincreasing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RicciInspiredSurgery.lean/declarations/surgery-two-step-mass-nonincreasing.md) | 46 | `result-track:e73b3389a9faad7b7f2eac47c56475caca597d045eef3a412744b8b0cc6accd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25860b4bf9390f5d93bd076fd4a0eb48249aa355340ffab137850774f859100d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RicciInspiredSurgery/Variantc6f4ff0760907bd80708f0dcf70d60f6052572f2203c18c495230fe8585ad283.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RicciInspiredSurgery/Variantc6f4ff0760907bd80708f0dcf70d60f6052572f2203c18c495230fe8585ad283.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
