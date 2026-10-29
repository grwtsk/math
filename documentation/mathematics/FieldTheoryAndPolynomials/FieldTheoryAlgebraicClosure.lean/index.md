# Field Theory Algebraic Closure

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69e9e534da228d65a181c54805e278e4d0dc068b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FieldTheoryAndPolynomials/FieldTheoryAlgebraicClosure.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [algebraicClosure](declarations/algebraicclosure.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [algebraicClosure_toSubalgebra](declarations/algebraicclosure-tosubalgebra.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_algebraicClosure_iff'](declarations/mem-algebraicclosure-iff-source-edition-2.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_algebraicClosure_iff](declarations/mem-algebraicclosure-iff.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [map_mem_algebraicClosure_iff](declarations/map-mem-algebraicclosure-iff.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comap_eq_of_algHom](declarations/comap-eq-of-alghom.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_le_of_algHom](declarations/map-le-of-alghom.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [map_eq_of_algebraicClosure_eq_bot](declarations/map-eq-of-algebraicclosure-eq-bot.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [map_eq_of_algEquiv](declarations/map-eq-of-algequiv.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [algEquivOfAlgEquiv](declarations/algequivofalgequiv.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [isAlgebraic](declarations/isalgebraic.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [isIntegralClosure](declarations/isintegralclosure.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Transcendental.algebraicClosure](declarations/transcendental-algebraicclosure.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [le_algebraicClosure'](declarations/le-algebraicclosure.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [le_algebraicClosure](declarations/le-algebraicclosure-source-edition-2.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [le_algebraicClosure_iff](declarations/le-algebraicclosure-iff.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [algebraicClosure_eq_bot](declarations/algebraicclosure-eq-bot.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalClosure_eq_self](declarations/normalclosure-eq-self.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsAlgClosed.algebraicClosure_eq_bot_iff](declarations/isalgclosed-algebraicclosure-eq-bot-iff.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IntermediateField.isAlgebraic_adjoin_iff_isAlgebraic](declarations/intermediatefield-isalgebraic-adjoin-iff-isalgebraic.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [isAlgClosure](declarations/isalgclosure.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eq_top_iff](declarations/eq-top-iff.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [le_restrictScalars](declarations/le-restrictscalars.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eq_restrictScalars_of_isAlgebraic](declarations/eq-restrictscalars-of-isalgebraic.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [adjoin_le](declarations/adjoin-le.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Splits.algebraicClosure](declarations/splits-algebraicclosure.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8b5af376c2ecab10f9ac1b24c5530d9772e78a90526b407607dc46497396620 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/AlgebraicClosure/Variantca64cdc08beb7646edf366c4df739540d27a25ce760d7fad956a5e0e9e4b8cfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
