# Verification target: Interval Eval Refined Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c83dfd87eac9a54170b6c152970ec7ba800b89d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c83dfd87eac9a54170b6c152970ec7ba800b89d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.AD` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/sinintervalrefined.md) | 54 | `declaration-track:b7cde86b637f4274069fdd9f610f2d9a636d14e7693d7bd4d558d904f1794795` |
| 2 | `theorem` | [mem_sinIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/mem-sinintervalrefined.md) | 61 | `result-track:9fca7a2bbe965c505bafe6515907402f2e2900732faceaaf34b4e20675fef116` |
| 3 | `def` | [cosIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/cosintervalrefined.md) | 74 | `declaration-track:4eccf409ed8995bce8777f7ef17fc72b8dfae3ff0fca6efb7c2410582aae0783` |
| 4 | `theorem` | [mem_cosIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/mem-cosintervalrefined.md) | 81 | `result-track:b1a722e10c66e9af1399a79bfda9d62515923b55ade3e86decee892a20e107e2` |
| 5 | `def` | [logIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/logintervalrefined.md) | 94 | `declaration-track:56d84362e7a54d6ba45bc9b3c66d39a46067e692c6613c8c2e817c27ab6c6430` |
| 6 | `theorem` | [mem_logIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/mem-logintervalrefined.md) | 103 | `result-track:147d67fa77eb539e662e12d009f88d89a3955d1c00e25e6ae1ccafad224e2115` |
| 7 | `def` | [atanhIntervalRefined'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/atanhintervalrefined.md) | 128 | `declaration-track:5048ec86661c812816208acf347d0bce58c826c8f984aab6f49a5ce37de6b6d4` |
| 8 | `def` | [atanhIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/atanhintervalrefined-source-edition-2.md) | 138 | `declaration-track:5ee292940f0836f51a0d506241f6c9b97377cacc89d7ce9482210daaee559fef` |
| 9 | `theorem` | [mem_atanhIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/mem-atanhintervalrefined.md) | 145 | `result-track:9c9a9eb5b88ef3c909d63d05c3da72610d2d70a7e4d26be59b86c27bfabc5cbb` |
| 10 | `def` | [evalIntervalRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/evalintervalrefined.md) | 189 | `declaration-track:3408e64f4ac6d55d06bc0f5a9edb528e8b774bb518ea2b0a3b6f5328e523f87e` |
| 11 | `def` | [evalIntervalRefined1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/evalintervalrefined1.md) | 213 | `declaration-track:6e2f7f1dae29e5fe93617565a561557ddf0e6d4a4a6484d89be96020a2f04f3e` |
| 12 | `theorem` | [evalIntervalRefined_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/evalintervalrefined-correct.md) | 217 | `result-track:438d33017b3341feec5e4ddcd3744db116ab1879bcf7d54733f6f057d68e7249` |
| 13 | `theorem` | [evalIntervalRefined1_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/evalintervalrefined1-correct.md) | 247 | `result-track:263cd7d90beb8c0d14a19b7eedd6ecff0dbbcf1194207fc08bfdb619fb16af27` |
| 14 | `def` | [DualInterval.expRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/dualinterval-exprefined.md) | 258 | `declaration-track:ab93074b567f540e0fcb95a00aa7b9eb1cbc7140f46ea17c4a3cde2deb523503` |
| 15 | `def` | [DualInterval.sinRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/dualinterval-sinrefined.md) | 263 | `declaration-track:59532e25d4497ac8a57a676f6efee7c2a3d48b7ebebe11982b17b6b52fd98c09` |
| 16 | `def` | [DualInterval.cosRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/dualinterval-cosrefined.md) | 268 | `declaration-track:54fea4802a46ce1193d4d7959790b03067e868a2f0b406acbfa2cde31763e324` |
| 17 | `def` | [evalDualRefined](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/evaldualrefined.md) | 274 | `declaration-track:ba87938d40b132fcd8aa2d2124feae98b2e41e179cac254777af223e784ac2b6` |
| 18 | `def` | [evalDualRefined1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/evaldualrefined1.md) | 298 | `declaration-track:7041554c480a1c22029ab226d7fff155db3dfe9b76772e39fb9232c7a7926565` |
| 19 | `theorem` | [DualInterval.expRefined_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/dualinterval-exprefined-val-mem.md) | 304 | `result-track:072b4b3c165a5a085f09313aef7c9904c82af4545a43bb0435236ecc40c8f34a` |
| 20 | `theorem` | [DualInterval.sinRefined_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/dualinterval-sinrefined-val-mem.md) | 310 | `result-track:5d082782ccd4e3e5bb405fab1f6d5faa24d2092bc121119f44b073a049c8c751` |
| 21 | `theorem` | [DualInterval.cosRefined_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/dualinterval-cosrefined-val-mem.md) | 316 | `result-track:456ef0ef855934bbc83fce4c41f6674836fa0dbd4804614275b91194210b4046` |
| 22 | `theorem` | [DualInterval.atan_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/dualinterval-atan-val-mem.md) | 322 | `result-track:d2d1644fbd4c1942900841dc45f89c02b07f7477c48f6e4b11a7a8dfceec15b8` |
| 23 | `theorem` | [DualInterval.arsinh_val_mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/dualinterval-arsinh-val-mem.md) | 328 | `result-track:7447376fda3bb67280013ce3019ede401c1f30df376541a8c185fd7d5887b197` |
| 24 | `theorem` | [evalDualRefined_val_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/evaldualrefined-val-correct.md) | 334 | `result-track:e80efb18e00391348e742e40a3d1bd8e69926319fcf83eac9395cf2996d70fd0` |
| 25 | `theorem` | [evalDualRefined1_val_correct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntervalEvalRefinedNamespaced.lean/declarations/evaldualrefined1-val-correct.md) | 364 | `result-track:9d74f89290494f8f068a0ec52e0b0765cb8ee2f7c5b3dde0a7cde90103db17b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee2aa2526669ea9ad9ef9a3423d902a6c9ffdc5fcf66fdc3632dc0161547b22a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalRefined/Variant396565c168e876d8712e59522f02f79b2bae3ad798a1d9601a88a6dee609157f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
