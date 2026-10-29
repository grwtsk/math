# Verification target: Positive Four Sector Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14222da25e7fa9288239142d3337f9478e70cd41",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variantd9fe4b91ad93a45b8ac3add4e777761b0d6d97d1da69464266738ec79f3b59de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14222da25e7fa9288239142d3337f9478e70cd41`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variantd9fe4b91ad93a45b8ac3add4e777761b0d6d97d1da69464266738ec79f3b59de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveFourSector/Variantd9fe4b91ad93a45b8ac3add4e777761b0d6d97d1da69464266738ec79f3b59de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.CommutingInvolutions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SelfAdjointFor](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/selfadjointfor.md) | 40 | `declaration-track:d429fff34d57d669f71fbe2ec5cd9de0c34d6a72517741400e334b00b8148ab2` |
| 2 | `theorem` | [orthogonal_of_eigen_plus_minus](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/orthogonal-of-eigen-plus-minus.md) | 44 | `result-track:873f76f1ac3817867fcbaf764aaa2563ffe7a643a015560e50f0f232f2396d49` |
| 3 | `theorem` | [four_sum_energy](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/four-sum-energy.md) | 58 | `result-track:8ab5e99b9871cdb090ee7b9949a1147f0137c4e7b346d806ab8f77a7e15c8e42` |
| 4 | `structure` | [PositiveCommutingInvolutions](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/positivecommutinginvolutions.md) | 86 | `declaration-track:bc3cca8670bda49400317c6fe13ad9320c87af14e1e4a70779de83b8e6c69c88` |
| 5 | `def` | [sectorPP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/sectorpp.md) | 96 | `declaration-track:f48b82dd7acc87e429b2364cb80e3cf41ff420e27901fb80357ad3904e5623be` |
| 6 | `def` | [sectorPM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/sectorpm.md) | 100 | `declaration-track:e4aafd45b6bea8ce03c2594fb1890cc5d9636ccdef616d81e96e984e3286baeb` |
| 7 | `def` | [sectorMP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/sectormp.md) | 104 | `declaration-track:d409ed44e59a4ceab280ab39145d7fbbbe6c5fa87e75ab20a6c0c936d55b158c` |
| 8 | `def` | [sectorMM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/sectormm.md) | 108 | `declaration-track:219cedbe56e25914e66a0635a23d2ebc673f3ab932ef130e88a7f5319982cbad` |
| 9 | `theorem` | [sectorPP_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/sectorpp-apply.md) | 111 | `result-track:605a35e3edb71bd1fdf87ecc1d5b61a12b3331c4d303b6a56aea1ca4315632a7` |
| 10 | `theorem` | [sectorPM_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/sectorpm-apply.md) | 113 | `result-track:0a572fce5ec7f874b3d53ef2c1a23e411896c5f6a35a0c389d19eb09c55025f3` |
| 11 | `theorem` | [sectorMP_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/sectormp-apply.md) | 115 | `result-track:131d5ae12a37336c8726b32121043376a527e17b9450c4dfffb4bb32651efd81` |
| 12 | `theorem` | [sectorMM_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/sectormm-apply.md) | 117 | `result-track:77642be1b2cb5857474ad5a1d297027b67b2d55f40a634510e9311268ebc99b6` |
| 13 | `theorem` | [first_on_PP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/first-on-pp.md) | 121 | `result-track:a5c444568683788d3a605d16880d01ffe4093811c9b49e2f80a05a8e4a72de59` |
| 14 | `theorem` | [second_on_PP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/second-on-pp.md) | 131 | `result-track:bfcd90417caa9688903c8ca2086ee47a3a7cf6defe853adad81355243a5bdbd7` |
| 15 | `theorem` | [first_on_PM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/first-on-pm.md) | 142 | `result-track:01e1e830444ed588f94891ca27272f551c27cfc4f0b6d11416318eee3bae2485` |
| 16 | `theorem` | [second_on_PM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/second-on-pm.md) | 152 | `result-track:4fa0e894438d915ae7961568b5490a0a0220f54adcb164798ddc24eaac219135` |
| 17 | `theorem` | [first_on_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/first-on-mp.md) | 158 | `result-track:82dd5e051d8a02c8811bee051e2c9d1d0b2e3287283283fc032216ed6d2321d7` |
| 18 | `theorem` | [second_on_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/second-on-mp.md) | 168 | `result-track:aee2902d196885ba59b85addd21fb751695ece8a1f8f48bdf3b55e01210de019` |
| 19 | `theorem` | [first_on_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/first-on-mm.md) | 179 | `result-track:9f4c7a1911a356441e9a32f2428d46e1839a7eb82b8f0b18fe459b169a9da53c` |
| 20 | `theorem` | [second_on_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/second-on-mm.md) | 189 | `result-track:c17b1b3f089d7c95ad71222919a16e3d49ced5038cfe4f722060ec53a1f729ab` |
| 21 | `theorem` | [orthogonal_PP_PM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/orthogonal-pp-pm.md) | 200 | `result-track:c9aad743649352ee573395521ffeb023efc41e98485fb3aa2d0049f17115e03b` |
| 22 | `theorem` | [orthogonal_PP_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/orthogonal-pp-mp.md) | 206 | `result-track:a4bbbae6f06077f8e5b534d88ae2ffa831df832cb2048c2016453df23bbd71e7` |
| 23 | `theorem` | [orthogonal_PP_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/orthogonal-pp-mm.md) | 212 | `result-track:fa370cda7d03f4960ab10d0e04479630c662fcb3e6baa07a0267ddbb5c704056` |
| 24 | `theorem` | [orthogonal_PM_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/orthogonal-pm-mp.md) | 218 | `result-track:2befddf409cdbb8cc9fa20abadd6208ee20d0e6836016c0e6a6d4c15745c9d69` |
| 25 | `theorem` | [orthogonal_PM_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/orthogonal-pm-mm.md) | 224 | `result-track:861f2d48e1be688e8d7d63c5e5d9cbd5314454e712eb65e2a85e4ac3ff1dff2a` |
| 26 | `theorem` | [orthogonal_MP_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/orthogonal-mp-mm.md) | 230 | `result-track:e39defe327fdd0d919aa75da7292e0592f69d99a44eb78d18d30c7ac0f81ccc2` |
| 27 | `theorem` | [energy_decomposition](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/energy-decomposition.md) | 236 | `result-track:921631922d89a5bd56e2cb6fdd6c15f2e3aad5ef9a68e46119cd199c0a6bc582` |
| 28 | `def` | [interventionGeometry](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/interventiongeometry.md) | 263 | `declaration-track:b29f98902641c4fb155d661248bbe60c5d066da14327e30059676605e8aad07a` |
| 29 | `def` | [interventionEnergy](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/interventionenergy.md) | 267 | `declaration-track:ea0c1ffb393c94e5d2e7e9933adf9c4323461f32ea7ad29f6ca4d0d45a8eda92` |
| 30 | `theorem` | [interventionEnergy_eq](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/interventionenergy-eq.md) | 271 | `result-track:4e85032f1dc5a4eea84147af58538fd4a729e59e3107414fec2e31331153987f` |
| 31 | `theorem` | [interventionEnergy_nonnegative](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/interventionenergy-nonnegative.md) | 277 | `result-track:91974bcdbb0b09cf78f48c4177f6fce1e60a3e6aa4aeace3d4b4915f3d2b3a01` |
| 32 | `theorem` | [interventionEnergy_le_total](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/interventionenergy-le-total.md) | 282 | `result-track:71026fd5d3b4537f51db6bd31459716a8a6416ab2fe59e96f3395588cae7a3a9` |
| 33 | `theorem` | [interventionEnergy_eq_zero_iff](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition2.lean/declarations/interventionenergy-eq-zero-iff.md) | 292 | `result-track:80c63125c7d0146a9484d61a0d34323a6ad264dde999c1226e0136829ae44181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b737e9e65ff40786be9769eae3889e52e95c3c90001011955ace45b0587513d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variantd9fe4b91ad93a45b8ac3add4e777761b0d6d97d1da69464266738ec79f3b59de.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveFourSector/Variantd9fe4b91ad93a45b8ac3add4e777761b0d6d97d1da69464266738ec79f3b59de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
