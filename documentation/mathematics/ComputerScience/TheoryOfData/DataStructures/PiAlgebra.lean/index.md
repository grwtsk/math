# Pi Algebra

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6f7fa4071677a70be73d77d4b7e20ea68ef6646f70ca71e6a9face17a2b23bc4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5674e139bea84ded337fc5e7129b7f7943c5e7ed`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PiAlgebra.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](declarations/instone.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [one_apply](declarations/one-apply.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [one_def](declarations/one-def.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [const_one](declarations/const-one.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [one_comp](declarations/one-comp.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comp_one](declarations/comp-one.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instMul](declarations/instmul.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mul_apply](declarations/mul-apply.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mul_def](declarations/mul-def.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [const_mul](declarations/const-mul.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_comp](declarations/mul-comp.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instSMul](declarations/instsmul.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [instPow](declarations/instpow.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pow_apply](declarations/pow-apply.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pow_def](declarations/pow-def.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [const_pow](declarations/const-pow.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pow_comp](declarations/pow-comp.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bit0_apply](declarations/bit0-apply.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bit1_apply](declarations/bit1-apply.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instInv](declarations/instinv.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inv_apply](declarations/inv-apply.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inv_def](declarations/inv-def.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [const_inv](declarations/const-inv.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inv_comp](declarations/inv-comp.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instDiv](declarations/instdiv.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [div_apply](declarations/div-apply.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [div_def](declarations/div-def.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [div_comp](declarations/div-comp.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [const_div](declarations/const-div.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [mulSingle](declarations/mulsingle.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mulSingle_eq_same](declarations/mulsingle-eq-same.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mulSingle_eq_of_ne](declarations/mulsingle-eq-of-ne-source-edition-2.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mulSingle_eq_of_ne'](declarations/mulsingle-eq-of-ne.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mulSingle_one](declarations/mulsingle-one.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mulSingle_apply](declarations/mulsingle-apply.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mulSingle_comm](declarations/mulsingle-comm.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [apply_mulSingle](declarations/apply-mulsingle.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [apply_mulSingle₂](declarations/apply-mulsingle-source-edition-2.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mulSingle_op](declarations/mulsingle-op.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mulSingle_op₂](declarations/mulsingle-op-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mulSingle_injective](declarations/mulsingle-injective.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mulSingle_inj](declarations/mulsingle-inj.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [prod](declarations/prod.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [prod_fst_snd](declarations/prod-fst-snd.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [prod_snd_fst](declarations/prod-snd-fst.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [extend_one](declarations/extend-one.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [extend_mul](declarations/extend-mul.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [extend_inv](declarations/extend-inv.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [extend_div](declarations/extend-div.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [surjective_pi_map](declarations/surjective-pi-map.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [injective_pi_map](declarations/injective-pi-map.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [bijective_pi_map](declarations/bijective-pi-map.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [uniqueOfSurjectiveOne](declarations/uniqueofsurjectiveone.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Subsingleton.pi_mulSingle_eq](declarations/subsingleton-pi-mulsingle-eq.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [elim_one_one](declarations/elim-one-one.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [elim_mulSingle_one](declarations/elim-mulsingle-one.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [elim_one_mulSingle](declarations/elim-one-mulsingle.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [elim_inv_inv](declarations/elim-inv-inv.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [elim_mul_mul](declarations/elim-mul-mul.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [elim_div_div](declarations/elim-div-div.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab6351ce2ee7b9b70c863ab68fabe895397b11f8e474f7a5d189c76eb3fb4a4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Algebra/Variant6f7fa4071677a70be73d77d4b7e20ea68ef6646f70ca71e6a9face17a2b23bc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
