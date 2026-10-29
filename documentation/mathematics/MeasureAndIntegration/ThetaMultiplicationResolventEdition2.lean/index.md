# Theta Multiplication Resolvent Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant3f9ff871476914a45fe9ab6237ee69c5e3311238cdb7db24edca47b111d01161.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9531723da3058af7783648fc9e54c84fa4761fa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/ThetaMultiplicationResolventEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [imaginaryShift](declarations/imaginaryshift.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [imaginaryShift_conj](declarations/imaginaryshift-conj.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [denominator_ne_zero](declarations/denominator-ne-zero.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [norm_denominator_sq](declarations/norm-denominator-sq.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [one_le_norm_denominator](declarations/one-le-norm-denominator.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coordinate_le_norm_denominator](declarations/coordinate-le-norm-denominator.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [reciprocal_bound](declarations/reciprocal-bound.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [weighted_reciprocal_bound](declarations/weighted-reciprocal-bound.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [resolvent_memLp](declarations/resolvent-memlp.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [resolvent](declarations/resolvent.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [resolvent_ae](declarations/resolvent-ae.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [resolvent_mem_domain](declarations/resolvent-mem-domain.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [resolventDomainVector](declarations/resolventdomainvector.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [shiftedCoordinate](declarations/shiftedcoordinate.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [shiftedCoordinate_apply](declarations/shiftedcoordinate-apply.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [shiftedCoordinate_ae](declarations/shiftedcoordinate-ae.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [shiftedCoordinate_resolvent](declarations/shiftedcoordinate-resolvent.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [shiftedCoordinate_surjective](declarations/shiftedcoordinate-surjective.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [shiftedCoordinate_norm_sq](declarations/shiftedcoordinate-norm-sq.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [resolvent_graph_norm_sq](declarations/resolvent-graph-norm-sq.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [resolvent_norm_le](declarations/resolvent-norm-le.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [resolvent_shiftedCoordinate](declarations/resolvent-shiftedcoordinate.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [resolvent_add](declarations/resolvent-add.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [resolvent_smul](declarations/resolvent-smul.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [resolventLinear](declarations/resolventlinear.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [resolventContinuous](declarations/resolventcontinuous.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [resolventContinuous_apply](declarations/resolventcontinuous-apply.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [norm_resolventContinuous_le_one](declarations/norm-resolventcontinuous-le-one.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [adjoint_domain_subset_of_dense](declarations/adjoint-domain-subset-of-dense.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coordinateMultiplication_isSelfAdjoint_of_dense](declarations/coordinatemultiplication-isselfadjoint-of-dense.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coordinateMultiplication_isSelfAdjoint](declarations/coordinatemultiplication-isselfadjoint.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coordinateMultiplication_isClosed](declarations/coordinatemultiplication-isclosed.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b692eb14f052b7dc3a222dc928303658b54b27f869ff0c9670dde5d6d8b1a7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaMultiplicationResolvent/Variant3f9ff871476914a45fe9ab6237ee69c5e3311238cdb7db24edca47b111d01161.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
