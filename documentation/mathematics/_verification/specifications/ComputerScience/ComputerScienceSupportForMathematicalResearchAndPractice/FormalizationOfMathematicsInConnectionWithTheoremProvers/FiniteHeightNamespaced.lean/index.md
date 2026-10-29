# Verification target: Finite Height Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5977f6772134c674cfb23ef4f07eaaedba6f1afe",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5977f6772134c674cfb23ef4f07eaaedba6f1afe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Reduction.Simulation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listMax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/listmax.md) | 27 | `declaration-track:24ecfb43b2375eeb2b9c1f8b5e742265b9f2121a21baaceadc2eebb2ff11d635` |
| 2 | `theorem` | [listMax_nil](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/listmax-nil.md) | 31 | `result-track:a09ad5216612cae0a0b874595df29e7d6559121d4ff8f1b26e821040eb825b20` |
| 3 | `theorem` | [listMax_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/listmax-cons.md) | 32 | `result-track:fb49d2b11d5f31d63d4c9a2735a39c75a3e148619afc5ff3be85ce4e1fc9ad4c` |
| 4 | `theorem` | [le_listMax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/le-listmax.md) | 36 | `result-track:b87e0efb90acc1b3e54071d8e6833b9810ffea6167d9becdc97ee73c4b11df84` |
| 5 | `theorem` | [listMax_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/listmax-le.md) | 46 | `result-track:74d0790bd58a581e99f072805c35b9ab72dca1cd5a637a747fe2890a9c1e3ac8` |
| 6 | `theorem` | [listMax_mem_or_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/listmax-mem-or-zero.md) | 54 | `result-track:d430f75e837ccec5f54e446ac7e7a5b3d4103586715785ae8b27db5822b6d244` |
| 7 | `structure` | [FiniteReducer](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/finitereducer.md) | 70 | `declaration-track:9e0f7cc9daa190e25757953fc58a65c0419801a6ee8483337ef846d3c8d87027` |
| 8 | `def` | [FiniteReducer.height](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/finitereducer-height.md) | 81 | `declaration-track:26ceb654f2d3cb67e62574e344c6f0e3654a9a3452611a18336211fdbbeef769` |
| 9 | `theorem` | [FiniteReducer.height_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/finitereducer-height-eq.md) | 87 | `result-track:48c3bcd99b392e5a9aeb409a3c39db3c1696e4d1867ae40856ad575e95b85d38` |
| 10 | `theorem` | [FiniteReducer.height_decreases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/finitereducer-height-decreases.md) | 94 | `result-track:7ffa58fb3dcd90ff7917d0bd2186408ca908d0d680c54ab5d8db4a2d43f3be39` |
| 11 | `theorem` | [FiniteReducer.height_zero_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/finitereducer-height-zero-iff.md) | 103 | `result-track:5dee98f8da994ee6852f85095da70c8f77d7892af5c1adbf226232de5fb1aacb` |
| 12 | `theorem` | [FiniteReducer.trace_height_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/finitereducer-trace-height-bound.md) | 118 | `result-track:8f3481cef1d5a5e84c168dc5644c96efa339c3105a877a87eab796da28fd3d57` |
| 13 | `theorem` | [FiniteReducer.longest_trace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/finitereducer-longest-trace.md) | 124 | `result-track:d43b38f0083eb379fe1f3d2182d05e6ceb7a9e7e9951a8550a68bde9a0e31646` |
| 14 | `def` | [FiniteReducer.catalogueBudget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/finitereducer-cataloguebudget.md) | 141 | `declaration-track:9eeae93feeee1e89577e9c97b968893e9cf8b24af27ef533f1f88be5d2830500` |
| 15 | `theorem` | [FiniteReducer.catalogue_trace_bound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteHeightNamespaced.lean/declarations/finitereducer-catalogue-trace-bound.md) | 146 | `result-track:fede27b954479b0dd6a658621c43ed16559d837f9221ff76e75705e10039aa62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e1a2b965789ac2a1c190d201a871dea27ec16140bfc48b7cd2e4f0dd388891a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteHeight/Variant77abcfddbc3d074799d36a593793ff079ee409ebdbebd4b5c02729f4ce03c24d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
