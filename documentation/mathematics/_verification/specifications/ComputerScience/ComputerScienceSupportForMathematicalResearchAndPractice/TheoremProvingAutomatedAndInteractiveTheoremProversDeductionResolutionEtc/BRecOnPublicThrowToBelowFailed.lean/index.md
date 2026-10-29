# Verification target: BRec On Public Throw To Below Failed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24e63dca8a6878e21221fb6336a724e08d99bb46",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24e63dca8a6878e21221fb6336a724e08d99bb46`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Order` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [throwToBelowFailed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/throwtobelowfailed.md) | 22 | `declaration-track:9532d901f0be9eaf21aaf4a73b9ef6018384f2e1028a85bc9b847963aafbf510` |
| 2 | `def` | [searchPProd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/searchpprod.md) | 25 | `declaration-track:4b356548e6b74e5bccdf682115919b8a5daf83c63fb8bb8815b5b3a854439248` |
| 3 | `def` | [toBelowAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/tobelowaux.md) | 38 | `declaration-track:a9dd73f671f7bcb00c574af4779568b41685b87d39fc9e97fdb8d6b1bfb0fdf5` |
| 4 | `def` | [withBelowDict](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/withbelowdict.md) | 67 | `declaration-track:bed1caf5793a6c9efcf64b016c0b5482eb8d06b6390e05f82a531b5e8215e88a` |
| 5 | `def` | [toBelow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/tobelow.md) | 120 | `declaration-track:b6b0de37174660cf507b15023c4d0db9b5f2b0f10b840d766e0925765d25ad20` |
| 6 | `def` | [replaceRecApps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/replacerecapps.md) | 125 | `declaration-track:5e7433322cc2b77d82ad7883ba3fdf011d6dfc27fe9e5fabf5f4205e5bfe1f3d` |
| 7 | `def` | [mkBRecOnMotive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/mkbreconmotive.md) | 213 | `declaration-track:939764f0dbb30df14c9705075798abecfb771001a44eb6fd840dcec31a13f533` |
| 8 | `def` | [mkBRecOnF](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/mkbreconf.md) | 227 | `declaration-track:df632976958db957ba871540444c72ecc2a6308b6a367eae84c280e7b34f3857` |
| 9 | `def` | [mkBRecOnConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/mkbreconconst.md) | 243 | `declaration-track:256e3009679b9c85e9cf6c075d6921e23b761ff00d6c09c6d8b3190792a2afcf` |
| 10 | `def` | [inferBRecOnFTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/inferbreconftypes.md) | 266 | `declaration-track:cf03c686f43e6635e2f385514454018e73698e34adb348db68bef7365b420a0e` |
| 11 | `def` | [mkBRecOnApp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BRecOnPublicThrowToBelowFailed.lean/declarations/mkbreconapp.md) | 289 | `declaration-track:e1d3dda5c2987fd8462dabf7736ed8f707964bc0d7e6257dfe0b8d9cbc432e1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ff978aefe554a90e81b8fdee61989957df7afc4b2ecb00b6caa2825efe1c04d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
