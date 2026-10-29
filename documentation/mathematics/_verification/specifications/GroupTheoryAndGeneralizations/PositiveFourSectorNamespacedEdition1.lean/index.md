# Verification target: Positive Four Sector Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4b6922a2afbc424a311bb503d6cb44e4124edd6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4b6922a2afbc424a311bb503d6cb44e4124edd6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveFourSector/Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760.lean.json)

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
| 1 | `def` | [SelfAdjointFor](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/selfadjointfor.md) | 40 | `declaration-track:929be5e2070902ab1120713555ca006ca388e14020e5d147a191ff03a8fe8c45` |
| 2 | `theorem` | [orthogonal_of_eigen_plus_minus](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/orthogonal-of-eigen-plus-minus.md) | 44 | `result-track:3164bdadf16722de478347f3dd49ec088f106ad615a7007e687b12ccb0394d15` |
| 3 | `theorem` | [four_sum_energy](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/four-sum-energy.md) | 58 | `result-track:8553ad9026862d00e6f2450940b50d5797ec49a837e9069debaf34929695b3f2` |
| 4 | `structure` | [PositiveCommutingInvolutions](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/positivecommutinginvolutions.md) | 86 | `declaration-track:be3c3c9f668d9cb6e4734ac57bd1ba3799b777a47de6e212a267bfea043937d0` |
| 5 | `def` | [sectorPP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/sectorpp.md) | 97 | `declaration-track:976a4da1100d612be67b8b42df5326929368cdedbfd5258024dd05dad130435c` |
| 6 | `def` | [sectorPM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/sectorpm.md) | 101 | `declaration-track:4b1a946ffe2c40adc0d0571c09e1a7d90e150b31c44f137fb47103162484566b` |
| 7 | `def` | [sectorMP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/sectormp.md) | 105 | `declaration-track:a8f5e9476824c8434df4f2168e4f1586f23705e23b513859aa819f8987d542ad` |
| 8 | `def` | [sectorMM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/sectormm.md) | 109 | `declaration-track:0d26727684299ee654dc15439a286a82e106d63bb2033270d9285f98ff14b5db` |
| 9 | `theorem` | [sectorPP_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/sectorpp-apply.md) | 112 | `result-track:16cf75d4431b20802a6fbd5021971c6bc0b4e2e20f5ae3c56c14d600a4a736a7` |
| 10 | `theorem` | [sectorPM_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/sectorpm-apply.md) | 114 | `result-track:e13f040ffaca5a8ea74185d491ba1529f1989cfae2060ca15fde6b0c3829655d` |
| 11 | `theorem` | [sectorMP_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/sectormp-apply.md) | 116 | `result-track:da0b92cfa8f72a558de5389b6feedb8d1f4aaa03fac4be1ae6ad3470621f17d6` |
| 12 | `theorem` | [sectorMM_apply](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/sectormm-apply.md) | 118 | `result-track:9d5e23fd1c19d883722b71223e3e337d484f03d0bf30ceb51c2383d94f118c41` |
| 13 | `theorem` | [first_on_PP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/first-on-pp.md) | 122 | `result-track:e5d04a31f8b9c6ae5d71895b2aa7a39b53822db85c810bd6244dbebeec5c4fb3` |
| 14 | `theorem` | [second_on_PP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/second-on-pp.md) | 132 | `result-track:62b5265ac125262f220354a4bfd488af277cf620ef7dffbc16ecac8a1ef378c7` |
| 15 | `theorem` | [first_on_PM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/first-on-pm.md) | 143 | `result-track:bd8ad01d64ff4c8d8188f9fe59412a45363dab014462d7d406999e864e0d027b` |
| 16 | `theorem` | [second_on_PM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/second-on-pm.md) | 153 | `result-track:c1f3b2815a20c34ad5dceaf1200b24e55fdd28762acbfe4fc3792e3b0f36de79` |
| 17 | `theorem` | [first_on_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/first-on-mp.md) | 159 | `result-track:e3d82aeed28be0b461e225dc2aab01b7ac56caaf63ecd318ad318c2c875594fd` |
| 18 | `theorem` | [second_on_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/second-on-mp.md) | 169 | `result-track:5683b1003a052f26efef4723725519a5b6154d47a4bc9ce26bef230b6456ca14` |
| 19 | `theorem` | [first_on_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/first-on-mm.md) | 180 | `result-track:92f55d7e8ba542a1c8e9fd6633c5c7c3e306ec74d423662166b4c694ae1f895d` |
| 20 | `theorem` | [second_on_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/second-on-mm.md) | 190 | `result-track:bb0d155cd33aa01a7fa0408c0b1dae919ab601f91b26479d67d6c97fbad1d354` |
| 21 | `theorem` | [orthogonal_PP_PM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/orthogonal-pp-pm.md) | 201 | `result-track:220a2d2a555eb3b7a72001bd9787df69ca9eee9278966055b973e9d911a10b8c` |
| 22 | `theorem` | [orthogonal_PP_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/orthogonal-pp-mp.md) | 207 | `result-track:fe9a68b6e06c1cda507634bb241859a6bda1b0a1f4a4001fff529c1cdfd16413` |
| 23 | `theorem` | [orthogonal_PP_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/orthogonal-pp-mm.md) | 213 | `result-track:0b2ee1a6e7d128cc789cdc1778571da38f35dc29c5da7dc6976367d98002639d` |
| 24 | `theorem` | [orthogonal_PM_MP](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/orthogonal-pm-mp.md) | 219 | `result-track:c5de34800652b22063f87a59c6efe76ad3542f4759c336345f74d29b2d52e148` |
| 25 | `theorem` | [orthogonal_PM_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/orthogonal-pm-mm.md) | 225 | `result-track:abb980e6a84dfc3613c63f069d30d57e50fedd84d52aceccfdf71c759d9dba9c` |
| 26 | `theorem` | [orthogonal_MP_MM](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/orthogonal-mp-mm.md) | 231 | `result-track:7dde4bbcd7aeb792b1805fc0e73714155cdd8de6ea9f752c46f2d7fb6280de2f` |
| 27 | `theorem` | [energy_decomposition](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/energy-decomposition.md) | 237 | `result-track:408cb53022ae2b9a0b8e1a5cf75e13bade53da3c7def53b3f2209c8ec17d6254` |
| 28 | `def` | [interventionGeometry](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/interventiongeometry.md) | 265 | `declaration-track:c42aa96be930a2d0bf663e8f9c81def2533f8c69a4f4c9ec25321d00b6bb8aad` |
| 29 | `def` | [interventionEnergy](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/interventionenergy.md) | 269 | `declaration-track:a91017f2d4014bfa743abb7b34277f5db6f2659f8f8cf21bb163da95973979d9` |
| 30 | `theorem` | [interventionEnergy_eq](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/interventionenergy-eq.md) | 273 | `result-track:413b46298db643c93b2a43dd8bf25e665933dd1fe841b67af33f89ee6911dc03` |
| 31 | `theorem` | [interventionEnergy_nonnegative](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/interventionenergy-nonnegative.md) | 279 | `result-track:e7aecee4f590dcc44f8e0ab70bd13d5036c71e90d18ba67a92bd27597aec4048` |
| 32 | `theorem` | [interventionEnergy_le_total](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/interventionenergy-le-total.md) | 284 | `result-track:1a3fb406a3609b6e68a7f6a735c989cb01eaba4a535861dd8ca6859b7455e130` |
| 33 | `theorem` | [interventionEnergy_eq_zero_iff](../../../../GroupTheoryAndGeneralizations/PositiveFourSectorNamespacedEdition1.lean/declarations/interventionenergy-eq-zero-iff.md) | 294 | `result-track:0670ec7703f61978eea6f49fe96f787ee8c2c036ca2928b46666a3a39b2669d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08c7158b018d723090b66815edbb31045f4081432bf939d747682eb0564bcc73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveFourSector/Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveFourSector/Variant0d908cd7aeda3867872c2f457b70f7eaf0929fdf9f5df1b71a13bdd9e001c760.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
