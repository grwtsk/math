# L1 Space AEEq Fun Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b34e6beadc792075e9c5be0f09ee8af3e66f0f4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/L1SpaceAEEqFunNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Integrable](declarations/integrable.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [integrable_mk](declarations/integrable-mk.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [integrable_coeFn](declarations/integrable-coefn.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [integrable_zero](declarations/integrable-zero.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Integrable.neg](declarations/integrable-neg.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [integrable_iff_mem_L1](declarations/integrable-iff-mem-l1.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Integrable.add](declarations/integrable-add.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Integrable.sub](declarations/integrable-sub.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Integrable.smul](declarations/integrable-smul.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [integrable_coeFn](declarations/integrable-coefn-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [hasFiniteIntegral_coeFn](declarations/hasfiniteintegral-coefn.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stronglyMeasurable_coeFn](declarations/stronglymeasurable-coefn.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [measurable_coeFn](declarations/measurable-coefn.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [aestronglyMeasurable_coeFn](declarations/aestronglymeasurable-coefn.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [aemeasurable_coeFn](declarations/aemeasurable-coefn.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [edist_def](declarations/edist-def.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [dist_def](declarations/dist-def.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [norm_def](declarations/norm-def.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [norm_sub_eq_lintegral](declarations/norm-sub-eq-lintegral.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ofReal_norm_eq_lintegral](declarations/ofreal-norm-eq-lintegral.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ofReal_norm_sub_eq_lintegral](declarations/ofreal-norm-sub-eq-lintegral.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [toL1](declarations/tol1.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toL1_coeFn](declarations/tol1-coefn.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coeFn_toL1](declarations/coefn-tol1.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toL1_zero](declarations/tol1-zero.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toL1_eq_mk](declarations/tol1-eq-mk.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toL1_eq_toL1_iff](declarations/tol1-eq-tol1-iff.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toL1_add](declarations/tol1-add.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toL1_neg](declarations/tol1-neg.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toL1_sub](declarations/tol1-sub.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [norm_toL1](declarations/norm-tol1.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [enorm_toL1](declarations/enorm-tol1.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [norm_toL1_eq_lintegral_norm](declarations/norm-tol1-eq-lintegral-norm.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [edist_toL1_toL1](declarations/edist-tol1-tol1.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [edist_toL1_zero](declarations/edist-tol1-zero.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toL1_smul](declarations/tol1-smul-source-edition-2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toL1_smul'](declarations/tol1-smul.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9839f5f0bcce86ffb3120366e3b94df1496df454245e3875d6bbc6767ad7881 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variant5415783aebce59d76323fed258090429ff3c42b20a66b617132f6d2e78c46ef0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
