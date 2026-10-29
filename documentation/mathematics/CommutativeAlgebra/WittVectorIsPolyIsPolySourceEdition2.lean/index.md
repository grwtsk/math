# Witt Vector Is Poly Is Poly Source Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3acc052bd2dcfabb94505ad1e33a76fbb24123d8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/WittVectorIsPolyIsPolySourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq'](declarations/poly-eq-of-wittpolynomial-bind-eq-source-edition-2.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq](declarations/poly-eq-of-wittpolynomial-bind-eq.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsPoly](declarations/ispoly.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [idIsPoly](declarations/idispoly.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [idIsPolyI'](declarations/idispolyi.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext](declarations/ext.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [comp](declarations/comp.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `class` | [IsPoly₂](declarations/ispoly-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [IsPoly₂.comp](declarations/ispoly-comp-source-edition-2.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [IsPoly.comp₂](declarations/ispoly-comp.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [IsPoly₂.diag](declarations/ispoly-diag.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [negIsPoly](declarations/negispoly.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [zeroIsPoly](declarations/zeroispoly.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [bind₁_zero_wittPolynomial](declarations/bind-zero-wittpolynomial.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [onePoly](declarations/onepoly.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bind₁_onePoly_wittPolynomial](declarations/bind-onepoly-wittpolynomial.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [oneIsPoly](declarations/oneispoly.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [addIsPoly₂](declarations/addispoly.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [mulIsPoly₂](declarations/mulispoly.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [IsPoly.map](declarations/ispoly-map.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [compLeft](declarations/compleft.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [compRight](declarations/compright.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map](declarations/map.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `syntax` | [(anonymous)](declarations/syntax.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `syntax` | [(anonymous)](declarations/syntax-source-edition-2.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [runIntro](declarations/runintro.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [getLocalOrIntro](declarations/getlocalorintro.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e5300eab06a272d1a35573a1264289094d9101c21e89432ce6860ae6d4bd114 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
