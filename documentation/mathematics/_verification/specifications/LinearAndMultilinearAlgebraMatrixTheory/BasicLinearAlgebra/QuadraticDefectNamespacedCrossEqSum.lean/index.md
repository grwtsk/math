# Verification target: Quadratic Defect Namespaced Cross Eq Sum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b2e709ce6a313129fd94632849ce3a2222af227",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantc79a4a007a0624d8d0e191a9f647c559039bc8353c85b221a9af621820ff599d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b2e709ce6a313129fd94632849ce3a2222af227`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantc79a4a007a0624d8d0e191a9f647c559039bc8353c85b221a9af621820ff599d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantc79a4a007a0624d8d0e191a9f647c559039bc8353c85b221a9af621820ff599d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MaximalDefect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [value](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/value.md) | 32 | `declaration-track:d835aea659f592b7c4f6ab3e376bdbfa974ec61d9d3aa6be0f5af97de5f7f4d7` |
| 2 | `def` | [cross](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/cross.md) | 36 | `declaration-track:f37010686dbddef83b0ae0c9ed805c20218fc312b7d0efabee75dece70a78b49` |
| 3 | `theorem` | [cross_eq_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/cross-eq-sum.md) | 40 | `result-track:0800e1fc506deaa5a0a3c9d12cda0449269f38ca61c0e8f7c7fab42096ecdd56` |
| 4 | `theorem` | [value_eq_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/value-eq-sum.md) | 47 | `result-track:556ab259de76a1152f8dc34f51a791d8bb1ec57399f9534af87aaa7db116e179` |
| 5 | `theorem` | [cross_singletons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/cross-singletons.md) | 54 | `result-track:41fed12d6c07d5e264eeae9b5407e00579d738503afaaed8511268e038ab3d5a` |
| 6 | `theorem` | [union_inter_defect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/union-inter-defect.md) | 60 | `result-track:474536f6cc1d08c268fc3ad5fda59bc0ef0220157a99181ac3d2e3a31748516e` |
| 7 | `theorem` | [real_entry_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/real-entry-symm.md) | 75 | `result-track:0d99267959fb25e77ce21564f8bc364c810425df4a2bd6872d1804bd3805f450` |
| 8 | `theorem` | [cross_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/cross-symm.md) | 81 | `result-track:b0119d87234ca7643a6cd58e356d1f4b8f0812451529815187c06439cb4a75e0` |
| 9 | `theorem` | [hermitian_union_inter_defect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/hermitian-union-inter-defect.md) | 93 | `result-track:7a60f1e653ef76b4ec28e4c3dd8191d17516090c038e6f108079318ab9bad4a5` |
| 10 | `theorem` | [supermodular_iff_cross_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/supermodular-iff-cross-nonneg.md) | 101 | `result-track:0dacb3c51f07c1b88b2f234e6aded50305c988254a017fed45c9b25202264075` |
| 11 | `theorem` | [not_supermodular_of_negative_cross](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/not-supermodular-of-negative-cross.md) | 117 | `result-track:2628639f1984f38e8c256a799606f165d3ef6683ebcdce4b01fa94dc15d31401` |
| 12 | `theorem` | [not_supermodular_of_negative_entry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticDefectNamespacedCrossEqSum.lean/declarations/not-supermodular-of-negative-entry.md) | 125 | `result-track:eea307d227313ad4605a6dd3297e03fb4e2822c19dcbe1b0ab7fc5688213c525` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4d5ebf076f0eac8ec054bef2c83fc8237b81b523ae5d7340b0a43cb1e9de7f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantc79a4a007a0624d8d0e191a9f647c559039bc8353c85b221a9af621820ff599d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/QuadraticDefect/Variantc79a4a007a0624d8d0e191a9f647c559039bc8353c85b221a9af621820ff599d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
