# Verification target: Quotient Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f58d7f2b66cc5efc571b71e66cf671f91014868f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant31d086561f3b25f5917d43dca760f5e423dccc5fc5fbbd8e2f84f51ed1dcdfb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f58d7f2b66cc5efc571b71e66cf671f91014868f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant31d086561f3b25f5917d43dca760f5e423dccc5fc5fbbd8e2f84f51ed1dcdfb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Quotient/Variant31d086561f3b25f5917d43dca760f5e423dccc5fc5fbbd8e2f84f51ed1dcdfb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Div` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientSpanXSubCAlgEquivAux2](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientspanxsubcalgequivaux2.md) | 33 | `declaration-track:9bcc452a217c60799faa8c2ba74797c48d8909c31c563b2e7e1e29b2cc7046aa` |
| 2 | `def` | [quotientSpanXSubCAlgEquivAux1](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientspanxsubcalgequivaux1.md) | 39 | `declaration-track:32f9a8e7566e7539223ea9c72c7e9c7bc2c067ca5ad15e46bd204866dd45169c` |
| 3 | `def` | [quotientSpanXSubCAlgEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientspanxsubcalgequiv.md) | 46 | `declaration-track:a63aeaa589c50656d493b85bf6203c26cc6c84dfe2a35edbacfafb3fbce0f6fa` |
| 4 | `theorem` | [quotientSpanXSubCAlgEquiv_mk](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientspanxsubcalgequiv-mk.md) | 52 | `result-track:b55724e56d5ecdf5082470e304964e88d708fd4cbcb849174c5a42fe8b608fbd` |
| 5 | `theorem` | [quotientSpanXSubCAlgEquiv_symm_apply](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientspanxsubcalgequiv-symm-apply.md) | 58 | `result-track:424df3efd29517539d9995a27184d0cb5193b47377305a53520000dde56fd1c1` |
| 6 | `def` | [quotientSpanCXSubCAlgEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientspancxsubcalgequiv.md) | 65 | `declaration-track:92a308fdfa986c5ef9decd370d05643de47d2dd53f9acaabe9d28d73f5c72de6` |
| 7 | `def` | [quotientSpanCXSubCXSubCAlgEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientspancxsubcxsubcalgequiv.md) | 77 | `declaration-track:d276ca1fd78ad971abc6230cead1f3e2b21eec4f024638c2a6fe3334d62e4e90` |
| 8 | `theorem` | [quotient_map_C_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotient-map-c-eq-zero.md) | 92 | `result-track:7788495a14932922d8a2919261372abfb15565963a10378f074bce5bda2b10da` |
| 9 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/eval-c-mk-eq-zero-source-edition-2.md) | 99 | `result-track:6a6c182aa20afee7bca9b38e6852a9a6ea82810b63bb48347d7c2bcec59ab2bc` |
| 10 | `def` | [polynomialQuotientEquivQuotientPolynomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/polynomialquotientequivquotientpolynomial.md) | 118 | `declaration-track:11ea1b81a308f65094afcf4e685210b5b55ea17710b5c1566667b22e03bc6bc5` |
| 11 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_symm_mk](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/polynomialquotientequivquotientpolynomial-symm-mk.md) | 155 | `result-track:f33618ad94fc94ce8b4df5e972938976853a163465ced765d3019669f9ae8f2a` |
| 12 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_map_mk](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/polynomialquotientequivquotientpolynomial-map-mk.md) | 163 | `result-track:f06fceff31f0f3c49750b07970a5e7df391efde310879c7fe71926df6e66d8e7` |
| 13 | `theorem` | [isDomain_map_C_quotient](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/isdomain-map-c-quotient.md) | 171 | `result-track:499d2cf16b7cac21fa9493b0c1df824d03a5d1fb6b196b17b2f4377ccb7de182` |
| 14 | `theorem` | [eq_zero_of_polynomial_mem_map_range](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/eq-zero-of-polynomial-mem-map-range.md) | 180 | `result-track:cd28e2d7f6be517197bddee036a5ef561adbc86a6ad43cc327d0d8b1580e59c2` |
| 15 | `theorem` | [quotient_map_C_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotient-map-c-eq-zero-source-edition-2.md) | 210 | `result-track:b88b2e249953335e82319f8d449aee757a7716d107cbf6060e3e7fc6bf4ed51e` |
| 16 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/eval-c-mk-eq-zero.md) | 217 | `result-track:43d1b4c0ff9d4b1864a0b3dd47abf5d8873667a1ba2747de3d3e03afe31a29c1` |
| 17 | `lemma` | [quotientEquivQuotientMvPolynomial_rightInverse](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientequivquotientmvpolynomial-rightinverse.md) | 231 | `result-track:8e0e5636a3c81c8d6aee65e74e4432ea39d55cd9f1db63f363be75525a16ea63` |
| 18 | `lemma` | [quotientEquivQuotientMvPolynomial_leftInverse](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientequivquotientmvpolynomial-leftinverse.md) | 253 | `result-track:29bfc374e55b8ae6bfb12e15dd4c0395794fd8814dd011b45230e18f9cd007bf` |
| 19 | `def` | [quotientEquivQuotientMvPolynomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientNamespaced.lean/declarations/quotientequivquotientmvpolynomial.md) | 280 | `declaration-track:8261082803170f1abd11bb483c756a0181a6d3e5e490d3338a23005038c4ae20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9f61b513d77e7ec134dd2a894103b021fd271274ac74d0352d9f26c4e148369 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variant31d086561f3b25f5917d43dca760f5e423dccc5fc5fbbd8e2f84f51ed1dcdfb6.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Quotient/Variant31d086561f3b25f5917d43dca760f5e423dccc5fc5fbbd8e2f84f51ed1dcdfb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
