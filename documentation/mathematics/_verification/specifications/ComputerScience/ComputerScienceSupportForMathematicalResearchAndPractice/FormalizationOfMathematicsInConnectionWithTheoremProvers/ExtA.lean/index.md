# Verification target: Ext A

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05acde32e5f0bab693fd216e76c6745c871e9225",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantf1ab29e8424449b8f76537370001568422fbe8f54091c699d771debbea266952.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05acde32e5f0bab693fd216e76c6745c871e9225`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantf1ab29e8424449b8f76537370001568422fbe8f54091c699d771debbea266952.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantf1ab29e8424449b8f76537370001568422fbe8f54091c699d771debbea266952.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Ext` — import line 1; external provider; requires a separately pinned dependency.
- `Std.Logic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [mySorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/mysorry.md) | 5 | `declaration-track:b236ea5d61e9e2650dae0b71229ca1a45bb1d7d4256bbdc64db36041aa992821` |
| 2 | `structure` | [A](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/a.md) | 7 | `declaration-track:125ae44f7951efc0d80718effcc4b8bcebaf35cde1452c058b8e1765be254683` |
| 3 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-3.md) | 10 | `declaration-track:37318e92624eb25907c55b31619d8f297221586ca19c8136079062ef0aa6d519` |
| 4 | `structure` | [B](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/b.md) | 15 | `declaration-track:7470fa87dd9c3ffcdf5dc8e0c91692cbf3f7ca8a070e410920dbf78aa03a961f` |
| 5 | `structure` | [C](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/c.md) | 20 | `declaration-track:a798d7cbb1620f0e4b260d28310fb13576fc3baf088d436b947bba145726af3b` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-8.md) | 23 | `declaration-track:84b4a9dcc66ceb94da97eda2d914a11de5087412e5d0217ca9f563bed7b4c76e` |
| 7 | `structure` | [C'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/c-source-edition-2.md) | 30 | `declaration-track:e76c83937a5468604f16cea7024f4abd27de1ee30330af7c10ced0982beed015` |
| 8 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-11.md) | 33 | `declaration-track:c4038994233ea5058844feb85f2b9affd2776fe2f92e3a7d35fadb86c819f1df` |
| 9 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example.md) | 39 | `declaration-track:2d8877bb320f40e8b2f4e7d40fc73598841d9a9c16d726aa0bee33fb091f4750` |
| 10 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-9.md) | 44 | `declaration-track:a69b8e11e35ff3eb1cbe62cd4864d73cfdc8398fda717b75629f3105d767821b` |
| 11 | `theorem` | [Fin.zero_ext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/fin-zero-ext.md) | 50 | `result-track:a8c8d92c7d620620748dcf82b6e62d58902716b320ccf7f7cb4fcdd46868f004` |
| 12 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-2.md) | 51 | `declaration-track:32b785c8cef18c09d4fe6f515366ad6ba3d97bebb720d196f003e9776725e9dc` |
| 13 | `def` | [Set](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/set.md) | 53 | `declaration-track:aadffea4773b9d16a8a2f2158dce796204260968e70e1fe5fb58724d8cc52167` |
| 14 | `structure` | [LocalEquiv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/localequiv.md) | 54 | `declaration-track:b7f40e19d1dfbdef9143a4029f8985eceaf76bcd5c7dcb7c97d819a8084acbd2` |
| 15 | `structure` | [Pretrivialization](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/pretrivialization.md) | 56 | `declaration-track:433d0ae514df63ce43adeea87c847d58f2f18511dce16054127c36598f7a5030` |
| 16 | `structure` | [MyUnit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/myunit.md) | 60 | `declaration-track:02d9b8ccbc0318f2007cb4973f18ea89440f4d36a94e14f7b70191fc8ec77372` |
| 17 | `theorem` | [MyUnit.ext1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/myunit-ext1.md) | 62 | `result-track:7a70f8e1bb2edab999326fb280f39b7ecee2b5415cc08f04540d2b7a438bf041` |
| 18 | `theorem` | [MyUnit.ext2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/myunit-ext2.md) | 63 | `result-track:ca16a22822be2cc40eb862d5461a64a082543208c70c89ecb4b9a1d59cedf9cc` |
| 19 | `theorem` | [MyUnit.ext3](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/myunit-ext3.md) | 64 | `result-track:4cbe580084485b55d86501929ecc7417c65be478d1e0599760138e23d9b6b606` |
| 20 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-7.md) | 66 | `declaration-track:6cab70e13bd84ffa05b7ec5915584e13b252d910c4b9bf96898c27b7b381c937` |
| 21 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-5.md) | 69 | `declaration-track:44a7a90a60029dfcc570893fa87bdbe3455beaa134b32f032b52166ce94c1b29` |
| 22 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-10.md) | 75 | `declaration-track:aadf0ce90b515a23cf6488e2ec975ed33a9cfc8d716205f170122f30bc29062f` |
| 23 | `theorem` | [ext_intros](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/ext-intros.md) | 78 | `result-track:57a4e47498afc074ec9271305898349073a64caf73ed9c894bedd6dc6dd13393` |
| 24 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-4.md) | 80 | `declaration-track:3acf1c1f5aaeef253f6e98c583c904543f5fd2fde940b1c6ee0a1755786723e7` |
| 25 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-12.md) | 86 | `declaration-track:dbc323fdcff3aeb04fb34379d39b0a7e98a80dd0ce4d2838106c84a1b3cc31ad` |
| 26 | `def` | [f](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/f.md) | 93 | `declaration-track:0e9ee3c8f2f4e7d5d0bdba26959ee233fb87b23f36399b5c76bdb45792212988` |
| 27 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-6.md) | 95 | `declaration-track:59e09a59ac97dc48810758f64f26146b36d58929c41fd946ba9d5acb29bfb1ae` |
| 28 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ExtA.lean/declarations/example-source-edition-13.md) | 102 | `declaration-track:e87679a513d9384c60f7ac0f17a23e2a00ad1f360638a8139fa19950012ca12c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8632004f633baa0f1834712c46ebe48c34c9fd04b7c4066808660ddb8106e003 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantf1ab29e8424449b8f76537370001568422fbe8f54091c699d771debbea266952.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantf1ab29e8424449b8f76537370001568422fbe8f54091c699d771debbea266952.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
