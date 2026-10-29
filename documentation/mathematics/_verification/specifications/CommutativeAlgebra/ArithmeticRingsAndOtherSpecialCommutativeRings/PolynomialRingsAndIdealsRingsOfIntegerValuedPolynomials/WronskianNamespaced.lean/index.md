# Verification target: Wronskian Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d398ed1fc25716cf2171236797b58d49c8852d69",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Wronskian/Variant70eb207ba6c6b9242b6af6c69f5544d44e12829d710a50f650e5626c2c52fb79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d398ed1fc25716cf2171236797b58d49c8852d69`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Wronskian/Variant70eb207ba6c6b9242b6af6c69f5544d44e12829d710a50f650e5626c2c52fb79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Wronskian/Variant70eb207ba6c6b9242b6af6c69f5544d44e12829d710a50f650e5626c2c52fb79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Derivative` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.SesquilinearForm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wronskian](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian.md) | 47 | `declaration-track:2c8f3bf16bc577c14d063a4c3445aa3f7a58b0a08f18c3184b897de013f10a22` |
| 2 | `def` | [wronskianBilin](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskianbilin.md) | 52 | `declaration-track:ad12fd384d056e7a4d9bf79bd6c2e70b748a1c57f0488b6994045d61d3bd155f` |
| 3 | `theorem` | [wronskianBilin_apply](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskianbilin-apply.md) | 56 | `result-track:0d53fa0d99e6a85710622d89e177bdd05a86b758bcfbb2cb2b9713846b9b8131` |
| 4 | `theorem` | [wronskian_zero_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-zero-left.md) | 59 | `result-track:527f344fad4b50b98c95ee09e62a3118bc4985f0e10fded6c99aefb07a839933` |
| 5 | `theorem` | [wronskian_zero_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-zero-right.md) | 63 | `result-track:4588e760789804bb129a4dcaff9f69d0ae1329df6858c625ab95bc5b6d069e39` |
| 6 | `theorem` | [wronskian_neg_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-neg-left.md) | 65 | `result-track:0805c4fe8f1161c14eefe2f44151b5fcb5663c522b7f42fac99318c05c44f077` |
| 7 | `theorem` | [wronskian_neg_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-neg-right.md) | 68 | `result-track:2b172393200b69b34d74286511c4ef2d6fbf2393a1300b96f486c4b17183cc9b` |
| 8 | `theorem` | [wronskian_add_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-add-right.md) | 71 | `result-track:99ca69d5b0b01dda736995fa14be91eef7b2b17aff16272b978c6d0ce6b9d76f` |
| 9 | `theorem` | [wronskian_add_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-add-left.md) | 74 | `result-track:6e64e64bc5eaf46a750c6bf010206b53a34f5bfb558bf2c59a41ec8ab8c571cf` |
| 10 | `theorem` | [wronskian_self_eq_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-self-eq-zero.md) | 77 | `result-track:7eca9f8a1198abb1536debcd3d35d64fe2a3b42cc1b2bd4090279e1a7f7e4885` |
| 11 | `theorem` | [isAlt_wronskianBilin](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/isalt-wronskianbilin.md) | 80 | `result-track:e4c885adc8e89370888c73ecd975c0de87c6370d161b6258c2ae853d6043d8d3` |
| 12 | `theorem` | [wronskian_neg_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-neg-eq.md) | 82 | `result-track:b23ef9e10b9979a9d61ec37c3265b406050ebb40e69c927101686e8757a4a7c6` |
| 13 | `theorem` | [wronskian_eq_of_sum_zero](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-eq-of-sum-zero.md) | 85 | `result-track:d4dd7458efc8d890088eb32d47a09d6b60bde4739fdfa9910f232f2c7d18bcaa` |
| 14 | `theorem` | [degree_wronskian_lt_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/degree-wronskian-lt-add.md) | 89 | `result-track:d10f1b02eb892543f8c355f654ae7345e41b9c52a72133c5dc3ae44a9c8264d4` |
| 15 | `theorem` | [natDegree_wronskian_lt_add](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/natdegree-wronskian-lt-add.md) | 115 | `result-track:dd5309f7e408487f09f8e1cebb6a297bd94df7a296c41013f8e23638b93f612c` |
| 16 | `theorem` | [Wronskian Namespaced](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/WronskianNamespaced.lean/declarations/wronskian-eq-zero-iff.md) | 129 | `result-track:ee09890551679ff85bd8c426a3c81d2dceaebd1d8f621f248845963914fe5cc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df26ba47e4c16f91a867fc25345b93f41badbca6617fe71dd74654617982fb65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Wronskian/Variant70eb207ba6c6b9242b6af6c69f5544d44e12829d710a50f650e5626c2c52fb79.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Wronskian/Variant70eb207ba6c6b9242b6af6c69f5544d44e12829d710a50f650e5626c2c52fb79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
