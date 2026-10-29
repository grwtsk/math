# Verification target: Hermite Basic Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e58b965ad60186d8b83940ed94147d89273c412",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7202803eef306f101283a8eb6823c1cae7d8915f3b4ac42643bd0fbe52fcca95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e58b965ad60186d8b83940ed94147d89273c412`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7202803eef306f101283a8eb6823c1cae7d8915f3b4ac42643bd0fbe52fcca95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant7202803eef306f101283a8eb6823c1cae7d8915f3b4ac42643bd0fbe52fcca95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Derivative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.DoubleFactorial` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/hermite.md) | 56 | `declaration-track:4f586c6159c963ff0fa6d993797b5b5e54d535ce0fcf1ce08b985c63b4ef1613` |
| 2 | `theorem` | [hermite_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/hermite-succ.md) | 63 | `result-track:6a83e43b26a5f313e5cdfd07a534dfcba3c16dafa0b51eca14a6ccbc86f97419` |
| 3 | `theorem` | [hermite_eq_iterate](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/hermite-eq-iterate.md) | 67 | `result-track:699c0d2727b9cb7914bed41e1eefde7eafbb522d5f0f790a7f19aa0a3de32710` |
| 4 | `theorem` | [hermite_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/hermite-zero.md) | 74 | `result-track:10fae71cb06e72b173beacca5ed1b7ae2ae28f2141f36c54c0f43f0c633d35a4` |
| 5 | `theorem` | [hermite_one](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/hermite-one.md) | 80 | `result-track:769a97cf2a9226e20736ab5450f0a16301d58c47b886f2c4e22f677f267eb4b7` |
| 6 | `theorem` | [coeff_hermite_succ_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/coeff-hermite-succ-zero.md) | 90 | `result-track:38fe23addceb97c3feffbd3a4386e2ff2eddd11c9714b9d54b2282daf6add83f` |
| 7 | `theorem` | [coeff_hermite_succ_succ](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/coeff-hermite-succ-succ.md) | 94 | `result-track:6418f465d73c1ed69d2c400e846f9aa7a252889d5f4e58f3de0240537c04b82f` |
| 8 | `theorem` | [coeff_hermite_of_lt](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/coeff-hermite-of-lt.md) | 100 | `result-track:be23f69a1110afa10f7cd9205a731b68a0d0558b510d608753460a365b699c4a` |
| 9 | `theorem` | [coeff_hermite_self](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/coeff-hermite-self.md) | 111 | `result-track:cbad8a39378f422f272ef1130f3eb5271d8b9181c028b918567da68070266546` |
| 10 | `theorem` | [degree_hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/degree-hermite.md) | 119 | `result-track:d387088262613fb04d023a4fda1dcdad24fe25ad09796edb740d02c263d153cf` |
| 11 | `theorem` | [natDegree_hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/natdegree-hermite.md) | 128 | `result-track:c474fe08255f0716443abdaf73fac4fdd8576f10778dd157d4cc11ebf475c4c9` |
| 12 | `theorem` | [leadingCoeff_hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/leadingcoeff-hermite.md) | 133 | `result-track:a7836dd9314f30a86b1bcdc04b8888332bdf2fa5924a23102f79523645f38b67` |
| 13 | `theorem` | [hermite_monic](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/hermite-monic.md) | 137 | `result-track:e4caf353d126cd5a68a324d6415afb38de53bc941ff2cdae94e507cefc82f4d0` |
| 14 | `theorem` | [coeff_hermite_of_odd_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/coeff-hermite-of-odd-add.md) | 141 | `result-track:0871d8273c2ac4c69c9a90981d5106b35e0f15fa14659ee62e589ce2d0f452dd` |
| 15 | `theorem` | [coeff_hermite_explicit](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/coeff-hermite-explicit.md) | 161 | `result-track:d60ee47f4eb6ea3531a6738765c9aa93dc2f75436727efdcca24ba92b1b11cab` |
| 16 | `theorem` | [coeff_hermite_of_even_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/coeff-hermite-of-even-add.md) | 213 | `result-track:3b62c2b16bbd030f72babdd5dfaefb60585937d1ab7fde6a47b35fde3fdd371d` |
| 17 | `theorem` | [coeff_hermite](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/HermiteBasicNamespacedAligned.lean/declarations/coeff-hermite.md) | 224 | `result-track:be94cc4fae5dd3cd8e7d241aaf47c4ffc4a750fb564b3f01981d0cecc125b7ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cac94af8cbeec0895f86170ee01a1e5b88154a2eed8b2a2c454f3457714bd74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7202803eef306f101283a8eb6823c1cae7d8915f3b4ac42643bd0fbe52fcca95.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant7202803eef306f101283a8eb6823c1cae7d8915f3b4ac42643bd0fbe52fcca95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
