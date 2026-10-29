# Verification target: Products Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a30e90735d040f735b2f224aecbe2b720a165fe7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Products/Variantfdfa446a15103b8911b89497bc4a56b6568a6413c1c4c9db725a2864d82da01f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a30e90735d040f735b2f224aecbe2b720a165fe7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Products/Variantfdfa446a15103b8911b89497bc4a56b6568a6413c1c4c9db725a2864d82da01f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Products/Variantfdfa446a15103b8911b89497bc4a56b6568a6413c1c4c9db725a2864d82da01f.lean.json)

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
| 1 | `def` | [productCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/productcone.md) | 31 | `declaration-track:34a883667305e4de8d85674cbd32786a815d066129a1d1de30436457e6ab5d18` |
| 2 | `def` | [productConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/productconeislimit.md) | 36 | `declaration-track:ec7b34ac21abe369582e2e5ec361b54f5fd5467c4ed84d6d7c83cab2786fad48` |
| 3 | `def` | [piIsoPi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/piisopi.md) | 50 | `declaration-track:863bc2761eef0cf057f044b72601e1309e0cefc6f2510f4bd2e288127aa0e9f7` |
| 4 | `theorem` | [piIsoPi_inv_kernel_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/piisopi-inv-kernel.md) | 55 | `result-track:96bdf14a423f72c7b83b8a619b66d1ad1567b502436c4849175d63d59bf7f26b` |
| 5 | `theorem` | [piIsoPi_hom_ker_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/piisopi-hom-ker-subtype.md) | 60 | `result-track:e3137be793e9c9f04347f34971498e8bcb5b675c760ff48ac5bfa6f99f70b2a8` |
| 6 | `def` | [coproductCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/coproductcocone.md) | 73 | `declaration-track:83de0a58a09630d4cf8b0d0c09a093d45513485eb883668e1308268662ab9b6f` |
| 7 | `def` | [coproductCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/coproductcoconeiscolimit.md) | 78 | `declaration-track:8cf4e54143c8df446a40085d751512496d58833f5de8f2e76bbc27ba3f233005` |
| 8 | `def` | [coprodIsoDirectSum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/coprodisodirectsum.md) | 99 | `declaration-track:da710f52bac1dd84e788161c03b4dc724cf547afb1e8a7b5f95a8911c2ec8e86` |
| 9 | `theorem` | [ι_coprodIsoDirectSum_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/coprodisodirectsum-hom.md) | 103 | `result-track:364c84709bcace19604f00b20a97f753056e779782f1756bf39a13b91656cda0` |
| 10 | `theorem` | [lof_coprodIsoDirectSum_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ProductsPublic.lean/declarations/lof-coprodisodirectsum-inv.md) | 108 | `result-track:c16ecb3fe268d0aba2e6993de6adc786c8dcbedc2d8766815575e8ea0369631f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f19ea7697e3cc238e4fecf9a79da84e11b76e581dfc934beb52e3e451a6f926d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Products/Variantfdfa446a15103b8911b89497bc4a56b6568a6413c1c4c9db725a2864d82da01f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Products/Variantfdfa446a15103b8911b89497bc4a56b6568a6413c1c4c9db725a2864d82da01f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
