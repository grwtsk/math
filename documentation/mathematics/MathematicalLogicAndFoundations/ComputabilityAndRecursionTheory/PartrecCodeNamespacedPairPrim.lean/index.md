# Partrec Code Namespaced Pair Prim

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1555850f895dc321c487421e9df6bc4780e2215`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodeNamespacedPairPrim.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfind'](declarations/rfind.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Code](declarations/code.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instInhabited](declarations/instinhabited.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [const](declarations/const.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [const_inj](declarations/const-inj.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [curry](declarations/curry.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [encodeCode](declarations/encodecode.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofNatCode](declarations/ofnatcode.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [encode_ofNatCode](declarations/encode-ofnatcode.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instDenumerable](declarations/instdenumerable.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [encodeCode_eq](declarations/encodecode-eq.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ofNatCode_eq](declarations/ofnatcode-eq.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [encode_lt_pair](declarations/encode-lt-pair.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [encode_lt_comp](declarations/encode-lt-comp.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [encode_lt_prec](declarations/encode-lt-prec.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [encode_lt_rfind'](declarations/encode-lt-rfind.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pair_prim](declarations/pair-prim.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comp_prim](declarations/comp-prim.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [prec_prim](declarations/prec-prim.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rfind_prim](declarations/rfind-prim.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rec_prim'](declarations/rec-prim.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rec_prim](declarations/rec-prim-source-edition-2.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rec_computable](declarations/rec-computable.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [eval](declarations/eval.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval_prec_zero](declarations/eval-prec-zero.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_prec_succ](declarations/eval-prec-succ.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_const](declarations/eval-const.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_id](declarations/eval-id.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eval_curry](declarations/eval-curry.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [const_prim](declarations/const-prim.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [curry_prim](declarations/curry-prim.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [curry_inj](declarations/curry-inj.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smn](declarations/smn.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_code](declarations/exists-code.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evaln](declarations/evaln.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [evaln_bound](declarations/evaln-bound.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [evaln_mono](declarations/evaln-mono.md) | 791 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [evaln_sound](declarations/evaln-sound.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [evaln_complete](declarations/evaln-complete.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [lup](declarations/lup.md) | 937 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hlup](declarations/hlup.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [G](declarations/g.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hG](declarations/hg.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [evaln_map](declarations/evaln-map.md) | 1081 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [evaln_prim](declarations/evaln-prim.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eval_eq_rfindOpt](declarations/eval-eq-rfindopt.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eval_part](declarations/eval-part.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fixed_point](declarations/fixed-point-source-edition-2.md) | 1176 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [fixed_point₂](declarations/fixed-point.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e448730206a70f197171b2a9fdd3c1e67f7fb127ab9d83f5ab4cb725f01f2e27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
