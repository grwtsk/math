# Verification target: Pochhammer Namespaced Pochhammer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a86b3fb9816f5087d50b2e7e5e1386f7b446f02e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a86b3fb9816f5087d50b2e7e5e1386f7b446f02e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Eval` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer.md) | 52 | `declaration-track:4cf0b90b9ae15b40df1084e74991ded373fc8a0012edf99b116efb3cbb1a99ed` |
| 2 | `theorem` | [pochhammer_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-zero.md) | 58 | `result-track:8bad3f432ca7e29455f48ace79b6271ce690aea3f06e678809670be46829eb7a` |
| 3 | `theorem` | [pochhammer_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-one.md) | 63 | `result-track:87afe2954b65f8e57e35e34dfbd12253d5c4853cc7b60e879d168db7383e83b3` |
| 4 | `theorem` | [pochhammer_succ_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-succ-left.md) | 66 | `result-track:89231945371c5031eeefb876ef13ab451ecd058763500e5991c43e8f78ead43c` |
| 5 | `theorem` | [pochhammer_map](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-map.md) | 75 | `result-track:9dfac3c7d9defdfdac32fc2384e90a9e9674587acee596fac2a22b72b3f52fbd` |
| 6 | `theorem` | [pochhammer_eval_cast](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-eval-cast.md) | 84 | `result-track:8bbd9f5656c1b2647f1ad06a5b65febee5041f9ec4586668d871d85d66da6b6f` |
| 7 | `theorem` | [pochhammer_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-eval-zero.md) | 90 | `result-track:30f9806e98b6b945b749a8853cd5d6ffedcb1c0599a0db3af7e99ef0baf6182d` |
| 8 | `theorem` | [pochhammer_zero_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-zero-eval-zero.md) | 96 | `result-track:89581c5aff98f4f5127216aa8021f16bae9fa16577ecf20b3395376050e9c74c` |
| 9 | `theorem` | [pochhammer_ne_zero_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-ne-zero-eval-zero.md) | 100 | `result-track:eb60719a41634c74aa7d18b4aaef022e04dc25624c185371b75e66d3b0d1dfd0` |
| 10 | `theorem` | [pochhammer_succ_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-succ-right.md) | 104 | `result-track:39cf311fa5003657393b0d324e2c84a3a2cfb9eec0d4bbfb3ea357a6a4e92555` |
| 11 | `theorem` | [pochhammer_succ_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-succ-eval.md) | 117 | `result-track:92caca0312dff63f80f1a375c4e775b5bd269e1a609aa0ac85d09b228665020e` |
| 12 | `theorem` | [pochhammer_succ_comp_X_add_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-succ-comp-x-add-one.md) | 123 | `result-track:3e88f28a888b8f315fb0128f513cb49644003e1cf5d72678a2d1bda7b315312b` |
| 13 | `theorem` | [Polynomial.mul_X_add_nat_cast_comp](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/polynomial-mul-x-add-nat-cast-comp.md) | 136 | `result-track:09023ae5f4119f74d28e58e6b47a799f10dfe418e6a049d8f2a849606564b62e` |
| 14 | `theorem` | [pochhammer_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-mul.md) | 142 | `result-track:a7292e4b520cc5003915dafd23947139940366f8d8233a8a1683a201e3f7411e` |
| 15 | `theorem` | [pochhammer_nat_eq_ascFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-nat-eq-ascfactorial.md) | 150 | `result-track:7e8f33f1608ec283a1ac1d3dc22ff2da4eed7a5a7e555c73330ecda165d19703` |
| 16 | `theorem` | [pochhammer_nat_eq_descFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-nat-eq-descfactorial.md) | 159 | `result-track:fa6c0c7125d30ca0e4f01825af93f6b5f60dd37c1852249083045b063ec93526` |
| 17 | `theorem` | [pochhammer_pos](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-pos.md) | 177 | `result-track:092f2968425dfb12be6c056250a5a7931469957b3b09d1df9f90ed97c180ffd3` |
| 18 | `theorem` | [pochhammer_eval_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-eval-one.md) | 195 | `result-track:bf3401d28a33f2d4a7dae8f692b620931f39ffc96d86d4636b01e7f79e9bf24f` |
| 19 | `theorem` | [factorial_mul_pochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/factorial-mul-pochhammer.md) | 200 | `result-track:c2002456626eb2f86c60be5b058ee0ff5321ebb3406520c2ffb06649c9be976f` |
| 20 | `theorem` | [pochhammer_nat_eval_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-nat-eval-succ.md) | 205 | `result-track:ec22fea4d5f11fe1283406556f61fdfe0993e71d7be1454ddcb6e91bc9e9a377` |
| 21 | `theorem` | [pochhammer_eval_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerNamespacedPochhammer.lean/declarations/pochhammer-eval-succ.md) | 214 | `result-track:7ed9d66fec95a9d6d4bfa7332ec56da4157dddcbe01c12c925018a7867c69f86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c942491270ab54f0bdc8b395c7bf089c64e3eb5f59e3cfdc5655e292e508507c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Pochhammer/Variantc3eb9dba524ac07e0690b1fedb4d2f1dba817c3b1434005e62a2c6ab6eda8dc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
