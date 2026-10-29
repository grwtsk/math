# Verification target: Products Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "821c6e647a6bb798078e2aafa1ae2b22c10475e8",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Products/Variant0c7249f78bbdad582b372b2b3b5b3397d2d800f57beafdbb965a83e2f9924084.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `821c6e647a6bb798078e2aafa1ae2b22c10475e8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Products/Variant0c7249f78bbdad582b372b2b3b5b3397d2d800f57beafdbb965a83e2f9924084.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Products/Variant0c7249f78bbdad582b372b2b3b5b3397d2d800f57beafdbb965a83e2f9924084.lean.json)

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
| 1 | `def` | [productCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/productcone.md) | 39 | `declaration-track:576704effa1c1af84000037bd0f6f822b3f38010cd58f113fde8681daea0dff9` |
| 2 | `def` | [productConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/productconeislimit.md) | 44 | `declaration-track:4826f6fdd9879c53b94e8efaef60a6a78fb45272b7843228636b2842034bbcae` |
| 3 | `def` | [piIsoPi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/piisopi.md) | 58 | `declaration-track:67224e33c6a1189922cd0aa1a07db62f4aa4ec9796b85980ca3a36e6ce7fe1e4` |
| 4 | `theorem` | [piIsoPi_inv_kernel_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/piisopi-inv-kernel.md) | 63 | `result-track:1c3da972cab601b52e45fb697b3c1b27828c748d1ea8e3bedc771992d853cd52` |
| 5 | `theorem` | [piIsoPi_hom_ker_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/piisopi-hom-ker-subtype.md) | 68 | `result-track:cf877b59ab42f479aad5fec8ed5a84b2a12da88aa7e066a12859f49e281074a6` |
| 6 | `def` | [coproductCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/coproductcocone.md) | 81 | `declaration-track:164095733ac2c607d82243c4503865fe07713817f508a973718794da6910a9db` |
| 7 | `def` | [coproductCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/coproductcoconeiscolimit.md) | 86 | `declaration-track:fa765fc70dd8c5bb8d0b0d83d554dd83f8797db1a44dcfd78dc964e9cc5bf77e` |
| 8 | `def` | [coprodIsoDirectSum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/coprodisodirectsum.md) | 107 | `declaration-track:6dafe182ac2ff4dbfab50047df50862a167ffd5a02afcd3c44ad43ade5db39e7` |
| 9 | `theorem` | [ι_coprodIsoDirectSum_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/coprodisodirectsum-hom.md) | 111 | `result-track:60f2ab83fcfc4a77d855e6d39c18963499b8902d4f29c3e58be134f460ab11b2` |
| 10 | `theorem` | [lof_coprodIsoDirectSum_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsNamespacedPublic.lean/declarations/lof-coprodisodirectsum-inv.md) | 116 | `result-track:964e65a8c9a21e3a74f701aeec56f1172d02a373e8e33c3fb903097c57ebb3e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f73de099171d386c92182297ab3a3ba3bb8fe7e96038fe7a3a1dbf9edd4d252b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Products/Variant0c7249f78bbdad582b372b2b3b5b3397d2d800f57beafdbb965a83e2f9924084.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Products/Variant0c7249f78bbdad582b372b2b3b5b3397d2d800f57beafdbb965a83e2f9924084.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
