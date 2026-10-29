# Binary Ricci Flow

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0f8cd2e72761119f89039974ed77bd015997012`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BinaryRicciFlow.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bit](declarations/bit.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [BitWord](declarations/bitword.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [PaddedBitState](declarations/paddedbitstate.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [BitWord.toPadded](declarations/bitword-topadded.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [zeroBitWord](declarations/zerobitword.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zeroBitWord_toPadded_apply](declarations/zerobitword-topadded-apply.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [zeroBitWord_toPadded_eq](declarations/zerobitword-topadded-eq.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [bitReal](declarations/bitreal.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [GammaWeight](declarations/gammaweight.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [geometricWeight](declarations/geometricweight.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [dyadicWeight](declarations/dyadicweight.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [triadicWeight](declarations/triadicweight.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [supportBound](declarations/supportbound.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [supportBound_spec](declarations/supportbound-spec.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [dGamma](declarations/dgamma.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dGamma_self](declarations/dgamma-self.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [kernel](declarations/kernel.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [kernel_self](declarations/kernel-self.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [graphLaplacian](declarations/graphlaplacian.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [graphLaplacian_const](declarations/graphlaplacian-const.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [Fiber](declarations/fiber.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [vsub](declarations/vsub.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [vsub_self](declarations/vsub-self.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [DiscreteConnection](declarations/discreteconnection.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [covariantDifference](declarations/covariantdifference.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [triangleCurvature](declarations/trianglecurvature.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [DiscreteTorsionDatum](declarations/discretetorsiondatum.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [DiscreteRicciTensor](declarations/discretericcitensor.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [DiscreteRicciFlow](declarations/discretericciflow.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [carrierBitToBit](declarations/carrierbittobit.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [carrierBitToBit_zero](declarations/carrierbittobit-zero.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [carrierBitToBit_one](declarations/carrierbittobit-one.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [binaryMatrixToBitWord](declarations/binarymatrixtobitword.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [binaryMatrixToBitWord_len](declarations/binarymatrixtobitword-len.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [binaryMatrixToPadded](declarations/binarymatrixtopadded.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7eb8b057cbd522cd8ce4fe67feb999e21112dd76af7e5e20db964b90acbcedf4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BinaryRicciFlow/Variant11a65dbd4d3717c4f2ea9d821fa3841d38bf649ca8992340d5a7072802df75c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
