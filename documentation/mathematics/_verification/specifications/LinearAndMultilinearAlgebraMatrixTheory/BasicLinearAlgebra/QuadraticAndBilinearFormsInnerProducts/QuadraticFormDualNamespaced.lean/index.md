# Verification target: Quadratic Form Dual Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb9ab0ca8ee90cbc118ba2715d60fa34669597c0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb9ab0ca8ee90cbc118ba2715d60fa34669597c0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dualProd](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/declarations/dualprod.md) | 44 | `declaration-track:09eef4b53f12fe4bf80850c5136506353b82ca795cdc3d1d6ffb4ef70e9fd200` |
| 2 | `theorem` | [isSymm_dualProd](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/declarations/issymm-dualprod.md) | 48 | `result-track:c162f3f70f429c5ce7fd2943f3f8535237d1f58b6f23459bb622ffa530edbcd6` |
| 3 | `theorem` | [separatingLeft_dualProd](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/declarations/separatingleft-dualprod.md) | 56 | `result-track:50c136b582d41bbc0780330e950efc594e43ec7016efc5655775dbf8c62bd172` |
| 4 | `def` | [dualProd](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/declarations/dualprod-source-edition-2.md) | 92 | `declaration-track:e300e2d7c5f56c7f26fa27ff40af08058fcc983e49445c45bb3f808ae7440631` |
| 5 | `theorem` | [Quadratic Form Dual Namespaced](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/declarations/toquadraticform.md) | 104 | `result-track:7c2f294ae4f444c66b70e4449389a8d8f994ac05168df55b846dd3d3036db4e7` |
| 6 | `def` | [dualProdIsometry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/declarations/dualprodisometry.md) | 112 | `declaration-track:e1149b7f5c4e2641dbd5f947ba18f80a905f0af26c06c9d5808de420b279e213` |
| 7 | `def` | [dualProdProdIsometry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/declarations/dualprodprodisometry.md) | 118 | `declaration-track:9b5065c791b72572ee046a70c5fd7421ec3e4bbc115ab99b3014870c3e93cfad` |
| 8 | `def` | [toDualProd](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormDualNamespaced.lean/declarations/todualprod.md) | 139 | `declaration-track:6ca6e850994201d11e68b6b6c972c86b1ecbc3fe2b10c0a67b3b297b003c1d83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f5731b6f75afba0fe3e89a7880d9ab7d691e6538162d14fa754111fa67aa761 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Dual/Variant554dc909cff220151555c1cd96c941642ac91a61716beba848ead4948a033551.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
