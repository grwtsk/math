# Witt Vector Defs

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `859c75ad0e5632852149d5f0d0c3bde7d4d0f715`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/WittVectorDefs.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [WittVector](declarations/wittvector.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WittVector.mk](declarations/wittvector-mk.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ext](declarations/ext.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coeff_mk](declarations/coeff-mk.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [wittZero](declarations/wittzero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [wittOne](declarations/wittone.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [wittAdd](declarations/wittadd.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [wittNSMul](declarations/wittnsmul.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [wittZSMul](declarations/wittzsmul.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [wittSub](declarations/wittsub.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [wittMul](declarations/wittmul.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [wittNeg](declarations/wittneg.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [wittPow](declarations/wittpow.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [peval](declarations/peval.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [eval](declarations/eval.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [hasNatScalar](declarations/hasnatscalar.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [hasIntScalar](declarations/hasintscalar.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [hasNatPow](declarations/hasnatpow.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [wittZero_eq_zero](declarations/wittzero-eq-zero.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [wittOne_zero_eq_one](declarations/wittone-zero-eq-one.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [wittOne_pos_eq_zero](declarations/wittone-pos-eq-zero.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [wittAdd_zero](declarations/wittadd-zero.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [wittSub_zero](declarations/wittsub-zero.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [wittMul_zero](declarations/wittmul-zero.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [wittNeg_zero](declarations/wittneg-zero.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [constantCoeff_wittAdd](declarations/constantcoeff-wittadd.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [constantCoeff_wittSub](declarations/constantcoeff-wittsub.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [constantCoeff_wittMul](declarations/constantcoeff-wittmul.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [constantCoeff_wittNeg](declarations/constantcoeff-wittneg.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [constantCoeff_wittNSMul](declarations/constantcoeff-wittnsmul.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [constantCoeff_wittZSMul](declarations/constantcoeff-wittzsmul.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [zero_coeff](declarations/zero-coeff.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [one_coeff_zero](declarations/one-coeff-zero.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [one_coeff_eq_of_pos](declarations/one-coeff-eq-of-pos.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [v2_coeff](declarations/v2-coeff.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [add_coeff](declarations/add-coeff.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sub_coeff](declarations/sub-coeff.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [mul_coeff](declarations/mul-coeff.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [neg_coeff](declarations/neg-coeff.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [nsmul_coeff](declarations/nsmul-coeff.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [zsmul_coeff](declarations/zsmul-coeff.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [pow_coeff](declarations/pow-coeff.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [add_coeff_zero](declarations/add-coeff-zero.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mul_coeff_zero](declarations/mul-coeff-zero.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [wittAdd_vars](declarations/wittadd-vars.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [wittSub_vars](declarations/wittsub-vars.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [wittMul_vars](declarations/wittmul-vars.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [wittNeg_vars](declarations/wittneg-vars.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [wittNSMul_vars](declarations/wittnsmul-vars.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [wittZSMul_vars](declarations/wittzsmul-vars.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [wittPow_vars](declarations/wittpow-vars.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5e0dbbb371dbabf974ad51bb73b934916f21e5a2403b9538bdd786dc6986626 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Defs/Variant176cc6ed5694bbb700d06ef25dba8b49b1a46bfabe0028b2bd577ee6f0b86422.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
