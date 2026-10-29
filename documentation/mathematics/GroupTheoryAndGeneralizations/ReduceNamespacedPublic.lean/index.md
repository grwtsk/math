# Reduce Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 57 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46b4ad44d965aca62a32c9060981cf60feb8e947`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/ReduceNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [reduce](declarations/reduce.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [reduce_nil](declarations/reduce-nil.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [reduce_singleton](declarations/reduce-singleton.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [reduce.cons](declarations/reduce-cons.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reduce_replicate](declarations/reduce-replicate.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reduce.red](declarations/reduce-red.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [reduce.not](declarations/reduce-not.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reduce.min](declarations/reduce-min.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reduce.idem](declarations/reduce-idem.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reduce.Step.eq](declarations/reduce-step-eq.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reduce.eq_of_red](declarations/reduce-eq-of-red.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Red.reduce_right](declarations/red-reduce-right.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Red.reduce_left](declarations/red-reduce-left.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reduce.sound](declarations/reduce-sound.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [reduce.exact](declarations/reduce-exact.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reduce.self](declarations/reduce-self.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reduce.rev](declarations/reduce-rev.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [toWord](declarations/toword.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mk_toWord](declarations/mk-toword.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toWord_injective](declarations/toword-injective.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toWord_inj](declarations/toword-inj.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toWord_mk](declarations/toword-mk.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toWord_of](declarations/toword-of.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [reduce_toWord](declarations/reduce-toword.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toWord_one](declarations/toword-one.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toWord_mul](declarations/toword-mul.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toWord_pow](declarations/toword-pow.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toWord_eq_nil_iff](declarations/toword-eq-nil-iff.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [reduce_invRev](declarations/reduce-invrev.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toWord_inv](declarations/toword-inv.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toWord_of_pow](declarations/toword-of-pow.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toWord_of_zpow](declarations/toword-of-zpow.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reduce_append_reduce_reduce](declarations/reduce-append-reduce-reduce.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [reduce_cons_reduce](declarations/reduce-cons-reduce.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [reduce_invRev_left_cancel](declarations/reduce-invrev-left-cancel.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [toWord_mul_sublist](declarations/toword-mul-sublist.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [reduce.churchRosser](declarations/reduce-churchrosser.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [Red.decidableRel](declarations/red-decidablerel.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Red.enum](declarations/red-enum.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Red.enum.sound](declarations/red-enum-sound.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Red.enum.complete](declarations/red-enum-complete.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsReduced.reduce_eq](declarations/isreduced-reduce-eq.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsReduced.of_reduce_eq](declarations/isreduced-of-reduce-eq.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isReduced_iff_reduce_eq](declarations/isreduced-iff-reduce-eq.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [isReduced_toWord](declarations/isreduced-toword.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [toWord_mk_mul_eq](declarations/toword-mk-mul-eq.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [toWord_mul_mk_eq](declarations/toword-mul-mk-eq.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [idxOf_toWord_of_mul_eq](declarations/idxof-toword-of-mul-eq.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [idxOf_toWord_mul_of_eq](declarations/idxof-toword-mul-of-eq.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [eq_of_of_zpow_eq_of_zpow](declarations/eq-of-of-zpow-eq-of-zpow.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [eq_of_of_pow_eq_of_pow](declarations/eq-of-of-pow-eq-of-pow.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [one_ne_of](declarations/one-ne-of.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [of_ne_one](declarations/of-ne-one.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [norm](declarations/norm.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [norm_inv_eq](declarations/norm-inv-eq.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [norm_eq_zero](declarations/norm-eq-zero.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [norm_one](declarations/norm-one.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [norm_of](declarations/norm-of.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [norm_mk_le](declarations/norm-mk-le.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [norm_mul_le](declarations/norm-mul-le.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [norm_of_pow](declarations/norm-of-pow.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [norm_of_zpow](declarations/norm-of-zpow.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [norm_surjective](declarations/norm-surjective.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4cd54bf62adffd722100cda178a23d3539508d64dc187ad7da29be91d48bebf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
