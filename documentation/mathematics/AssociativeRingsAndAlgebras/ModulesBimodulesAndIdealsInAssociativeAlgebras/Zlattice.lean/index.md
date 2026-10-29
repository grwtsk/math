# Zlattice

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a93d0fc8296db60ce64bd3dce748436d87e39926`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Zlattice.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fundamentalDomain](declarations/fundamentaldomain.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_fundamentalDomain](declarations/mem-fundamentaldomain.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [floor](declarations/floor.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ceil](declarations/ceil.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [repr_floor_apply](declarations/repr-floor-apply.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [repr_ceil_apply](declarations/repr-ceil-apply.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [floor_eq_self_of_mem](declarations/floor-eq-self-of-mem.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ceil_eq_self_of_mem](declarations/ceil-eq-self-of-mem.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [fract](declarations/fract.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [fract_apply](declarations/fract-apply.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [repr_fract_apply](declarations/repr-fract-apply.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [fract_fract](declarations/fract-fract.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fract_zspan_add](declarations/fract-zspan-add.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fract_add_zspan](declarations/fract-add-zspan.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fract_eq_self](declarations/fract-eq-self.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [fract_mem_fundamentalDomain](declarations/fract-mem-fundamentaldomain.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [fract_restrict](declarations/fract-restrict.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fract_restrict_surjective](declarations/fract-restrict-surjective.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fract_restrict_apply](declarations/fract-restrict-apply.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fract_eq_fract](declarations/fract-eq-fract.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [norm_fract_le](declarations/norm-fract-le.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_floor_self](declarations/coe-floor-self.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_fract_self](declarations/coe-fract-self.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [fundamentalDomain_bounded](declarations/fundamentaldomain-bounded.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vadd_mem_fundamentalDomain](declarations/vadd-mem-fundamentaldomain.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exist_unique_vadd_mem_fundamentalDomain](declarations/exist-unique-vadd-mem-fundamentaldomain.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [QuotientEquiv](declarations/quotientequiv.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [quotientEquiv_apply_mk](declarations/quotientequiv-apply-mk.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [quotientEquiv.symm_apply](declarations/quotientequiv-symm-apply.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fundamentalDomain_measurableSet](declarations/fundamentaldomain-measurableset.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isAddFundamentalDomain](declarations/isaddfundamentaldomain.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Zlattice.FG](declarations/zlattice-fg.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Zlattice.module_finite](declarations/zlattice-module-finite.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Zlattice.module_free](declarations/zlattice-module-free.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Zlattice.rank](declarations/zlattice-rank.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59e1b389ab98f2a7ecd232ad831ff5c7e8398d6f31361699076ac62eeab69b7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant291edec5f97c554771ecd801a2e684e84fef163177fc576929d4fe91498777ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
