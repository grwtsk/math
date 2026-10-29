# Prime Exponent Scale

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74d56ea401b2c7d48b4d9eb467d28fca909e75c0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExponentScale.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PrimeIndex](declarations/primeindex.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [PrimeExponent](declarations/primeexponent.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [primeCoordinate](declarations/primecoordinate.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [primeCoordinate_apply](declarations/primecoordinate-apply.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [primeProjector](declarations/primeprojector.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [primeProjector_apply](declarations/primeprojector-apply.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [primeCoordinate_projector_same](declarations/primecoordinate-projector-same.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [primeCoordinate_projector_ne](declarations/primecoordinate-projector-ne.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [primeProjector_idempotent](declarations/primeprojector-idempotent.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [primeProjector_orthogonal](declarations/primeprojector-orthogonal.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [finite_prime_projector_reconstruction](declarations/finite-prime-projector-reconstruction.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [primeLogHom](declarations/primeloghom.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [logRealization](declarations/logrealization.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [logRealization_single](declarations/logrealization-single.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [rationalRealization](declarations/rationalrealization.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rationalRealization_pos](declarations/rationalrealization-pos.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rationalRealization_ne_zero](declarations/rationalrealization-ne-zero.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rationalRealization_add](declarations/rationalrealization-add.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rationalRealization_zero](declarations/rationalrealization-zero.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rationalRealization_neg](declarations/rationalrealization-neg.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [padicValRat_prime_zpow](declarations/padicvalrat-prime-zpow.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [padicValRat_rationalRealization](declarations/padicvalrat-rationalrealization.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rationalRealization_injective](declarations/rationalrealization-injective.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [positiveRationalUnits](declarations/positiverationalunits.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [PositiveRationalScale](declarations/positiverationalscale.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [positiveRationalValue](declarations/positiverationalvalue.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [positiveRationalValue_pos](declarations/positiverationalvalue-pos.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [exponentToPositiveRational](declarations/exponenttopositiverational.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [exponentToPositiveRational_value](declarations/exponenttopositiverational-value.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [natPrimeExponent](declarations/natprimeexponent.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [natPrimeExponent_apply](declarations/natprimeexponent-apply.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rationalRealization_natPrimeExponent](declarations/rationalrealization-natprimeexponent.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [positiveRationalExponent](declarations/positiverationalexponent.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rationalRealization_positiveRationalExponent](declarations/rationalrealization-positiverationalexponent.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [valuationCoordinates](declarations/valuationcoordinates.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [valuationCoordinates_exponentToPositiveRational](declarations/valuationcoordinates-exponenttopositiverational.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [exponentToPositiveRational_valuationCoordinates](declarations/exponenttopositiverational-valuationcoordinates.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [positiveRationalPrimeExponentEquiv](declarations/positiverationalprimeexponentequiv.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [valuationCoordinates_apply](declarations/valuationcoordinates-apply.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [logRealization_eq_log_rationalRealization](declarations/logrealization-eq-log-rationalrealization.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [logRealization_injective](declarations/logrealization-injective.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [arithmeticLogScale](declarations/arithmeticlogscale-source-edition-2.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `abbrev` | [ArithmeticLogScale](declarations/arithmeticlogscale.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [exponentToScale](declarations/exponenttoscale.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [exponentToScale_coe](declarations/exponenttoscale-coe.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [arithmeticLogScale_existsUniqueExponent](declarations/arithmeticlogscale-existsuniqueexponent.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [exponentEquivScale](declarations/exponentequivscale.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [scalePrimeCoordinate](declarations/scaleprimecoordinate.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [scalePrimeCoordinate_exponentToScale](declarations/scaleprimecoordinate-exponenttoscale.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [scalePrimeSection](declarations/scaleprimesection.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [scalePrimeCoordinate_section](declarations/scaleprimecoordinate-section.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [scalePrimeProjector](declarations/scaleprimeprojector.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [scalePrimeProjector_idempotent](declarations/scaleprimeprojector-idempotent.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [scalePrimeProjector_orthogonal](declarations/scaleprimeprojector-orthogonal.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [finite_scale_projector_reconstruction](declarations/finite-scale-projector-reconstruction.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [radialPrimePower](declarations/radialprimepower.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [radialRealization](declarations/radialrealization.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [radialRealization_zero](declarations/radialrealization-zero.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [radialRealization_add](declarations/radialrealization-add.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [radialRealization_exponentToScale](declarations/radialrealization-exponenttoscale.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [padicValRat_radialRealization](declarations/padicvalrat-radialrealization.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [finitePadicNormProduct](declarations/finitepadicnormproduct.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [exponent_product_formula](declarations/exponent-product-formula.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [exponent_log_product_formula](declarations/exponent-log-product-formula.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [primeLineEquiv](declarations/primelineequiv.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8057ae9ca4e011eba73b8bec3bbb2d89c198f246f374f6d4e4084e55eb8cd2be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ArithmeticFunctions/PrimeExponentScale.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeExponentScale.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
