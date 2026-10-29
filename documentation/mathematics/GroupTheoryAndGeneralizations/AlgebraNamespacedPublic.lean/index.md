# Algebra Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variant803e6ccbbf96c29bee8e5d90ea68e08ee9ad1b2d1433e66e87f759ab7837ee52.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `090bbd4944712e498a0f91dd4c36449e43be2013`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/AlgebraNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [zero](declarations/zero.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instZero](declarations/instzero.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [getElem_zero](declarations/getelem-zero.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [add](declarations/add.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [getElem_add](declarations/getelem-add.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [add_zero](declarations/add-zero.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [zero_add](declarations/zero-add.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [add_comm](declarations/add-comm.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [add_assoc](declarations/add-assoc.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [neg](declarations/neg.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [getElem_neg](declarations/getelem-neg.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [neg_zero](declarations/neg-zero.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [neg_add_cancel](declarations/neg-add-cancel.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [sub](declarations/sub.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [getElem_sub](declarations/getelem-sub.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sub_eq_add_neg](declarations/sub-eq-add-neg.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [mul](declarations/mul.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [instMul](declarations/instmul.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [getElem_mul](declarations/getelem-mul.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mul_zero](declarations/mul-zero.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zero_mul](declarations/zero-mul.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_comm](declarations/mul-comm.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mul_assoc](declarations/mul-assoc.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [left_distrib](declarations/left-distrib.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [right_distrib](declarations/right-distrib.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [hmul](declarations/hmul.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [getElem_hmul](declarations/getelem-hmul.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hmul_zero](declarations/hmul-zero.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [zero_hmul](declarations/zero-hmul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hmul_add](declarations/hmul-add.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [add_hmul](declarations/add-hmul.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [smul](declarations/smul.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [getElem_smul](declarations/getelem-smul.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [smul_zero](declarations/smul-zero.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [zero_smul](declarations/zero-smul.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [smul_add](declarations/smul-add.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [add_smul](declarations/add-smul.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mul_smul](declarations/mul-smul.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0216fe020ff9d2c6d1459e694fb75294e10df8fd6b1b823c03b788a7be6ee52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Algebra/Variant803e6ccbbf96c29bee8e5d90ea68e08ee9ad1b2d1433e66e87f759ab7837ee52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
