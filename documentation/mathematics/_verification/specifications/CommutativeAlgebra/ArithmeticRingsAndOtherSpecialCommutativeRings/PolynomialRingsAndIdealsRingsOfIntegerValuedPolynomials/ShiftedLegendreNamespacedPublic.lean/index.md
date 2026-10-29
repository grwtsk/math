# Verification target: Shifted Legendre Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e346ba1338f4168d2a70e8f8d0c5949ca822989",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ShiftedLegendreNamespacedPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ShiftedLegendreNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e346ba1338f4168d2a70e8f8d0c5949ca822989`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean.json)

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
| 1 | `def` | [shiftedLegendre](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ShiftedLegendreNamespacedPublic.lean/declarations/shiftedlegendre.md) | 48 | `declaration-track:370311a570245d9ee9db32eea66be985d7ca5a1c73b7c7945dc5f6ca61fda83c` |
| 2 | `theorem` | [factorial_mul_shiftedLegendre_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ShiftedLegendreNamespacedPublic.lean/declarations/factorial-mul-shiftedlegendre-eq.md) | 54 | `result-track:888055db03f8e7594f21e8aa6e10cf6c7b3425b2586e5a0cf3e04db3b4448d46` |
| 3 | `theorem` | [coeff_shiftedLegendre](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ShiftedLegendreNamespacedPublic.lean/declarations/coeff-shiftedlegendre.md) | 92 | `result-track:77d034beb86ae9755fbaeebb53629a9ee511afa87cb661041fcd811e2548bae9` |
| 4 | `theorem` | [degree_shiftedLegendre](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ShiftedLegendreNamespacedPublic.lean/declarations/degree-shiftedlegendre.md) | 99 | `result-track:3d4ef88ee8ffc6088f6ac14aa80c44c1d3918f41362a13180223a07895c38c7a` |
| 5 | `theorem` | [natDegree_shiftedLegendre](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ShiftedLegendreNamespacedPublic.lean/declarations/natdegree-shiftedlegendre.md) | 107 | `result-track:586c1e06d0a406fd7e51bd13f2e6dbc800e4a26cfe65923f1187a3b0ace23264` |
| 6 | `theorem` | [neg_one_pow_mul_shiftedLegendre_comp_one_sub_X_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ShiftedLegendreNamespacedPublic.lean/declarations/neg-one-pow-mul-shiftedlegendre-comp-one-sub-x-eq.md) | 110 | `result-track:6e12c4f9682c0984f214da3cb7a9d25cd8851d64b764b2ffcd1a87a547534d6d` |
| 7 | `lemma` | [shiftedLegendre_eval_symm](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/ShiftedLegendreNamespacedPublic.lean/declarations/shiftedlegendre-eval-symm.md) | 118 | `result-track:2f285fa6e594ac03e9db64a7ab492db9487c14c0134d474b5acb6f18be88554d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07e3c3ef51608af7d31428e0f20129157fd5cbd7234b7b5f58c3f6e31e9ad4ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ShiftedLegendre/Variantdde1e45d1f010a0f0e7b81c4f30c3db02068c89180e5cffe08ea5b646370ad70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
