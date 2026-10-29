# Verification target: Wronskian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e785cd6a517fc0df86cd114e63deec8cb4e09d1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Wronskian/Variant11edaf0e8304533e3297238aa7c090f8f5da27aa95fc2f12e6c23e9615e5d694.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e785cd6a517fc0df86cd114e63deec8cb4e09d1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Wronskian/Variant11edaf0e8304533e3297238aa7c090f8f5da27aa95fc2f12e6c23e9615e5d694.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Wronskian/Variant11edaf0e8304533e3297238aa7c090f8f5da27aa95fc2f12e6c23e9615e5d694.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wronskian](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian.md) | 39 | `declaration-track:a12defba83e8ffe6ba041fe0779316a166753454efe14639cbabd65aa3540151` |
| 2 | `def` | [wronskianBilin](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskianbilin.md) | 44 | `declaration-track:9fac7e511dfcda5b6b56106ea6298f850d1a47c8713da295e12ddb67cfe5e3a8` |
| 3 | `theorem` | [wronskianBilin_apply](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskianbilin-apply.md) | 48 | `result-track:f65d4a4cf48d11d826e1ffd6bd2c2ab210146fd734d491e37f4fc62ce46611ad` |
| 4 | `theorem` | [wronskian_zero_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian-zero-left.md) | 51 | `result-track:e04401d39e44f2084f11ae56d8308d01fc81c978818a4032e654216cd71d239c` |
| 5 | `theorem` | [wronskian_zero_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian-zero-right.md) | 55 | `result-track:187e1fe38bb26ec0e2af5cbb46621e2687d57b45dd818a8a935da40267567045` |
| 6 | `theorem` | [wronskian_neg_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian-neg-left.md) | 57 | `result-track:b741da4550361ac9172b5cbaefb2de857f4ddc626c594ca66211265cce76426b` |
| 7 | `theorem` | [wronskian_neg_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian-neg-right.md) | 60 | `result-track:144fc29ac39a698524ac10d1819cc722b1786dc066bf7a7edcb1efc98e72d330` |
| 8 | `theorem` | [wronskian_add_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian-add-right.md) | 63 | `result-track:579d2d2d18d542410c2c55e1ddd53bfdcf0e615f110a20abddc4ac99669189d2` |
| 9 | `theorem` | [wronskian_add_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian-add-left.md) | 66 | `result-track:370fa5d85308bf76c1344d46dc30ceb9e868f9c828345f22f494f03ebebd9fcc` |
| 10 | `theorem` | [wronskian_self_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian-self-eq-zero.md) | 69 | `result-track:f37cc76c0c575353a916dc17cb61fd4212e3d84e9c07b3a9c1e94826447b7187` |
| 11 | `theorem` | [isAlt_wronskianBilin](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/isalt-wronskianbilin.md) | 72 | `result-track:05b3b3b46c4e8040b60e3d6236449d68f7bfa3f370442ce9979c764dd55fe6f3` |
| 12 | `theorem` | [wronskian_neg_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian-neg-eq.md) | 74 | `result-track:402dd4ecf9aeab5dfa6f4f09ac420081a461b66aca99ceeabc4d859804d8b93e` |
| 13 | `theorem` | [wronskian_eq_of_sum_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/wronskian-eq-of-sum-zero.md) | 77 | `result-track:66bf38f97482a6d0e5b64033f0ce70f8c005e9816c4b4c689c653a7dbd0394dc` |
| 14 | `theorem` | [degree_wronskian_lt_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/degree-wronskian-lt-add.md) | 81 | `result-track:c4afe8b34eba272fb7e4e4e7a152c891b4a74b63a30965e763f514951cd6d379` |
| 15 | `theorem` | [natDegree_wronskian_lt_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/natdegree-wronskian-lt-add.md) | 107 | `result-track:289d9a21921a6df0597502ed4ecb48c58a380064b79293ed2cde0f9c950a499f` |
| 16 | `theorem` | [_root_.IsCoprime.wronskian_eq_zero_iff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Wronskian.lean/declarations/root-iscoprime-wronskian-eq-zero-iff.md) | 121 | `result-track:98733f695f1042489633760a09b8b1a03eee2aebe422545246b6fa2fb4c0b1d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c563bbbf8b4ffb59d879700747a3657a19a7e8dc7900e68615be6f67f811cf36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Wronskian/Variant11edaf0e8304533e3297238aa7c090f8f5da27aa95fc2f12e6c23e9615e5d694.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Wronskian/Variant11edaf0e8304533e3297238aa7c090f8f5da27aa95fc2f12e6c23e9615e5d694.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
