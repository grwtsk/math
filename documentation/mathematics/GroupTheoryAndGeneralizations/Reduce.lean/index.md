# Reduce

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94e09ac331beb921093f2469e314702fd51fdb07`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/Reduce.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [reduce](declarations/reduce.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [reduce_nil](declarations/reduce-nil.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [reduce_singleton](declarations/reduce-singleton.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [reduce.cons](declarations/reduce-cons.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reduce_replicate](declarations/reduce-replicate.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reduce.red](declarations/reduce-red.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [reduce.not](declarations/reduce-not.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reduce.min](declarations/reduce-min.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reduce.idem](declarations/reduce-idem.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reduce.Step.eq](declarations/reduce-step-eq.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reduce.eq_of_red](declarations/reduce-eq-of-red.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Red.reduce_right](declarations/red-reduce-right.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Red.reduce_left](declarations/red-reduce-left.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reduce.sound](declarations/reduce-sound.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [reduce.exact](declarations/reduce-exact.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reduce.self](declarations/reduce-self.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reduce.rev](declarations/reduce-rev.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [toWord](declarations/toword.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mk_toWord](declarations/mk-toword.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toWord_injective](declarations/toword-injective.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toWord_inj](declarations/toword-inj.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toWord_mk](declarations/toword-mk.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toWord_of](declarations/toword-of.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [reduce_toWord](declarations/reduce-toword.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toWord_one](declarations/toword-one.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toWord_mul](declarations/toword-mul.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toWord_pow](declarations/toword-pow.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toWord_of_pow](declarations/toword-of-pow.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toWord_eq_nil_iff](declarations/toword-eq-nil-iff.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [reduce_invRev](declarations/reduce-invrev.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toWord_inv](declarations/toword-inv.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [reduce_append_reduce_reduce](declarations/reduce-append-reduce-reduce.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reduce_cons_reduce](declarations/reduce-cons-reduce.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [reduce_invRev_left_cancel](declarations/reduce-invrev-left-cancel.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [toWord_mul_sublist](declarations/toword-mul-sublist.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [reduce.churchRosser](declarations/reduce-churchrosser.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Red.decidableRel](declarations/red-decidablerel.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Red.enum](declarations/red-enum.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Red.enum.sound](declarations/red-enum-sound.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Red.enum.complete](declarations/red-enum-complete.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [one_ne_of](declarations/one-ne-of.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [of_ne_one](declarations/of-ne-one.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [norm](declarations/norm.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [norm_inv_eq](declarations/norm-inv-eq.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [norm_eq_zero](declarations/norm-eq-zero.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [norm_one](declarations/norm-one.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [norm_of](declarations/norm-of.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [norm_mk_le](declarations/norm-mk-le.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [norm_mul_le](declarations/norm-mul-le.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [norm_of_pow](declarations/norm-of-pow.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [norm_surjective](declarations/norm-surjective.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fefbe614d1e76ded3b1824c75c402541e53e30c8523568eae305dba3d761da0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant2c0010cf804edfcf0f6c90a183686bb36d9db622b7a5a7df44119a8cadafcab6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
