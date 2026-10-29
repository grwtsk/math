# Ring Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4009f2f613c89811b88cd6570fe75c531e6c481d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/RingBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ringFunc](declarations/ringfunc.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Language.ring](declarations/language-ring.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `example` | [(anonymous)](declarations/example.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [addFunc](declarations/addfunc.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [mulFunc](declarations/mulfunc.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [negFunc](declarations/negfunc.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [zeroFunc](declarations/zerofunc.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [oneFunc](declarations/onefunc.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [zero_def](declarations/zero-def.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [one_def](declarations/one-def.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [add_def](declarations/add-def.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mul_def](declarations/mul-def.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [neg_def](declarations/neg-def.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [card_ring](declarations/card-ring.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `class` | [CompatibleRing](declarations/compatiblering.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [realize_add](declarations/realize-add.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [realize_mul](declarations/realize-mul.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [realize_neg](declarations/realize-neg.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [realize_zero](declarations/realize-zero.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [realize_one](declarations/realize-one.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [compatibleRingOfRing](declarations/compatibleringofring.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [languageEquivEquivRingEquiv](declarations/languageequivequivringequiv.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [addOfRingStructure](declarations/addofringstructure.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [mulOfRingStructure](declarations/mulofringstructure.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [negOfRingStructure](declarations/negofringstructure.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [zeroOfRingStructure](declarations/zeroofringstructure.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [oneOfRingStructure](declarations/oneofringstructure.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [compatibleRingOfRingStructure](declarations/compatibleringofringstructure.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e981945f0e50d7b93cf9d7214c288c47c310b32e253f987a923673ac308e6e7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
