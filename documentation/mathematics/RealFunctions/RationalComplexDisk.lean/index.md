# Rational Complex Disk

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/RationalComplexDisk.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdf89eca42bf2fa5fd52f9e81a5665905418649e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/RationalComplexDisk.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Disk](declarations/disk.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [point](declarations/point.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [diskAdd](declarations/diskadd.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [diskNeg](declarations/diskneg.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [diskSub](declarations/disksub.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [diskConj](declarations/diskconj.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [centerSize](declarations/centersize.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [diskMul](declarations/diskmul.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [diskSum](declarations/disksum.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [readoutDisk](declarations/readoutdisk.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lower](declarations/lower.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [upper](declarations/upper.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [lowerClears](declarations/lowerclears.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [center](declarations/center.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Contains](declarations/contains.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [center_add](declarations/center-add.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [center_neg](declarations/center-neg.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [center_conj](declarations/center-conj.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [center_mul](declarations/center-mul.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [center_sum](declarations/center-sum.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [centerSize_nonnegative](declarations/centersize-nonnegative.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [center_norm_le](declarations/center-norm-le.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [contains_radius_nonnegative](declarations/contains-radius-nonnegative.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [contains_point](declarations/contains-point.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [contains_add](declarations/contains-add.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [contains_neg](declarations/contains-neg.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [contains_sub](declarations/contains-sub.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [contains_conj](declarations/contains-conj.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [contains_mul](declarations/contains-mul.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [contains_sum](declarations/contains-sum.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [readoutDisk_contains](declarations/readoutdisk-contains.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [contains_real_error](declarations/contains-real-error.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [contains_real_interval](declarations/contains-real-interval.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [readoutDisk_real_error](declarations/readoutdisk-real-error.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lowerClears_sound](declarations/lowerclears-sound.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lowerClears_rejects_negative_radius](declarations/lowerclears-rejects-negative-radius.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lowerClears_rejects_equality](declarations/lowerclears-rejects-equality.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [radius_product_required_fixture](declarations/radius-product-required-fixture.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [rational_readout_radius_fixture](declarations/rational-readout-radius-fixture.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [imaginaryMatrixDisk](declarations/imaginarymatrixdisk.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [imaginaryTestDisk](declarations/imaginarytestdisk.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [imaginary_readout_disk_fixture](declarations/imaginary-readout-disk-fixture.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [strict_threshold_fixture](declarations/strict-threshold-fixture.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2056a2ea16b0c432313e5d3e4b5a50523b7bd76d1f1438bd8f36b39fef2792dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/RationalComplexDisk.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
