# Verification target: Bridge Namespaced Verify Upper Bound Icc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e39c216014be3964cddcd2f052fa763c4d4fd8ba",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e39c216014be3964cddcd2f052fa763c4d4fd8ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Validity.Bounds.Smart` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Integrate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [verify_upper_bound_Icc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-upper-bound-icc.md) | 56 | `result-track:a0724b2b6b2c039cac689328c4b7c633c089304f6de5429a777a49cacaf08217` |
| 2 | `theorem` | [verify_lower_bound_Icc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-lower-bound-icc.md) | 66 | `result-track:b7cc598e096a2f52ce5f7214aeb67d47e8ac8a8c913eb40f6d5d6e5eca4ecb58` |
| 3 | `theorem` | [verify_upper_bound_Icc_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-upper-bound-icc-core.md) | 77 | `result-track:b36fc4d1f948fc3429ea22657b9e41631e6e5dfec69ee9c9fd4d38d7f2b0631e` |
| 4 | `theorem` | [verify_lower_bound_Icc_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-lower-bound-icc-core.md) | 88 | `result-track:f8a464fab3c7e26ac3b668b3f715e8beb2838c5b2b2df12cb8d55c0ea21a648c` |
| 5 | `theorem` | [verify_strict_upper_bound_Icc_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-strict-upper-bound-icc-core.md) | 98 | `result-track:45a9fe019508f1423f949cd16b05cc0b7f9286f2a1791eaa46e9d1da11853d65` |
| 6 | `theorem` | [verify_strict_lower_bound_Icc_core](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-strict-lower-bound-icc-core.md) | 108 | `result-track:a2beb382be1ae3f845ee113e7bfe18bffcd99d3e6ff9c77450d9aa1912c4a644` |
| 7 | `theorem` | [verify_upper_bound_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-upper-bound-split.md) | 126 | `result-track:000d97f49a6de7499c0e83ada1acf1a99ec5b04acf7d2049cc047f81c9f05e8a` |
| 8 | `theorem` | [verify_lower_bound_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-lower-bound-split.md) | 137 | `result-track:d33e9d2e3ec26aab43962aeccb991cd3d927b688f5a843cf6e0c6d9a237cbc09` |
| 9 | `theorem` | [verify_strict_upper_bound_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-strict-upper-bound-split.md) | 148 | `result-track:4780d74b3c06bbfc397bfb3c12ffb67dfa70baf3d0f603585fa73b2a053b2bed` |
| 10 | `theorem` | [verify_strict_lower_bound_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-strict-lower-bound-split.md) | 159 | `result-track:43f210520bd69910c87831601914d26300b863ec0260bb29a23406ebc36ea9b5` |
| 11 | `theorem` | [verify_upper_bound_Icc_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-upper-bound-icc-split.md) | 170 | `result-track:cebbb68d90155002ef3826846b6b65b6d696765fb99aaf66666f960a592c0d24` |
| 12 | `theorem` | [verify_lower_bound_Icc_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-lower-bound-icc-split.md) | 181 | `result-track:4168b155254fcc2ba0708543f794eaa03ac119db04b581dda1596202af5b6761` |
| 13 | `theorem` | [verify_strict_upper_bound_Icc_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-strict-upper-bound-icc-split.md) | 192 | `result-track:4927309dd8afc638b6af951cebff6104476259b3856baeb4fafb17893579f20e` |
| 14 | `theorem` | [verify_strict_lower_bound_Icc_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-strict-lower-bound-icc-split.md) | 203 | `result-track:e5d3b8475732bdbc4adcc0ab0fe50f19c5e2b3200b4e478cd1469fa9de44e7f1` |
| 15 | `theorem` | [mem_split_general](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/mem-split-general.md) | 220 | `result-track:7d605824dfb0c95ac931bb8c6b4dca96d69db3f7c2de6db158183dfa5d3b5929` |
| 16 | `theorem` | [verify_upper_bound_general_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-upper-bound-general-split.md) | 232 | `result-track:476dee184c01073a01c050263321eedc93ef658767ff78f2a6039dda843b2a52` |
| 17 | `theorem` | [verify_lower_bound_general_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-lower-bound-general-split.md) | 245 | `result-track:0ab795fea02ad1b73f2741e8e64aa010c4ec82789c28852226695b482b8eac04` |
| 18 | `theorem` | [verify_strict_upper_bound_general_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-strict-upper-bound-general-split.md) | 258 | `result-track:4515784cc28ae496d0b073b745bc8430f8c26f55eeb83daca3cd4d2770a7f896` |
| 19 | `theorem` | [verify_strict_lower_bound_general_split](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BridgeNamespacedVerifyUpperBoundIcc.lean/declarations/verify-strict-lower-bound-general-split.md) | 271 | `result-track:8db51515ba06611b2d28a96297e51b80f5e5f1f048dea67817021f13d6a304ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ed81dc85267e654b80bae0799b5a8a323dac62dc56115e88b9a9676a8dd88e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant3ddcc52965aad0cd4d062d0380c2212270c7c19146c39ff8e35ccd84f431ad8c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
