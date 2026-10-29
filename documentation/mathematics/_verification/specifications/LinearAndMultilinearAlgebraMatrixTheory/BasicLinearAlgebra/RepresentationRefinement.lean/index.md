# Verification target: Representation Refinement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13cd76990a5819f4c963ec6e1b8b96e97b35f2f4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RepresentationRefinement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RepresentationRefinement.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RepresentationRefinement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13cd76990a5819f4c963ec6e1b8b96e97b35f2f4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RepresentationRefinement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RepresentationRefinement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 20; external provider; requires a separately pinned dependency.
- [Pointwise Specifications](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PointwiseSpecifications.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Refines](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RepresentationRefinement.lean/declarations/refines.md) | 63 | `declaration-track:72f84b2b1292a5cc48269e8f9012a0fe5550124085a2d86880acfc278e2be667` |
| 2 | `theorem` | [refines_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RepresentationRefinement.lean/declarations/refines-tomatrix.md) | 75 | `result-track:195e0ab0826d233ad156c465bd243505f3720e6abfb0a20797cb296fbc4e9017` |
| 3 | `theorem` | [mapInPlace_refines](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RepresentationRefinement.lean/declarations/mapinplace-refines.md) | 83 | `result-track:9133e0ed77f4a213b8922deb8d2ac42bf38b9b915a00a8d61864545e78b92bc5` |
| 4 | `theorem` | [zipWithInPlace_refines](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RepresentationRefinement.lean/declarations/zipwithinplace-refines.md) | 97 | `result-track:0bcf5485fe0c24b84295c9e3644b33c717b73d6a9f26044398d61e9985bc1cb1` |
| 5 | `theorem` | [andInPlace_refines](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RepresentationRefinement.lean/declarations/andinplace-refines.md) | 109 | `result-track:791fa38de83d0194d9d00e6030383b617dd89d59cb011cdf9b18bf2e955ddf86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d03ee48fcbc8555194d3faff0376bea4d03a04cf4c501f087c913b1abe6b1c37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RepresentationRefinement.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant41f0242ace5e0ac7/RepresentationRefinement.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
