# Regular SMul Of Injective

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dfb2cff80cf0821fbd23a1bcfba5d1e11f3d221`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/RegularSMulOfInjective.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsSMulRegular](declarations/issmulregular.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsLeftRegular.isSMulRegular](declarations/isleftregular-issmulregular.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isLeftRegular_iff](declarations/isleftregular-iff.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsRightRegular.isSMulRegular](declarations/isrightregular-issmulregular.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isRightRegular_iff](declarations/isrightregular-iff.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [smul](declarations/smul.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [of_smul](declarations/of-smul.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [smul_iff](declarations/smul-iff.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isLeftRegular](declarations/isleftregular.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isRightRegular](declarations/isrightregular.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul](declarations/mul.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [of_mul](declarations/of-mul.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mul_iff_right](declarations/mul-iff-right.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mul_and_mul_iff](declarations/mul-and-mul-iff.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [of_injective](declarations/of-injective.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [one](declarations/one.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [of_mul_eq_one](declarations/of-mul-eq-one.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pow](declarations/pow.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pow_iff](declarations/pow-iff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [of_smul_eq_one](declarations/of-smul-eq-one.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [subsingleton](declarations/subsingleton.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zero_iff_subsingleton](declarations/zero-iff-subsingleton.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_zero_iff](declarations/not-zero-iff.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zero](declarations/zero.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [not_zero](declarations/not-zero.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mul_iff](declarations/mul-iff.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isSMulRegular_of_group](declarations/issmulregular-of-group.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Units.isSMulRegular](declarations/units-issmulregular.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsUnit.isSMulRegular](declarations/isunit-issmulregular.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsSMulRegular.eq_zero_of_smul_eq_zero](declarations/issmulregular-eq-zero-of-smul-eq-zero.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [Equiv.isSMulRegular_congr](declarations/equiv-issmulregular-congr.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef8b57397d5dbcc1480af94f77bc51abb4f242b66ff7c43416b1577c21762106 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SMul/Variante1e0ae9c75d0e36396113ebb6cc76d1a7fe0f7fba68be7022d16446081a9b4d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
