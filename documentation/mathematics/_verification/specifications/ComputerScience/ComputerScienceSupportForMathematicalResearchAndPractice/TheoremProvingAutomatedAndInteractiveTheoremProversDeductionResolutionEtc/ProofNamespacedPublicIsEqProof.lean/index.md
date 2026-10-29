# Verification target: Proof Namespaced Public Is Eq Proof

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a17193eb3517bce6e0b8e464a0b81098e6a11b8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a17193eb3517bce6e0b8e464a0b81098e6a11b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Grind.Util` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isEqProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/iseqproof.md) | 22 | `declaration-track:8d776bd15b6fba08036a9107f2a4df7424aad397ee100b48fa2e217075aff1d5` |
| 2 | `def` | [findCommonPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/findcommonprefix.md) | 33 | `declaration-track:961cb80514fc7b6b6557bcbd08fa3d6a806a917ac1176110676b2023f705f5a8` |
| 3 | `def` | [flipProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/flipproof.md) | 44 | `declaration-track:21a112bbeb182b21f0d6d9f9109a8d2fc9b81fe9dcd0303e304fb6e4dd747368` |
| 4 | `def` | [mkRefl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkrefl.md) | 53 | `declaration-track:d82ca27ec335ce1a0bda9d802ff2f51cf008f1f87ef18efba47dce05126ad2c4` |
| 5 | `def` | [mkTrans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mktrans.md) | 56 | `declaration-track:0bd57becc5c70ef0520d8650090dc14d9269071ccc7650806e13a6cdd3c40804` |
| 6 | `def` | [mkTrans'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mktrans-source-edition-2.md) | 62 | `declaration-track:afa5c3411484fc2ead187cad8cbe6e71d9ec41d91107a9d8d974beeebc78228d` |
| 7 | `def` | [mkEqOfHEqIfNeeded](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkeqofheqifneeded.md) | 70 | `declaration-track:2c4c7fba0be5eb45472d36756f59cc472655a20d858778f5133f32eb38979d0b` |
| 8 | `def` | [findCommon](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/findcommon.md) | 80 | `declaration-track:fe3a83375d12bf1bcde2a2880950caea9703abf4854b83526de8d2aa3c3298c5` |
| 9 | `def` | [isCongrDefaultProofTarget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/iscongrdefaultprooftarget.md) | 103 | `declaration-track:3ad8ffab9e498b9a98d79c01f40199f5fab97e64823f888bdb323d94cb3872e2` |
| 10 | `def` | [mkNestedProofCongr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mknestedproofcongr.md) | 129 | `declaration-track:63e6615af27ffe0723635f59de08524ac817d6a04850f3ece074a8030108a061` |
| 11 | `def` | [mkNestedDecidableCongr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mknesteddecidablecongr.md) | 142 | `declaration-track:d1443e75d42120a7015dffda959d25d1cd8d0d2ecc33c04cc8fa566e21654ffc` |
| 12 | `def` | [mkEqCongrProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkeqcongrproof.md) | 150 | `declaration-track:31b0cf86496f9de6445642a3a4a5b7c50e6086bd8ae49e66b4b67e525e43a2f2` |
| 13 | `def` | [mkEqCongrSymmProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkeqcongrsymmproof.md) | 160 | `declaration-track:e8e3f131111add00468f592467434d7fe3be7391649a28120298b59856337f1b` |
| 14 | `def` | [mkCongrDefaultProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkcongrdefaultproof.md) | 174 | `declaration-track:b79ea16d2f2d2cfe2e1a885765959093076e520e940a85e812282deca9a1a66c` |
| 15 | `def` | [mkHCongrProofHelper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkhcongrproofhelper.md) | 193 | `declaration-track:4c5a4eda7e97b575f79f1b97634ab4d0ddd16442c574b7c573d257fb8dd54c4f` |
| 16 | `def` | [mkHCongrProof'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkhcongrproof.md) | 204 | `declaration-track:85667d900c04b1c676e35c26d51c4c1685d5d607bc29d310e8aa17e86b711d2f` |
| 17 | `def` | [mkHCongrProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkhcongrproof-source-edition-2.md) | 223 | `declaration-track:c46de016f5371bfc1b5faeaec31cf0e48e879b60ec5327ade8521025372b5b0c` |
| 18 | `def` | [mkCongrProofFunCC](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkcongrprooffuncc.md) | 242 | `declaration-track:3232c6af2e62d953151ae78d970386382316c1dd3184eca319d04f7c153ccda3` |
| 19 | `def` | [mkCongrProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkcongrproof.md) | 256 | `declaration-track:7360b6995f47cab1cf499ef8c78ca67b98e26f784ce429d9adab94f171f18328` |
| 20 | `def` | [realizeEqProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/realizeeqproof.md) | 281 | `declaration-track:4e217d0bc866ae72380a1b6cc6df751240f47260eac8bf50c6d51527b3eac589` |
| 21 | `def` | [mkProofTo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkproofto.md) | 291 | `declaration-track:2d6421224f3ad5452c156e31cfd33711ba6b6063f4f11fa4ca6ae8fb795ede15` |
| 22 | `def` | [mkProofFrom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkprooffrom.md) | 303 | `declaration-track:ce907e101a357700a5e4b9207ed4f08f468bc885bf1504d87aab9dc5d7e3f368` |
| 23 | `def` | [mkEqProofCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkeqproofcore.md) | 319 | `declaration-track:382afc93e0b7723bdfcaea968c020c790d3258748dac738a81edeccceafb201b` |
| 24 | `def` | [mkEqProofImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkeqproofimpl.md) | 345 | `declaration-track:f60613e469c3fa60e8426e85a36559699894eee772e4725396e95c39c951965c` |
| 25 | `def` | [mkHEqProofImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ProofNamespacedPublicIsEqProof.lean/declarations/mkheqproofimpl.md) | 352 | `declaration-track:2ea73bc3b11adbd69dcb8010c77a853f086bac0cff8e96c9eeba26727dabf04f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78ecdfb547570e77e3679b5a7239dbcd90bbdda2a065ee0935372bf0fadf7d01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variant5d5d431505d4f1bc5e19695aa6b7a2b381562ac50fdd285708ea9c37d650dd9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
