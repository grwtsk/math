# Verification target: Quotient Mod By Monic Eq Zero Iff Quotient Eq Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05896661c7d7f09dd73e3cc95cce5967a4481bd3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05896661c7d7f09dd73e3cc95cce5967a4481bd3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Div` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.SMul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Ideal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientSpanXSubCAlgEquivAux2](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientspanxsubcalgequivaux2.md) | 25 | `declaration-track:5af1a7e6448a2492efaaeb4c01f6692c910ab3f65539d75f5e92b43066558b5e` |
| 2 | `def` | [quotientSpanXSubCAlgEquivAux1](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientspanxsubcalgequivaux1.md) | 31 | `declaration-track:afd1f4d853c74dc741af35f1dbf48b464980d9381af61f8e04ea7ea6b95564f6` |
| 3 | `def` | [quotientSpanXSubCAlgEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientspanxsubcalgequiv.md) | 38 | `declaration-track:7d55d34bcd783aab9828e916a5728f1dc69c78212ab27a0dcb4ccf6ba70ca5b1` |
| 4 | `theorem` | [quotientSpanXSubCAlgEquiv_mk](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientspanxsubcalgequiv-mk.md) | 43 | `result-track:eee1bb638a5cbd80c24d2419b4a5b7e142a38f02fa900ffbc7a18faf57a0adfe` |
| 5 | `theorem` | [quotientSpanXSubCAlgEquiv_symm_apply](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientspanxsubcalgequiv-symm-apply.md) | 48 | `result-track:81e265513abdefdb8f2280574ff45f9ef9c6e4c0a71997db8c945ee7b85155fb` |
| 6 | `def` | [quotientSpanCXSubCAlgEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientspancxsubcalgequiv.md) | 54 | `declaration-track:3e41811bb5483b8a0052aa94517e8ad3ae4b6a0c4b4b567549e730f490167628` |
| 7 | `def` | [quotientSpanCXSubCXSubCAlgEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientspancxsubcxsubcalgequiv.md) | 64 | `declaration-track:0810bc13b265477a162d1c1e77b466eef9a84287eaf4493cec27fe184447677c` |
| 8 | `lemma` | [modByMonic_eq_zero_iff_quotient_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/modbymonic-eq-zero-iff-quotient-eq-zero.md) | 69 | `result-track:f82a1cbb2436697abdb1dcb8e203704afe44a429f99b7774c563b74b5782c27d` |
| 9 | `theorem` | [quotient_map_C_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotient-map-c-eq-zero.md) | 83 | `result-track:08db1594169ffe0f1ca8ac3c024927c5988f73eb8b3c2064988caca185e5dc65` |
| 10 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/eval-c-mk-eq-zero-source-edition-2.md) | 89 | `result-track:c33e2a2ad3c6bac74840e6ff7f479c820390f7d4fe1063ffd1ec14e06cb036ae` |
| 11 | `def` | [polynomialQuotientEquivQuotientPolynomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/polynomialquotientequivquotientpolynomial.md) | 107 | `declaration-track:6c0e99f6931a87d568411bdbcf584f7eeffd8f00f82c3c50a4d9cf60f7e4e2c0` |
| 12 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_symm_mk](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/polynomialquotientequivquotientpolynomial-symm-mk.md) | 143 | `result-track:a983337f5c70088f7c5d5aa0f3d692bd27b71b4d3d957a003077f82a42911d8b` |
| 13 | `theorem` | [polynomialQuotientEquivQuotientPolynomial_map_mk](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/polynomialquotientequivquotientpolynomial-map-mk.md) | 150 | `result-track:5b20fce652903d80a491a340155a144a95153ff51eed14b4153b62c962d52c41` |
| 14 | `theorem` | [isDomain_map_C_quotient](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/isdomain-map-c-quotient.md) | 157 | `result-track:72ec1553995ee17d8ea2bc499f8fb34a724beb7b79d899ebb27eb2b1bdd354e1` |
| 15 | `theorem` | [eq_zero_of_polynomial_mem_map_range](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/eq-zero-of-polynomial-mem-map-range.md) | 165 | `result-track:99edae169d0d7f328298989639022bfd8bec1737ca5341612ef7c8447f9de283` |
| 16 | `theorem` | [quotient_map_C_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotient-map-c-eq-zero-source-edition-2.md) | 194 | `result-track:a4c784cf2093395fd495a170c116a7fd2940ff89dd01b1492659c2bf73004e34` |
| 17 | `theorem` | [eval₂_C_mk_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/eval-c-mk-eq-zero.md) | 200 | `result-track:15b3de06a7d8b78923eabb3b987569ed5ad23ba55b591e6123c3a4c7abfd6242` |
| 18 | `lemma` | [quotientEquivQuotientMvPolynomial_rightInverse](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientequivquotientmvpolynomial-rightinverse.md) | 213 | `result-track:36924954e924cd8eb932ef82671a12dda1db111a748b9a4d62646e45a9fb8ac5` |
| 19 | `lemma` | [quotientEquivQuotientMvPolynomial_leftInverse](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientequivquotientmvpolynomial-leftinverse.md) | 235 | `result-track:cb2a4112b4f2a9b6c6891ad7a8ccfdff02fd8f9fa4020b22e48355337c1da05d` |
| 20 | `def` | [quotientEquivQuotientMvPolynomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/QuotientModByMonicEqZeroIffQuotientEqZero.lean/declarations/quotientequivquotientmvpolynomial.md) | 262 | `declaration-track:c4b08532e7ff39ceb290ecddd5c3068a0ac9f886401052bd8efc5e3a6585ce9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b800439b550d118b4fead3f6ea47caa3bef081e59dc0bf2615fbbedb7741f949 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Quotient/Variantf4551c1c48f196c3f847abc10b8627ecb31574477c27dec45ceea1919f95882d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
