# Verification target: Quadratic Form Tensor Product Namespaced Polar Bilin Tmul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "def39526e0dbf46b5ee5617a0745c1880989009a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1d7333eea9c27984ff72928ad20c4704ce12cd2ea7f33922706a449b8d0b94a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `def39526e0dbf46b5ee5617a0745c1880989009a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1d7333eea9c27984ff72928ad20c4704ce12cd2ea7f33922706a449b8d0b94a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Variant1d7333eea9c27984ff72928ad20c4704ce12cd2ea7f33922706a449b8d0b94a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/tensordistrib.md) | 52 | `declaration-track:401f60d9ba674b41cec2bb9df6e54f1f54ecc15c96702bf91d8cc35e6cb12be5` |
| 2 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/tensordistrib-tmul-source-edition-2.md) | 65 | `result-track:4a40e0dd92b693819824cf22e1c9511fa351e507ad162884a0fb032c0018d6f1` |
| 3 | `abbrev` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/tmul-source-edition-2.md) | 73 | `declaration-track:ffd74a0e09242295b9a67e85a558e2bcfe6c5a29eeb2b10dc27fabd388526a15` |
| 4 | `theorem` | [associated_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/associated-tmul.md) | 77 | `result-track:8523f72a0d2affb80686dbaa394e0255659088f95f823f1e76fa8988161cb106` |
| 5 | `def` | [tensorDistrib](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/tensordistrib-source-edition-2.md) | 96 | `declaration-track:4e6cb534be1c4ef1043c79a7fea1192c14ffe767f21253250df944036055c7ab` |
| 6 | `theorem` | [tensorDistrib_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/tensordistrib-tmul.md) | 103 | `result-track:117b6a0fad5870a81f876b90f25d320a51c8d252713e4a27adffccee54f5e94d` |
| 7 | `abbrev` | [tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/tmul.md) | 111 | `declaration-track:cf612527615d4224cfe7a3c4a2229f3a3688fdd2c840f02527a39a26b52cd051` |
| 8 | `theorem` | [associated_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/associated-tmul-source-edition-2.md) | 115 | `result-track:d37d2c00a067cf77cc88dff9fea464606d11cc30812286e1879a2b706ef27611` |
| 9 | `theorem` | [polarBilin_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/polarbilin-tmul.md) | 121 | `result-track:2d168a6b11344fbd9d6bb50fa1556d4c7f89e52f4665daca61ee40884fdb315c` |
| 10 | `def` | [baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/basechange.md) | 131 | `declaration-track:7c19d6a7ac70e80a537813f9be4a6232b65f79347fa7b2c4f8974b8ce6027578` |
| 11 | `theorem` | [baseChange_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/basechange-tmul.md) | 135 | `result-track:32a197fbfb44a9b7d1ff1e6ff9bb06a1290fd588d54a3847396cde1387deb1b8` |
| 12 | `theorem` | [associated_baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/associated-basechange.md) | 139 | `result-track:d24e218850c10919104dc89df4419a36fd2d2076fc9e6ae03e0cd5feb5072739` |
| 13 | `theorem` | [polarBilin_baseChange](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/polarbilin-basechange.md) | 145 | `result-track:e28a721e2a00315a43b02d587035098d5fb4b3f413c076ab0ff68c59d4642a02` |
| 14 | `theorem` | [baseChange_ext](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormTensorProductNamespacedPolarBilinTmul.lean/declarations/basechange-ext.md) | 161 | `result-track:865915a607a36597e2b07564d4ee912441734b9cc74a95f46592de9fcb00ca32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38b4fe8df129cad966deeebaa5e5bfc0ba821e90844844c6a75411d09f88e769 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant1d7333eea9c27984ff72928ad20c4704ce12cd2ea7f33922706a449b8d0b94a6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Variant1d7333eea9c27984ff72928ad20c4704ce12cd2ea7f33922706a449b8d0b94a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
