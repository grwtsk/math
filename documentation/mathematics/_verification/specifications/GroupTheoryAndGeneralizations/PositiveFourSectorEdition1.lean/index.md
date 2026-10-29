# Verification target: Positive Four Sector Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8e02ebb752932aae0869309c4d40c0257260a32",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8e02ebb752932aae0869309c4d40c0257260a32`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.CommutingInvolutions` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SelfAdjointFor](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/selfadjointfor.md) | 32 | `declaration-track:a066406027a5e4c33e4d1f33042ddaaf53e6c2f38fdb606fc89be9afabde50d2` |
| 2 | `theorem` | [orthogonal_of_eigen_plus_minus](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/orthogonal-of-eigen-plus-minus.md) | 36 | `result-track:14c75969ab4a704424d66a2edb64bb90e65b037045a37080719bd6553a1d324a` |
| 3 | `theorem` | [four_sum_energy](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/four-sum-energy.md) | 50 | `result-track:e6c036772f0f9ace42089b0bf6c36e0776c0cc3e7cdb5a6b57badd104fa610f0` |
| 4 | `structure` | [PositiveCommutingInvolutions](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/positivecommutinginvolutions.md) | 78 | `declaration-track:c5d41fbbc4086798a8c2b7c79dc876ef36edc13923a0c5b6d2c9b201fad2034d` |
| 5 | `def` | [sectorPP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/sectorpp.md) | 89 | `declaration-track:dc08b7aea510a086205cbaa8b9a292f82831dee5f90ab4983f801b3ad0041d61` |
| 6 | `def` | [sectorPM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/sectorpm.md) | 93 | `declaration-track:5ffc1bda5d6a4e9ac458dcc7c72944f191886fc55e2c524168ae1f06b3fac494` |
| 7 | `def` | [sectorMP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/sectormp.md) | 97 | `declaration-track:69d9332b75790a125122333d471e91486c1a2db902056c24728c9643815841d7` |
| 8 | `def` | [sectorMM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/sectormm.md) | 101 | `declaration-track:9992886ce9b541691964eb3fac4cf098c1dabd99fa20b9113b6fdc2f19e85d0f` |
| 9 | `theorem` | [sectorPP_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/sectorpp-apply.md) | 104 | `result-track:be4ae394f5dedbbd2cd2cecf11c23cc8b21c5eaf8f3303e35c5b766f2752fdb6` |
| 10 | `theorem` | [sectorPM_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/sectorpm-apply.md) | 106 | `result-track:a70d5c5cccf95da3405edddbd23f0127dd22901055595c8003496e6eb583d597` |
| 11 | `theorem` | [sectorMP_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/sectormp-apply.md) | 108 | `result-track:5406fcd8f18379fc9a7cbec27b36b69211f38a10f71e639eb677eb1330e1b01b` |
| 12 | `theorem` | [sectorMM_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/sectormm-apply.md) | 110 | `result-track:5322c03fbd062aa5f0e772b6a4c87a55bea4905e02ba2cfbbd97000081c734b7` |
| 13 | `theorem` | [first_on_PP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/first-on-pp.md) | 114 | `result-track:a53e22e943e128ea2d8992ebffb0599c63e263136a86598168324da60085b676` |
| 14 | `theorem` | [second_on_PP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/second-on-pp.md) | 124 | `result-track:f4cce68cc711437cb8f49a6f4fbcee46109a5d582dd1e1225964cf9f2693ca62` |
| 15 | `theorem` | [first_on_PM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/first-on-pm.md) | 135 | `result-track:2f82c5b2a23e8329fe9ed8bcc6b693c9c71161fac13304f093b916ec5ef6fd7d` |
| 16 | `theorem` | [second_on_PM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/second-on-pm.md) | 145 | `result-track:3e9b491d33c0f9a37e59e5744b9d13c3568a1b9cc112b1025b070e75dff65aaf` |
| 17 | `theorem` | [first_on_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/first-on-mp.md) | 151 | `result-track:1e1a716a0397fd5e70baf2e99c93298af7976aff8438d0cc75f946f85d5cc535` |
| 18 | `theorem` | [second_on_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/second-on-mp.md) | 161 | `result-track:4b58694126e698035fbbc6c55f9e4c565b32a27c61e3fa0ec011dec290b23aff` |
| 19 | `theorem` | [first_on_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/first-on-mm.md) | 172 | `result-track:88b29ef8c8a5e96bd1aafb42ee6a22d8013ee3931ec9fb927c01b22e04f035b5` |
| 20 | `theorem` | [second_on_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/second-on-mm.md) | 182 | `result-track:064d9d1a628670b8757e07858e47da0b7d094ad3f12b5d66aff32bb9c89a176b` |
| 21 | `theorem` | [orthogonal_PP_PM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/orthogonal-pp-pm.md) | 193 | `result-track:93f71e227e7c12032f4b062b5f0ccc17b86f871769ef1b16d77c23a084021afa` |
| 22 | `theorem` | [orthogonal_PP_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/orthogonal-pp-mp.md) | 199 | `result-track:01d3bfc43e3c3e7f1b0d62e1f6ca5a4b0b8c69ab9e5cf76e3f9da658d079a5cb` |
| 23 | `theorem` | [orthogonal_PP_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/orthogonal-pp-mm.md) | 205 | `result-track:6cbea23627dec4da2e33fe53fba6f0af36ca378102f65077cbb3c584ea350593` |
| 24 | `theorem` | [orthogonal_PM_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/orthogonal-pm-mp.md) | 211 | `result-track:6d441bbeb32a00f9480ee2d60eb8f61572d2eeed81f7c4060245e6a716a935ec` |
| 25 | `theorem` | [orthogonal_PM_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/orthogonal-pm-mm.md) | 217 | `result-track:17038f8cdeefe0f79b1708eb72c0b0b7b795d52ca76717a629492fabc18d3db1` |
| 26 | `theorem` | [orthogonal_MP_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/orthogonal-mp-mm.md) | 223 | `result-track:57b0c17385a2136127485437b855b02a8bee41020e76a4645ccb4bbdbed2df7b` |
| 27 | `theorem` | [energy_decomposition](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/energy-decomposition.md) | 229 | `result-track:6838bdae55b02ab381bc455cda827de2f47e9e49bc73d0dedc3dffe986330f3f` |
| 28 | `def` | [interventionGeometry](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/interventiongeometry.md) | 257 | `declaration-track:79c64740261f7a1e294dbb920b64a840a30624c92ce570846e1c285784c857e9` |
| 29 | `def` | [interventionEnergy](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/interventionenergy.md) | 261 | `declaration-track:ce9b67cb41c813dcbccce4ce01dd5ebdcc538841a0502a83ab80d7ce3f42062e` |
| 30 | `theorem` | [interventionEnergy_eq](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/interventionenergy-eq.md) | 265 | `result-track:131a03e43759d248fd274e74df5dad7e387f0fed54aa6f1e5c80f071cddcaafc` |
| 31 | `theorem` | [interventionEnergy_nonnegative](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/interventionenergy-nonnegative.md) | 271 | `result-track:e7915194b6437618c7423e6592745db89a389b006913467ffb848aaa71787734` |
| 32 | `theorem` | [interventionEnergy_le_total](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/interventionenergy-le-total.md) | 276 | `result-track:34aabbdbe50af285597a801626e41685e360d50cf8993476f781b7c1927a4547` |
| 33 | `theorem` | [interventionEnergy_eq_zero_iff](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorEdition1.lean/declarations/interventionenergy-eq-zero-iff.md) | 286 | `result-track:9a4dde5d351ea5775f69b4cd9532f35054ada92aec89a9948ca183f555246ca5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a7303bcd8adfe49cf924566bacccb18cae6e13a71bdcf52698c0aabc73b3a75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveFourSector/Variant8dc05833169ff94bddf2c89375409e0b07ccc25024d81d2a7d9bcf0a60ae8abb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
