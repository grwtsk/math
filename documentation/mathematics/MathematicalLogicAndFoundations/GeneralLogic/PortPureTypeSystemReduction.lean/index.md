# Port Pure Type System Reduction

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/PortPureTypeSystemReduction.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54a4cd2f6c1bfdac80cc91bd19b4680a1ae8f8b1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/PortPureTypeSystemReduction.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Normal](declarations/normal.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [WeaklyNormalizing](declarations/weaklynormalizing.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [StronglyNormalizing](declarations/stronglynormalizing.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [Parallel](declarations/parallel.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [refl](declarations/refl.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [of_beta](declarations/of-beta.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [rename](declarations/rename-source-edition-2.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [subst](declarations/subst.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [instantiate](declarations/instantiate.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [develop](declarations/develop.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [triangle](declarations/triangle.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [diamond](declarations/diamond.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [Reduces](declarations/reduces-source-edition-3.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [app](declarations/app.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [lam](declarations/lam.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pi](declarations/pi.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rename](declarations/rename.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [subst](declarations/subst-source-edition-2.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reduces](declarations/reduces-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rtc_reduces](declarations/rtc-reduces.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [parallel](declarations/parallel-source-edition-2.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [confluent](declarations/confluent.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [join](declarations/join.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [reduces_eq](declarations/reduces-eq.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [eq_of_converts](declarations/eq-of-converts.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [pi_inv](declarations/pi-inv.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [converts](declarations/converts.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [product_compatibility](declarations/product-compatibility.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [var](declarations/var.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sort](declarations/sort.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [stronglyNormalizing](declarations/stronglynormalizing-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [step](declarations/step.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reduces](declarations/reduces.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [of_map](declarations/of-map.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [app_left](declarations/app-left.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [app_right](declarations/app-right.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lam_domain](declarations/lam-domain.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lam_body](declarations/lam-body.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pi_domain](declarations/pi-domain.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pi_body](declarations/pi-body.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31cb7b6e958d32ac3bca2068f6d0b240715f934c13e7eacfd55d9bc86fbfd58f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PortPureTypeSystemReduction.lean","GRWTSK/Logic/PortPureTypeSystemReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
