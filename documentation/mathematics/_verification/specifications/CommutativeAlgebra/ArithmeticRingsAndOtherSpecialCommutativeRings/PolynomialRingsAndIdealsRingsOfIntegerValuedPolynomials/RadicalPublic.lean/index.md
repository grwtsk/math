# Verification target: Radical Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "918360db45e5f3c1677f6290183749ec02c4650d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Radical/Variant76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `918360db45e5f3c1677f6290183749ec02c4650d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Radical/Variant76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Radical/Variant76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48.lean.json)

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
| 1 | `theorem` | [degree_radical_le](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalPublic.lean/declarations/degree-radical-le.md) | 26 | `result-track:933c7c2ad613ba92d072d79baa590436bfe63e656feff2f6eab23784f64c0f2c` |
| 2 | `theorem` | [natDegree_radical_le](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalPublic.lean/declarations/natdegree-radical-le.md) | 29 | `result-track:3d57b5a4ba940989e953d536766ce6b34ef8c93b464fef771c7acd5d963d2ee8` |
| 3 | `theorem` | [divRadical_dvd_derivative](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalPublic.lean/declarations/divradical-dvd-derivative.md) | 35 | `result-track:583ae83fcd9995d3c2cdb8564c2f42da428a85f231e4f9aa81d2e044ff870e93` |
| 4 | `theorem` | [divRadical_dvd_wronskian_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalPublic.lean/declarations/divradical-dvd-wronskian-left.md) | 62 | `result-track:4f2a91bfcdde31c6c486597e2f008d5c8074fb4b0d4d5147c8d463cc21881fc1` |
| 5 | `theorem` | [divRadical_dvd_wronskian_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalPublic.lean/declarations/divradical-dvd-wronskian-right.md) | 70 | `result-track:1640d399f62482b51be9ee179ede648a9371e9215e66358fc4b965bac85c64e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e5a333d55685d5d3532ea25bb6a2adc710d8d8abcbe4a5df7d1da6c4f81de75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Radical/Variant76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Radical/Variant76455627f284c4564ab17443eca0f94018989fc774ee2901a7feb6c1da46ec48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
