# Verification target: Polynomial Bernstein Bernstein Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bf60f19df319be9ab1972347245dee3da113d6c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant908fa382cde119d328e8639e7066372a5e47c75ce8d853072d114befa58f91b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bf60f19df319be9ab1972347245dee3da113d6c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant908fa382cde119d328e8639e7066372a5e47c75ce8d853072d114befa58f91b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bernstein/Variant908fa382cde119d328e8639e7066372a5e47c75ce8d853072d114befa58f91b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Derivative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.PDeriv` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernsteinPolynomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/bernsteinpolynomial.md) | 59 | `declaration-track:65ce6212c9c211773db7c620b1436dceb09c4f99ecdc3bcff08bf0729aa9cd49` |
| 2 | `example` | [(anonymous)](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/example.md) | 63 | `declaration-track:c5ec9a1ce40b0991940096768ab514ba881d2bb6fe20ec000b673710bfb686f9` |
| 3 | `theorem` | [eq_zero_of_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/eq-zero-of-lt.md) | 69 | `result-track:e7d26c034e5a150e5f0994686fd5272ddb8d56cc0ef605ca69f34cb6e50ca356` |
| 4 | `theorem` | [map](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/map.md) | 78 | `result-track:182f8cbf3ab0c41a2e88abe88c3a2045c7d50b655058a305b9fcf2b390498221` |
| 5 | `theorem` | [flip](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/flip-source-edition-2.md) | 84 | `result-track:ff5eb827044549ea3d52d7725066d196b3464552208f3ce3793419eb2f2826a0` |
| 6 | `theorem` | [flip'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/flip.md) | 89 | `result-track:72e0b0f33d02a6622b2a4095fe954964f190ae26dd224be293c8a4764dc58b5c` |
| 7 | `theorem` | [eval_at_0](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/eval-at-0.md) | 94 | `result-track:1c3bd7953898962da5fe6c6e39fcb0602107944026769b53bfa3fadb7af0e764` |
| 8 | `theorem` | [eval_at_1](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/eval-at-1.md) | 101 | `result-track:562bb7ad38f19a504bbb6db396db3e30f57335506bf108cd09fbcf4bd2618a3b` |
| 9 | `theorem` | [derivative_succ_aux](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/derivative-succ-aux.md) | 110 | `result-track:67541ae815295173d44110ea4157f57810f4b1932c9ac128e574f6c4811eef37` |
| 10 | `theorem` | [derivative_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/derivative-succ.md) | 142 | `result-track:756208ea942cc8669cfbbf10ca4bc02004b107acc99a20a1fdb1065aa4fbefd2` |
| 11 | `theorem` | [derivative_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/derivative-zero.md) | 149 | `result-track:d9f9540fcebbd41d06d8662812ee9e0b363c6fac8531be2cf5b0525350f30a02` |
| 12 | `theorem` | [iterate_derivative_at_0_eq_zero_of_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/iterate-derivative-at-0-eq-zero-of-lt.md) | 154 | `result-track:0b0bd487486b993e30da82247f9487d4358909052d526ecd6d74f4ef989b4b6b` |
| 13 | `theorem` | [iterate_derivative_succ_at_0_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/iterate-derivative-succ-at-0-eq-zero.md) | 173 | `result-track:41e8c81eb76d4159caca0cd4e3abe3b48acc7882d862fb9175b1825403c9191e` |
| 14 | `theorem` | [iterate_derivative_at_0](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/iterate-derivative-at-0.md) | 181 | `result-track:ec4a4f67266a11884eb7e50dec9ace2e2bafde76cd47bc34e6e8f12a60de05d0` |
| 15 | `theorem` | [iterate_derivative_at_0_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/iterate-derivative-at-0-ne-zero.md) | 204 | `result-track:c7807b4c8a8aab5660b49320b7b3b845b8aa007b3c0bdda977c142bc3cdcb810` |
| 16 | `theorem` | [iterate_derivative_at_1_eq_zero_of_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/iterate-derivative-at-1-eq-zero-of-lt.md) | 223 | `result-track:606ef7cf5ceec80298253b6242264074824ec89fb24b997943f8190f4f1229de` |
| 17 | `theorem` | [iterate_derivative_at_1](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/iterate-derivative-at-1.md) | 231 | `result-track:ecd19e71e6d20bf56a302a1a27ccdeced2be510c1e239c963bc207ed49b3040a` |
| 18 | `theorem` | [iterate_derivative_at_1_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/iterate-derivative-at-1-ne-zero.md) | 243 | `result-track:012d0d69572dfb8ef1da100fcdf827243795469e07d674a0723ce4c3690c1030` |
| 19 | `theorem` | [linearIndependent_aux](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/linearindependent-aux.md) | 252 | `result-track:42d4b3d3c8d73504b0b0c7e36e289878a05aad753940e0cf7c9821ed9cb53733` |
| 20 | `theorem` | [linearIndependent](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/linearindependent.md) | 293 | `result-track:1370fb997abe1da12fdb69b24cda164b92f13668505e56b039ae945d03c0089b` |
| 21 | `theorem` | [sum](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/sum.md) | 298 | `result-track:a712c5820245bc31535e7e3c2ebd4aff58c7855311283dc80a1f6957f846bd58` |
| 22 | `theorem` | [sum_smul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/sum-smul.md) | 310 | `result-track:68cfbe6b220f419cb6d14e20422d4483b1685783cf0670bf76c4c5ce8c0bf7b7` |
| 23 | `theorem` | [sum_mul_smul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/sum-mul-smul.md) | 347 | `result-track:85ef61993fa75c0e130079b01b674856eba0fe40f929978258f4d0f1d2e2e295` |
| 24 | `theorem` | [variance](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialBernsteinBernsteinNamespacedSourceEdition2.lean/declarations/variance.md) | 393 | `result-track:b050afead4b1cfb8ba2343ece5fe713174654eb0acace0b9e0d8ae663945055f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=958c5ec9fcf5d21ed66f94951655ab3ef8e85e5b5f4fb52aa9574cc3ef22cb99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bernstein/Variant908fa382cde119d328e8639e7066372a5e47c75ce8d853072d114befa58f91b6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bernstein/Variant908fa382cde119d328e8639e7066372a5e47c75ce8d853072d114befa58f91b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
