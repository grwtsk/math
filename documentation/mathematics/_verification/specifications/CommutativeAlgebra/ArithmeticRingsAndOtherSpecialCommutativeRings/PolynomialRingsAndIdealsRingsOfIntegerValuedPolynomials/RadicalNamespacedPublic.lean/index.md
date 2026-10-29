# Verification target: Radical Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "576ed7175c256ab3d9d7749837ca563e255279a6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Radical/Variantbdac78157021c41304f0a51e3a4da930f9fac2ebe0a0053753db9a35d229b5cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalNamespacedPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `576ed7175c256ab3d9d7749837ca563e255279a6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Radical/Variantbdac78157021c41304f0a51e3a4da930f9fac2ebe0a0053753db9a35d229b5cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Radical/Variantbdac78157021c41304f0a51e3a4da930f9fac2ebe0a0053753db9a35d229b5cc.lean.json)

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
| 1 | `theorem` | [degree_radical_le](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalNamespacedPublic.lean/declarations/degree-radical-le.md) | 34 | `result-track:25cba5e9b0855b03600abe110f2bb92f45d27bec74f254e052a2aaeae9ee5152` |
| 2 | `theorem` | [natDegree_radical_le](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalNamespacedPublic.lean/declarations/natdegree-radical-le.md) | 37 | `result-track:d1daad12c81ee5f8a3ffcd878f2f66ff8fdd207a6f62a0051725c1e9327d594d` |
| 3 | `theorem` | [divRadical_dvd_derivative](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalNamespacedPublic.lean/declarations/divradical-dvd-derivative.md) | 43 | `result-track:5308fe35b1895f4d3d7617de090ea70b2cfda5df1aee05654481502f8bccb4a3` |
| 4 | `theorem` | [divRadical_dvd_wronskian_left](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalNamespacedPublic.lean/declarations/divradical-dvd-wronskian-left.md) | 70 | `result-track:c002dde6dc42e9e7bddd7dae5281c3bfc2ffaa11435a7b78168e95e995d27742` |
| 5 | `theorem` | [divRadical_dvd_wronskian_right](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/RadicalNamespacedPublic.lean/declarations/divradical-dvd-wronskian-right.md) | 78 | `result-track:faff65e9457f42235e83b0e3c751a773a37005fc91225738186650e4c0ee810a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04ff38ccf28d45c82430986ee3052e40c244721d69d87eb2d3eb6982aaa2411e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Radical/Variantbdac78157021c41304f0a51e3a4da930f9fac2ebe0a0053753db9a35d229b5cc.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Radical/Variantbdac78157021c41304f0a51e3a4da930f9fac2ebe0a0053753db9a35d229b5cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
