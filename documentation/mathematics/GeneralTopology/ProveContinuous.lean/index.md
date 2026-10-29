# Prove Continuous

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**14 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e853a96808a6b4861710db3f8229db8bd735dfd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/ProveContinuous.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LExpr](declarations/lexpr.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [ExprContinuousCore](declarations/exprcontinuouscore.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ExprContinuousCore.toSupported](declarations/exprcontinuouscore-tosupported.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [exprContinuousCore_continuousOn](declarations/exprcontinuouscore-continuouson.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [exprContinuousCore_continuousOn_Icc](declarations/exprcontinuouscore-continuouson-icc.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [exprContinuousCore_continuousOn_interval](declarations/exprcontinuouscore-continuouson-interval.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [exprContinuousDomainValid](declarations/exprcontinuousdomainvalid.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exprContinuousDomainValid_of_ExprSupported](declarations/exprcontinuousdomainvalid-of-exprsupported.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [exprContinuousDomainValid_of_ExprContinuousCore](declarations/exprcontinuousdomainvalid-of-exprcontinuouscore.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [exprSupportedCore_continuousOn](declarations/exprsupportedcore-continuouson.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mkContinuousCoreProof](declarations/mkcontinuouscoreproof.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mkContinuousOnProof](declarations/mkcontinuousonproof.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [mkContinuousOnProofIcc](declarations/mkcontinuousonprooficc.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `elab` | [(anonymous)](declarations/elab.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cafd8035e6def76f533bc49ef0cef1867a78204f8435c16a149fa123692c8fd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
