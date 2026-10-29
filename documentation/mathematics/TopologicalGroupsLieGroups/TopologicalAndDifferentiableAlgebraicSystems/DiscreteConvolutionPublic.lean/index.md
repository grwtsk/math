# Discrete Convolution Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f3110fadd29439a0cc1b425bc885ddf741e580e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/DiscreteConvolutionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mulFiber](declarations/mulfiber.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_mulFiber](declarations/mem-mulfiber.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mulFiber_one_mem](declarations/mulfiber-one-mem.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [convolution](declarations/convolution.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [zero_convolution](declarations/zero-convolution.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [convolution_zero](declarations/convolution-zero.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [single_convolution](declarations/single-convolution.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [convolution_single](declarations/convolution-single.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ConvolutionExistsAt](declarations/convolutionexistsat.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ConvolutionExists](declarations/convolutionexists.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [ConvolutionExistsAt.distrib_add](declarations/convolutionexistsat-distrib-add.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [ConvolutionExists.distrib_add](declarations/convolutionexists-distrib-add.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [ConvolutionExistsAt.add_distrib](declarations/convolutionexistsat-add-distrib.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [ConvolutionExists.add_distrib](declarations/convolutionexists-add-distrib.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [ConvolutionExistsAt.smul_convolution](declarations/convolutionexistsat-smul-convolution.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [ConvolutionExistsAt.convolution_smul](declarations/convolutionexistsat-convolution-smul.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mulFiber_eq_mulAntidiagonal](declarations/mulfiber-eq-mulantidiagonal.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [mulFiber_finite](declarations/mulfiber-finite.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [convolution_eq_sum_mulAntidiagonal](declarations/convolution-eq-sum-mulantidiagonal.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [convolutionExists_of_hasMulAntidiagonal](declarations/convolutionexists-of-hasmulantidiagonal.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mulFiber_swapEquiv](declarations/mulfiber-swapequiv.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [convolution_comm](declarations/convolution-comm.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ringConvolution](declarations/ringconvolution.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [ringConvolution_apply](declarations/ringconvolution-apply.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [zero_ringConvolution](declarations/zero-ringconvolution.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [ringConvolution_zero](declarations/ringconvolution-zero.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [single_ringConvolution](declarations/single-ringconvolution.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [ringConvolution_single](declarations/ringconvolution-single.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [ringConvolution_add](declarations/ringconvolution-add.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [add_ringConvolution](declarations/add-ringconvolution.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [smul_ringConvolution](declarations/smul-ringconvolution.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [ringConvolution_smul](declarations/ringconvolution-smul.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [ringConvolution_comm](declarations/ringconvolution-comm.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [ringConvolution_eq_sum_mulAntidiagonal](declarations/ringconvolution-eq-sum-mulantidiagonal.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a43605b4caa26ed8a4bdab2cdec2b9aa8bd6c4383d5b32d0618e524bd637687 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant0cfda211126a5444993763730b5b5c47c0b5b19f708a4f1844adbccfd428940e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
