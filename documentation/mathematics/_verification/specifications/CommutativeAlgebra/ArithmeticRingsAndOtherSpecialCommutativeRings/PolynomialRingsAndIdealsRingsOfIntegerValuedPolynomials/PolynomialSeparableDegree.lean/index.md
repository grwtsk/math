# Verification target: Polynomial Separable Degree

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81fbec78209a9cf519f440c544ea752081600f76",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variantb960ad8de3885caf027acfec3eedaab2d15aead1a1f6ca7465163c33056d25d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81fbec78209a9cf519f440c544ea752081600f76`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variantb960ad8de3885caf027acfec3eedaab2d15aead1a1f6ca7465163c33056d25d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SeparableDegree/Variantb960ad8de3885caf027acfec3eedaab2d15aead1a1f6ca7465163c33056d25d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparableContraction](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/isseparablecontraction.md) | 48 | `declaration-track:5fc27aad4df83f0e64d84b66381aed51b33b3d118c252dd8180e7e5a207201cd` |
| 2 | `def` | [HasSeparableContraction](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/hasseparablecontraction.md) | 52 | `declaration-track:771bf1ab5718d58713eb508f5606a725306230c2df0df98f919bd1927e7ff3d6` |
| 3 | `def` | [HasSeparableContraction.contraction](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/hasseparablecontraction-contraction.md) | 58 | `declaration-track:520195c678d9e9fbbd15049534bbb5acfc8fed1587f655293bbf0d633a136029` |
| 4 | `def` | [HasSeparableContraction.degree](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/hasseparablecontraction-degree.md) | 62 | `declaration-track:ebb36ad3bc3bf1fef85e3377d830cf5fa03cdee5630c8b17b563f4d247f905ce` |
| 5 | `theorem` | [HasSeparableContraction.isSeparableContraction](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/hasseparablecontraction-isseparablecontraction.md) | 66 | `result-track:8203e8db7b60163bb541be9f6445ec950023bc3edc4a7bfb4ed4b2e082a7690c` |
| 6 | `theorem` | [IsSeparableContraction.dvd_degree'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/isseparablecontraction-dvd-degree.md) | 70 | `result-track:0287c980bae87f9113af446c64d469eec6749a0ed93b9529eefe9ac4b1057625` |
| 7 | `theorem` | [HasSeparableContraction.dvd_degree'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/hasseparablecontraction-dvd-degree-source-edition-2.md) | 76 | `result-track:c97bedd08932c54446ed6b66489961f2afb5278d669fde62769bf90f7dcaf71a` |
| 8 | `theorem` | [HasSeparableContraction.dvd_degree](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/hasseparablecontraction-dvd-degree.md) | 80 | `result-track:b9585411748ac7c418907d3ad33c28ea8936e46aa1eb3eb816f92b6ab8f55eae` |
| 9 | `theorem` | [HasSeparableContraction.eq_degree](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/hasseparablecontraction-eq-degree.md) | 85 | `result-track:a3c2315bd4d9221d9c123ced92419c38e0ba47d617790fc31c11b497b17a9089` |
| 10 | `theorem` | [_root_.Irreducible.hasSeparableContraction](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/root-irreducible-hasseparablecontraction.md) | 99 | `result-track:3718e3e2ad2eb85a83d986c4e0b31af79f0c1cef63131d622360bc64968bae81` |
| 11 | `theorem` | [contraction_degree_eq_or_insep](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/contraction-degree-eq-or-insep.md) | 108 | `result-track:9f109f6c59b871a1b343222bcd83c04a9c78691cadad353ef3c83304e9abde79` |
| 12 | `theorem` | [IsSeparableContraction.degree_eq](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/PolynomialSeparableDegree.lean/declarations/isseparablecontraction-degree-eq.md) | 121 | `result-track:0ff2e0cdedd5a2847126727deabb01ef774c8df69d0d4a1606a6225b49f21378` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04d19f34eb9d05244972fe63b8b4745a30f880d5f70caf43b4eaff68b8bb7e06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variantb960ad8de3885caf027acfec3eedaab2d15aead1a1f6ca7465163c33056d25d2.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SeparableDegree/Variantb960ad8de3885caf027acfec3eedaab2d15aead1a1f6ca7465163c33056d25d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
