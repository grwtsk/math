# Mellin Log Derivative Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `290f5ffc4bea1385f961f99cf14b89fcba315c8e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/MellinLogDerivativePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [centeredTwistedPsiStep](declarations/centeredtwistedpsistep.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [centeredTwistedPsiStep_natCast](declarations/centeredtwistedpsistep-natcast.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [centeredTwistedPsiStep_eq_floor_add_error](declarations/centeredtwistedpsistep-eq-floor-add-error.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [norm_dirichletPrincipalIndicator_le_one](declarations/norm-dirichletprincipalindicator-le-one.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [centeredTwistedPsiStep_isBigO_rpow](declarations/centeredtwistedpsistep-isbigo-rpow.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [centeredTwistedPsiStep_locallyIntegrable](declarations/centeredtwistedpsistep-locallyintegrable.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [centeredTwistedPsiStep_eventuallyEq_zero_at_zero](declarations/centeredtwistedpsistep-eventuallyeq-zero-at-zero.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [centeredTwistedPsiStep_isBigO_zero_rpow](declarations/centeredtwistedpsistep-isbigo-zero-rpow.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [centeredTwistedPsiMellin](declarations/centeredtwistedpsimellin.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [differentiableAt_centeredTwistedPsiMellin](declarations/differentiableat-centeredtwistedpsimellin.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [centeredPsiMellin_differentiable](declarations/centeredpsimellin-differentiable.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [twistedVonMangoldtNormPartialSums_isBigO](declarations/twistedvonmangoldtnormpartialsums-isbigo.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [uncenteredTwistedPsiStep](declarations/uncenteredtwistedpsistep.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [twistedVonMangoldtLSeries_eq_uncenteredMellin](declarations/twistedvonmangoldtlseries-eq-uncenteredmellin.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [twistedPsi_isBigO_one](declarations/twistedpsi-isbigo-one.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [twistedPsiKernel_integrable](declarations/twistedpsikernel-integrable.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [principalMellinKernel_integrable](declarations/principalmellinkernel-integrable.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [centeredTwistedPsiMellin_eq_LSeries_sub_principal](declarations/centeredtwistedpsimellin-eq-lseries-sub-principal.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [centeredTwistedPsiMellin_add_principalIndicator_eq_neg_logDeriv_poleRemovedLFunction](declarations/centeredtwistedpsimellin-add-principalindicator-eq-neg-logderiv-poleremo.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [criticalRightHalfPlane](declarations/criticalrighthalfplane.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isOpen_criticalRightHalfPlane](declarations/isopen-criticalrighthalfplane.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isPreconnected_criticalRightHalfPlane](declarations/ispreconnected-criticalrighthalfplane.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [MellinLogDerivativeSquare](declarations/mellinlogderivativesquare.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [canonicalMellinLogDerivativeSquare](declarations/canonicalmellinlogderivativesquare.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [MellinLogDerivativeSquare.residual](declarations/mellinlogderivativesquare-residual.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [MellinLogDerivativeSquare.differentiableOn_residual](declarations/mellinlogderivativesquare-differentiableon-residual.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re](declarations/mellinlogderivativesquare-residual-eq-zero-of-one-lt-re.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [MellinLogDerivativeSquare.residual_eq_zero](declarations/mellinlogderivativesquare-residual-eq-zero.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zeroFree_rightHalfPlane_of_mellinHolomorphic](declarations/zerofree-righthalfplane-of-mellinholomorphic.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [poleRemovedL_nowhereZero_rightHalfPlane](declarations/poleremovedl-nowherezero-righthalfplane.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [LFunction_zeroFree_rightHalfPlane](declarations/lfunction-zerofree-righthalfplane.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12ef07bb5418cdf2f82b28f6ed84efe2c72d4a428abb3ac06dca99dd757db57a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinLogDerivative/Variant9d8efc08b5fe17898b7b880728b1613132d8d4fabfa7e98ec06243e6cf5bf265.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
