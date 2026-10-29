# Fredholm Witness Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15ed073b8f8459a0f93aba4bd1cbdb7fcc1518b9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FredholmWitnessNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixWitness](declarations/matrixwitness.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [finiteDeterminantRedundancyClaim](declarations/finitedeterminantredundancyclaim.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [finiteDeterminantRedundancyWitness](declarations/finitedeterminantredundancywitness.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [finiteDeterminantRedundancyWitness_isProved](declarations/finitedeterminantredundancywitness-isproved.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AnalyticOverclaimContext](declarations/analyticoverclaimcontext.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [analyticOverclaim](declarations/analyticoverclaim.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [OverclaimAtom](declarations/overclaimatom.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [overclaimAtomResidue](declarations/overclaimatomresidue.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [overclaimAtoms](declarations/overclaimatoms.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [analyticOverclaimResidues](declarations/analyticoverclaimresidues.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [analyticOverclaimWitness](declarations/analyticoverclaimwitness.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [analyticOverclaimWitness_hasResidue](declarations/analyticoverclaimwitness-hasresidue.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [analyticOverclaimResidue_count](declarations/analyticoverclaimresidue-count.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [analyticOverclaimResidues_targets_correct](declarations/analyticoverclaimresidues-targets-correct.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [overclaimAtoms_nodup](declarations/overclaimatoms-nodup.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [Channel](declarations/channel.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [channels](declarations/channels.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [pointCount](declarations/pointcount.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rotate](declarations/rotate.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [actionPower](declarations/actionpower.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [spectralCoverCondition](declarations/spectralcovercondition.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [x1_has_sixteen_points](declarations/x1-has-sixteen-points.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [channels_count](declarations/channels-count.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rotate_four_identity](declarations/rotate-four-identity.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [every_channel_has_level_one_spectral_cover](declarations/every-channel-has-level-one-spectral-cover.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [finiteSpectralWitnessResidue](declarations/finitespectralwitnessresidue.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteSpectralWitnessClaim](declarations/finitespectralwitnessclaim.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [finiteSpectralWitness](declarations/finitespectralwitness.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [finiteSpectralWitness_isProved](declarations/finitespectralwitness-isproved.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [spectralAuthorityOverclaimWitness](declarations/spectralauthorityoverclaimwitness.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [spectralAuthorityOverclaimWitness_hasResidue](declarations/spectralauthorityoverclaimwitness-hasresidue.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a58cd470fed5735317e175390e2e195773c8deea289dd709c1da75553c2a31ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variant64c9c41aeb7477d297cbc8fecdcc9be4e7aa8921684a41e28bdce63ef8831a3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
