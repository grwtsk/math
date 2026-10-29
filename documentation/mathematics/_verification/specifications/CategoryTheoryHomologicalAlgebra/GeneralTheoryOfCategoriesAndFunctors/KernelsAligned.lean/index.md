# Verification target: Kernels Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f55088b26bd6ed7585e68afd59da2b35a321581",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variant8c7e74880f119e106a8c3d95144fcda59033f715772b730238f37127b4368103.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f55088b26bd6ed7585e68afd59da2b35a321581`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Kernels/Variant8c7e74880f119e106a8c3d95144fcda59033f715772b730238f37127b4368103.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Kernels/Variant8c7e74880f119e106a8c3d95144fcda59033f715772b730238f37127b4368103.lean.json)

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
| 1 | `def` | [kernelCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/kernelcone.md) | 30 | `declaration-track:c03471e76b0e6d2aa068d51ef14f18df98e01208ff12e2c6c41faceb39284e45` |
| 2 | `def` | [kernelIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/kernelislimit.md) | 36 | `declaration-track:d2ed4bfd1d435485de24692f56b1ed1a049e79460cfb96dcca07053c0a137d2c` |
| 3 | `def` | [cokernelCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/cokernelcocone.md) | 50 | `declaration-track:3a49528303c604f81a9a80428d8689aa21eaadaa10aa380260c89dbea0cd0230` |
| 4 | `def` | [cokernelIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/cokerneliscolimit.md) | 55 | `declaration-track:da887cd20a9dd46073e5ea88308bbef1a46bca5e6673d07e4b0b6ce9bc2a1764` |
| 5 | `theorem` | [hasKernels_moduleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/haskernels-modulecat.md) | 73 | `result-track:02cdb7c54f37153517b92c83de0807ef55c8e7460101acbdbcd5da87a7739524` |
| 6 | `theorem` | [hasCokernels_moduleCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/hascokernels-modulecat.md) | 78 | `result-track:87a6110b586c69b26f217485031d0d7a66f6b6803c7e87c0661c118e2298871e` |
| 7 | `def` | [kernelIsoKer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/kernelisoker.md) | 93 | `declaration-track:bb1b478aec4b72b04d2cecf172b62eb438e23d4d1c180ca5067edb365d8a1c68` |
| 8 | `theorem` | [kernelIsoKer_inv_kernel_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/kernelisoker-inv-kernel.md) | 102 | `result-track:e72d02055aefab7e69935e8d46f0ac74ddc84807ea13c53706bb64daa9b44150` |
| 9 | `theorem` | [kernelIsoKer_hom_ker_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/kernelisoker-hom-ker-subtype.md) | 108 | `result-track:175c80efa735c47d947b20818e5c53b61399ef27dc7eb2446d32590fe4f1889c` |
| 10 | `def` | [cokernelIsoRangeQuotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/cokernelisorangequotient.md) | 117 | `declaration-track:4297d913ad4cc3823b7a58f93fb4a7aeac3e3dd046f2a48afd04d0b9c9c39436` |
| 11 | `theorem` | [cokernel_π_cokernelIsoRangeQuotient_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/cokernel-cokernelisorangequotient-hom.md) | 125 | `result-track:540c90e41bd9f838bae3ea2d6d0f2dedcf8de586f29f4ed4ad7cf25fb1967e25` |
| 12 | `theorem` | [range_mkQ_cokernelIsoRangeQuotient_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/range-mkq-cokernelisorangequotient-inv.md) | 132 | `result-track:e99b79a9d491a800e7d962086b1b834b4ce20cc673cd2d019dd1876030f69126` |
| 13 | `theorem` | [cokernel_π_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/KernelsAligned.lean/declarations/cokernel-ext.md) | 137 | `result-track:bc0a7b76d6706b2bb056ec1895db148a73d36e3476dbc5b1776ab418e73fcd8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83667dab87c4fc8aa51a2527a56756ee2e4ef42e159c3f503b75056e64278124 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Kernels/Variant8c7e74880f119e106a8c3d95144fcda59033f715772b730238f37127b4368103.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Kernels/Variant8c7e74880f119e106a8c3d95144fcda59033f715772b730238f37127b4368103.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
