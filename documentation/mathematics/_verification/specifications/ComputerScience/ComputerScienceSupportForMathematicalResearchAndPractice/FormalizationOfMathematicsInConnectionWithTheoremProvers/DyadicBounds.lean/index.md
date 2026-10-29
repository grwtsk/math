# Verification target: Dyadic Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56e5d82e14dfbc6936d823a36ffe770f8bb4eabd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56e5d82e14dfbc6936d823a36ffe770f8bb4eabd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEvalDyadic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkUpperBoundDyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/checkupperbounddyadic.md) | 68 | `declaration-track:20d913748f4ed98f76a74ccb31e61952dd42358b28aeb82b270f1b2badce99ec` |
| 2 | `def` | [checkLowerBoundDyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/checklowerbounddyadic.md) | 75 | `declaration-track:705d66f2e747aba35838ba4b3aa996e696092bda67dd5d854150f474df0bfaa0` |
| 3 | `def` | [checkStrictUpperBoundDyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/checkstrictupperbounddyadic.md) | 82 | `declaration-track:a105ae1f531914e93fee8ddd0a276182c7b3b253b8c760c06636965a8cc51955` |
| 4 | `def` | [checkStrictLowerBoundDyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/checkstrictlowerbounddyadic.md) | 89 | `declaration-track:b30f7141d15e5035bfb92543a4947e1d4b293194de2d90a232b493f910d42371` |
| 5 | `theorem` | [verify_upper_bound_dyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-upper-bound-dyadic.md) | 118 | `result-track:3c3fbec03005d2ceb89b790eec73c34f2bc102fc17dfc9ce6fad868529d67781` |
| 6 | `theorem` | [verify_lower_bound_dyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-lower-bound-dyadic-source-edition-2.md) | 149 | `result-track:1ac27440cd4f0b9594c8f8d4a49f3e6e7887c10e0efe1529e7406810d64189e8` |
| 7 | `theorem` | [verify_upper_bound_dyadic'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-upper-bound-dyadic-source-edition-2.md) | 178 | `result-track:3d319ecad1f46e839840d3fa54888ead34c6332364dc85bce06c50a8bc11042a` |
| 8 | `theorem` | [verify_lower_bound_dyadic'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-lower-bound-dyadic.md) | 191 | `result-track:06baed70222629d126153fc0044a287cabd8d313df3b82c9be678fa672ae48e7` |
| 9 | `theorem` | [verify_strict_upper_bound_dyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-strict-upper-bound-dyadic.md) | 208 | `result-track:595a6312e4e041fdf0d738278844a472f0a2517887c14b90a65d24e40fee10ad` |
| 10 | `theorem` | [verify_strict_lower_bound_dyadic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-strict-lower-bound-dyadic-source-edition-2.md) | 234 | `result-track:ff60c6b5f60b510cc7481286b137172f55ec457049792183d280a563a33a038c` |
| 11 | `theorem` | [verify_strict_upper_bound_dyadic'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-strict-upper-bound-dyadic-source-edition-2.md) | 259 | `result-track:cea826a0fbffd2dff650cc3e24d88d7cf86867ec339c24020cf4b496c4c72da9` |
| 12 | `theorem` | [verify_strict_lower_bound_dyadic'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-strict-lower-bound-dyadic.md) | 271 | `result-track:74efdf1c2546008ea1126f22fc5730bcfa130015dcaaf9fa5b9e28d203284f78` |
| 13 | `def` | [checkUpperBoundDyadicWithInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/checkupperbounddyadicwithinv.md) | 288 | `declaration-track:bde6994c17f8048bbd8a61016cad0d3d001e2c3f345dd951e0c02851681316d8` |
| 14 | `def` | [checkLowerBoundDyadicWithInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/checklowerbounddyadicwithinv.md) | 297 | `declaration-track:a4d0a686356a5f68bb07ad26a9b4a168d3ca0e901999c4c81d7ebdff1be285bc` |
| 15 | `def` | [checkStrictUpperBoundDyadicWithInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/checkstrictupperbounddyadicwithinv.md) | 306 | `declaration-track:79ab7f65d0501e9ae68d5e15578e4facc0501fb43da1c0fc4fc85bc2539f1df9` |
| 16 | `def` | [checkStrictLowerBoundDyadicWithInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/checkstrictlowerbounddyadicwithinv.md) | 315 | `declaration-track:1484755b05a801d92ccffa8606d77f3b0db12d26609d10222a22c1e1fefa5825` |
| 17 | `theorem` | [verify_upper_bound_dyadic_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-upper-bound-dyadic-withinv.md) | 329 | `result-track:6f2c5dd3fe5f1b528c6fba606706826a84922b88de919cfb7f3e3a60d4a85527` |
| 18 | `theorem` | [verify_lower_bound_dyadic_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-lower-bound-dyadic-withinv.md) | 352 | `result-track:9580102a4c9157b68d0b6e9dc0a5db1a57139bbc8d4e4a331214b54272fa7395` |
| 19 | `theorem` | [verify_strict_upper_bound_dyadic_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-strict-upper-bound-dyadic-withinv.md) | 375 | `result-track:6632a58ec286f66722076a38ff21cc3507abc15590e32094d0cd19990bdefead` |
| 20 | `theorem` | [verify_strict_lower_bound_dyadic_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DyadicBounds.lean/declarations/verify-strict-lower-bound-dyadic-withinv.md) | 398 | `result-track:19b14dc08f2329b766cf77b7befb43ab3fe52199276da91c0dbdc88d0ac22c49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ea62c197d458915c972166867b09c8fc34e8080c8aa72c12ca53037ab0b9ed9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DyadicBounds/Variant31a2af518c58f3b1f6d88a2deabc3d020f79e274efa0f5a6cd80b9bebde022fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
