# Fin Enum Namespaced Pi

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 5 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fad82bcc2719c37eb8a500c9fa332132459b260`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [FinEnum](declarations/finenum.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofEquiv](declarations/ofequiv.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofNodupList](declarations/ofnoduplist.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofList](declarations/oflist.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toList](declarations/tolist.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_toList](declarations/mem-tolist.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nodup_toList](declarations/nodup-tolist.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofSurjective](declarations/ofsurjective.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofInjective](declarations/ofinjective.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [pempty](declarations/pempty.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [empty](declarations/empty.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [punit](declarations/punit.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [prod](declarations/prod.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [sum](declarations/sum.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [fin](declarations/fin.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [Quotient.enum](declarations/quotient-enum.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Finset.enum](declarations/finset-enum.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Finset.mem_enum](declarations/finset-mem-enum.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [Finset.finEnum](declarations/finset-finenum.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [Subtype.finEnum](declarations/subtype-finenum.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [PSigma.finEnum](declarations/psigma-finenum.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [PSigma.finEnumPropLeft](declarations/psigma-finenumpropleft.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [PSigma.finEnumPropRight](declarations/psigma-finenumpropright.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [PSigma.finEnumPropProp](declarations/psigma-finenumpropprop.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Pi.cons](declarations/pi-cons.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Pi.tail](declarations/pi-tail.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [pi](declarations/pi.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_pi](declarations/mem-pi.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [pi.enum](declarations/pi-enum.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [pi.mem_enum](declarations/pi-mem-enum.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [pi.finEnum](declarations/pi-finenum.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [pfunFinEnum](declarations/pfunfinenum.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd35bc5a65aa1d242fd5fd529c74bc1bc96eea3e407295794a8f6f4c60630750 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
