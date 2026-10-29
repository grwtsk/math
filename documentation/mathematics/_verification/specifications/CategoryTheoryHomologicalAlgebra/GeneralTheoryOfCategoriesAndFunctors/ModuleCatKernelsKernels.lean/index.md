# Verification target: Module Cat Kernels Kernels

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ce14781f0a8984859c0747da4174b2d3c75e5c5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variant91cf3c517bd4d835fa9880fca8241cb789582ff775369bcf0f1335ec1b4e8866.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ce14781f0a8984859c0747da4174b2d3c75e5c5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Kernels/Variant91cf3c517bd4d835fa9880fca8241cb789582ff775369bcf0f1335ec1b4e8866.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Kernels/Variant91cf3c517bd4d835fa9880fca8241cb789582ff775369bcf0f1335ec1b4e8866.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/kernelcone.md) | 27 | `declaration-track:4e111258869cb949173823bfe1aa7405ad9654f5f95cd0bcfe87cb0ae3e681ba` |
| 2 | `def` | [kernelIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/kernelislimit.md) | 31 | `declaration-track:e451565f7543edff06dba40e2f5c3cd995094bdde1bde22b6a9bf088ce97d4dd` |
| 3 | `def` | [cokernelCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/cokernelcocone.md) | 45 | `declaration-track:ba4f2ad78e832b53b37a371cd29ef467677ec4d766deed32b9b35afa0cb7850b` |
| 4 | `def` | [cokernelIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/cokerneliscolimit.md) | 49 | `declaration-track:80950b2ef9443c0bf3b778f677e58c090d6fc15627b48bdae5bcf7c809014551` |
| 5 | `theorem` | [hasKernels_moduleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/haskernels-modulecat.md) | 64 | `result-track:b4526c856a37bf03053fd217a83a11925272e60fd08d3efe8de37e74a1e35189` |
| 6 | `theorem` | [hasCokernels_moduleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/hascokernels-modulecat.md) | 68 | `result-track:ed47554631c82452fd6708c2b3ad881d3e35be67f593e6106f50764a8eaf4d9a` |
| 7 | `def` | [kernelIsoKer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/kernelisoker.md) | 82 | `declaration-track:224ecb3736250f4fda9842ca92d3f2f7e7752de9cd3e711b380877c73ced132b` |
| 8 | `theorem` | [kernelIsoKer_inv_kernel_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/kernelisoker-inv-kernel.md) | 90 | `result-track:e777812bc96ccd1f092a258bcdb749371c61db04ccad53d5c370c71f610ef647` |
| 9 | `theorem` | [kernelIsoKer_hom_ker_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/kernelisoker-hom-ker-subtype.md) | 95 | `result-track:b0302f9bf2c06036ffc6bfa1113911d9b0216e807ffd85444009245da2574061` |
| 10 | `def` | [cokernelIsoRangeQuotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/cokernelisorangequotient.md) | 103 | `declaration-track:6f38e70520fd807bb847641b45d1a823ddace68302b480b0a1522e6a659d75b5` |
| 11 | `theorem` | [cokernel_π_cokernelIsoRangeQuotient_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/cokernel-cokernelisorangequotient-hom.md) | 110 | `result-track:363ee8d10a6995521fc4e297b8b7bbeb7c122fd1ed876c43b7b12c9dc4c99cf1` |
| 12 | `theorem` | [range_mkQ_cokernelIsoRangeQuotient_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/range-mkq-cokernelisorangequotient-inv.md) | 115 | `result-track:ecaf5bd5199cecf388fdf83beb5d23d5fa34e96bb8f96b3ef84456f31c19c4ad` |
| 13 | `theorem` | [cokernel_π_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatKernelsKernels.lean/declarations/cokernel-ext.md) | 119 | `result-track:b2032f8bfdfd29140e4d9a5f2ea0128a3a39c69fbe4d14834d68c67b2e57fffd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=643c17db39bcec33bce71b934440b20ff884188c530b3b1ed1baac1d4b54ba9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Kernels/Variant91cf3c517bd4d835fa9880fca8241cb789582ff775369bcf0f1335ec1b4e8866.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Kernels/Variant91cf3c517bd4d835fa9880fca8241cb789582ff775369bcf0f1335ec1b4e8866.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
