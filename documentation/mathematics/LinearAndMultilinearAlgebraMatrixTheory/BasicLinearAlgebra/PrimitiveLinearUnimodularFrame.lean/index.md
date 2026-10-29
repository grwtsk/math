# Primitive Linear Unimodular Frame

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8567890d0a5b1f8fde59ea36ca8ffef1318fafca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrimitiveLinearUnimodularFrame.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pairGcd](declarations/pairgcd.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [pairGcd_pos](declarations/pairgcd-pos.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [reducedA](declarations/reduceda.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [reducedB](declarations/reducedb.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reducedA_mul_pairGcd](declarations/reduceda-mul-pairgcd.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reducedB_mul_pairGcd](declarations/reducedb-mul-pairgcd.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [reduced_coprime](declarations/reduced-coprime.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reduced_bezout_identity](declarations/reduced-bezout-identity.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [cast_a_eq_reduced_mul_gcd](declarations/cast-a-eq-reduced-mul-gcd.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cast_b_eq_reduced_mul_gcd](declarations/cast-b-eq-reduced-mul-gcd.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [normalVector](declarations/normalvector.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [firstKernelVector](declarations/firstkernelvector.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [secondKernelVector](declarations/secondkernelvector.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [vectorOfIntPoint](declarations/vectorofintpoint.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [intPointOfVector](declarations/intpointofvector.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [complementVector](declarations/complementvector.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normal_dot_vectorOfIntPoint](declarations/normal-dot-vectorofintpoint.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normal_dot_firstKernelVector](declarations/normal-dot-firstkernelvector.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normal_dot_secondKernelVector](declarations/normal-dot-secondkernelvector.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [normal_dot_complementVector](declarations/normal-dot-complementvector.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [firstKernelVector_mem_linearKernel](declarations/firstkernelvector-mem-linearkernel.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [secondKernelVector_mem_linearKernel](declarations/secondkernelvector-mem-linearkernel.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [first_cross_second](declarations/first-cross-second.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [kernelFrameMatrix](declarations/kernelframematrix.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [kernelFrameMatrix_det](declarations/kernelframematrix-det.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [kernelFrameMatrix_det_isUnit](declarations/kernelframematrix-det-isunit.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [UnimodularKernelFrame](declarations/unimodularkernelframe.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [canonicalUnimodularKernelFrame](declarations/canonicalunimodularkernelframe.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [canonicalFrame_det_ne_zero](declarations/canonicalframe-det-ne-zero.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a73b9a3a378cffc3e2b6d6f78737ea0cc1f68a074190265465255f0f8f5a7383 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean","GRWTSK/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
