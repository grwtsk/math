# Verification target: Polynomial Is Integral Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bad1401caa94239470792cfee91c5c72741030d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bad1401caa94239470792cfee91c5c72741030d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean.json)

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
| 1 | `lemma` | [isIntegral_coeff_prod](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/declarations/isintegral-coeff-prod.md) | 35 | `result-track:419d80454cb81fe0bfe08d30290fe33afc8e78c7cdad657c9d9b86e57a145441` |
| 2 | `lemma` | [isIntegral_coeff_of_factors](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/declarations/isintegral-coeff-of-factors.md) | 45 | `result-track:210b878070743850e1ef0abdc55d0262273897cab08b0171e2321a4863bce137` |
| 3 | `lemma` | [isIntegral_coeff_of_dvd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/declarations/isintegral-coeff-of-dvd.md) | 63 | `result-track:f5a14d2c804e2150e005b3fa60f6c3a374ca7a4b1cf150594a8ca3169379ef15` |
| 4 | `lemma` | [IsAlmostIntegral.coeff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/declarations/isalmostintegral-coeff.md) | 86 | `result-track:d3065e320f01f11079a6eab67e64ee64a43eb8a0a14072900987d17758abd29d` |
| 5 | `lemma` | [IsIntegral.coeff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/declarations/isintegral-coeff.md) | 122 | `result-track:580c06fa4335f760f2dc3df557cc88d0ea03c7f635d1882ab99a1f3c204a632f` |
| 6 | `theorem` | [Polynomial.isIntegral_iff_isIntegral_coeff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/declarations/polynomial-isintegral-iff-isintegral-coeff.md) | 159 | `result-track:1996bdd9ef3d0d69cc52949b324940530cdaa8e46b8e95a081eadcefe3317cc9` |
| 7 | `lemma` | [IsIntegral.of_aeval_monic_of_isIntegral_coeff](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/declarations/isintegral-of-aeval-monic-of-isintegral-coeff.md) | 166 | `result-track:7d1df2338795b70226cff08e3cec3f15f72cbd368038196757431fa9388fc54c` |
| 8 | `instance` | [(anonymous)](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/declarations/instance.md) | 176 | `declaration-track:bfa743f2b732d2d6ed4a16b90a05e886c14931b469ee992488d63a379e8ff45d` |
| 9 | `theorem` | [MvPolynomial.isIntegral_iff_isIntegral_coeff.](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialIsIntegralPublic.lean/declarations/mvpolynomial-isintegral-iff-isintegral-coeff.md) | 189 | `result-track:83d606e4976e0873d9e8a834f51d10826b4bb563e0337b5ea636d72585037029` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f37b7bde899720c25cbf7e462cc1e570c30a3cf9a216efbc292dfe926d96fa7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
