# Perelman Bit Matrix Surgery Sheaf

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc4a9a1ad9d490a58fb0fdad69cc5442db044a99`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PerelmanBitMatrixSurgerySheaf.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SurgeryCellKind](declarations/surgerycellkind.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [SurgerySheafClass](declarations/surgerysheafclass.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [BitMatrixSurgeryCell](declarations/bitmatrixsurgerycell.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [classifySurgeryCell](declarations/classifysurgerycell.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [surgeryCellKindOfBucket](declarations/surgerycellkindofbucket.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [surgeryCellKindForBucket](declarations/surgerycellkindforbucket.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [residueBitForSurgeryClass](declarations/residuebitforsurgeryclass.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [surgeryResidueBit](declarations/surgeryresiduebit.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [residueBitForBucket](declarations/residuebitforbucket.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [mkBitMatrixSurgeryCell](declarations/mkbitmatrixsurgerycell.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [surgeryCellForMatrix](declarations/surgerycellformatrix.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [surgeryCellsFromAllMat2F2](declarations/surgerycellsfromallmat2f2.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mk_cell_phase_eq](declarations/mk-cell-phase-eq.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mk_cell_bucket_eq](declarations/mk-cell-bucket-eq.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk_cell_surgeryClass_eq](declarations/mk-cell-surgeryclass-eq.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mk_cell_residueBit_eq](declarations/mk-cell-residuebit-eq.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [perelmanAuthorityResidue](declarations/perelmanauthorityresidue.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [PerelmanBitMatrixSurgerySheafSurface](declarations/perelmanbitmatrixsurgerysheafsurface.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [defaultPerelmanBitMatrixSurgerySheafSurface](declarations/defaultperelmanbitmatrixsurgerysheafsurface.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [PreservesBitMatrixSurgerySheaf](declarations/preservesbitmatrixsurgerysheaf.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zero_bucket_classifies_as_collapse_residue](declarations/zero-bucket-classifies-as-collapse-residue.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [identity_bucket_classifies_as_smooth_witness](declarations/identity-bucket-classifies-as-smooth-witness.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rank_one_singular_classifies_as_neck_candidate](declarations/rank-one-singular-classifies-as-neck-candidate.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [nonidentity_invertible_classifies_as_local_witness](declarations/nonidentity-invertible-classifies-as-local-witness.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [perelman_authority_residue_is_open](declarations/perelman-authority-residue-is-open.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [perelman_authority_residue_obligation](declarations/perelman-authority-residue-obligation.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [perelman_authority_residue_status](declarations/perelman-authority-residue-status.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [default_surface_has_no_theorem_claim](declarations/default-surface-has-no-theorem-claim.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [default_surface_retains_perelman_residue](declarations/default-surface-retains-perelman-residue.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [default_surface_denies_spin4_orbit_claim](declarations/default-surface-denies-spin4-orbit-claim.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [default_surface_denies_conjugacy_orbit_claim](declarations/default-surface-denies-conjugacy-orbit-claim.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [default_surface_cell_count](declarations/default-surface-cell-count.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [default_surface_cell_count_sixteen](declarations/default-surface-cell-count-sixteen.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [finite_surgery_surface_is_not_perelman_theorem](declarations/finite-surgery-surface-is-not-perelman-theorem.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [surgery_sections_glue_unique_finite_surface](declarations/surgery-sections-glue-unique-finite-surface.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2490ca6d7814be1a8121d008afd5f5cd869de690736e7fe8e629557af7fd13c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PerelmanBitMatrixSurgerySheaf/Variant8d6e1b18367f5789e0d6b32d2784e78bee38d17ef4531ef810e37356e9c5f353.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
