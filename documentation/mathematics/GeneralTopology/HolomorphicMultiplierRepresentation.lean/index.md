# Holomorphic Multiplier Representation

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Operator/HolomorphicMultiplierRepresentation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4b6ffe568daa82ba3e0257c8f81e7881ca8f802`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HolomorphicMultiplierRepresentation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [boundedSubring](declarations/boundedsubring.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [BoundedSymbol](declarations/boundedsymbol.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [value](declarations/value.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ext](declarations/ext.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofMultiplier](declarations/ofmultiplier.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toMultiplier](declarations/tomultiplier.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toMultiplier_symbol](declarations/tomultiplier-symbol.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [constants](declarations/constants.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [constants_value](declarations/constants-value.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [symbolAlgebra](declarations/symbolalgebra.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [algebraMap_eq_constants](declarations/algebramap-eq-constants.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [smul_value](declarations/smul-value.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [quotientRepresentation](declarations/quotientrepresentation.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [quotientRepresentation_ofMultiplier](declarations/quotientrepresentation-ofmultiplier.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [quotientRepresentation_congr_ae](declarations/quotientrepresentation-congr-ae.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [quotientRepresentation_constants](declarations/quotientrepresentation-constants.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [quotientAlgHom](declarations/quotientalghom.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [quotientAlgHom_apply](declarations/quotientalghom-apply.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [completedRepresentation](declarations/completedrepresentation.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [completedAlgHom](declarations/completedalghom.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [completedAlgHom_apply](declarations/completedalghom-apply.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [completedRepresentation_ofMultiplier](declarations/completedrepresentation-ofmultiplier.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [completedRepresentation_toCompletion](declarations/completedrepresentation-tocompletion.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [completedRepresentation_commutes](declarations/completedrepresentation-commutes.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [completedRepresentation_bound](declarations/completedrepresentation-bound.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [completedRepresentation_gauge](declarations/completedrepresentation-gauge.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [quotientRepresentation_eq_iff_ae](declarations/quotientrepresentation-eq-iff-ae.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [quotientRepresentation_injective](declarations/quotientrepresentation-injective.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [completedRepresentation_eq_iff](declarations/completedrepresentation-eq-iff.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [completedRepresentation_eq_iff_ae](declarations/completedrepresentation-eq-iff-ae.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [completedRepresentation_injective](declarations/completedrepresentation-injective.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [finiteUnit](declarations/finiteunit.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [finiteUnit_nonzero](declarations/finiteunit-nonzero.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [identityBundle_faithful](declarations/identitybundle-faithful.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [diskSymbol](declarations/disksymbol.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [diskSymbol_ne_zero](declarations/disksymbol-ne-zero.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [nonzero_symbol_in_kernel](declarations/nonzero-symbol-in-kernel.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb90b216d329339e4eb949c4966674a9b8a72d2611df0b5e252b4fea0baff3db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/HolomorphicMultiplierRepresentation.lean","GRWTSK/Analysis/OperatorTheory/HolomorphicMultiplierRepresentation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
