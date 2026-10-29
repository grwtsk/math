# Tactic Ring Basic Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d23c7fb20774850f2005a1a966e6e56b601f87a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticRingBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ExBase](declarations/exbase.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ExProd](declarations/exprod.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ExSum](declarations/exsum.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cast_pos](declarations/cast-pos.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [cast_zero](declarations/cast-zero.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [cast_neg](declarations/cast-neg.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [cast_nnrat](declarations/cast-nnrat.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cast_rat](declarations/cast-rat.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ExProd.mkNat](declarations/exprod-mknat.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ExProd.mkNegNat](declarations/exprod-mknegnat.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ExProd.mkNNRat](declarations/exprod-mknnrat.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ExProd.mkNegNNRat](declarations/exprod-mknegnnrat.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [evalCast](declarations/evalcast.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [natCast_nat](declarations/natcast-nat.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [natCast_mul](declarations/natcast-mul.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [natCast_zero](declarations/natcast-zero.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [natCast_add](declarations/natcast-add.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ExBase.evalNatCast](declarations/exbase-evalnatcast.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ExProd.evalNatCast](declarations/exprod-evalnatcast.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ExSum.evalNatCast](declarations/exsum-evalnatcast.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [natCast_int](declarations/natcast-int.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [intCast_negOfNat_Int](declarations/intcast-negofnat-int.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [intCast_mul](declarations/intcast-mul.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [intCast_zero](declarations/intcast-zero.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [intCast_add](declarations/intcast-add.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [ExBase.evalIntCast](declarations/exbase-evalintcast.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [ExProd.evalIntCast](declarations/exprod-evalintcast.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ExSum.evalIntCast](declarations/exsum-evalintcast.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ExBase.cast](declarations/exbase-cast.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [ExProd.cast](declarations/exprod-cast.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [ExSum.cast](declarations/exsum-cast.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [smul_eq_mul](declarations/smul-eq-mul.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Nat.smul_eq_mul](declarations/nat-smul-eq-mul.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Int.smul_eq_mul](declarations/int-smul-eq-mul.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [RatCoeff.toResult](declarations/ratcoeff-toresult.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [RatCoeff.ofResult](declarations/ratcoeff-ofresult.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [add](declarations/add.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [mul](declarations/mul.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [cast](declarations/cast.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [neg](declarations/neg.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [pow](declarations/pow.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [inv](declarations/inv.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [derive](declarations/derive.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [isOne](declarations/isone.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [_root_.Mathlib.Tactic.Ring.ringCompare](declarations/root-mathlib-tactic-ring-ringcompare.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [_root_.Mathlib.Tactic.Ring.ringCompute](declarations/root-mathlib-tactic-ring-ringcompute.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [rcℕ](declarations/rc.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `class` | [CSLift](declarations/cslift.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `class` | [CSLiftVal](declarations/csliftval.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [of_lift](declarations/of-lift.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [of_eq](declarations/of-eq.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `initialize` | [(anonymous)](declarations/initialize.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [proveEq](declarations/proveeq.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `elab` | [(anonymous)](declarations/elab.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `macro` | [(anonymous)](declarations/macro.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16ed537db2af212e7ade6955da80f80f67daf859be344d2ac6ed24a27821a9be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
