# Verification target: Small Degree Vieta Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70c6db2fd28e755b7f8a015617e5c0f99c2a3ae1",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variant8a778fc41f5feb468f9daa925f0679d664faaada949ee1fc6844a8b1e024e28f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70c6db2fd28e755b7f8a015617e5c0f99c2a3ae1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variant8a778fc41f5feb468f9daa925f0679d664faaada949ee1fc6844a8b1e024e28f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variant8a778fc41f5feb468f9daa925f0679d664faaada949ee1fc6844a8b1e024e28f.lean.json)

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
| 1 | `lemma` | [eq_quadratic_of_degree_le_two](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/declarations/eq-quadratic-of-degree-le-two.md) | 29 | `result-track:f15d4bf5ed687ddb968ce8b0532691a026918d1ef8b94683f6448da760a09a99` |
| 2 | `lemma` | [eq_neg_mul_add_of_roots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/declarations/eq-neg-mul-add-of-roots-quadratic-eq-pair.md) | 37 | `result-track:8b3ac5fb72300837bfef4685137f5fb431f3c9b8a376bbe9954047bcf65bf521` |
| 3 | `lemma` | [eq_mul_mul_of_roots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/declarations/eq-mul-mul-of-roots-quadratic-eq-pair.md) | 49 | `result-track:ffd8d6feaca4cde2efbd331744aa26a45bd1c458404c4d545e404550fdee44ca` |
| 4 | `lemma` | [eq_neg_mul_add_of_aroots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/declarations/eq-neg-mul-add-of-aroots-quadratic-eq-pair.md) | 61 | `result-track:acb16fde108a42852820d253f1c8125c01c7a1a46a40999072272fded87247a0` |
| 5 | `lemma` | [eq_mul_mul_of_aroots_quadratic_eq_pair](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/declarations/eq-mul-mul-of-aroots-quadratic-eq-pair.md) | 70 | `result-track:49e797874d035b55e6f48dbec9ac6131e2585d526bca1958c5f6631dffc940de` |
| 6 | `lemma` | [roots_quadratic_eq_pair_iff_of_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/declarations/roots-quadratic-eq-pair-iff-of-ne-zero.md) | 78 | `result-track:26343b0dc830b5fcedbd4bb7ff177df096f1eb31d5d33ac244914ed4c6bcae74` |
| 7 | `lemma` | [aroots_quadratic_eq_pair_iff_of_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/declarations/aroots-quadratic-eq-pair-iff-of-ne-zero-source-edition-2.md) | 94 | `result-track:c51d40f60598dfd8ddfd54221a7b570fc1c2b9037f893766fae58d948b6627d1` |
| 8 | `lemma` | [roots_quadratic_eq_pair_iff_of_ne_zero'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/declarations/roots-quadratic-eq-pair-iff-of-ne-zero-source-edition-2.md) | 104 | `result-track:e6dce9482f1ed6b8f874a3ac32691f9932d0d60a5468ca325564cc90d37d25f7` |
| 9 | `lemma` | [aroots_quadratic_eq_pair_iff_of_ne_zero'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/SmallDegreeVietaNamespacedPublic.lean/declarations/aroots-quadratic-eq-pair-iff-of-ne-zero.md) | 111 | `result-track:bce657e1190a7b9f864a0845e9ac5fd725c9dabad4443cb320bbebc7698a0a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6d2f0a93172e400ed0bdba7a507bd06b5fe0beb3d48dbf7e76e4d9808593cd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variant8a778fc41f5feb468f9daa925f0679d664faaada949ee1fc6844a8b1e024e28f.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SmallDegreeVieta/Variant8a778fc41f5feb468f9daa925f0679d664faaada949ee1fc6844a8b1e024e28f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
