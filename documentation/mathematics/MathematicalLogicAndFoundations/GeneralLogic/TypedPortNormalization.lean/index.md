# Typed Port Normalization

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/TypedPortNormalization.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3eb5b66bb309c6d2f2d261adb79940794d33f13`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/TypedPortNormalization.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](declarations/expr.md) | 10 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [NormalPath](declarations/normalpath.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [append](declarations/append.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [nil_append](declarations/nil-append.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [append_nil](declarations/append-nil.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [append_assoc](declarations/append-assoc.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [normalize](declarations/normalize.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toExpr](declarations/toexpr.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [normalize_toExpr](declarations/normalize-toexpr.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [normalForm](declarations/normalform.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [normalForm_idempotent](declarations/normalform-idempotent.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [Semantics](declarations/semantics.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [eval](declarations/eval.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eval_append](declarations/eval-append.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [eval](declarations/eval-source-edition-2.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [eval_normalize](declarations/eval-normalize.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [eval_toExpr](declarations/eval-toexpr.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [eval_normalForm](declarations/eval-normalform.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [bind](declarations/bind.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [atomSubstitution](declarations/atomsubstitution.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bind_atomSubstitution](declarations/bind-atomsubstitution.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [bind_bind](declarations/bind-bind.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [substitute](declarations/substitute.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval_bind](declarations/eval-bind.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e475c4fdcca872e8d97d4e63abc4a30f0c93cf025fafaf758810ac215bb3d7be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypedPortNormalization.lean","GRWTSK/Logic/TypedPortNormalization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
