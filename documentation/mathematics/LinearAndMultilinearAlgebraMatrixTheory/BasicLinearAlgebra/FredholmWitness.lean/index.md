# Fredholm Witness

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variantc86fb12400f302a33294975de62cfa720be4f9b5f65fb974027992def2029f0b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7fc06015cc022b87d5d30efeb990824ad6b8796`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FredholmWitness.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixWitness](declarations/matrixwitness.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [finiteDeterminantRedundancyClaim](declarations/finitedeterminantredundancyclaim.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [finiteDeterminantRedundancyWitness](declarations/finitedeterminantredundancywitness.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [finiteDeterminantRedundancyWitness_isProved](declarations/finitedeterminantredundancywitness-isproved.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AnalyticOverclaimContext](declarations/analyticoverclaimcontext.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [analyticOverclaim](declarations/analyticoverclaim.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [OverclaimAtom](declarations/overclaimatom.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [overclaimAtomResidue](declarations/overclaimatomresidue.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [overclaimAtoms](declarations/overclaimatoms.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [analyticOverclaimResidues](declarations/analyticoverclaimresidues.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [analyticOverclaimWitness](declarations/analyticoverclaimwitness.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [analyticOverclaimWitness_hasResidue](declarations/analyticoverclaimwitness-hasresidue.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [analyticOverclaimResidue_count](declarations/analyticoverclaimresidue-count.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [analyticOverclaimResidues_targets_correct](declarations/analyticoverclaimresidues-targets-correct.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [overclaimAtoms_nodup](declarations/overclaimatoms-nodup.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [Channel](declarations/channel.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [channels](declarations/channels.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [pointCount](declarations/pointcount.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rotate](declarations/rotate.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [actionPower](declarations/actionpower.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [spectralCoverCondition](declarations/spectralcovercondition.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [x1_has_sixteen_points](declarations/x1-has-sixteen-points.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [channels_count](declarations/channels-count.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rotate_four_identity](declarations/rotate-four-identity.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [every_channel_has_level_one_spectral_cover](declarations/every-channel-has-level-one-spectral-cover.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [finiteSpectralWitnessResidue](declarations/finitespectralwitnessresidue.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [finiteSpectralWitnessClaim](declarations/finitespectralwitnessclaim.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [finiteSpectralWitness](declarations/finitespectralwitness.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [finiteSpectralWitness_isProved](declarations/finitespectralwitness-isproved.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [spectralAuthorityOverclaimWitness](declarations/spectralauthorityoverclaimwitness.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [spectralAuthorityOverclaimWitness_hasResidue](declarations/spectralauthorityoverclaimwitness-hasresidue.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d7cf362dffb487a9d020014156f418f300b452f97ea90e9c13231cd28548e98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FredholmWitness/Variantc86fb12400f302a33294975de62cfa720be4f9b5f65fb974027992def2029f0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
