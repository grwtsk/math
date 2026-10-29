# Verification target: Min Max Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5072a240a5642905b8fd368eab6258d07798d8a",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variantc03d7dd4cebaa02f80e3c15ec1a4d5481dcef6803fceedc3a18a2657931d4f56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5072a240a5642905b8fd368eab6258d07798d8a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variantc03d7dd4cebaa02f80e3c15ec1a4d5481dcef6803fceedc3a18a2657931d4f56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variantc03d7dd4cebaa02f80e3c15ec1a4d5481dcef6803fceedc3a18a2657931d4f56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.PropLemmas` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [min_eq_min](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/min-eq-min.md) | 19 | `result-track:12c9dfecc68361137408d600bd5b44d53346ae68390d227ac9c00d66aba94efe` |
| 2 | `theorem` | [zero_min](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/zero-min.md) | 21 | `result-track:c553c1c25b9591bf1fc74ea7900d2f35380f3e5054dc1cf4a04a6609e6896df9` |
| 3 | `theorem` | [min_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/min-zero.md) | 24 | `result-track:464dcb0195183d7591f6c2259787e406719a1e54f8957144315766a07ec96509` |
| 4 | `theorem` | [add_min_add_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/add-min-add-right.md) | 27 | `result-track:dc3c090b9893bf32e00f0ce7ff9f7cad5931b9ebb4e295e5a689a3cfb5133df4` |
| 5 | `theorem` | [add_min_add_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/add-min-add-left.md) | 32 | `result-track:fa78689dda60fb146bc95f6ae7ff4bc2cf8dd418d7597907d32ecddaf0bf288f` |
| 6 | `theorem` | [mul_min_mul_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/mul-min-mul-right.md) | 37 | `result-track:3a6bb305f8f86e137f5d352b37836fa9e93b3d55eeee5a2246b7c08acbd044c9` |
| 7 | `theorem` | [mul_min_mul_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/mul-min-mul-left.md) | 46 | `result-track:b641bcfa24ada40b46ab91c9c42311f4e507eb668f861053fab2d1bffbd53e74` |
| 8 | `theorem` | [min_comm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/min-comm.md) | 49 | `result-track:8cfc9304f48c6394dd068f7f1703f8a212eb4c47e1ff22fcbc690b264de538e7` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/instance-source-edition-2.md) | 54 | `declaration-track:2fbfd37625263a992648261108933332c2a2b68eb35028526f859458cd537c68` |
| 10 | `theorem` | [min_le_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/min-le-right.md) | 56 | `result-track:520883249735af6cacddef74c8fb73dc6ea673f44db5e8128070f67c4b79ebab` |
| 11 | `theorem` | [min_le_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/min-le-left.md) | 58 | `result-track:e643edf215590567d98827d7a9d31b51b6e35829df8d893f455f4c07bb53d731` |
| 12 | `theorem` | [min_eq_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/min-eq-left.md) | 61 | `result-track:e68d318f3899b16600998d1df0a96b9100f0ba6ab530dce23b95d860b07e5498` |
| 13 | `theorem` | [min_eq_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/min-eq-right.md) | 62 | `result-track:1b391271483fba39bad004a0224383f26d34dee98ba42a4f698b01cff7a802e1` |
| 14 | `theorem` | [le_min_of_le_of_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/le-min-of-le-of-le.md) | 65 | `result-track:55d0c7d4e652b1ee544ce12ce91092096130534de92a9bc2990f8de484dd40a6` |
| 15 | `theorem` | [le_min](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/le-min.md) | 70 | `result-track:fea84c19cf5645f9f4b45264a755b9e00e48fe6a5806281e3d43b4d9e1b2515a` |
| 16 | `theorem` | [lt_min](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/lt-min.md) | 74 | `result-track:560ca3f4602e9d8f90b9a0352b5d949d07bc1ce47a7a1301fadb47410ac3583a` |
| 17 | `theorem` | [max_eq_max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/max-eq-max.md) | 78 | `result-track:10c52edd8d44d391c6123e33707c38f5cb7248fe8a3de2bc90b658a2e5d991f1` |
| 18 | `theorem` | [zero_max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/zero-max.md) | 80 | `result-track:2d4ca43359216e083e7ab4aef476c3200b5138cc17243cdf0a2603a6973802e5` |
| 19 | `theorem` | [max_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/max-zero.md) | 83 | `result-track:4f7b15c05c2c2e52e4e57eb0c8197769f7f1c8665329ddb9c58f8a2c7bc02933` |
| 20 | `theorem` | [add_max_add_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/add-max-add-right.md) | 86 | `result-track:ca538e5c1db77aebda66708e6de993108e33d40108a99a105b621d97a184a2bc` |
| 21 | `theorem` | [add_max_add_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/add-max-add-left.md) | 91 | `result-track:e35b8934d5c58082aca256045d11f8749e2bb94e3439f542f719437088641631` |
| 22 | `theorem` | [mul_max_mul_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/mul-max-mul-right.md) | 96 | `result-track:57db74b9fc5e9cb9344b812a36a8e092c91a20aaad53c11d81ad124e0c0564b7` |
| 23 | `theorem` | [mul_max_mul_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/mul-max-mul-left.md) | 105 | `result-track:1a7d75e363072f0f35e7c30ef7421382089b1627971adcab0946cee10dbae249` |
| 24 | `theorem` | [max_comm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/max-comm.md) | 108 | `result-track:c2e2f51341942ec2dd3a5728231e1cd94543a4ef544d6dbb0d467fb02faa68fa` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/instance.md) | 113 | `declaration-track:2dfee385f59d7db94bba54d26998abd081ea02e26752d7ff55773de34a82731a` |
| 26 | `theorem` | [le_max_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/le-max-left.md) | 115 | `result-track:63eb1ac441b0bb4acf52d98cdc8b00eea22620da860558a69bcca9599f933cdd` |
| 27 | `theorem` | [le_max_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/le-max-right.md) | 117 | `result-track:93222df74ad745c58c0ca370327a197be9fd1e08a0f3345863419cee1083033c` |
| 28 | `theorem` | [max_eq_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/max-eq-right.md) | 120 | `result-track:ace0d7e6bda4cbaa7b4cc5d9c5701c9b10f7348b7d4406db79af2de256fb13d1` |
| 29 | `theorem` | [max_eq_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/max-eq-left.md) | 122 | `result-track:4c27dd8c9f52494dccd792e83ffea6936c66373ce9f934a14be309f5205b7059` |
| 30 | `theorem` | [max_le_of_le_of_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/max-le-of-le-of-le.md) | 125 | `result-track:42c2059cdd78994e2392937285b80d59c16b1f47676b9e0cf8af62a2e0d8b58e` |
| 31 | `theorem` | [max_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/max-le.md) | 130 | `result-track:635d4db75b00c9490c0ea9bf0831950ac81a9f23f4e5c5c698ad1cc7d6fd8743` |
| 32 | `theorem` | [max_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxPublic.lean/declarations/max-lt.md) | 134 | `result-track:f6710a400c52c9b419c8eb336edc9edca6a35a4dbb289a0a54b6adfd1cb0e310` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76dccb0a0ad2c6d73dfb573a1d8a6493301c7f95978ffa5156cf95d5b82681fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variantc03d7dd4cebaa02f80e3c15ec1a4d5481dcef6803fceedc3a18a2657931d4f56.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMax/Variantc03d7dd4cebaa02f80e3c15ec1a4d5481dcef6803fceedc3a18a2657931d4f56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
