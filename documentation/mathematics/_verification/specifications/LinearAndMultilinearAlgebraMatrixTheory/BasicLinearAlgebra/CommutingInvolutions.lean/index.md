# Verification target: Commuting Involutions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7367678643a8fbc0fbc0f7608a4173506a8ca46",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7367678643a8fbc0fbc0f7608a4173506a8ca46`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involutionplus.md) | 37 | `declaration-track:0b6b56365bedeefde93b5fa82aae3814ce1d0b1cd9b6d0d9ea0d7ffb192b220a` |
| 2 | `def` | [involutionMinus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involutionminus.md) | 41 | `declaration-track:be30bff3835f79e9364a641b8c82d65ab4e212e5f9afa5cb3803218b3f1f556e` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involutionplus-apply.md) | 45 | `result-track:397ae072feeb4efb5f4d214bc2ee19daeb586f04ba777e9227a8d6a108dcc7e3` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involutionminus-apply.md) | 50 | `result-track:820a0114d29847cc84d13c400b9ba70434f56d4e60734e126d0427380938b2e4` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involution-projection-decomposition.md) | 55 | `result-track:d3edc4ea960daced939cf9162c60e18afd07b0a5e8b7fe4eed1d1a877411c5d3` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involutionplus-idempotent.md) | 62 | `result-track:ad43dd54ba0495344e71decaa00d5b8a5db10c3cb042a6918f8a552b2fc10583` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involutionminus-idempotent.md) | 70 | `result-track:5116d7eee558ec48f81341015181630a90779d91093857b9f3d99473b961b94d` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involutionplus-after-minus.md) | 78 | `result-track:b4a731ac2c41fc1a7a61a37874d8f8ff95f23ad3b5124de5dfe2bb052f9cf010` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involutionminus-after-plus.md) | 85 | `result-track:fe10a6112c41ca5005676be333725df66e0fedd240580072ceb979e30435743e` |
| 10 | `theorem` | [involution_on_plus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involution-on-plus.md) | 92 | `result-track:8ffb46b587d6d156e3d80ac54c88b4595d3eaee14792a08d0dba9410de0f0ac6` |
| 11 | `theorem` | [involution_on_minus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/involution-on-minus.md) | 99 | `result-track:5afab3729cf29ae656290c8bdd3d453d9ae2e88a9eb698b93ae3d1b5141c726d` |
| 12 | `structure` | [CommutingInvolutions](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/commutinginvolutions.md) | 106 | `declaration-track:9e9f15387941cad65b0b1cde8ad75b7412e31f79221c8ba799dbb9bd713efe9d` |
| 13 | `theorem` | [plusPlus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/plusplus-commute.md) | 118 | `result-track:f4e2d3520a576109e9cb6c4eb5be27025e87704c264d6c9a808020d5c8644230` |
| 14 | `theorem` | [plusMinus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/plusminus-commute.md) | 126 | `result-track:d136f22afc94a9f803ecea2c0180d446164322fe5bd5c5d5ae2a50116f4e3cbf` |
| 15 | `theorem` | [minusPlus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/minusplus-commute.md) | 134 | `result-track:a46deb154455ec3f47e218df5d37fb9579fb7c81f0d72063b08c29a0d295d159` |
| 16 | `theorem` | [minusMinus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/minusminus-commute.md) | 142 | `result-track:12e39ce187f4f2dc58d2ee231a73e6b3877bcb37bbedda7915d8da4c14fc411e` |
| 17 | `def` | [sectorPP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpp.md) | 150 | `declaration-track:d3b0f1be8dd0b916548b152899f5552ab770abf834b5e9161bea83be45026fd0` |
| 18 | `def` | [sectorPM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpm.md) | 154 | `declaration-track:0c9b18dca7f4567f6652f79f770e0cfc4e706353e6a7546d488eef7a7cce29b4` |
| 19 | `def` | [sectorMP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormp.md) | 158 | `declaration-track:966fdf8bbb457e07bd91cdec3904caf6b71198e497a5d64d0b102fbac357d70f` |
| 20 | `def` | [sectorMM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormm.md) | 162 | `declaration-track:ee0c0de0901673548c0cd9ef530032bfae036571b8bf04ad25d807b212da5789` |
| 21 | `theorem` | [sectorPP_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpp-apply.md) | 166 | `result-track:de7611f9e3b10600fad8f725d818a9294a3b11ab03f6dab7729c16cb8266e15c` |
| 22 | `theorem` | [sectorPM_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpm-apply.md) | 172 | `result-track:83e22f85272f5afb1cce450dc3543e21f4ad8c9da9f1d7457dab791968681245` |
| 23 | `theorem` | [sectorMP_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormp-apply.md) | 178 | `result-track:898117cb568258a7857a4df1b013954d48ada304654bb7fa3ac30cd1e6368cf8` |
| 24 | `theorem` | [sectorMM_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormm-apply.md) | 184 | `result-track:3215505286e6b30cb1b4ebd215e04b43c16a5315b2a0e0c467acfae61084fc91` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/idempotent-comp-of-commute.md) | 189 | `result-track:ab25f0acdad4c0c6fcf7bec4083452f964e64edc810b0fa8e8c8384d292c1923` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpp-idempotent.md) | 199 | `result-track:58b848d1a9dba6c137a87b28cbed4438d749b3e4131b40f73e7bf30c35f912fe` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpm-idempotent.md) | 208 | `result-track:da0a3e5d6cca8293a48831a987ccf39cde350539a9e9866bb630b300c4c0408d` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormp-idempotent.md) | 217 | `result-track:42e9106b17ce65dbde4af5147c9e324e21298d3fae6360718507cf1eefe8a489` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormm-idempotent.md) | 226 | `result-track:3e8e8f2cdf5e2698500c0429af18065c68809287df52c7d220f57ba7455044e2` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/four-sector-decomposition.md) | 235 | `result-track:ab132a14f9fff458e2a4f053e01c6074bb14d012a3a1821d06f201fd55b2cf36` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpp-after-pm.md) | 242 | `result-track:d3482c4fe35f13aa07b2ba9e455be9f2f35ead951569e027c29d8c0c446a2fbc` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpm-after-pp.md) | 253 | `result-track:cab8a6f53b6b47d770d3dc2f82a7e15e3272c4beeadcb1c4094022f23c585987` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpp-after-mp.md) | 264 | `result-track:262f59a34a3d9924c8f48fc7d056428da4299b9ae8f4080ee454bd1a48b784b5` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormp-after-pp.md) | 274 | `result-track:6787f03e04bbb46034caadd4acb422f6a8396cbc7505221c8b1a7acb2182e62b` |
| 35 | `theorem` | [sectorPP_after_MM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpp-after-mm.md) | 284 | `result-track:f0e3f44ae658ca259e98394c0b5421f20bd8eb3c41dfd56d03b6e6bbf46c8c00` |
| 36 | `theorem` | [sectorMM_after_PP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormm-after-pp.md) | 294 | `result-track:4a7532aa69ce46ec3901802dcdeb240f8b88cdd67ea20fa011cfc3a87bdf0911` |
| 37 | `theorem` | [sectorPM_after_MP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpm-after-mp.md) | 304 | `result-track:8bfc0786053383e53fa2c2a89dcb91ba5cfe11e3f21d1a0e2068927bac1b6d6c` |
| 38 | `theorem` | [sectorMP_after_PM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormp-after-pm.md) | 313 | `result-track:889b3478fc5262c944530e99d8d253cf6643ea6c098c6d3a4f6a25c9b9434bf9` |
| 39 | `theorem` | [sectorPM_after_MM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectorpm-after-mm.md) | 322 | `result-track:26c3b31a23221c7b7ee0812b374f2716926a8f934856f98c59125009397fcffb` |
| 40 | `theorem` | [sectorMM_after_PM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormm-after-pm.md) | 332 | `result-track:7139613a093c35f49c3efb3580c05520379c753ed7a0ca0205a3462187c41325` |
| 41 | `theorem` | [sectorMP_after_MM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormp-after-mm.md) | 342 | `result-track:2be266b1523ce53b012e768259f8d9f1e65698d25bfcbf115af87f83430a45a4` |
| 42 | `theorem` | [sectorMM_after_MP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/sectormm-after-mp.md) | 353 | `result-track:80fa1e426afae6ec8a015154dee5ca61414fbfcd82843d3d493a9fb5d9f1e1da` |
| 43 | `def` | [interventionSector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/interventionsector.md) | 364 | `declaration-track:c68fab0eb01b008c60211a21d487d82828ee5d56b9fe4f8263a6d2d4e60a0f08` |
| 44 | `theorem` | [interventionSector_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/interventionsector-idempotent.md) | 368 | `result-track:578ed0c48c3048e04803a68ec931c8191df0421c60469afdd5a8c2605e987d37` |
| 45 | `theorem` | [first_on_interventionSector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/first-on-interventionsector.md) | 373 | `result-track:c46b4441f64f70cf5066ba9e21089ee916e971ebf5865706a0cd36108651bb99` |
| 46 | `theorem` | [second_on_interventionSector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutions.lean/declarations/second-on-interventionsector.md) | 381 | `result-track:1b342afd42f1d430cb22d2a4adc3b8ec092423c1362f1e70a16c506012aa81c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bb78849e2e6b0bb25d1c86e4c8ee47080fa7f6451f8c0dc47f97a872e3ceed1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4CommutingInvolut/Variantbd2729a169dabf431e639e2d4ce3ca83d99ac7ca8db5196cb16d2ddadb4041d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
