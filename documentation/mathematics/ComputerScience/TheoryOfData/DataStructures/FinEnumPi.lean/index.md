# Fin Enum Pi

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 5 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25f2cc0fffb7f1edbefb1d3ec6dd46dab1acbc3e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinEnumPi.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [FinEnum](declarations/finenum.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofEquiv](declarations/ofequiv.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofNodupList](declarations/ofnoduplist.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofList](declarations/oflist.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toList](declarations/tolist.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_toList](declarations/mem-tolist.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nodup_toList](declarations/nodup-tolist.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofSurjective](declarations/ofsurjective.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofInjective](declarations/ofinjective.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [pempty](declarations/pempty.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [empty](declarations/empty.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [punit](declarations/punit.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [prod](declarations/prod.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [sum](declarations/sum.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [fin](declarations/fin.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [Quotient.enum](declarations/quotient-enum.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Finset.enum](declarations/finset-enum.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Finset.mem_enum](declarations/finset-mem-enum.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [Finset.finEnum](declarations/finset-finenum.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [Subtype.finEnum](declarations/subtype-finenum.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [PSigma.finEnum](declarations/psigma-finenum.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [PSigma.finEnumPropLeft](declarations/psigma-finenumpropleft.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [PSigma.finEnumPropRight](declarations/psigma-finenumpropright.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [PSigma.finEnumPropProp](declarations/psigma-finenumpropprop.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Pi.cons](declarations/pi-cons.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Pi.tail](declarations/pi-tail.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [pi](declarations/pi.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_pi](declarations/mem-pi.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [pi.enum](declarations/pi-enum.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pi.mem_enum](declarations/pi-mem-enum.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [pi.finEnum](declarations/pi-finenum.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [pfunFinEnum](declarations/pfunfinenum.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5048fcc2470f5f4ccf555673fe74ff9e2ffddc35ceaea4c0c8e4ac42e79dbc5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant15f72949a8b426456b79453f1233217b0db782383ab9cd3c3de1f08c952245a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
