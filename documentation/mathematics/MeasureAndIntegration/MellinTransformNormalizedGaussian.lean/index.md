# Mellin Transform Normalized Gaussian

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**13 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MellinTransform/NormalizedGaussian.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a27d43838697c660b546d91d38e35a1bbfa23e5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/MellinTransformNormalizedGaussian.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianMellinProfile](declarations/gaussianmellinprofile.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [gaussianMellinCoefficient](declarations/gaussianmellincoefficient.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [quarter_root](declarations/quarter-root.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [gaussianMellinCoefficient_normalizes](declarations/gaussianmellincoefficient-normalizes.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [gaussianMellinProfile_eq_quarter](declarations/gaussianmellinprofile-eq-quarter.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gaussianMellinProfile_convergent](declarations/gaussianmellinprofile-convergent.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [gaussianMellinProfile_mellin](declarations/gaussianmellinprofile-mellin.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [gaussian_transform_vertical_norm](declarations/gaussian-transform-vertical-norm.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [gaussian_transform_vertical_integrable](declarations/gaussian-transform-vertical-integrable.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [gaussian_transform_vertical_continuous](declarations/gaussian-transform-vertical-continuous.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [gaussianMellinProfile_continuousAt](declarations/gaussianmellinprofile-continuousat.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [gaussianMellinProfile_inverse](declarations/gaussianmellinprofile-inverse.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [gaussianMellin_inversion](declarations/gaussianmellin-inversion.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96df879798718d311ec7b42ae518754040cf9402062a71dda4bf49c5515f5eb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/NormalizedGaussian.lean","GRWTSK/Analysis/MellinTransform/NormalizedGaussian.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
