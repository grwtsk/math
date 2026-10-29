# Verification target: Functor Category Shapes Kernels Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fcbbfad82daf1e4b8fa8122825f1544ed232543",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryShapesKernelsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryShapesKernelsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fcbbfad82daf1e4b8fa8122825f1544ed232543`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kerIsKernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryShapesKernelsPublic.lean/declarations/keriskernel.md) | 21 | `declaration-track:e6cd0ebc06a8d266f9f759d47a15be54928a58e5321f3bec9c5c41fa4fcac61e` |
| 2 | `def` | [cokerIsCokernel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryShapesKernelsPublic.lean/declarations/cokeriscokernel.md) | 27 | `declaration-track:c33d3174c4dad16a5bfccda6ecee2cff24e8645f35cb5d504a6a129fb950a502` |
| 3 | `lemma` | [hasKernel_of_hasKernel_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryShapesKernelsPublic.lean/declarations/haskernel-of-haskernel-app.md) | 34 | `result-track:992dcc5b6cd854fa27722c4f600e4aaa68846efaf763b6e9da1725807155e2d8` |
| 4 | `lemma` | [hasCokernel_of_hasCokernel_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryShapesKernelsPublic.lean/declarations/hascokernel-of-hascokernel-app.md) | 40 | `result-track:644fb443b107c6b00ae706933e2860422693031f16f6d5f6c3fd90f58de90829` |
| 5 | `lemma` | [evaluation_preservesLimit_of_hasKernel_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryShapesKernelsPublic.lean/declarations/evaluation-preserveslimit-of-haskernel-app.md) | 46 | `result-track:4cd62f5e529e5130e04a928083a730cbc1e61182d22df7590058c8b778661606` |
| 6 | `lemma` | [evaluation_preservesColimit_of_hasCokernel_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FunctorCategoryShapesKernelsPublic.lean/declarations/evaluation-preservescolimit-of-hascokernel-app.md) | 56 | `result-track:1fd4405c2f01c154283b7448fc64687a53d3d6b1ba22fd7c352847592f551638` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cbc86db40b69341ba6435647fca29bc68bd6ae40cfd7a7e866a3fb35c2929ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant902a16f25cbf3caee920bfcc8f2bfe1b27244584844c0d16a1afd320982b584f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
