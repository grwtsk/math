# Verification target: Scoped Proof Composition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "debf76c5360c2809353ca6c72f03984e758ec04f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScopedProofComposition.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScopedProofComposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `debf76c5360c2809353ca6c72f03984e758ec04f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Finite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.OfFn` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ScopedProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScopedProofComposition.lean/declarations/scopedproof.md) | 19 | `declaration-track:e94334f9526445003dc120b98f0bdb6249203deeb2b290dc791a10b053939521` |
| 2 | `theorem` | [ScopedProof.sound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScopedProofComposition.lean/declarations/scopedproof-sound.md) | 41 | `result-track:ff31aa5807495ca8bd52f44846a342b8c92a0625ce9f7c123b313b9681128582` |
| 3 | `def` | [regionalMaximum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScopedProofComposition.lean/declarations/regionalmaximum.md) | 63 | `declaration-track:436bcad4a90e8fb467618e8cf0d97db62b57ad863f92e5352387b152dfaf4cfd` |
| 4 | `theorem` | [le_regionalMaximum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScopedProofComposition.lean/declarations/le-regionalmaximum.md) | 67 | `result-track:75c229e303eab2363b10617fe45249635ed2bb2dfbf354aa52d39a1085885970` |
| 5 | `def` | [regionalCover](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScopedProofComposition.lean/declarations/regionalcover.md) | 77 | `declaration-track:234c4f9bedce3400a74ae9c40abb2cbda1f544dbced554769e3f4f2eb582949b` |
| 6 | `def` | [regionalCoverTail](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScopedProofComposition.lean/declarations/regionalcovertail.md) | 87 | `declaration-track:74cdbdee10ff0486c6ab387a0cfff2eb210c581ee3a068a657fa8cd7c8016609` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71edd8463dc925b6c4e4c8d73c96e103e873727821b7c58215db20f07b3f364b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Composition/Variant782fe926c759ea5cc2f35162dac9a1c3e2e1c983265024aad78462e38f3db4f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
