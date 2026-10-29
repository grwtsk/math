# Ring Theory Pi Tensor Product

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71ca646e36a876541bf363464f47cc865e2ad21a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/RingTheoryPiTensorProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instOne](declarations/instone.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [one_def](declarations/one-def.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instAddCommMonoidWithOne](declarations/instaddcommmonoidwithone.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [mul](declarations/mul.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mul_tprod_tprod](declarations/mul-tprod-tprod.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instMul](declarations/instmul.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mul_def](declarations/mul-def.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [tprod_mul_tprod](declarations/tprod-mul-tprod.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [_root_.SemiconjBy.tprod](declarations/root-semiconjby-tprod.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [_root_.Commute.tprod](declarations/root-commute-tprod.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [smul_tprod_mul_smul_tprod](declarations/smul-tprod-mul-smul-tprod.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instNonUnitalNonAssocSemiring](declarations/instnonunitalnonassocsemiring.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [one_mul](declarations/one-mul.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mul_one](declarations/mul-one.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instNonAssocSemiring](declarations/instnonassocsemiring.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [tprodMonoidHom](declarations/tprodmonoidhom.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [mul_assoc](declarations/mul-assoc.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instNonUnitalSemiring](declarations/instnonunitalsemiring.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instSemiring](declarations/instsemiring.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instAlgebra](declarations/instalgebra.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [algebraMap_apply](declarations/algebramap-apply.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [singleAlgHom](declarations/singlealghom.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [liftAlgHom](declarations/liftalghom.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [tprod_noncommProd](declarations/tprod-noncommprod.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [algHom_ext](declarations/alghom-ext.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instRing](declarations/instring.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [mul_comm](declarations/mul-comm.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instCommSemiring](declarations/instcommsemiring.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [tprod_prod](declarations/tprod-prod.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [constantBaseRingEquiv](declarations/constantbaseringequiv.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [constantBaseRingEquiv_tprod](declarations/constantbaseringequiv-tprod.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [constantBaseRingEquiv_symm](declarations/constantbaseringequiv-symm.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instCommRing](declarations/instcommring.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=198b4fd264090e184281cf34d0f5b420fd2041dc39097c3bc80235386e88cd2f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant6a094a089f987a7f889881cecc2cd909a656b5b4301dd1fcdc9796ca25fd49a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
