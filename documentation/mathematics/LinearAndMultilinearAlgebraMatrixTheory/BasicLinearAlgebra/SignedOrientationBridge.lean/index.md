# Signed Orientation Bridge

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/LinearAlgebra/SignedOrientationBridge.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2dc8b62535efda4d5feffde24df5a0467f53cb0b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedOrientationBridge.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fundamentalSymmetry](declarations/fundamentalsymmetry.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [fundamentalSymmetry_apply](declarations/fundamentalsymmetry-apply.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fundamentalSymmetry_involutive](declarations/fundamentalsymmetry-involutive.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [positiveEnergy](declarations/positiveenergy.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [signedEnergy](declarations/signedenergy.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [plusEnergy](declarations/plusenergy.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [minusEnergy](declarations/minusenergy.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [positiveEnergy_nonneg](declarations/positiveenergy-nonneg.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [plusEnergy_nonneg](declarations/plusenergy-nonneg.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [minusEnergy_nonneg](declarations/minusenergy-nonneg.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [positiveEnergy_eq_plus_add_minus](declarations/positiveenergy-eq-plus-add-minus.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [signedEnergy_eq_plus_sub_minus](declarations/signedenergy-eq-plus-sub-minus.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [InPlusSector](declarations/inplussector.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [InMinusSector](declarations/inminussector.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [signedEnergy_eq_positiveEnergy_of_plusSector](declarations/signedenergy-eq-positiveenergy-of-plussector.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [neg_signedEnergy_eq_positiveEnergy_of_minusSector](declarations/neg-signedenergy-eq-positiveenergy-of-minussector.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [signedEnergy_nonneg_of_plusSector](declarations/signedenergy-nonneg-of-plussector.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [signedEnergy_nonpos_of_minusSector](declarations/signedenergy-nonpos-of-minussector.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [positiveScalar_preserves_strict_negative](declarations/positivescalar-preserves-strict-negative.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [twoSectorMask](declarations/twosectormask.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [negativeSectorFixture](declarations/negativesectorfixture.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [negativeSectorFixture_positiveEnergy](declarations/negativesectorfixture-positiveenergy.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [negativeSectorFixture_signedEnergy](declarations/negativesectorfixture-signedenergy.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [positive_energy_does_not_force_signed_positive](declarations/positive-energy-does-not-force-signed-positive.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [OrientationCertificate](declarations/orientationcertificate.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [signed_nonneg_of_sign_eq_one](declarations/signed-nonneg-of-sign-eq-one.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [signed_nonpos_of_sign_eq_neg_one](declarations/signed-nonpos-of-sign-eq-neg-one.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [negativeSectorCertificate](declarations/negativesectorcertificate.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [commonJ_flip_reverses_generator](declarations/commonj-flip-reverses-generator.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9f38ba5477d8645b0b1e1215711c0dfc6e06099687fcc89e0112c7ed292ccf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/SignedOrientationBridge.lean","GRWTSK/LinearAlgebra/SignedOrientationBridge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
