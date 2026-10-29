# Verification target: Quotient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa538aa614bc7b65a04cc66c66f06c89c22fd9ef",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf916b2b17dcbf8871d8a2b844e516cc79264cf0a53ec1c3522d2727e8ef2a8b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa538aa614bc7b65a04cc66c66f06c89c22fd9ef`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf916b2b17dcbf8871d8a2b844e516cc79264cf0a53ec1c3522d2727e8ef2a8b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Quotient/Variantf916b2b17dcbf8871d8a2b844e516cc79264cf0a53ec1c3522d2727e8ef2a8b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Div` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.QuotientOperations` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientSpanXSubCAlgEquivAux2](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientspanxsubcalgequivaux2.md) | 25 | `declaration-track:ddaeebe4f5ac7835d458db24a43754a733dbde8c268a0a7001b5576b6fb0cf6d` |
| 2 | `def` | [quotientSpanXSubCAlgEquivAux1](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientspanxsubcalgequivaux1.md) | 31 | `declaration-track:2d36a95db347a981623304506eadd89f71a52065e107d554818e0c6496109ed4` |
| 3 | `def` | [quotientSpanXSubCAlgEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientspanxsubcalgequiv.md) | 38 | `declaration-track:b735730f386f7412c7b5682a15e54ddceeab163cb4adf96c10efca0ce97759a8` |
| 4 | `theorem` | [quotientSpanXSubCAlgEquiv_mk](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientspanxsubcalgequiv-mk.md) | 44 | `result-track:d31f8f0b67b4fd0c79931bb111a4dff3d51078f81c950b997b7bead2ca2a4293` |
| 5 | `theorem` | [quotientSpanXSubCAlgEquiv_symm_apply](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientspanxsubcalgequiv-symm-apply.md) | 50 | `result-track:5686c83dcc4d44f93b2f08ba594fb439f158a6400b3786b86c85786d16cecaa4` |
| 6 | `def` | [quotientSpanCXSubCAlgEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientspancxsubcalgequiv.md) | 57 | `declaration-track:426c1463b4477ebc5c5e010a5b1c135f693291bd0b1bd1b3fb12a5a8d99c7c94` |
| 7 | `def` | [quotientSpanCXSubCXSubCAlgEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientspancxsubcxsubcalgequiv.md) | 69 | `declaration-track:02870d3d9ba43fd2263ee0a72e88f59ad102f24917399802b73397257015079e` |
| 8 | `theorem` | [quotient_map_C_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotient-map-c-eq-zero.md) | 84 | `result-track:1dc94a01eb4280f4eb2bb245f375abc3967221653cec8ca9c6cbd75bf2a36f49` |
| 9 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/eval-c-mk-eq-zero.md) | 91 | `result-track:81165d1192ee7a020573e75850b0a636e3e43f92ac40ff4d2f82493a6dd5aa53` |
| 10 | `def` | [polynomialQuotientEquivQuotientPolynomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/polynomialquotientequivquotientpolynomial.md) | 110 | `declaration-track:283d51571922152414c61f31463fc606f91b6d755385607c866d1b81ff9ce8cb` |
| 11 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_symm_mk](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/polynomialquotientequivquotientpolynomial-symm-mk.md) | 147 | `result-track:467da0a16e187c86cd54abdd8122b082afe5a3f6b36b644c1e681b802d5656b8` |
| 12 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_map_mk](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/polynomialquotientequivquotientpolynomial-map-mk.md) | 155 | `result-track:c16d2d5ca0b64f65d2997b2ab0b8c7a77467abeeaa4e5e1cccf7bcc2e3565191` |
| 13 | `theorem` | [isDomain_map_C_quotient](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/isdomain-map-c-quotient.md) | 163 | `result-track:2596da5b347a392f0f567768958517d2c82a8f6265aea82a01f6f0f6c5c8b3cc` |
| 14 | `theorem` | [eq_zero_of_polynomial_mem_map_range](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/eq-zero-of-polynomial-mem-map-range.md) | 172 | `result-track:e9d9a1c31816fe90157dae9bf885854260663a0570ace7f256f3bea2f848e0af` |
| 15 | `theorem` | [quotient_map_C_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotient-map-c-eq-zero-source-edition-2.md) | 202 | `result-track:b1ea98acfeddc381c62234f26572fd1de2010e6305365e1df32147a5327b1ddf` |
| 16 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/eval-c-mk-eq-zero-source-edition-2.md) | 209 | `result-track:c7f3cb86cd5c288edcd348e8033e2b4f1cee2eb9d00c933f19f39c5e86457b13` |
| 17 | `lemma` | [quotientEquivQuotientMvPolynomial_rightInverse](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientequivquotientmvpolynomial-rightinverse.md) | 223 | `result-track:4ca3640a0ec2d22fbcec1640023aa21feb22e3ee585e358dd1cd70c171c7a1e8` |
| 18 | `lemma` | [quotientEquivQuotientMvPolynomial_leftInverse](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientequivquotientmvpolynomial-leftinverse.md) | 245 | `result-track:e19acf2f55841f369ba8d04ef331054c171691c5661ad214c7d59cac595b287c` |
| 19 | `def` | [quotientEquivQuotientMvPolynomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Quotient.lean/declarations/quotientequivquotientmvpolynomial.md) | 272 | `declaration-track:74b61e559b68ccde9902a2ee020b21d0c3932308967f024aff776d10a5b30a01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=914a3a0a6ecf4ead297b2a0461a8c8464982a08c30591dfee627e73b43b57e1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf916b2b17dcbf8871d8a2b844e516cc79264cf0a53ec1c3522d2727e8ef2a8b2.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Quotient/Variantf916b2b17dcbf8871d8a2b844e516cc79264cf0a53ec1c3522d2727e8ef2a8b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
