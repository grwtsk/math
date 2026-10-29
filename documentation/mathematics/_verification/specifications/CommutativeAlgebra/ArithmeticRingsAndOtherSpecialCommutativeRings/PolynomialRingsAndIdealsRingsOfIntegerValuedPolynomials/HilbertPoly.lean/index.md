# Verification target: Hilbert Poly

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ba900da2d4a085ed232c1fa0754ccaf8e6a4e39`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Infinite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Pochhammer` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.WellKnown` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [preHilbertPoly](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/prehilbertpoly.md) | 58 | `declaration-track:3afe344b39f2c0e6654ea1f2ec9c9330ff79efff5bce5d03f5a5f816b44c8874` |
| 2 | `lemma` | [natDegree_preHilbertPoly](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/natdegree-prehilbertpoly.md) | 61 | `result-track:dc0c9f9a6fa0253837708adfeab0df4020673752c7ec54c711a038eb7f476232` |
| 3 | `lemma` | [coeff_preHilbertPoly_self](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/coeff-prehilbertpoly-self.md) | 67 | `result-track:0e67fc848517ef0ca8865b78bbadf25c26af7d2835371f97341b845969163efe` |
| 4 | `lemma` | [leadingCoeff_preHilbertPoly](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/leadingcoeff-prehilbertpoly.md) | 81 | `result-track:f310da8d9b7b53629b22000ebb1290262ffd50e328d8a4529971cd3b9304dec5` |
| 5 | `lemma` | [preHilbertPoly_eq_choose_sub_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/prehilbertpoly-eq-choose-sub-add.md) | 85 | `result-track:b2cb52ad5dedece680d2945bc25be6f6c4e96edd01c7e391d7db37ad9bff5d60` |
| 6 | `def` | [hilbertPoly](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly.md) | 105 | `declaration-track:6e44a97959ca875e5bbdeb66feb66fdfef916002eb58e8ec055c7da51c3c74c0` |
| 7 | `lemma` | [hilbertPoly_zero_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-zero-left.md) | 109 | `result-track:fcc6d103f9528de9ab779d3ab627ffcc70998e90d70024db635b50e17852dc63` |
| 8 | `lemma` | [hilbertPoly_zero_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-zero-right.md) | 114 | `result-track:bf9c32bcbde15cb80a977d0f76bdc25edefbb2b12f17e996fc9ce6a3390e7d0a` |
| 9 | `lemma` | [hilbertPoly_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-succ.md) | 116 | `result-track:baa3dd64484dd224b424215cc634b23e2a69ab07b7410d6587900f897d4845ed` |
| 10 | `lemma` | [hilbertPoly_X_pow_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-x-pow-succ.md) | 119 | `result-track:000a71b1ab6a253be338fa78accec32b9b2b25fca71f9f9c866058eca46e9232` |
| 11 | `lemma` | [hilbertPoly_add_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-add-left.md) | 123 | `result-track:73e632a3f96db17bfd1f7468377b33ec7085ad963d11234dfaaf3e82abab92d2` |
| 12 | `lemma` | [hilbertPoly_smul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-smul.md) | 133 | `result-track:52b964dec12c7e9c43e1ecb0601c640a149f3fb4f3c1ff3d5a417b687a8cb036` |
| 13 | `def` | [hilbertPoly_linearMap](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-linearmap.md) | 149 | `declaration-track:fa29a81e2396e256b47473882e00aeb514f713748cb4501083b9719452551a3f` |
| 14 | `theorem` | [coeff_mul_invOneSubPow_eq_hilbertPoly_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/coeff-mul-invonesubpow-eq-hilbertpoly-eval.md) | 161 | `result-track:12574ecb2bdd6d88edb7bcd650ae550aa7128ebc721ac7a62c2c7b911b8a9653` |
| 15 | `theorem` | [existsUnique_hilbertPoly](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/existsunique-hilbertpoly.md) | 190 | `result-track:121f2bc0fac980fe9e4644180635f222dc6bb90cc9be4f547fb93f8c516e6fa9` |
| 16 | `theorem` | [eq_hilbertPoly_of_forall_coeff_eq_eval](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/eq-hilbertpoly-of-forall-coeff-eq-eval.md) | 210 | `result-track:0c4982d0cedf271e00e29b407847355545acade96eb64cfecdf1f5b02d88fcd6` |
| 17 | `lemma` | [hilbertPoly_mul_one_sub_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-mul-one-sub-succ.md) | 217 | `result-track:b57088b4dd6b436acb8b6f71eefe0466548b13ea9084cc4385187f79b194f284` |
| 18 | `lemma` | [hilbertPoly_mul_one_sub_pow_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-mul-one-sub-pow-add.md) | 225 | `result-track:d7fdceca7469c6da62a9b88e1e080e311f2347a02738a254e998adc13abcaca8` |
| 19 | `lemma` | [hilbertPoly_eq_zero_of_le_rootMultiplicity_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/hilbertpoly-eq-zero-of-le-rootmultiplicity-one.md) | 231 | `result-track:96d0bee834b6d332b9ea0be0d0488632879e806add0fb7fee2da1cc6b2d9a319` |
| 20 | `theorem` | [natDegree_hilbertPoly_of_ne_zero_of_rootMultiplicity_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/natdegree-hilbertpoly-of-ne-zero-of-rootmultiplicity-lt.md) | 243 | `result-track:84b5a0b42879364e20d98eb4da232de009c61bfeb5abc03471da7a20b659eea7` |
| 21 | `theorem` | [natDegree_hilbertPoly_of_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HilbertPoly.lean/declarations/natdegree-hilbertpoly-of-ne-zero.md) | 264 | `result-track:17f426da628f7838286c2b82bb458ce25d1cb133cbe3b9de05bb4d6f5339331a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed33dc778de85f63613fead3b700a4435f2dfbacc7fbaa2918e5bc2f66388b35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/HilbertPoly/Varianta4c6f9627c26b61a9c10dd67dafdb86f3a2185080d9c98f8a95744abc7af3c33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
