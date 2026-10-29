# Verification target: Pochhammer Pochhammer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3aa53ee263422564fd8cca60fe91bd18c599ca8",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3aa53ee263422564fd8cca60fe91bd18c599ca8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Pochhammer/Variant73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Eval` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer.md) | 44 | `declaration-track:b9f51bbbb45d5a4ff4aed26906d2b9560e9fffdef893d4aa191e5c166602e508` |
| 2 | `theorem` | [pochhammer_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-zero.md) | 50 | `result-track:0d39e2f6676d56029518a1dd35920034d215fc7de0770ebc7e9d3449407a7dcb` |
| 3 | `theorem` | [pochhammer_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-one.md) | 55 | `result-track:573aeb6092e14248868aa37cba556c5ec3a2ad436a2a25760edae1db37b7c151` |
| 4 | `theorem` | [pochhammer_succ_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-succ-left.md) | 58 | `result-track:be0e73ae846b175467da1c267c039baabc6510f071598cc0eb95442256e4448e` |
| 5 | `theorem` | [pochhammer_map](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-map.md) | 67 | `result-track:ca2fd4821a001630ba7fe355bcd4e77303e06c49302e74529b34cd7adb0ad191` |
| 6 | `theorem` | [pochhammer_eval_cast](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-eval-cast.md) | 76 | `result-track:0b370ad71e80464033404614757591163511aafc214433c4ea96f0933b42138a` |
| 7 | `theorem` | [pochhammer_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-eval-zero.md) | 82 | `result-track:8a56ecd96e4c2e6d6dc518fc236e0d5c6c1f3629bf32e876bd600c8a1875b914` |
| 8 | `theorem` | [pochhammer_zero_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-zero-eval-zero.md) | 88 | `result-track:873cc63ebfd94c64dc079e97c32d623c873880f8b7688c639d6abcb8dd923534` |
| 9 | `theorem` | [pochhammer_ne_zero_eval_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-ne-zero-eval-zero.md) | 92 | `result-track:880b4521560363476dc3c799a4a6257975b5adf3e52fa05da92e929668ba1232` |
| 10 | `theorem` | [pochhammer_succ_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-succ-right.md) | 96 | `result-track:2e40ad000842ce0748e1926cda3a03a9162b6e21552185f437635a7e806fa585` |
| 11 | `theorem` | [pochhammer_succ_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-succ-eval.md) | 109 | `result-track:104c7f84c7eec727a0ba4d22b9eba6144afbda6dd995e49ad6d594709ba47270` |
| 12 | `theorem` | [pochhammer_succ_comp_X_add_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-succ-comp-x-add-one.md) | 115 | `result-track:633a63e13c1cdf73f16b03b92f774f99cc9219d3f257186f5bddcbb44f1e65d3` |
| 13 | `theorem` | [Polynomial.mul_X_add_nat_cast_comp](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/polynomial-mul-x-add-nat-cast-comp.md) | 128 | `result-track:f57189c0bfc60343cebb2a2415c62317ca3394d938f8c3e590b46158187baa1b` |
| 14 | `theorem` | [pochhammer_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-mul.md) | 134 | `result-track:84b0486221aff16c85fc45631f66b830700dbd7cdc51ce8f755a73f0c0bcd268` |
| 15 | `theorem` | [pochhammer_nat_eq_ascFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-nat-eq-ascfactorial.md) | 142 | `result-track:680d0c01a4e25aa02b947d5e206abaf9b059df2416d4f0bdd10a9b7585ac6413` |
| 16 | `theorem` | [pochhammer_nat_eq_descFactorial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-nat-eq-descfactorial.md) | 151 | `result-track:e038f1fd0566a293be229ad7d769c9444a877063aba482be4f92ddb13ba97977` |
| 17 | `theorem` | [pochhammer_pos](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-pos.md) | 169 | `result-track:5d5829a8339cae211f7e918374da0c1f764922149d5121fe4f98555af8b0b556` |
| 18 | `theorem` | [pochhammer_eval_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-eval-one.md) | 187 | `result-track:b8badbdc49024e0532b1b5db42a205b7dc3b61a2bcbe61a598026713413e4b0b` |
| 19 | `theorem` | [factorial_mul_pochhammer](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/factorial-mul-pochhammer.md) | 192 | `result-track:b12a3b917749b1a9efd6f2920e2d318f992a39be9270b28859675c9e5d87df0a` |
| 20 | `theorem` | [pochhammer_nat_eval_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-nat-eval-succ.md) | 197 | `result-track:f1c137b40596ad21753bb024b891babdf8f05d62b388ba86cd9c96495cfc99e2` |
| 21 | `theorem` | [pochhammer_eval_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PochhammerPochhammer.lean/declarations/pochhammer-eval-succ.md) | 206 | `result-track:3232143f88819cbf9f250add3ae52971d6e7452542a4814596230ef080db78dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfdec74bd86e944e6c1f36d1db623ce2b9ff9e71ac8169a0bfeedd993987f0a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Pochhammer/Variant73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Pochhammer/Variant73ccc80bfe41b162f2c733747f7579d4eb739c2dc9171575c655c30ee1c18949.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
