# Function Defs

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b121af878f1a8b1953f501a7f594c0485afa62e9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/FunctionDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [flip_def](declarations/flip-def.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [dcomp](declarations/dcomp.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [onFun](declarations/onfun.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [swap](declarations/swap.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [swap_def](declarations/swap-def.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [id_comp](declarations/id-comp.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [comp_id](declarations/comp-id.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Injective](declarations/injective.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Injective.comp](declarations/injective-comp.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Surjective](declarations/surjective.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Surjective.comp](declarations/surjective-comp.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Bijective](declarations/bijective.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Bijective.comp](declarations/bijective-comp.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [LeftInverse](declarations/leftinverse.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [HasLeftInverse](declarations/hasleftinverse.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [RightInverse](declarations/rightinverse.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [HasRightInverse](declarations/hasrightinverse.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [LeftInverse.injective](declarations/leftinverse-injective.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [HasLeftInverse.injective](declarations/hasleftinverse-injective.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rightInverse_of_injective_of_leftInverse](declarations/rightinverse-of-injective-of-leftinverse.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [RightInverse.surjective](declarations/rightinverse-surjective.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasRightInverse.surjective](declarations/hasrightinverse-surjective.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [leftInverse_of_surjective_of_rightInverse](declarations/leftinverse-of-surjective-of-rightinverse.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [injective_id](declarations/injective-id.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [surjective_id](declarations/surjective-id.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bijective_id](declarations/bijective-id.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Injective.eq_iff](declarations/injective-eq-iff-source-edition-2.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Injective.beq_eq](declarations/injective-beq-eq.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Injective.eq_iff'](declarations/injective-eq-iff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Injective.ne](declarations/injective-ne.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Injective.ne_iff](declarations/injective-ne-iff.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Injective.ne_iff'](declarations/injective-ne-iff-source-edition-2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [LeftInverse.id](declarations/leftinverse-id.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [RightInverse.id](declarations/rightinverse-id.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [IsFixedPt](declarations/isfixedpt.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [map](declarations/map.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [map_apply](declarations/map-apply.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7c58c448f503666ec701aabd49bce5822db38e1ad54e1e38c33ea7dc25e21be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variante6510c6e2355314fe571cd21d8946170cab6ee4d807683b27d29a377cce70274.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
