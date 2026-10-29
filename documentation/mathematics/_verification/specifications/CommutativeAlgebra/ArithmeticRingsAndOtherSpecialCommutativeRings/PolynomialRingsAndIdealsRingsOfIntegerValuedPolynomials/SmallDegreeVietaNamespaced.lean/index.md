# Verification target: Small Degree Vieta Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1d9b6f06a0e193771a0fec9b79143decb9079c3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantcfeabb3d742dfa8656a2c2f0e4064cdf6394c3d27fcd29006382e4c7053a7673.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1d9b6f06a0e193771a0fec9b79143decb9079c3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantcfeabb3d742dfa8656a2c2f0e4064cdf6394c3d27fcd29006382e4c7053a7673.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantcfeabb3d742dfa8656a2c2f0e4064cdf6394c3d27fcd29006382e4c7053a7673.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FieldSimp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eq_neg_mul_add_of_roots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/declarations/eq-neg-mul-add-of-roots-quadratic-eq-pair.md) | 27 | `result-track:0388eaf4d45d345161ac554db2c858f2c2a56eedfdaf6e561f478a83ba1809b7` |
| 2 | `lemma` | [eq_mul_mul_of_roots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/declarations/eq-mul-mul-of-roots-quadratic-eq-pair.md) | 39 | `result-track:dd2d803e896e16e2acaeb30bd176d794218f4dd712fe72e995fd9f8e4b0fe763` |
| 3 | `lemma` | [eq_neg_mul_add_of_aroots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/declarations/eq-neg-mul-add-of-aroots-quadratic-eq-pair.md) | 51 | `result-track:1d12037950a4b37b904de72873b2a10aa78fffd7893e7b4411a37e54cddc719d` |
| 4 | `lemma` | [eq_mul_mul_of_aroots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/declarations/eq-mul-mul-of-aroots-quadratic-eq-pair.md) | 60 | `result-track:7e5c831e2d41b8525d872f9d66868bf39005a7afc2710799bf3ef8e56de39783` |
| 5 | `lemma` | [roots_quadratic_eq_pair_iff_of_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/declarations/roots-quadratic-eq-pair-iff-of-ne-zero-source-edition-2.md) | 68 | `result-track:860d052b9b8a908bed535de7614126d187cfc9ff17926caf180cfa5745a4e02b` |
| 6 | `lemma` | [aroots_quadratic_eq_pair_iff_of_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/declarations/aroots-quadratic-eq-pair-iff-of-ne-zero.md) | 83 | `result-track:d98a823acd6e3efbe5e1be3c2180757b1c10943cb286a94d7853bf04306ba256` |
| 7 | `lemma` | [roots_quadratic_eq_pair_iff_of_ne_zero'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/declarations/roots-quadratic-eq-pair-iff-of-ne-zero.md) | 93 | `result-track:0fa90cdcc5eedddf29bf88e13604fcf8a68e8b62f1291e1b9e3e5b925520bcba` |
| 8 | `lemma` | [aroots_quadratic_eq_pair_iff_of_ne_zero'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespaced.lean/declarations/aroots-quadratic-eq-pair-iff-of-ne-zero-source-edition-2.md) | 102 | `result-track:fea741252addddb0a3952c58c972ee6656990af79a1ec7aab892afc557522a80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68ef03a008bb25b742d757053f44d25130f1c3baa9e8b6d4b996c228270581a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantcfeabb3d742dfa8656a2c2f0e4064cdf6394c3d27fcd29006382e4c7053a7673.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantcfeabb3d742dfa8656a2c2f0e4064cdf6394c3d27fcd29006382e4c7053a7673.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
