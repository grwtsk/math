# Verification target: Feature Map Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48e48946daeece75a1d660625d1d71129d10175a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FeatureMap/Variante000d82ce2919c9997eeffd5a93d43223a62a18af23ca983c167d166da84c21d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48e48946daeece75a1d660625d1d71129d10175a`.

Source path: `GRWTSK/Analysis/FeatureMap/Variante000d82ce2919c9997eeffd5a93d43223a62a18af23ca983c167d166da84c21d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FeatureMap/Variante000d82ce2919c9997eeffd5a93d43223a62a18af23ca983c167d166da84c21d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Hilbert.Completion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/declarations/kernelvector.md) | 31 | `declaration-track:92e016e478b088b08bac218def259196d99496a8cec6dc741d0580f42f1528db` |
| 2 | `def` | [rawToKernelSpace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/declarations/rawtokernelspace.md) | 38 | `declaration-track:131eddb6c4d1c478502e592e53ae77613255114df003537e5b6b2a4f01a5aac9` |
| 3 | `theorem` | [rawToKernelSpace_basisVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/declarations/rawtokernelspace-basisvector.md) | 43 | `result-track:a2f91b4ccee61fe9fa060cc2e4eee42d012e7df9c12676305dedc79e25eb9de8` |
| 4 | `theorem` | [inner_rawToKernelSpace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/declarations/inner-rawtokernelspace.md) | 50 | `result-track:dc232b75cfb69f19ad18ed1a8be6a3570a802d3ddff91dd1be951555e299f312` |
| 5 | `theorem` | [inner_kernelVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/declarations/inner-kernelvector.md) | 61 | `result-track:c9d97107d72a1a9ba4648c8f7e764ed142c342267317001dab576e9f08280839` |
| 6 | `theorem` | [norm_kernelVector_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/declarations/norm-kernelvector-sq.md) | 70 | `result-track:5d604924bab1d02c697169bd0bf92543e41021c9f1d45248e44f1e93e5807048` |
| 7 | `def` | [kernelSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/declarations/kernelspan.md) | 77 | `declaration-track:c1ab74a253228908cdbfe4eb2cda290e987491b69c1b410636fbe9ade71fcad4` |
| 8 | `theorem` | [rawToKernelSpace_mem_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/declarations/rawtokernelspace-mem-span.md) | 81 | `result-track:6c9e6fd6fd963b693f3894a08d7f8c57790d9969b86533ab7628bf89f4dab549` |
| 9 | `theorem` | [kernelVector_denseSpan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureMapNamespacedEdition1.lean/declarations/kernelvector-densespan.md) | 105 | `result-track:ea0553356f5278e25ce0424c9771ef0924bec8db76ad2c6df03076a9bcf98304` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0b8884464b6922f11c9cc379fc898882474225236eef2c2b30181c3bb28d356 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FeatureMap/Variante000d82ce2919c9997eeffd5a93d43223a62a18af23ca983c167d166da84c21d.lean","GRWTSK/_verification/specifications/Analysis/FeatureMap/Variante000d82ce2919c9997eeffd5a93d43223a62a18af23ca983c167d166da84c21d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
