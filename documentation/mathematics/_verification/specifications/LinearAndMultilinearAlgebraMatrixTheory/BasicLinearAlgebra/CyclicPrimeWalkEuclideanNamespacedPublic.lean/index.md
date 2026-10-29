# Verification target: Cyclic Prime Walk Euclidean Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee7924ad44e7118788480b2cbb10d71642141361",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Varianteaf02b938dad5374a6cf5dff399e8ae2a9ade2cb17d00345bbe7a2355e83bfa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee7924ad44e7118788480b2cbb10d71642141361`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Varianteaf02b938dad5374a6cf5dff399e8ae2a9ade2cb17d00345bbe7a2355e83bfa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Varianteaf02b938dad5374a6cf5dff399e8ae2a9ade2cb17d00345bbe7a2355e83bfa1.lean.json)

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
| 1 | `abbrev` | [StandardEuclidean](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/standardeuclidean.md) | 46 | `declaration-track:6a907c5c3fccdca408cf251235382f6ea851ea5e98b828d2fdc6d8c581bd1a6a` |
| 2 | `abbrev` | [FiberEuclidean](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/fibereuclidean.md) | 50 | `declaration-track:c3752202346ccff60d44d9278048ef335ab97deb6d09a281098cce29bd06d0b5` |
| 3 | `def` | [euclideanCoordinateSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/euclideancoordinatesum.md) | 54 | `declaration-track:aefb4a3fec2a99c8d04561fd892cc03bbe37d6fd2c8c4c8d813cbfcd09295efe` |
| 4 | `def` | [euclideanZeroSumSubspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/euclideanzerosumsubspace.md) | 63 | `declaration-track:01c6d50fb00b407d6f73b84521d7a9a3d89f279dc620ded2adce806c581e3cb6` |
| 5 | `def` | [sqrtTwo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/sqrttwo.md) | 68 | `declaration-track:a1bba155277a6c9d682e8d7c2242612a1cb74ca05d3ea6ebf69595de750f0182` |
| 6 | `def` | [sqrtSix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/sqrtsix.md) | 71 | `declaration-track:05de744947dfda7fc2740045244be598b9f80a24ae54fdd19dcd9c6139776dae` |
| 7 | `theorem` | [sqrtTwo_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/sqrttwo-sq.md) | 74 | `result-track:a0cebfb5e20cd46f27bd8c7c44028ae5f33b4e506489e0a0fea5ca899bfd98fa` |
| 8 | `theorem` | [sqrtSix_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/sqrtsix-sq.md) | 78 | `result-track:8693402e06788b0ae40ab822ccc10b49cf3695daf0ab4cf035fc665353ef1478` |
| 9 | `theorem` | [sqrtTwo_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/sqrttwo-ne-zero.md) | 82 | `result-track:97c1aec7498a08eac1ddbb71b0939702c92c6fce60a861c744567c53ce3156cd` |
| 10 | `theorem` | [sqrtSix_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/sqrtsix-ne-zero.md) | 89 | `result-track:36b0a050618f92ee7a30308086995416d52421d66b8187b4eee0b7032ed18802` |
| 11 | `def` | [normalizedBasisZeroVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/normalizedbasiszerovector.md) | 97 | `declaration-track:030236c635c7febbbe92d615750489bd1981a232e7b0702d2bedf44598040a59` |
| 12 | `def` | [normalizedBasisOneVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/normalizedbasisonevector.md) | 102 | `declaration-track:838a510201a130cd9aedfb360de3efe91345dc4e03d420cc0bf3ed43cd37c10b` |
| 13 | `theorem` | [normalizedBasisZero_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/normalizedbasiszero-mem.md) | 106 | `result-track:c08deef605a33406c9a0eecf29262a0e1449fe629cc9799d569e24f193b12456` |
| 14 | `theorem` | [normalizedBasisOne_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/normalizedbasisone-mem.md) | 113 | `result-track:280fd5012c74b514c329b68a9abf915fcba926051e3ec96191ee1c4837d3538f` |
| 15 | `def` | [normalizedStandardBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/normalizedstandardbasis.md) | 122 | `declaration-track:5f97cb72afd86601aa2dd0395d121ff3568c72417a07ab93863d6ec0826416a9` |
| 16 | `theorem` | [normalizedStandardBasis_orthonormal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/normalizedstandardbasis-orthonormal.md) | 129 | `result-track:28831ebcf19b4b92b93946c50df82da2cf374c5e1f8ef72f82b194c19ae275b8` |
| 17 | `theorem` | [normalizedStandardBasis_coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/normalizedstandardbasis-coordinates.md) | 162 | `result-track:f4419385c1b33b1b54e820a0eefb7988922424d67d5de215a1c4b93596cd819b` |
| 18 | `theorem` | [normalizedStandardBasis_spans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/normalizedstandardbasis-spans.md) | 180 | `result-track:e0357408afeb48c4215c1e62212365ca91daf971532a19b38bbc86e60fc57629` |
| 19 | `def` | [euclideanZeroSumOrthonormalBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/euclideanzerosumorthonormalbasis.md) | 194 | `declaration-track:de76aad5b12fa5a0c72d6b48ea4f969f619857cd133d6408acb7c4e6e403ee5d` |
| 20 | `def` | [standardPlaneIsometryEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/standardplaneisometryequiv.md) | 203 | `declaration-track:b1a2ec154806660a35894c7b2c9484309aa2235e8cfccc17a541af791ed6b472` |
| 21 | `theorem` | [standardPlaneIsometryEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/standardplaneisometryequiv-apply.md) | 210 | `result-track:5d597e71436a71f414de232e4e7945efca15b92a5aebad3758270c195401d71b` |
| 22 | `theorem` | [standardPlaneIsometryEquiv_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/standardplaneisometryequiv-norm.md) | 219 | `result-track:8ac7c2d53d792e757f13db6e321f64e54d28635b0de08cdb7af0f3ba99e6dabb` |
| 23 | `theorem` | [standardPlaneIsometryEquiv_basis_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/standardplaneisometryequiv-basis-zero.md) | 224 | `result-track:8d9b88d7bf9f2e6d4dd41dc3297e41623e04eedb6ed9ead757f209a59c43d261` |
| 24 | `theorem` | [standardPlaneIsometryEquiv_basis_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/standardplaneisometryequiv-basis-one.md) | 230 | `result-track:6b9835b8bb1975b7280b8001319f8ff9b9fea0fb1a058334b4b22a941a7c7bfe` |
| 25 | `def` | [standardMatrixOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/standardmatrixoperator.md) | 238 | `declaration-track:3f99ea7d4b0b5797a9d33c9e14f1c60a2b932fbf931d8bff5564ed79619e061d` |
| 26 | `def` | [generatorDifferenceOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/generatordifferenceoperator.md) | 245 | `declaration-track:6ed43fdf4c20bf3aaeb6341efb622af72bdf02c268bbdba649ef22cb3c0dfaf0` |
| 27 | `def` | [discrepancyOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/discrepancyoperator.md) | 252 | `declaration-track:2cfb92dcc682a324e88048485a8dab3ea8d37bd5b559e7276414dd78d35c528d` |
| 28 | `theorem` | [standardMatrixOperator_toLp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/standardmatrixoperator-tolp.md) | 259 | `result-track:b9f7f419bde16d5f3e86b4806f83af2017c1cd2052eb7ebaa734d688824266aa` |
| 29 | `theorem` | [generatorDifference_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/generatordifference-conjtranspose.md) | 265 | `result-track:1d5790ca922fd5fc0e69a29f2a7c5672a4cc625656b9ef10e8f84734a45898d2` |
| 30 | `theorem` | [generatorDifference_l2_opNorm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/generatordifference-l2-opnorm.md) | 276 | `result-track:028e81569170fced2865e0fc068443973e94f0c163cd8084456eed95207b4f61` |
| 31 | `theorem` | [generatorDifferenceOperator_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/generatordifferenceoperator-norm.md) | 300 | `result-track:877126bb225d8753916c058cdaf9756d4214e9fa8a09a02457dacde7ac571a1c` |
| 32 | `theorem` | [discrepancy_l2_opNorm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/discrepancy-l2-opnorm.md) | 309 | `result-track:900812927d4a502c352330caafbe7b115405b216bbe699b2dec2a23a175a4d06` |
| 33 | `theorem` | [discrepancyOperator_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/discrepancyoperator-norm.md) | 319 | `result-track:97ed7324ca56d2291dcca93ca8e7825fa97ec9caeaa70c2a6e98bd750bc19cfd` |
| 34 | `theorem` | [idealTransition_l2_opNorm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/idealtransition-l2-opnorm.md) | 328 | `result-track:1930adf89c8ae0ed8f1f0afae0dee35c402edc196e54d95c65b7070ee4f3d50d` |
| 35 | `theorem` | [idealTransitionOperator_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkEuclideanNamespacedPublic.lean/declarations/idealtransitionoperator-norm.md) | 351 | `result-track:cef64414e247a55eb643d3afcf6a5fffc7447e218f208a853558e0fd0f2ff36b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a251d3bcd8f84e183036ea5b0c8333d4919fb19e2ac98fd5bf1dc20419a4ebef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Varianteaf02b938dad5374a6cf5dff399e8ae2a9ade2cb17d00345bbe7a2355e83bfa1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CyclicPrimeWalkEuclidean/Varianteaf02b938dad5374a6cf5dff399e8ae2a9ade2cb17d00345bbe7a2355e83bfa1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
