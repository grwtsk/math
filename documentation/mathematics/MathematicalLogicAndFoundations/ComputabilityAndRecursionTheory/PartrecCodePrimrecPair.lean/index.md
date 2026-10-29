# Partrec Code Primrec Pair

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0e7fdc830d4a5b69d3c0bd89649729c80fe782e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePrimrecPair.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfind'](declarations/rfind.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Code](declarations/code.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instInhabited](declarations/instinhabited.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [const](declarations/const.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [const_inj](declarations/const-inj.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [curry](declarations/curry.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [encodeCode](declarations/encodecode.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofNatCode](declarations/ofnatcode.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [encode_ofNatCode](declarations/encode-ofnatcode.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instDenumerable](declarations/instdenumerable.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [encodeCode_eq](declarations/encodecode-eq.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ofNatCode_eq](declarations/ofnatcode-eq.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [encode_lt_pair](declarations/encode-lt-pair.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [encode_lt_comp](declarations/encode-lt-comp.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [encode_lt_prec](declarations/encode-lt-prec.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [encode_lt_rfind'](declarations/encode-lt-rfind.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [primrec₂_pair](declarations/primrec-pair.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [primrec₂_comp](declarations/primrec-comp.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [primrec₂_prec](declarations/primrec-prec.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [primrec_rfind'](declarations/primrec-rfind.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [primrec_recOn'](declarations/primrec-recon.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [primrec_recOn](declarations/primrec-recon-source-edition-2.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [computable_recOn](declarations/computable-recon.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [eval](declarations/eval.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval_prec_zero](declarations/eval-prec-zero.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_prec_succ](declarations/eval-prec-succ.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_const](declarations/eval-const.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_id](declarations/eval-id.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eval_curry](declarations/eval-curry.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [primrec_const](declarations/primrec-const.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [primrec₂_curry](declarations/primrec-curry.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [curry_inj](declarations/curry-inj.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smn](declarations/smn.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_code](declarations/exists-code.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evaln](declarations/evaln.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [evaln_bound](declarations/evaln-bound.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [evaln_mono](declarations/evaln-mono.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [evaln_sound](declarations/evaln-sound.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [evaln_complete](declarations/evaln-complete.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [lup](declarations/lup.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hlup](declarations/hlup.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [G](declarations/g.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hG](declarations/hg.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [evaln_map](declarations/evaln-map.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [primrec_evaln](declarations/primrec-evaln.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eval_eq_rfindOpt](declarations/eval-eq-rfindopt.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eval_part](declarations/eval-part.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fixed_point](declarations/fixed-point-source-edition-2.md) | 1008 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [fixed_point₂](declarations/fixed-point.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance.md) | 1039 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e54b268b652abbd9dfe572fc83c380d62feb12f26e2adbe97b90154befc118e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variantf9fc80d1d2916cc099a139522c0a82e66400fb248a1ca5d331b21565227da7d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
