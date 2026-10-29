# Spectral Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 5 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38887fd963452a54f7582026ed4dd39e824ca6f9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SpectralNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [WeightedAdjacency](declarations/weightedadjacency.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [DegreeMatrix](declarations/degreematrix-source-edition-2.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [GraphLaplacian](declarations/graphlaplacian.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [matrixZero](declarations/matrixzero.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [matrixIdentity](declarations/matrixidentity.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [matrixAdd](declarations/matrixadd.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [matrixMul](declarations/matrixmul.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rowSum](declarations/rowsum.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [weightedAdjacency](declarations/weightedadjacency-source-edition-2.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [degreeMatrix](declarations/degreematrix.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [graphLaplacian](declarations/graphlaplacian-source-edition-2.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Symmetric](declarations/symmetric.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [RowSumZero](declarations/rowsumzero.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [weightedAdjacency_symmetric](declarations/weightedadjacency-symmetric.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [graphLaplacian_symmetric](declarations/graphlaplacian-symmetric.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [graphLaplacian_row_sum_zero](declarations/graphlaplacian-row-sum-zero.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [PolynomialKernelPolicy](declarations/polynomialkernelpolicy.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [SpectralPolicy](declarations/spectralpolicy.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [matrixPow](declarations/matrixpow.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [polynomialEvalMatrixFrom](declarations/polynomialevalmatrixfrom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [polynomialEvalMatrix](declarations/polynomialevalmatrix.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [spectralKernelFromPolynomial](declarations/spectralkernelfrompolynomial.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [spectralKernel_polynomial_defined](declarations/spectralkernel-polynomial-defined.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [SpectralChoice](declarations/spectralchoice.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [KernelSound](declarations/kernelsound.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [SelectionSound](declarations/selectionsound.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [GroupSound](declarations/groupsound.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ScopeSound](declarations/scopesound.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FocusSound](declarations/focussound.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [DivisorSound](declarations/divisorsound.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [spectralChoice_sound](declarations/spectralchoice-sound.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc574377c51c2358de231a6d13fb595302f1f1f2e3c7e6021c5f401f319de9a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Spectral/Variant1b8475228409ee71637decf7e61500e97d2a62ece0aed7e908eeacb08b6aec72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
