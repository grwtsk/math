# Fixed Point Approximants

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d1e937f10243ae8371797767abedc90fdcf7a36`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/FixedPointApproximants.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_injective_limitation_set](declarations/not-injective-limitation-set.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [lfpApprox](declarations/lfpapprox.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lfpApprox_monotone](declarations/lfpapprox-monotone.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [le_lfpApprox](declarations/le-lfpapprox.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lfpApprox_add_one](declarations/lfpapprox-add-one.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lfpApprox_mono_left](declarations/lfpapprox-mono-left.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lfpApprox_mono_mid](declarations/lfpapprox-mono-mid.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lfpApprox_eq_of_mem_fixedPoints](declarations/lfpapprox-eq-of-mem-fixedpoints.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [exists_lfpApprox_eq_lfpApprox](declarations/exists-lfpapprox-eq-lfpapprox.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [lfpApprox_mem_fixedPoints_of_eq](declarations/lfpapprox-mem-fixedpoints-of-eq.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lfpApprox_ord_mem_fixedPoint](declarations/lfpapprox-ord-mem-fixedpoint.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lfpApprox_le_of_mem_fixedPoints](declarations/lfpapprox-le-of-mem-fixedpoints.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lfpApprox_ord_eq_lfp](declarations/lfpapprox-ord-eq-lfp.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lfp_mem_range_lfpApprox](declarations/lfp-mem-range-lfpapprox.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [gfpApprox](declarations/gfpapprox.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [gfpApprox_antitone](declarations/gfpapprox-antitone.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [gfpApprox_le](declarations/gfpapprox-le.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [gfpApprox_add_one](declarations/gfpapprox-add-one.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gfpApprox_mono_left](declarations/gfpapprox-mono-left.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [gfpApprox_mono_mid](declarations/gfpapprox-mono-mid.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [gfpApprox_eq_of_mem_fixedPoints](declarations/gfpapprox-eq-of-mem-fixedpoints.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_gfpApprox_eq_gfpApprox](declarations/exists-gfpapprox-eq-gfpapprox.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [gfpApprox_ord_mem_fixedPoint](declarations/gfpapprox-ord-mem-fixedpoint.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [le_gfpApprox_of_mem_fixedPoints](declarations/le-gfpapprox-of-mem-fixedpoints.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gfpApprox_ord_eq_gfp](declarations/gfpapprox-ord-eq-gfp.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gfp_mem_range_gfpApprox](declarations/gfp-mem-range-gfpapprox.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2991e59e234e80479148b83e92eca291730c8a751bdccae57f3070abb090161 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FixedPointApproximants/Variant60e2efdee5a74cd8ba61cfaddc1f373afaf2048cb543abe331a2a7ac5aacbdd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
