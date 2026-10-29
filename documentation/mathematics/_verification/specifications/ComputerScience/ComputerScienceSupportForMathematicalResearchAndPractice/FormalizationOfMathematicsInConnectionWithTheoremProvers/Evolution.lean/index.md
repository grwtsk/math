# Verification target: Evolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "175d5cb8dd6cb20c82e51a9fa43f0352903eb45b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variant18c0a0ecfcfe9322cc2eea6d6e1fc8f404a3e8f5e112f0de764b744ab218a8a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `175d5cb8dd6cb20c82e51a9fa43f0352903eb45b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variant18c0a0ecfcfe9322cc2eea6d6e1fc8f404a3e8f5e112f0de764b744ab218a8a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variant18c0a0ecfcfe9322cc2eea6d6e1fc8f404a3e8f5e112f0de764b744ab218a8a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Topology` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EvolutionLaw](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/declarations/evolutionlaw.md) | 19 | `declaration-track:bece7bbc89959f91767a1454a2d6655c86c22f3e865aede1fa2854e514048547` |
| 2 | `def` | [continuationSpace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/declarations/continuationspace.md) | 25 | `declaration-track:a9363037b9a2ffdc05b518050a0b755947575cf1afe4b16c13574f49587fa599` |
| 3 | `def` | [gatedContinuationSpace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/declarations/gatedcontinuationspace.md) | 33 | `declaration-track:13e70a7849c11060a31d570fe25588aecdc089ed065825bb2b662e0bf3519980` |
| 4 | `structure` | [IntrinsicGate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/declarations/intrinsicgate.md) | 45 | `declaration-track:42f575467b54f9d9d250e8a5e12b74239558186b75f01bcaa87aef58115b7b89` |
| 5 | `theorem` | [intrinsicGate_untruncated](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/declarations/intrinsicgate-untruncated.md) | 59 | `result-track:385b2d8ac7a28885863800f168ebe40987f4237c9b61c961a9be65ee2db5e0c5` |
| 6 | `def` | [IsAuthoritativeGate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/declarations/isauthoritativegate.md) | 72 | `declaration-track:aae3bef3ee3d9b298ead2131e769b00f3a50a8d258211e7b3561fb969e50d2fc` |
| 7 | `theorem` | [truncatingGate_not_authoritative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/declarations/truncatinggate-not-authoritative.md) | 82 | `result-track:f613c795787a59530ef6ca711b0aba87aa22b52293d3eb792554f46a97956c14` |
| 8 | `structure` | [CompleteDerivation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Evolution.lean/declarations/completederivation.md) | 99 | `declaration-track:2ed1a2c65e2fb43894c6ef58c51ea0268f37453eb6bbe81caa5319712420b02d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d47f8ffd3059a8e1d64fee4095110664349d07d603f8c20aa8d12d2d2da184b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variant18c0a0ecfcfe9322cc2eea6d6e1fc8f404a3e8f5e112f0de764b744ab218a8a1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evolution/Variant18c0a0ecfcfe9322cc2eea6d6e1fc8f404a3e8f5e112f0de764b744ab218a8a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
