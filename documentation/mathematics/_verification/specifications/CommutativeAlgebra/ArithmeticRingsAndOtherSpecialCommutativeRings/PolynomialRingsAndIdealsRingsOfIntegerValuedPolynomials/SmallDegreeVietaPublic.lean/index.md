# Verification target: Small Degree Vieta Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9701b9e4ca9f0ae8f0701dcd2fb118fd7eadc7ce",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantd3e5cdedb9f623d7359f27e8b5eadbf6f6742df9b7dba30b8a8eaa2b81516051.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9701b9e4ca9f0ae8f0701dcd2fb118fd7eadc7ce`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantd3e5cdedb9f623d7359f27e8b5eadbf6f6742df9b7dba30b8a8eaa2b81516051.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantd3e5cdedb9f623d7359f27e8b5eadbf6f6742df9b7dba30b8a8eaa2b81516051.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eq_quadratic_of_degree_le_two](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/declarations/eq-quadratic-of-degree-le-two.md) | 21 | `result-track:e9179ee077f67bd55c8f76c48b0a0b83ccaf93f8919899ede50a0d6f78e304d1` |
| 2 | `lemma` | [eq_neg_mul_add_of_roots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/declarations/eq-neg-mul-add-of-roots-quadratic-eq-pair.md) | 29 | `result-track:b41b29c9762217d959b79e1989297ef295cda5a01f97a7e751c6d8ff09620bdf` |
| 3 | `lemma` | [eq_mul_mul_of_roots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/declarations/eq-mul-mul-of-roots-quadratic-eq-pair.md) | 41 | `result-track:4bfcfdb3ed4af12f4abfa3886a35dae7c8a8e746e2f806702c3e54a6a4c8a2a5` |
| 4 | `lemma` | [eq_neg_mul_add_of_aroots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/declarations/eq-neg-mul-add-of-aroots-quadratic-eq-pair.md) | 53 | `result-track:95391710bcd763e7b8548049b7c2c7df8c87db31ffedd67071d6114620a2df4a` |
| 5 | `lemma` | [eq_mul_mul_of_aroots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/declarations/eq-mul-mul-of-aroots-quadratic-eq-pair.md) | 62 | `result-track:e9b645352f35796e0d08a8d3edce5d4ac494689054bcf0758b1059f748ac1e77` |
| 6 | `lemma` | [roots_quadratic_eq_pair_iff_of_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/declarations/roots-quadratic-eq-pair-iff-of-ne-zero.md) | 70 | `result-track:86f49d3248475d9b63189806f80f26363c449664f02cf24ada938715ea6560fa` |
| 7 | `lemma` | [aroots_quadratic_eq_pair_iff_of_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/declarations/aroots-quadratic-eq-pair-iff-of-ne-zero.md) | 86 | `result-track:0c7b34f0243d9f1c6ea053bba94e7d0dcdf08b7055a61dd5a759515c67460558` |
| 8 | `lemma` | [roots_quadratic_eq_pair_iff_of_ne_zero'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/declarations/roots-quadratic-eq-pair-iff-of-ne-zero-source-edition-2.md) | 96 | `result-track:ea4c0db4b726a2c03b3ad9421fbd35016992f2d1eaf6b0a4fca17de0041f591d` |
| 9 | `lemma` | [aroots_quadratic_eq_pair_iff_of_ne_zero'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaPublic.lean/declarations/aroots-quadratic-eq-pair-iff-of-ne-zero-source-edition-2.md) | 103 | `result-track:d3f9980955b88ecf18d16600bf682fc9125313308d7b35a538303a3ee25042ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a475f10c95a60b313f9ea8533e6025818370886c177a310726e03bc76e21045 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantd3e5cdedb9f623d7359f27e8b5eadbf6f6742df9b7dba30b8a8eaa2b81516051.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variantd3e5cdedb9f623d7359f27e8b5eadbf6f6742df9b7dba30b8a8eaa2b81516051.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
