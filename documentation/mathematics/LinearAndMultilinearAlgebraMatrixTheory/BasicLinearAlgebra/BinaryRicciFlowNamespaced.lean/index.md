# Binary Ricci Flow Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cd910a735e7283eccc57a900d22942c9beba223`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlowNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bit](declarations/bit.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [BitWord](declarations/bitword.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [PaddedBitState](declarations/paddedbitstate.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [BitWord.toPadded](declarations/bitword-topadded.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [zeroBitWord](declarations/zerobitword.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zeroBitWord_toPadded_apply](declarations/zerobitword-topadded-apply.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [zeroBitWord_toPadded_eq](declarations/zerobitword-topadded-eq.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [bitReal](declarations/bitreal.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [GammaWeight](declarations/gammaweight.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [geometricWeight](declarations/geometricweight.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [dyadicWeight](declarations/dyadicweight.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [triadicWeight](declarations/triadicweight.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [supportBound](declarations/supportbound.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [supportBound_spec](declarations/supportbound-spec.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [dGamma](declarations/dgamma.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dGamma_self](declarations/dgamma-self.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [kernel](declarations/kernel.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [kernel_self](declarations/kernel-self.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [graphLaplacian](declarations/graphlaplacian.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [graphLaplacian_const](declarations/graphlaplacian-const.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [Fiber](declarations/fiber.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [vsub](declarations/vsub.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [vsub_self](declarations/vsub-self.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [DiscreteConnection](declarations/discreteconnection.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [covariantDifference](declarations/covariantdifference.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [triangleCurvature](declarations/trianglecurvature.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [DiscreteTorsionDatum](declarations/discretetorsiondatum.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [DiscreteRicciTensor](declarations/discretericcitensor.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [DiscreteRicciFlow](declarations/discretericciflow.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [carrierBitToBit](declarations/carrierbittobit.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [carrierBitToBit_zero](declarations/carrierbittobit-zero.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [carrierBitToBit_one](declarations/carrierbittobit-one.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [binaryMatrixToBitWord](declarations/binarymatrixtobitword.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [binaryMatrixToBitWord_len](declarations/binarymatrixtobitword-len.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [binaryMatrixToPadded](declarations/binarymatrixtopadded.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80b2d881652b0408cd34e3a6d76e68fe8622287cab5c4dd5e065f66a643c4c2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant3f45a4c4303571be475d0469cf991b13fc6e17c87b61edf510988b57d1da6294.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
