# Checked Arithmetic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/InformationTheory/Huffman/CheckedArithmetic.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8050af3a53e0eedf8d65b9527c50e8608d576ff7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/InformationAndCommunicationTheoryCircuits/CommunicationInformation/PrefixLengthVariableCommaFreeCodes/CheckedArithmetic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [maxU64](declarations/maxu64.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [checkedAdd](declarations/checkedadd.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [checkedMul](declarations/checkedmul.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [checkedSucc](declarations/checkedsucc.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [checkedAdd_eq_some_iff](declarations/checkedadd-eq-some-iff.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [checkedAdd_eq_none_iff](declarations/checkedadd-eq-none-iff.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [checkedMul_eq_some_iff](declarations/checkedmul-eq-some-iff.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [checkedMul_eq_none_iff](declarations/checkedmul-eq-none-iff.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [checkedSucc_eq_some_iff](declarations/checkedsucc-eq-some-iff.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [checkedSucc_eq_none_iff](declarations/checkedsucc-eq-none-iff.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [checkedAdd_at_boundary](declarations/checkedadd-at-boundary.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [checkedSucc_max](declarations/checkedsucc-max.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [checkedMul_at_boundary](declarations/checkedmul-at-boundary.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [checkedWordAdd](declarations/checkedwordadd.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [checkedWordMul](declarations/checkedwordmul.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [wordAdd_no_wrap](declarations/wordadd-no-wrap.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [wordMul_no_wrap](declarations/wordmul-no-wrap.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [checkedWordAdd_refines](declarations/checkedwordadd-refines.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [checkedWordMul_refines](declarations/checkedwordmul-refines.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sumFrom](declarations/sumfrom.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sumFrom_spec](declarations/sumfrom-spec.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sumFrom_eq_some_iff](declarations/sumfrom-eq-some-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sumFrom_eq_none_iff](declarations/sumfrom-eq-none-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [products](declarations/products.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [dotFrom](declarations/dotfrom.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [dotFrom_spec](declarations/dotfrom-spec.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dotFrom_eq_some_iff](declarations/dotfrom-eq-some-iff.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dotFrom_eq_none_iff](declarations/dotfrom-eq-none-iff.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be69d416597c3a077437b5293b87facf24d4af439146e66ffd3a530e24421e83 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/InformationTheory/Huffman/CheckedArithmetic.lean","GRWTSK/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
