# Partrec Code Pair Prim

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `95d5c55f26b17c9c406904ac60a0b4aa61f8ee85`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePairPrim.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfind'](declarations/rfind.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Code](declarations/code.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instInhabited](declarations/instinhabited.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [const](declarations/const.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [const_inj](declarations/const-inj.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [curry](declarations/curry.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [encodeCode](declarations/encodecode.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofNatCode](declarations/ofnatcode.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [encode_ofNatCode](declarations/encode-ofnatcode.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instDenumerable](declarations/instdenumerable.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [encodeCode_eq](declarations/encodecode-eq.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ofNatCode_eq](declarations/ofnatcode-eq.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [encode_lt_pair](declarations/encode-lt-pair.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [encode_lt_comp](declarations/encode-lt-comp.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [encode_lt_prec](declarations/encode-lt-prec.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [encode_lt_rfind'](declarations/encode-lt-rfind.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pair_prim](declarations/pair-prim.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comp_prim](declarations/comp-prim.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [prec_prim](declarations/prec-prim.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rfind_prim](declarations/rfind-prim.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rec_prim'](declarations/rec-prim-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rec_prim](declarations/rec-prim.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rec_computable](declarations/rec-computable.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [eval](declarations/eval.md) | 620 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval_prec_zero](declarations/eval-prec-zero.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_prec_succ](declarations/eval-prec-succ.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_const](declarations/eval-const.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_id](declarations/eval-id.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eval_curry](declarations/eval-curry.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [const_prim](declarations/const-prim.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [curry_prim](declarations/curry-prim.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [curry_inj](declarations/curry-inj.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smn](declarations/smn.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_code](declarations/exists-code.md) | 699 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evaln](declarations/evaln.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [evaln_bound](declarations/evaln-bound.md) | 775 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [evaln_mono](declarations/evaln-mono.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [evaln_sound](declarations/evaln-sound.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [evaln_complete](declarations/evaln-complete.md) | 857 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [lup](declarations/lup.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hlup](declarations/hlup.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [G](declarations/g.md) | 940 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hG](declarations/hg.md) | 971 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [evaln_map](declarations/evaln-map.md) | 1073 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [evaln_prim](declarations/evaln-prim.md) | 1084 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eval_eq_rfindOpt](declarations/eval-eq-rfindopt.md) | 1152 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eval_part](declarations/eval-part.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fixed_point](declarations/fixed-point-source-edition-2.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [fixed_point₂](declarations/fixed-point.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34364f9c27f334b7a8ccacfefbd47e4076f2d19f0549529c05e7beeb0a3db649 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianteec83f4ed1045a7dca9d567bab4d3ea6846fd893e8ccc19081cf1b3af0b0ddc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
