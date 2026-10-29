# Polynomial Law Basic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fce9765fe9863e5b5e774c90f8aa9f2d9309110`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/PolynomialLawBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PolynomialLaw](declarations/polynomiallaw.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [PolynomialLaw.isCompat_apply'](declarations/polynomiallaw-iscompat-apply.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zero_def](declarations/zero-def.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [id_apply'](declarations/id-apply.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [add](declarations/add.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [add_def](declarations/add-def.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [add_def_apply](declarations/add-def-apply.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [smul](declarations/smul.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [smul_def](declarations/smul-def.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [smul_def_apply](declarations/smul-def-apply.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [add_smul](declarations/add-smul.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zero_smul](declarations/zero-smul.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [one_smul](declarations/one-smul.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [neg](declarations/neg.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [neg_def](declarations/neg-def.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [ground](declarations/ground.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ground_apply](declarations/ground-apply.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [one_tmul_ground_apply'](declarations/one-tmul-ground-apply.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [lground](declarations/lground.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ground_id](declarations/ground-id.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ground_id_apply](declarations/ground-id-apply.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [comp](declarations/comp.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [comp_toFun'](declarations/comp-tofun.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [comp_id](declarations/comp-id.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [id_comp](declarations/id-comp.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9de580869a4ace255b7910bb327194b74ee09d42b6a05efe5eb46bb0b8b96be0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant2e5df10fdb1292e69b93e352d92a3301976087927994d9620a260f69bbaf04f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
