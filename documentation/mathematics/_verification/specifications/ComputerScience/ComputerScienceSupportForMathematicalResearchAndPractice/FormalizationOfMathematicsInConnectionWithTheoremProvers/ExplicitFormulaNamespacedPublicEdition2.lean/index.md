# Verification target: Explicit Formula Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30e63f2dee5264818b4616193391a26b23d30c23",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant029a6c2c636a2c2cf53ae200166027b4dc894e3aebb9bde5b283752d6fc1e4d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30e63f2dee5264818b4616193391a26b23d30c23`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant029a6c2c636a2c2cf53ae200166027b4dc894e3aebb9bde5b283752d6fc1e4d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant029a6c2c636a2c2cf53ae200166027b4dc894e3aebb9bde5b283752d6fc1e4d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiCriticalRate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/declarations/centeredtwistedpsicriticalrate.md) | 36 | `declaration-track:ee09cc59cbf74779158c2e61adb035858a741dceb305f289feac6647d8fd1bd4` |
| 2 | `def` | [CenteredTwistedPsiCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/declarations/centeredtwistedpsicriticalbound.md) | 41 | `declaration-track:27144a54f2a83e4168111fb7a2fba271a524604adfb3c5c509fdeef8df01621f` |
| 3 | `theorem` | [centeredTwistedPsiCriticalRate_le_halfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/declarations/centeredtwistedpsicriticalrate-le-halfplusepsilon.md) | 50 | `result-track:d37b5516497a28bcf402ae06a08124786375379e220c32c81fd420f38eab024b` |
| 4 | `theorem` | [centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/declarations/centeredtwistedpsicriticalbound-implies-halfplusepsilon.md) | 107 | `result-track:b38a259b0e5155422deb5a41f9b553407d00ed85f8099b8c1862b0a6f29c4f2e` |
| 5 | `structure` | [PrimitiveExplicitFormulaSquare](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/declarations/primitiveexplicitformulasquare.md) | 128 | `declaration-track:ccae95afdf20736a7ed9cde4509ce5f0aa7ca442482baaa04ee136ad49126d98` |
| 6 | `def` | [IsCenteredCriticalRateBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/declarations/iscenteredcriticalratebound.md) | 149 | `declaration-track:142bb4feef360712d21e52d3e6637a4c8562854ec5e546b813cd1ede24c54c7a` |
| 7 | `def` | [PrimitiveExplicitFormulaBounds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/declarations/primitiveexplicitformulabounds.md) | 159 | `declaration-track:cf314231f064110b6932e5d539c9b5e22a93ebcbd7382f37494a4ef1a30eed2f` |
| 8 | `theorem` | [grh_implies_centeredTwistedPsiCriticalBound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/declarations/grh-implies-centeredtwistedpsicriticalbound.md) | 173 | `result-track:cbef07460982c8a64a942ea2965956f10ca59afff7e688e4221f44d3972f8fb8` |
| 9 | `theorem` | [grh_implies_centeredTwistedPsiHalfPlusEpsilon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExplicitFormulaNamespacedPublicEdition2.lean/declarations/grh-implies-centeredtwistedpsihalfplusepsilon.md) | 243 | `result-track:b006ac20a3776aeb8e0c3f0b920ca252cafdfc09ae29a344c698095cad6f0ea7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4242b8f378eec3543689970a62ae07bd750055fb584323ff0d49fa417896f54d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant029a6c2c636a2c2cf53ae200166027b4dc894e3aebb9bde5b283752d6fc1e4d9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitFormula/Variant029a6c2c636a2c2cf53ae200166027b4dc894e3aebb9bde5b283752d6fc1e4d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
