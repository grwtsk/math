# Verification target: Bilinear Form Tensor Product

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71fd73cfcb637ee5ce0edd4bb4ae6439f3f82587",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1e34617e92d8250ccdc1dca43c736851f02e36fe1d913a04e1a0a109e2785188.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71fd73cfcb637ee5ce0edd4bb4ae6439f3f82587`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1e34617e92d8250ccdc1dca43c736851f02e36fe1d913a04e1a0a109e2785188.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant1e34617e92d8250ccdc1dca43c736851f02e36fe1d913a04e1a0a109e2785188.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/tensordistrib.md) | 45 | `declaration-track:6b5de14e084fe64de39f368487d5e4f9f8942fd6c2576a1167368fa3cce88c52` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/tensordistrib-tmul.md) | 58 | `result-track:b22dd696912f6026523bc37671402bf3d899172a56777f6ea4ffe0967b8307fc` |
| 3 | `def` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/tmul.md) | 67 | `declaration-track:5b893b8e02783bbcf78dc030b6e615636a88b8ceaba9f17bc7d7787e66644b13` |
| 4 | `lemma` | [IsSymm.tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/issymm-tmul.md) | 73 | `result-track:05b4134a50528787a65c051e2aa9d1eeec6f7f0c523f87ff07b0c539df5f9ef2` |
| 5 | `def` | [baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/basechange.md) | 82 | `declaration-track:993c8591089ea3d8c44ee35a26fb47deae0b8c07c72d86e2142dc9b4713e40aa` |
| 6 | `theorem` | [baseChange_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/basechange-tmul.md) | 86 | `result-track:a9eac8764f0eb96310650f5cc09c3b1bf8d370f822ce9dff486c73858650d2cd` |
| 7 | `lemma` | [IsSymm.baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/issymm-basechange.md) | 93 | `result-track:0775d5ad9ba815f3cff539404ab723d6d6799076383574bf2192aa43a38e8acd` |
| 8 | `def` | [tensorDistribEquiv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/tensordistribequiv.md) | 114 | `declaration-track:77aa09bb88483b3a8bd4150a6a1dc365d1305afecbf62d4f53eae823320fa775` |
| 9 | `theorem` | [tensorDistribEquiv_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/tensordistribequiv-tmul.md) | 127 | `result-track:33bedbe0e75180d4f87dd9735e67510ce593a005e03e64b01b0cb6879e92263d` |
| 10 | `theorem` | [tensorDistribEquiv_toLinearMap](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/tensordistribequiv-tolinearmap.md) | 136 | `result-track:c542d2612403a1857618d41d0aff8d5cd8fc7301621dc259f180b1f658a00003` |
| 11 | `theorem` | [tensorDistribEquiv_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/BilinearFormTensorProduct.lean/declarations/tensordistribequiv-apply.md) | 144 | `result-track:f455d93715fd2fa882da8ddabbaa593ee83fe1679dc5b788daa0901c3fba8dc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e17ab4df05afa0f080216526e6d68006ea06fa5fe1d7cb0fc9b124ff2853ca05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1e34617e92d8250ccdc1dca43c736851f02e36fe1d913a04e1a0a109e2785188.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variant1e34617e92d8250ccdc1dca43c736851f02e36fe1d913a04e1a0a109e2785188.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
