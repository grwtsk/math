# Verification target: Distinguished

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6254e73989aaed30705a06a2fd1020d7578818b2",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Distinguished/Variant2211718348eee32bd13bb8eadcd0a3c2ecaf10b28dce53131f0928da9b4d02b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Distinguished.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Distinguished.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6254e73989aaed30705a06a2fd1020d7578818b2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Distinguished/Variant2211718348eee32bd13bb8eadcd0a3c2ecaf10b28dce53131f0928da9b4d02b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Distinguished/Variant2211718348eee32bd13bb8eadcd0a3c2ecaf10b28dce53131f0928da9b4d02b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Eisenstein.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.Order` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Polynomial.IsDistinguishedAt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Distinguished.lean/declarations/polynomial-isdistinguishedat.md) | 28 | `declaration-track:af421324f17ad7425870db48c579f539a788904cb77c25d735f561ebae1cd4d6` |
| 2 | `lemma` | [map_eq_X_pow](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Distinguished.lean/declarations/map-eq-x-pow.md) | 34 | `result-track:8eab978c795d09755773c0aee28da3018588875785e949648f843c5176aacf01` |
| 3 | `lemma` | [map_ne_zero_of_eq_mul](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Distinguished.lean/declarations/map-ne-zero-of-eq-mul.md) | 50 | `result-track:2b262bfefa9cac17b61bad99d072164c31d994b0ba652f6f796c21cf3264121f` |
| 4 | `lemma` | [degree_eq_coe_lift_order_map](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Distinguished.lean/declarations/degree-eq-coe-lift-order-map.md) | 59 | `result-track:1951c4c963029bfd5bf4f614fd0bac606d54a3c2656dc8e51144657f5b312474` |
| 5 | `lemma` | [coe_natDegree_eq_order_map](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Distinguished.lean/declarations/coe-natdegree-eq-order-map.md) | 81 | `result-track:224d53d53d04a0c7493ea108757722cb16702bacacb0bcc2d06bb63878729bcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d400a53a291c169f1f6319fb168ac8c8410b3cf7aeefbd04f46a2860c94d4c50 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Distinguished/Variant2211718348eee32bd13bb8eadcd0a3c2ecaf10b28dce53131f0928da9b4d02b7.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Distinguished/Variant2211718348eee32bd13bb8eadcd0a3c2ecaf10b28dce53131f0928da9b4d02b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
