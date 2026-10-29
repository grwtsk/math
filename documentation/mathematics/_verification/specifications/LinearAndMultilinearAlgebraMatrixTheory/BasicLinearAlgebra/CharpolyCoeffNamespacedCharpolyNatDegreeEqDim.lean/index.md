# Verification target: Charpoly Coeff Namespaced Charpoly Nat Degree Eq Dim

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94bbe9b6a583bc5e8406ff6594ed66ef6f168d52",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc35c4ac3336ec0902566608616d708e41f7cf841ef327c7873bb7042fa6be0de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94bbe9b6a583bc5e8406ff6594ed66ef6f168d52`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc35c4ac3336ec0902566608616d708e41f7cf841ef327c7873bb7042fa6be0de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Coeff/Variantc35c4ac3336ec0902566608616d708e41f7cf841ef327c7873bb7042fa6be0de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Expand` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Laurent` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [charmatrix_apply_natDegree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/charmatrix-apply-natdegree.md) | 57 | `result-track:9f31d157153d5cc3e14a40d11a18bf0a1f269d823acbf661ac8644d3df183ccc` |
| 2 | `theorem` | [charmatrix_apply_natDegree_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/charmatrix-apply-natdegree-le.md) | 62 | `result-track:ddc104be5696ee739b33b71950f40885e214426d266bff017b74b791cefefce3` |
| 3 | `theorem` | [charpoly_sub_diagonal_degree_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/charpoly-sub-diagonal-degree-lt.md) | 71 | `result-track:8ae6cb83130e740e6ddd56136526154acb398beda21c8d3d20cdb1fb84e19115` |
| 4 | `theorem` | [charpoly_coeff_eq_prod_coeff_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/charpoly-coeff-eq-prod-coeff-of-le.md) | 92 | `result-track:ea1d5ef2b64e3ab91eaef5e53220181beade7dbd31ea73d8d649056f735e359e` |
| 5 | `theorem` | [det_of_card_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/det-of-card-zero.md) | 101 | `result-track:621ced4d44cb5ab8a9e86ef5293f9da760da8671e1634665b52655c2f4a11f93` |
| 6 | `theorem` | [charpoly_degree_eq_dim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/charpoly-degree-eq-dim.md) | 108 | `result-track:82923edaf2884eec3518a8e1eb43a20050e2b05776f7ce7bcfcaabe68c229801` |
| 7 | `theorem` | [charpoly_natDegree_eq_dim](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/charpoly-natdegree-eq-dim.md) | 135 | `result-track:434dd3a204c97fa406f3ba26e8e70ccf8b2b8ea056d24f6a226e39c387f33480` |
| 8 | `theorem` | [charpoly_monic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/charpoly-monic.md) | 140 | `result-track:9c0e22b9290c9f3140b57db9552fb9324035691210bc0c3eb7330768a8c3f6b5` |
| 9 | `theorem` | [trace_eq_neg_charpoly_coeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/trace-eq-neg-charpoly-coeff.md) | 162 | `result-track:19beca9bd5af573b5324ee4e063955aa42fcb126d16fd804e3395bf1894cab7b` |
| 10 | `theorem` | [matPolyEquiv_eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/matpolyequiv-eval.md) | 170 | `result-track:bbc1a660b8e9b9d6496b93c5b41149642bd34f58134b0bd4d1d3fe3e78338a2f` |
| 11 | `theorem` | [eval_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/eval-det.md) | 192 | `result-track:079f4b38166c726e3503cae81adb2ed254166e3514cd9aedfef59a495ec1853a` |
| 12 | `theorem` | [det_eq_sign_charpoly_coeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/det-eq-sign-charpoly-coeff.md) | 202 | `result-track:7c397b2d7f805e7ad492861f52139c92845e3d295c0691171e7b866d64cfe6fb` |
| 13 | `theorem` | [matPolyEquiv_eq_x_pow_sub_c](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/matpolyequiv-eq-x-pow-sub-c.md) | 212 | `result-track:26ed1dfc7ebc273eebc496e46037d3c52fe687082b34e143ff2ce8c528b386f1` |
| 14 | `theorem` | [aeval_eq_aeval_mod_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/aeval-eq-aeval-mod-charpoly.md) | 236 | `result-track:8dd521708293bff435338df5b18f566fee255f73adec8dfb6569d6965cad827c` |
| 15 | `theorem` | [pow_eq_aeval_mod_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/pow-eq-aeval-mod-charpoly.md) | 244 | `result-track:a7d6d6f33cb7e357fb7c4fcd916c60a5ce8a3c11607ef4f77bdb2f7ad2d3adfa` |
| 16 | `theorem` | [coeff_charpoly_mem_ideal_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/coeff-charpoly-mem-ideal-pow.md) | 252 | `result-track:4538946579230f341075273a6aa993d8739c7fff0ba5291d3c0fe6783165e5d4` |
| 17 | `lemma` | [Matrix.reverse_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CharpolyCoeffNamespacedCharpolyNatDegreeEqDim.lean/declarations/matrix-reverse-charpoly.md) | 283 | `result-track:61baf414805519473dcf86f88c562fc6cd677b833c9ad28b9d5bb7d31c9869a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f6438c0e6937e47bd8aead58ecfdbc843ee6a1f3d3fe9fd6de80e36704bd8ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Coeff/Variantc35c4ac3336ec0902566608616d708e41f7cf841ef327c7873bb7042fa6be0de.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Coeff/Variantc35c4ac3336ec0902566608616d708e41f7cf841ef327c7873bb7042fa6be0de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
