# Verification target: Opposites

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13eab19e5f3ce9134b9e5398a21dd0d70ec6da60",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Opposites/Variantf160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13eab19e5f3ce9134b9e5398a21dd0d70ec6da60`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Opposites/Variantf160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Opposites/Variantf160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Degree.Support` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opRingEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/opringequiv.md) | 27 | `declaration-track:b786600ab939417f399a420ef525829a93a15c7fb6850e6a602ac7b0101b9a19` |
| 2 | `theorem` | [opRingEquiv_op_monomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/opringequiv-op-monomial.md) | 35 | `result-track:7f99c38647134971d77770a13f8de00b981cdb662ad3e8a767586009cf5f5b68` |
| 3 | `theorem` | [opRingEquiv_op_C](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/opringequiv-op-c.md) | 42 | `result-track:f5ecb5583ae38eeacc0d30f3c973e1e7ff01a8fb4693d013ca16cb39f886d399` |
| 4 | `theorem` | [opRingEquiv_op_X](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/opringequiv-op-x.md) | 46 | `result-track:632bb006fd790b2cbb85498998113c90a6874d4991cc5f2b7e4b100668ed8647` |
| 5 | `theorem` | [opRingEquiv_op_C_mul_X_pow](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/opringequiv-op-c-mul-x-pow.md) | 49 | `result-track:2a526037e290efda6e18db4a7f96e8fb5560991fd13e6c9df4042466ad10bf49` |
| 6 | `theorem` | [opRingEquiv_symm_monomial](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/opringequiv-symm-monomial.md) | 58 | `result-track:5305d07ad3a9a2270191777d883acd79174ebc617a1694913df0f0ce1799e79f` |
| 7 | `theorem` | [opRingEquiv_symm_C](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/opringequiv-symm-c.md) | 63 | `result-track:5e4f65c03898a0c85c6d0b961feb4384956e4f9467de124882b787219cc97d51` |
| 8 | `theorem` | [opRingEquiv_symm_X](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/opringequiv-symm-x.md) | 67 | `result-track:d13188e729b3dcbaabb753b683cf00f505ebc5fb5354aa6bcf98a8494c0b67cc` |
| 9 | `theorem` | [opRingEquiv_symm_C_mul_X_pow](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/opringequiv-symm-c-mul-x-pow.md) | 70 | `result-track:5fa35258ea41a5ab516b508280d2c0ede6b798651381fc4ae4002e1869a23780` |
| 10 | `theorem` | [coeff_opRingEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/coeff-opringequiv.md) | 78 | `result-track:f604d0a0a54c6dc1dcdd759f4b79d56c71f887a7da3aae56dca46dabb8591ae9` |
| 11 | `theorem` | [support_opRingEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/support-opringequiv.md) | 85 | `result-track:40716e449d61af2730d5872aac5f061ef1c46941d53d2c77dac6597dd9cd8207` |
| 12 | `theorem` | [natDegree_opRingEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/natdegree-opringequiv.md) | 91 | `result-track:6fea801bb99c75a730f1e7909b2f569e816d1b23c35a5c290ebe83bb1481fce8` |
| 13 | `theorem` | [leadingCoeff_opRingEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/Opposites.lean/declarations/leadingcoeff-opringequiv.md) | 98 | `result-track:aa8c02f97eca9e7ebe96629ccd340a0d9928e8c1bc4b72784d2d4130788ad576` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be562521281bf10c780f117ccb1b042f78dc4f8ae0d69649453a0f2ba3a31514 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Opposites/Variantf160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Opposites/Variantf160fd0e3de96f7e97da7d97112e77c20c672aa3134bcf3fce6621248994c27b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
