# Verification target: Positive Atlas Feshbach Reconstruction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd195c9c2f1c6513b141863c3e670b02614c4729",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variant143ae462cba5ca569bf00432001e2f57bfe3ba4a92fea9a58f3803a00020d43a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachReconstructionNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachReconstructionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd195c9c2f1c6513b141863c3e670b02614c4729`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variant143ae462cba5ca569bf00432001e2f57bfe3ba4a92fea9a58f3803a00020d43a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variant143ae462cba5ca569bf00432001e2f57bfe3ba4a92fea9a58f3803a00020d43a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachReconstruction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachReconstructionNamespaced.lean/declarations/two.md) | 23 | `declaration-track:b919f2d9ae9a7b0b11adb47b9a040a1472b02efdf0079794f702b87af41eeaf5` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachReconstructionNamespaced.lean/declarations/instance.md) | 25 | `declaration-track:e1bc64187f3323a555a06d9804219961576f91596f198b6b7c0eb935e7fc5c6f` |
| 3 | `theorem` | [inverse_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachReconstructionNamespaced.lean/declarations/inverse-two.md) | 36 | `result-track:c31bf375c4d448fedf730dc7df8e076cb0f0bf376c989df3db04691b4be9e752` |
| 4 | `theorem` | [nonzero_cross_lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachReconstructionNamespaced.lean/declarations/nonzero-cross-lift.md) | 39 | `result-track:610db2bc221e5e61c14ab38d83e92282c8dc057a9240650d90dcfda109ec78f4` |
| 5 | `theorem` | [nonzero_cross_kernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachReconstructionNamespaced.lean/declarations/nonzero-cross-kernel.md) | 43 | `result-track:cfd39d3b4dd668ac172d2ba9987fe1d61b6f57add25e5a171f0320d862df273d` |
| 6 | `theorem` | [nonzero_cross_schur](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachReconstructionNamespaced.lean/declarations/nonzero-cross-schur.md) | 48 | `result-track:50f2089541b023b890945c4a951de24be35b3b54c6f5e8786bda82c91aedc871` |
| 7 | `theorem` | [nonzero_cross_projection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveAtlasFeshbachReconstructionNamespaced.lean/declarations/nonzero-cross-projection.md) | 53 | `result-track:33f7ceeea36f413d4e832ab9b5419e7349425c121a574362de49e4f7dcfc3012` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dd4322e1a6fc3d24cb05d6d4de78715248967641bd232c8bdf0a879fcd0ef76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variant143ae462cba5ca569bf00432001e2f57bfe3ba4a92fea9a58f3803a00020d43a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PositiveAtlasFeshbachReconstruction/Variant143ae462cba5ca569bf00432001e2f57bfe3ba4a92fea9a58f3803a00020d43a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
