# Verification target: Commuting Involutions Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0bb0710e8cfe5733d86b0ba47b65f0a88d4e8d9",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Varianta4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0bb0710e8cfe5733d86b0ba47b65f0a88d4e8d9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Varianta4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CommutingInvolutions/Varianta4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90.lean.json)

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
| 1 | `def` | [involutionPlus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involutionplus.md) | 37 | `declaration-track:dc9edb65fc67934a135779ee1ed0d17ddc4bb19cbd07385145098851a61a3014` |
| 2 | `def` | [involutionMinus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involutionminus.md) | 41 | `declaration-track:8cc19a09e43b963beea180a92083d89fb13d60547b34236debab04971f866ce0` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involutionplus-apply.md) | 45 | `result-track:fb3ef197cfc4f2a6e8428dee37f2e5e34378104b22563e86dabf083bb55762a2` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involutionminus-apply.md) | 50 | `result-track:2d2bc4eb07505220c42f03c556845accdb3cff80e8146e3e1c41e1032d2da2d6` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involution-projection-decomposition.md) | 55 | `result-track:33c56dbc4f80a591595a4dc07b7c9d695121e3340caf1e440dff1e9730a7ef74` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involutionplus-idempotent.md) | 62 | `result-track:2ceeb0738de7979d8a6ee85262ec696d9f3f40b887654b76986060cd097c92ad` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involutionminus-idempotent.md) | 70 | `result-track:49f7921048c4745e5295e15d1ec7299d3e59c5daa2483c46bae6b9940428cdbb` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involutionplus-after-minus.md) | 78 | `result-track:0e79497fa22c20a817800caefbd9ffbfa7466a60ee2d92ae141e9f55d6373448` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involutionminus-after-plus.md) | 85 | `result-track:c8e1ea6e31ff0d6f8ef6c2775b14ad4d071a75e7496241d66934a53188bd7ae9` |
| 10 | `theorem` | [involution_on_plus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involution-on-plus.md) | 92 | `result-track:6f25ea6a1489af9ab92a477f9c65f0cc66c0bd8ed9a7400b4423e78a8a46bf5d` |
| 11 | `theorem` | [involution_on_minus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/involution-on-minus.md) | 99 | `result-track:f4854dc08069f2eae62be73500c1d755cb03e64a89dc824a5aa999de80462427` |
| 12 | `structure` | [CommutingInvolutions](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/commutinginvolutions.md) | 106 | `declaration-track:a31ba55177097539d6a680d04f32685188280cb5440f5807e9d74f1cb9348d99` |
| 13 | `theorem` | [plusPlus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/plusplus-commute.md) | 120 | `result-track:97d6f80bfd5e8726f17c9ab3c03018c5b2deeae106bf541d02c76f30bc141941` |
| 14 | `theorem` | [plusMinus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/plusminus-commute.md) | 128 | `result-track:67fcaa141ba3cdc17857272480eb958929ab118cc5d43eceec50aa9f79585cbd` |
| 15 | `theorem` | [minusPlus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/minusplus-commute.md) | 136 | `result-track:2408cac7c2dc1a9083a475eb57853cf22af699a16b1b6a362ea39b971a9cbd75` |
| 16 | `theorem` | [minusMinus_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/minusminus-commute.md) | 144 | `result-track:abef2e81ee171a2e321b92bc9d1d363a1f35bab4ddae5a6d01239d726548723b` |
| 17 | `def` | [sectorPP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpp.md) | 152 | `declaration-track:2059119de34ccd8b8a790c05f7b99268342c988f1bb401fbea4ffa22d38f3e82` |
| 18 | `def` | [sectorPM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpm.md) | 156 | `declaration-track:ede24706700b393fb6005b872c2470b5450447bf6c282a7688563c970207725f` |
| 19 | `def` | [sectorMP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormp.md) | 160 | `declaration-track:1ee32f629d2ede5355ffd173262b6b345a0ad976ecb419908e6cd040740ae319` |
| 20 | `def` | [sectorMM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormm.md) | 164 | `declaration-track:b3e036f456a9993566fa7e04b31e028af6774c301115ce6b74c9cc17c186ef56` |
| 21 | `theorem` | [sectorPP_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpp-apply.md) | 168 | `result-track:6e77f4d4d1dabfa03f251b26ed12c5801b105a7ce61268dd698506acfadfa70e` |
| 22 | `theorem` | [sectorPM_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpm-apply.md) | 174 | `result-track:67db46fd4fcd019e9e65335f56518078152cf584d4466bad60b2b208447f33b2` |
| 23 | `theorem` | [sectorMP_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormp-apply.md) | 180 | `result-track:3cd76f623f67306ee61232b91b2ffd8ca71a8170459300154ab9e04fa04cca46` |
| 24 | `theorem` | [sectorMM_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormm-apply.md) | 186 | `result-track:39682a41dc84bad72f074c77f80bc9f7ea9466afce79567a1af0aeb7f5380cf4` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/idempotent-comp-of-commute.md) | 191 | `result-track:e766e4f7ab62d7c01ee3124ac5f8c07b877698f9be2a80c0b0d32165f98a389f` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpp-idempotent.md) | 201 | `result-track:46dd236e443443dea3d1a7ea3c9b9f78c868f53d6e309a9efb0c80bca2b2cfa0` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpm-idempotent.md) | 210 | `result-track:a14962c4e4c898ba3f9bfa11dcf938271b0d857d45194def69fc54ade4fbe263` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormp-idempotent.md) | 219 | `result-track:33520c96bf74d8dd7f3f3d7a80a7218582ad550640a1d667a090b4cc7c0edd60` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormm-idempotent.md) | 228 | `result-track:426381a03e5d06c083ff8a3a7de28aa4673dfca3399710b03b2535d33bc41dfc` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/four-sector-decomposition.md) | 237 | `result-track:38f22b34c5d8b83a4c8110fef7e501429b5474c035dffbb4deac403cca01aa59` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpp-after-pm.md) | 244 | `result-track:349427c8435966223e0a6fa99d68cfaee9dc34501dae0dab8efd1f2ec2b9a015` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpm-after-pp.md) | 255 | `result-track:9759c943268cb958208f73e2d6edccc4f413ae8094c39b3df16e7879d7d10a7f` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpp-after-mp.md) | 266 | `result-track:ffaba14a0acf7b93c86fe7fe3f4470f4f1fbe5d0106e40f3933d3787d528e9d3` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormp-after-pp.md) | 276 | `result-track:a0fba6da566ff37592bceecaa9b597e0bf0c1ffdfcc49d886d0048684432ecbe` |
| 35 | `theorem` | [sectorPP_after_MM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpp-after-mm.md) | 286 | `result-track:10f9447a1bccebc51ad658b8b78082dca6977cc82275f32f89372f39ecaa7218` |
| 36 | `theorem` | [sectorMM_after_PP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormm-after-pp.md) | 296 | `result-track:058e700966cd03732c00712bab79df679150c2b4d410b94d476284360310fccf` |
| 37 | `theorem` | [sectorPM_after_MP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpm-after-mp.md) | 306 | `result-track:16958fbb0543f8a55f8fca6b460160f6f579f7b004bae87cac84653c224c4fa2` |
| 38 | `theorem` | [sectorMP_after_PM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormp-after-pm.md) | 315 | `result-track:e19bfbe988631fbed8b354fb198d3d773e54b80eeb7a56bee13276b4041dcffb` |
| 39 | `theorem` | [sectorPM_after_MM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectorpm-after-mm.md) | 324 | `result-track:ef394c887f5834fe194840293b280b7de8b448492564ff2ec546ec6997578995` |
| 40 | `theorem` | [sectorMM_after_PM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormm-after-pm.md) | 334 | `result-track:e8e768d54b0cde625d2326a9bce09b92985cd2b1b62bd89f04c770790148a3e2` |
| 41 | `theorem` | [sectorMP_after_MM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormp-after-mm.md) | 344 | `result-track:5b3fdf648e8c588465e10193625bd3488d13dc4ec6925bc0260959e8c82e07c7` |
| 42 | `theorem` | [sectorMM_after_MP](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/sectormm-after-mp.md) | 355 | `result-track:991d9d69ebe31038442904c05f16324466006a9281fc6fca5ae39430576f15d2` |
| 43 | `def` | [interventionSector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/interventionsector.md) | 366 | `declaration-track:55097cdaae1663f183874035676256d49e81195bccb78d54ae92c234679b7b44` |
| 44 | `theorem` | [interventionSector_idempotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/interventionsector-idempotent.md) | 370 | `result-track:d09af3f388434b7feb58062886f0b769736a377c3aed455916b999851e20b1aa` |
| 45 | `theorem` | [first_on_interventionSector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/first-on-interventionsector.md) | 375 | `result-track:3173459de3d67a8200438fcc5c9a22414768dab811ae595491ec38bacf5a45b3` |
| 46 | `theorem` | [second_on_interventionSector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CommutingInvolutionsEdition1.lean/declarations/second-on-interventionsector.md) | 383 | `result-track:0869a01dc89625e892b11eff2dad21910be65d31b816779a61008bb39918b670` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a989818baa7407b4b7ecc57252edb467b51c6c12eb543fa5e1b17677b5d39313 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CommutingInvolutions/Varianta4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CommutingInvolutions/Varianta4db114b4fdd0d4bb7c2dc1be5f45f6a4be5a9daede9876510d82302dfa92d90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
