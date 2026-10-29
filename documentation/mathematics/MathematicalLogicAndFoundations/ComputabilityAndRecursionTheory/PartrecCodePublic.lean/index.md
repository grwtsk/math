# Partrec Code Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 38 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6025514c4913aa2b9140b1f4b471951f60905025`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecCodePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [rfind'](declarations/rfind.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Code](declarations/code.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instInhabited](declarations/instinhabited.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [const](declarations/const.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [const_inj](declarations/const-inj.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [id](declarations/id.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [curry](declarations/curry.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [encodeCode](declarations/encodecode.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofNatCode](declarations/ofnatcode.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [encode_ofNatCode](declarations/encode-ofnatcode.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instDenumerable](declarations/instdenumerable.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [encodeCode_eq](declarations/encodecode-eq.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ofNatCode_eq](declarations/ofnatcode-eq.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [encode_lt_pair](declarations/encode-lt-pair.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [encode_lt_comp](declarations/encode-lt-comp.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [encode_lt_prec](declarations/encode-lt-prec.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [encode_lt_rfind'](declarations/encode-lt-rfind.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [primrec₂_pair](declarations/primrec-pair.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [primrec₂_comp](declarations/primrec-comp.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [primrec₂_prec](declarations/primrec-prec.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [primrec_rfind'](declarations/primrec-rfind.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [primrec_recOn'](declarations/primrec-recon.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [primrec_recOn](declarations/primrec-recon-source-edition-2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [computable_recOn](declarations/computable-recon.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [eval](declarations/eval.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eval_prec_zero](declarations/eval-prec-zero.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eval_prec_succ](declarations/eval-prec-succ.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_const](declarations/eval-const.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eval_id](declarations/eval-id.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [eval_curry](declarations/eval-curry.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [primrec_const](declarations/primrec-const.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [primrec₂_curry](declarations/primrec-curry.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [curry_inj](declarations/curry-inj.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smn](declarations/smn.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exists_code](declarations/exists-code.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evaln](declarations/evaln.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [evaln_bound](declarations/evaln-bound.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [evaln_mono](declarations/evaln-mono.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [evaln_sound](declarations/evaln-sound.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [evaln_complete](declarations/evaln-complete.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [lup](declarations/lup.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hlup](declarations/hlup.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [G](declarations/g.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [hG](declarations/hg.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [evaln_map](declarations/evaln-map.md) | 931 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [primrec_evaln](declarations/primrec-evaln.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eval_eq_rfindOpt](declarations/eval-eq-rfindopt.md) | 1010 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eval_part](declarations/eval-part.md) | 1015 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fixed_point](declarations/fixed-point.md) | 1025 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [fixed_point₂](declarations/fixed-point-source-edition-2.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1051 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=113494afe614878e3fb8edcc3ca181a46871d4e56c3f41048238d3ed2186ab58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianted473eb7a0f9988d9ffa8cb083d4abfcda1750a28bb9e914e1e3d3ccb96fa2f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
