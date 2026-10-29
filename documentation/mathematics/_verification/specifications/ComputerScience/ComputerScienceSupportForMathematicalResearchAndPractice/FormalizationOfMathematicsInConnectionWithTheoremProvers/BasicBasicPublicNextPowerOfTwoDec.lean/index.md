# Verification target: Basic Basic Public Next Power Of Two Dec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a484ea57198b89fa850fca6fb910efffb4d130f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicNextPowerOfTwoDec.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicNextPowerOfTwoDec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a484ea57198b89fa850fca6fb910efffb4d130f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Internal.Linear` — import line 10; external provider; requires a separately pinned dependency.
- `Init.NotationExtra` — import line 11; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nextPowerOfTwo_dec](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicNextPowerOfTwoDec.lean/declarations/nextpoweroftwo-dec.md) | 18 | `result-track:a3e34342b2c635bee60c4c61192e9df623b91d7c72ec604fa81b3fd6ad2fbe1e` |
| 2 | `def` | [nextPowerOfTwo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicNextPowerOfTwoDec.lean/declarations/nextpoweroftwo.md) | 33 | `declaration-track:cc17e7568ef2c68b69002c2993348996f52ec4608f30a23f3f6d2fdaab0bc2f0` |
| 3 | `def` | [isPowerOfTwo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicNextPowerOfTwoDec.lean/declarations/ispoweroftwo.md) | 47 | `declaration-track:f9a38fc294f285ba0c3ac9d6dd62ebd08e09574b730e40a4ce0f40b2da3fa166` |
| 4 | `theorem` | [isPowerOfTwo_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicNextPowerOfTwoDec.lean/declarations/ispoweroftwo-one.md) | 49 | `result-track:3b55b5a559a8429b9f6153737c90f0062d385cf678a9e79de6fc91867b0f081a` |
| 5 | `theorem` | [isPowerOfTwo_mul_two_of_isPowerOfTwo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicNextPowerOfTwoDec.lean/declarations/ispoweroftwo-mul-two-of-ispoweroftwo.md) | 52 | `result-track:d5f8df848aba6a2f671ada87e78ed24b711b4ba0139ba98a08a9aacf1644154e` |
| 6 | `theorem` | [pos_of_isPowerOfTwo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicNextPowerOfTwoDec.lean/declarations/pos-of-ispoweroftwo.md) | 56 | `result-track:46efe8412195682aeda2652c7b36c7b2f4f70e48404e93d6fd3d0756f81bf81e` |
| 7 | `theorem` | [isPowerOfTwo_nextPowerOfTwo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicPublicNextPowerOfTwoDec.lean/declarations/ispoweroftwo-nextpoweroftwo.md) | 62 | `result-track:0aa1222559459157c885024fca156aebb2ff3e7c324aa63f20696e8deb1e182c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cf8a58bb4a40a80751dce1caeab33dddf68ad55d0c622914dbfc874b5e77f63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfa0c4c278697ada647480fdf656f8b57a6605a9d4c687a03859f1f783ac1ca18.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
