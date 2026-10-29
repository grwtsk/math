# Verification target: Hermite Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef1eb2aa739295c3bc4db5902df0af1ed27c1f6b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantbfddf95890c4703e65c00d16691784c2b724aa44a80bae1860d82e2cde3bdb41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef1eb2aa739295c3bc4db5902df0af1ed27c1f6b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantbfddf95890c4703e65c00d16691784c2b724aa44a80bae1860d82e2cde3bdb41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantbfddf95890c4703e65c00d16691784c2b724aa44a80bae1860d82e2cde3bdb41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Derivative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.DoubleFactorial` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/hermite.md) | 52 | `declaration-track:21c564f9f2ddcc44ccd5a871b9310bd93e4bb50caec760d9d288eaa3e22f2157` |
| 2 | `theorem` | [hermite_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/hermite-succ.md) | 58 | `result-track:448382b8e85329ebbc80ebfa1622eafe92d69cc262e0461018535054a328411d` |
| 3 | `theorem` | [hermite_eq_iterate](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/hermite-eq-iterate.md) | 61 | `result-track:12abe9d1833f55785ef92c18a00460522bfba95b2787ee7838b1098e34885e64` |
| 4 | `theorem` | [hermite_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/hermite-zero.md) | 67 | `result-track:4df9b7cd2e3c0be04c6a272b66a647073d8c46bf1014461862aeb69c260c5c10` |
| 5 | `theorem` | [hermite_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/hermite-one.md) | 70 | `result-track:34fd6c11446ccc28e6e89af6422e81d7a108d7c8bf691ca39e97bfa5faa9e753` |
| 6 | `theorem` | [coeff_hermite_succ_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/coeff-hermite-succ-zero.md) | 79 | `result-track:4742fe9f2b74b9fd23c3abd1131f0747d8e5c5008cf4724ef8c0097370d0dc95` |
| 7 | `theorem` | [coeff_hermite_succ_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/coeff-hermite-succ-succ.md) | 82 | `result-track:3270082b9d996c90e03b975529aa403c4c8589048ab66c37183c9d12609ae4da` |
| 8 | `theorem` | [coeff_hermite_of_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/coeff-hermite-of-lt.md) | 87 | `result-track:7f720a8c0ae0a49c4ebf942a8396b8e39ca6d7350d1f881163972f169d065fc5` |
| 9 | `theorem` | [coeff_hermite_self](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/coeff-hermite-self.md) | 97 | `result-track:0c143ab2643f25f8d7ee4d474875a4c718e7d6373a61a76649ff20275300dda7` |
| 10 | `theorem` | [degree_hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/degree-hermite.md) | 105 | `result-track:c151e94209c01dab40a9a36b57deb42a27ea82911ce7e1b9e74ee6b306cd629f` |
| 11 | `theorem` | [natDegree_hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/natdegree-hermite.md) | 113 | `result-track:b0fb711655f35a6859205d62f9d16b39cf87186a40d6c30fb6bff661c92320f8` |
| 12 | `theorem` | [leadingCoeff_hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/leadingcoeff-hermite.md) | 117 | `result-track:e3ca2e3e8525a5ef103f2c75c42fd5f289e2e4c4f295f9e534b1c8d6b0c8fa60` |
| 13 | `theorem` | [hermite_monic](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/hermite-monic.md) | 120 | `result-track:52c64c7aeb81ac642eaeaf1d6c58fb3c6eecbd02d532e7fed1eb02b1b301b13e` |
| 14 | `theorem` | [coeff_hermite_of_odd_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/coeff-hermite-of-odd-add.md) | 123 | `result-track:51df3d6b83805b1f7a3bee3bd3765109c47e3d6abd015fba76202ad706072e3f` |
| 15 | `theorem` | [coeff_hermite_explicit](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/coeff-hermite-explicit.md) | 146 | `result-track:23c06a6b897e37852da7ee42e18f424e143b101ae4df4b1b299fdc588cdc9b11` |
| 16 | `theorem` | [coeff_hermite_of_even_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/coeff-hermite-of-even-add.md) | 190 | `result-track:e1de7e3df40bc62258f50777313fc5b1f44cb975d838b0f4bbba7d6aee15805d` |
| 17 | `theorem` | [coeff_hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespaced.lean/declarations/coeff-hermite.md) | 200 | `result-track:9449ae94c3f8ad0601c2bff5097cb822199fff1af5d420920ec0c0308aeda917` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f06665cb4231a4a200c47fc3ef783545b1758c188f9938035d5608d89dd40eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantbfddf95890c4703e65c00d16691784c2b724aa44a80bae1860d82e2cde3bdb41.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variantbfddf95890c4703e65c00d16691784c2b724aa44a80bae1860d82e2cde3bdb41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
