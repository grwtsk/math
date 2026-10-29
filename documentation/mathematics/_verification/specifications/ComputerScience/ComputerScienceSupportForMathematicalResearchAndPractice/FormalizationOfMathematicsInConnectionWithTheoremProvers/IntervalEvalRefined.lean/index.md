# Verification target: Interval Eval Refined

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4389c9871d08669b1ef5b23c4546296b381b9551",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4389c9871d08669b1ef5b23c4546296b381b9551`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/sinintervalrefined.md) | 46 | `declaration-track:af75f34436f4c375550d458a4bf14e284ecaa9e6a0006743dc51e4486a6c9e2f` |
| 2 | `theorem` | [mem_sinIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/mem-sinintervalrefined.md) | 53 | `result-track:80f4c864c0dc1379caae92a22ade7c872bb8f0ebe86df5049abca04029eb43d2` |
| 3 | `def` | [cosIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/cosintervalrefined.md) | 66 | `declaration-track:0900fd10057ab8eb1c0894c8563026166cb5a4ba1eb8690aceb2a1d7848c4a2b` |
| 4 | `theorem` | [mem_cosIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/mem-cosintervalrefined.md) | 73 | `result-track:9eb5b48a4c2372b880184eebe33ea7457a26f466b451a3645553869ba7fe652e` |
| 5 | `def` | [logIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/logintervalrefined.md) | 86 | `declaration-track:9b17acc6a37a84d15fcce444708e6dc806950aa97682432e452eb8c66ad35a11` |
| 6 | `theorem` | [mem_logIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/mem-logintervalrefined.md) | 95 | `result-track:d1c4220578145250876abbd7c870986241c0a93573ca367657d7c7661a72c0d0` |
| 7 | `def` | [atanhIntervalRefined'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/atanhintervalrefined.md) | 120 | `declaration-track:368d08f02b339389f845ddee3b0157379b4e182e323448a195d39140de2783c7` |
| 8 | `def` | [atanhIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/atanhintervalrefined-source-edition-2.md) | 130 | `declaration-track:8e8ec96ca43ec5cfd424f6f750b23a2805c3f15fa8cf9f4cab9a134811601a01` |
| 9 | `theorem` | [mem_atanhIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/mem-atanhintervalrefined.md) | 137 | `result-track:70ee9a1167c47622bd8e7fca8fa359723d7e01dfdfbc9d63b32858b377917a48` |
| 10 | `def` | [evalIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/evalintervalrefined.md) | 181 | `declaration-track:7930539b44603cb4f6d6661d5179f8fdd210dec7ac097acb2b4d7af06cb62b6e` |
| 11 | `def` | [evalIntervalRefined1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/evalintervalrefined1.md) | 205 | `declaration-track:0e36d02490d2e06914618cf8dc5b8a2e03a3c01b1377084c7c4eef017297f97c` |
| 12 | `theorem` | [evalIntervalRefined_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/evalintervalrefined-correct.md) | 209 | `result-track:8a3ba0a7f5dac8a6999fe5707a2d53cfaa47fbede202f2beca720270e99afe36` |
| 13 | `theorem` | [evalIntervalRefined1_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/evalintervalrefined1-correct.md) | 239 | `result-track:77b1753dcc84860db632d2920480367c89925ceaf6d6c3677b0c51b0b579beea` |
| 14 | `def` | [DualInterval.expRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/dualinterval-exprefined.md) | 250 | `declaration-track:237bd8f3b873924f862f352511c09585e47a62fc18cae44b7543750ab391e9a6` |
| 15 | `def` | [DualInterval.sinRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/dualinterval-sinrefined.md) | 255 | `declaration-track:129ac53d9836d9cc4a14e53d6ca4597ed3b891491d4dd459cc07ce961f315481` |
| 16 | `def` | [DualInterval.cosRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/dualinterval-cosrefined.md) | 260 | `declaration-track:3ecce8e4488cf8c480d60ce682004c653333a9846ad32dbd4adcdf1b72d2df57` |
| 17 | `def` | [evalDualRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/evaldualrefined.md) | 266 | `declaration-track:ddfb6540dc383d02620093b5ce8da65d0731108b7b80314dce77a289ef0d2319` |
| 18 | `def` | [evalDualRefined1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/evaldualrefined1.md) | 290 | `declaration-track:ac9f37e6696791755aca763e654c6d05189c4c03abe0b8dfca15ecf001f6ccf2` |
| 19 | `theorem` | [DualInterval.expRefined_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/dualinterval-exprefined-val-mem.md) | 296 | `result-track:0d486330f395f3ce10b8e5a06ee8dd943de7b9167e209f4f0315d6a3632e4ee4` |
| 20 | `theorem` | [DualInterval.sinRefined_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/dualinterval-sinrefined-val-mem.md) | 302 | `result-track:55fecee020cc7f9e6eeb4ad182aed88ca715c92841d70e3ca6cab7a3e95b9863` |
| 21 | `theorem` | [DualInterval.cosRefined_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/dualinterval-cosrefined-val-mem.md) | 308 | `result-track:dffd0d11b3bdff86f3ab2c6202c2962db0dd4731257149b1944fe8e0963f6b15` |
| 22 | `theorem` | [DualInterval.atan_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/dualinterval-atan-val-mem.md) | 314 | `result-track:9c28e9e29e616d48f730a59e7172e0ea1ab40008a0f37824cceeaee6cfcdd59d` |
| 23 | `theorem` | [DualInterval.arsinh_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/dualinterval-arsinh-val-mem.md) | 320 | `result-track:bc9be16507a9e89229a6799dc7eb0ae16266c2deefac828d16d7b6d7c6e9bea1` |
| 24 | `theorem` | [evalDualRefined_val_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/evaldualrefined-val-correct.md) | 326 | `result-track:1baeb464fc3163adba0698c2f08bfe7da8e78e8cfdfbb266a8ad6f3e0b1869ef` |
| 25 | `theorem` | [evalDualRefined1_val_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefined.lean/declarations/evaldualrefined1-val-correct.md) | 356 | `result-track:05f448f798f178771537535a92c29943a28159a9ec2332973729c4bb11de45ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a706f6f2f72d9a09b99a63c48786c5b7bb6fd5fee57ed03cd370a278401330f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant2482f6656e57d3ca1e84b72818ae29f709ff717ccc4daa4060240e533ff6890c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
