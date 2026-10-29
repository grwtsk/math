# Jacobson Radical

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7f65933a8dfd55a0d070057ce4ab97ea263810a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/JacobsonRadical.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [jacobson](declarations/jacobson.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [le_comap_jacobson](declarations/le-comap-jacobson.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [map_jacobson_le](declarations/map-jacobson-le-source-edition-2.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [jacobson_eq_bot_of_injective](declarations/jacobson-eq-bot-of-injective.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [map_jacobson_of_ker_le](declarations/map-jacobson-of-ker-le.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comap_jacobson_of_ker_le](declarations/comap-jacobson-of-ker-le.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [map_jacobson_of_bijective](declarations/map-jacobson-of-bijective.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [comap_jacobson_of_bijective](declarations/comap-jacobson-of-bijective.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [jacobson_quotient_of_le](declarations/jacobson-quotient-of-le.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [jacobson_le_of_eq_bot](declarations/jacobson-le-of-eq-bot.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [jacobson_quotient_jacobson](declarations/jacobson-quotient-jacobson-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [jacobson_lt_top](declarations/jacobson-lt-top-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `example` | [(anonymous)](declarations/example.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [jacobson_pi_le](declarations/jacobson-pi-le.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [jacobson_pi_eq_bot](declarations/jacobson-pi-eq-bot.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [jacobson](declarations/jacobson-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [jacobson_eq_sInf_isMaximal](declarations/jacobson-eq-sinf-ismaximal.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [le_comap_jacobson](declarations/le-comap-jacobson-source-edition-2.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_jacobson_le](declarations/map-jacobson-le.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_jacobson_of_ker_le](declarations/map-jacobson-of-ker-le-source-edition-2.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_jacobson_quotient](declarations/coe-jacobson-quotient.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [jacobson_quotient_of_le](declarations/jacobson-quotient-of-le-source-edition-2.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [jacobson_le_of_eq_bot](declarations/jacobson-le-of-eq-bot-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [jacobson_quotient_jacobson](declarations/jacobson-quotient-jacobson.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [jacobson_lt_top](declarations/jacobson-lt-top.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [jacobson_smul_top_le](declarations/jacobson-smul-top-le.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [jacobson_smul_lt_top](declarations/jacobson-smul-lt-top.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [FG.jacobson_smul_lt](declarations/fg-jacobson-smul-lt.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [FG.eq_bot_of_le_jacobson_smul](declarations/fg-eq-bot-of-le-jacobson-smul.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f9fcb09150ac9dea6aeeb9298e8c8464aa3be4ac033765a1332a89d76c3d84c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Radical/Variantceb980ab7a85db3028782ac2d2c8305fc6619cb4606c69c9112e2d2c456d9f70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
