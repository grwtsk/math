# Reduce Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e66ce5f7bde31b471fa77faa8ed42c06bdd42a34`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/ReduceNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [reduce](declarations/reduce.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [reduce_nil](declarations/reduce-nil.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [reduce_singleton](declarations/reduce-singleton.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [reduce.cons](declarations/reduce-cons.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reduce_replicate](declarations/reduce-replicate.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reduce.red](declarations/reduce-red.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [reduce.not](declarations/reduce-not.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reduce.min](declarations/reduce-min.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reduce.idem](declarations/reduce-idem.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reduce.Step.eq](declarations/reduce-step-eq.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reduce.eq_of_red](declarations/reduce-eq-of-red.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Red.reduce_right](declarations/red-reduce-right.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Red.reduce_left](declarations/red-reduce-left.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reduce.sound](declarations/reduce-sound.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [reduce.exact](declarations/reduce-exact.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reduce.self](declarations/reduce-self.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reduce.rev](declarations/reduce-rev.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [toWord](declarations/toword.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mk_toWord](declarations/mk-toword.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toWord_injective](declarations/toword-injective.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toWord_inj](declarations/toword-inj.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toWord_mk](declarations/toword-mk.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toWord_of](declarations/toword-of.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [reduce_toWord](declarations/reduce-toword.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toWord_one](declarations/toword-one.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toWord_mul](declarations/toword-mul.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toWord_pow](declarations/toword-pow.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toWord_of_pow](declarations/toword-of-pow.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toWord_eq_nil_iff](declarations/toword-eq-nil-iff.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [reduce_invRev](declarations/reduce-invrev.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toWord_inv](declarations/toword-inv.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [reduce_append_reduce_reduce](declarations/reduce-append-reduce-reduce.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reduce_cons_reduce](declarations/reduce-cons-reduce.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [reduce_invRev_left_cancel](declarations/reduce-invrev-left-cancel.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [toWord_mul_sublist](declarations/toword-mul-sublist.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [reduce.churchRosser](declarations/reduce-churchrosser.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [Red.decidableRel](declarations/red-decidablerel.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [Red.enum](declarations/red-enum.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Red.enum.sound](declarations/red-enum-sound.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Red.enum.complete](declarations/red-enum-complete.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [one_ne_of](declarations/one-ne-of.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [of_ne_one](declarations/of-ne-one.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [norm](declarations/norm.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [norm_inv_eq](declarations/norm-inv-eq.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [norm_eq_zero](declarations/norm-eq-zero.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [norm_one](declarations/norm-one.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [norm_of](declarations/norm-of.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [norm_mk_le](declarations/norm-mk-le.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [norm_mul_le](declarations/norm-mul-le.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [norm_of_pow](declarations/norm-of-pow.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [norm_surjective](declarations/norm-surjective.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f94262aa20b2020d45f5b77381fcec40245ca748304c8eac2cd3e18d8f257bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variant487e248ff84d2b0333f2be1bf75809b729b8d1c98d85dbade0405da7d17b6789.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
