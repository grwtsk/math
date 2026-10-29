# Purely Inseparable Perfect Closure Perfect Closure

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3166de4a719f136cdbed6671d899571828a3ebee`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FieldTheoryAndPolynomials/PurelyInseparablePerfectClosurePerfectClosure.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [perfectClosure](declarations/perfectclosure.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_perfectClosure_iff](declarations/mem-perfectclosure-iff.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_perfectClosure_iff_pow_mem](declarations/mem-perfectclosure-iff-pow-mem.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_perfectClosure_iff_natSepDegree_eq_one](declarations/mem-perfectclosure-iff-natsepdegree-eq-one.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isPurelyInseparable_iff_perfectClosure_eq_top](declarations/ispurelyinseparable-iff-perfectclosure-eq-top.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [perfectClosure.isPurelyInseparable](declarations/perfectclosure-ispurelyinseparable.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [perfectClosure.isAlgebraic](declarations/perfectclosure-isalgebraic.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [perfectClosure.eq_bot_of_isSeparable](declarations/perfectclosure-eq-bot-of-isseparable.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [le_perfectClosure](declarations/le-perfectclosure.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [le_perfectClosure_iff](declarations/le-perfectclosure-iff.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [separableClosure_inf_perfectClosure](declarations/separableclosure-inf-perfectclosure.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_mem_perfectClosure_iff](declarations/map-mem-perfectclosure-iff.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [perfectClosure.comap_eq_of_algHom](declarations/perfectclosure-comap-eq-of-alghom.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [perfectClosure.map_le_of_algHom](declarations/perfectclosure-map-le-of-alghom.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [perfectClosure.map_eq_of_algEquiv](declarations/perfectclosure-map-eq-of-algequiv.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [perfectClosure.algEquivOfAlgEquiv](declarations/perfectclosure-algequivofalgequiv.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [perfectClosure.perfectRing](declarations/perfectclosure-perfectring.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [perfectClosure.perfectField](declarations/perfectclosure-perfectfield.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isPurelyInseparable_adjoin_simple_iff_natSepDegree_eq_one](declarations/ispurelyinseparable-adjoin-simple-iff-natsepdegree-eq-one.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isPurelyInseparable_adjoin_simple_iff_pow_mem](declarations/ispurelyinseparable-adjoin-simple-iff-pow-mem.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isPurelyInseparable_adjoin_iff_pow_mem](declarations/ispurelyinseparable-adjoin-iff-pow-mem.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [isPurelyInseparable_sup](declarations/ispurelyinseparable-sup.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [isPurelyInseparable_iSup](declarations/ispurelyinseparable-isup.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [adjoin_eq_adjoin_pow_expChar_pow_of_isSeparable](declarations/adjoin-eq-adjoin-pow-expchar-pow-of-isseparable.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [adjoin_eq_adjoin_pow_expChar_pow_of_isSeparable'](declarations/adjoin-eq-adjoin-pow-expchar-pow-of-isseparable-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [adjoin_eq_adjoin_pow_expChar_of_isSeparable](declarations/adjoin-eq-adjoin-pow-expchar-of-isseparable-source-edition-2.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [adjoin_eq_adjoin_pow_expChar_of_isSeparable'](declarations/adjoin-eq-adjoin-pow-expchar-of-isseparable.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_pow_of_isSeparable](declarations/adjoin-simple-eq-adjoin-pow-expchar-pow-of-isseparable-source-edition-2.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_pow_of_isSeparable'](declarations/adjoin-simple-eq-adjoin-pow-expchar-pow-of-isseparable.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_of_isSeparable](declarations/adjoin-simple-eq-adjoin-pow-expchar-of-isseparable-source-edition-2.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_of_isSeparable'](declarations/adjoin-simple-eq-adjoin-pow-expchar-of-isseparable.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Field.span_map_pow_expChar_pow_eq_top_of_isSeparable](declarations/field-span-map-pow-expchar-pow-eq-top-of-isseparable.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_fd_isSeparable](declarations/linearindependent-map-pow-expchar-pow-of-fd-isseparable.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_isSeparable](declarations/linearindependent-map-pow-expchar-pow-of-isseparable.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_isSeparable'](declarations/linearindependent-map-pow-expchar-pow-of-isseparable-source-edition-2.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Basis.mapPowExpCharPowOfIsSeparable](declarations/basis-mappowexpcharpowofisseparable.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [minpoly.iterateFrobenius_of_isSeparable](declarations/minpoly-iteratefrobenius-of-isseparable.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [minpoly.frobenius_of_isSeparable](declarations/minpoly-frobenius-of-isseparable.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [perfectField_of_perfectClosure_eq_bot](declarations/perfectfield-of-perfectclosure-eq-bot.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [perfectField_of_isSeparable_of_perfectField_top](declarations/perfectfield-of-isseparable-of-perfectfield-top.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [perfectField_iff_isSeparable_algebraicClosure](declarations/perfectfield-iff-isseparable-algebraicclosure.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2e6290a1a8c4836ee9918848ef369cab994d0ff78e45f3853388c9947ba3549 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
