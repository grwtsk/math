# Verification target: Gauss Norm Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8b65df38067a1bb8aa2057523220359ec65191c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8b65df38067a1bb8aa2057523220359ec65191c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean.json)

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
| 1 | `def` | [gaussNorm](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm.md) | 54 | `declaration-track:e8ff0374f7a672e18dc456ffcbdbbbac2653fd93afc9d4bdafc4baf0d4849bce` |
| 2 | `lemma` | [gaussNorm_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-zero.md) | 58 | `result-track:56b919f899c27536dc5f59f4687fd18dc99019bab65380816dc2f5911b81d761` |
| 3 | `theorem` | [exists_eq_gaussNorm](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/exists-eq-gaussnorm.md) | 62 | `result-track:3b894d0feb8b206010b8633709f68a430025221ac28b579e96ba0482f745457b` |
| 4 | `lemma` | [gaussNorm_C](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-c.md) | 70 | `result-track:143fc13e2752b2911a3120641f94b94d0a8817d122f49c2c3454e2ec2feb99a8` |
| 5 | `theorem` | [gaussNorm_monomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-monomial.md) | 74 | `result-track:2e1e2155857ce508517e9243c967ef0e1ed9df1471b0be458a4678e7c6afa8fa` |
| 6 | `lemma` | [sup'_nonneg_of_ne_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/sup-nonneg-of-ne-zero.md) | 81 | `result-track:d15cbaa8196f083c44f35090974e36155631354263e10c4de3132cd2812da18e` |
| 7 | `lemma` | [aux_bdd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/aux-bdd.md) | 89 | `result-track:e193455e8c48ea8157f4246c2b4b3d8ffcb8e23d006b11510d016caf3da98649` |
| 8 | `theorem` | [gaussNorm_coe_powerSeries](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-coe-powerseries.md) | 106 | `result-track:4b33a671d5bebb4656a4fe5c65e06ff815b4df75ae9d70e2756eb94b9e13c74d` |
| 9 | `theorem` | [gaussNorm_eq_zero_iff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-eq-zero-iff.md) | 126 | `result-track:60b340c26499ac14886a70bf8b2bf1c55003bfe33f3dfc84506b653d5bb054fe` |
| 10 | `theorem` | [gaussNorm_nonneg](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-nonneg.md) | 135 | `result-track:e2a5352540a9f5ef0489a8f84cc7488a271ef680a0b86ebc97e4ece2a141021e` |
| 11 | `lemma` | [le_gaussNorm](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/le-gaussnorm.md) | 139 | `result-track:1b64e356cea8e740046d7529a161f9a8e062bc019aef0d83fe1edd57b5c695fc` |
| 12 | `lemma` | [gaussNorm_zero_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-zero-right.md) | 145 | `result-track:52a97b762f30c9da5bdbb3b5ec425e2c1b3baf6083ebba20b0927a07847c5bc1` |
| 13 | `lemma` | [exists_min_eq_gaussNorm](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/exists-min-eq-gaussnorm.md) | 157 | `result-track:07e3c593b051f7a6de8043e922bb504127a8fe9487149aaa6761a89936a4d2d4` |
| 14 | `theorem` | [isNonarchimedean_gaussNorm](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/isnonarchimedean-gaussnorm.md) | 170 | `result-track:7d8ad8ed7d5ab89494187fa28522a0f8ea527148e423978dae905ebb8f54c0c2` |
| 15 | `theorem` | [gaussNorm_mul_le](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-mul-le.md) | 197 | `result-track:a0bba7402c51d7bc14b53bbe591bdee5c7eb4760b615b2930b8da5370d67fa58` |
| 16 | `theorem` | [mul_gaussNorm_le_gaussNorm_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/mul-gaussnorm-le-gaussnorm-mul.md) | 227 | `result-track:5de6edf6be2291ea6c1a9b7e9f106d0ff6286aeda724e4c210961b147af454df` |
| 17 | `theorem` | [gaussNorm_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-mul.md) | 276 | `result-track:f9ec312e4c59aad1a4fb8506d8f67b295578db7eb26004b0620af395f9838e2c` |
| 18 | `theorem` | [gaussNorm_isAbsoluteValue](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-isabsolutevalue.md) | 283 | `result-track:cdc6bf37b61e1093bae2ce09373f9dceb99ea05a098d0e6f314bff2c1e8dcd85` |
| 19 | `theorem` | [gaussNorm_C](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-c-source-edition-2.md) | 300 | `result-track:ce5d3dd5f4b10410e0c42060933cab87878b20258be958dc766bc33433564942` |
| 20 | `theorem` | [gaussNorm_monomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/GaussNormPublic.lean/declarations/gaussnorm-monomial-source-edition-2.md) | 305 | `result-track:f522bcdeeec6ec4a8bfac9d225edfe72e3a2d614b0dffe727f67e7992db37900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5af5bce01277f343138efb47b5f6e2c50ff9e974ffa554fe878819253c5f4ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/GaussNorm/Variant464c530dfed29c3909f957c5bea27f5c35bf2567ce848c9de21bea0addadf575.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
