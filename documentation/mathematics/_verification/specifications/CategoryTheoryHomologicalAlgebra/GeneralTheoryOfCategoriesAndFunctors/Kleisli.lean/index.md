# Verification target: Kleisli

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "187663f0dbea37a033437301f57961bfdfabd422",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variantf273a5a27540b244b6acb71dcd069f2e20db8b8f60317dcd2286dda91944c04f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `187663f0dbea37a033437301f57961bfdfabd422`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variantf273a5a27540b244b6acb71dcd069f2e20db8b8f60317dcd2286dda91944c04f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variantf273a5a27540b244b6acb71dcd069f2e20db8b8f60317dcd2286dda91944c04f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Kleisli](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/kleisli.md) | 32 | `declaration-track:fb3a8eaad4d26b95fd31dfcd42936d778e3eaf42f45e97bc0931f636b3482572` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/instance.md) | 39 | `declaration-track:0f5ff2974d1e3d33e0a04375e037046a60615e9c482a08ca27c54bfa39abb4be` |
| 3 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/category.md) | 44 | `declaration-track:50ad2a9b8139c9c7fc6bb8b8c3758ac8acb98ea8b9f8efd36740df1b8c27d0f9` |
| 4 | `def` | [toKleisli](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/tokleisli.md) | 58 | `declaration-track:0b627a66defd3b8ad71dc6355d42a47f385f0aad5cd911a501a0598d31af3dcf` |
| 5 | `def` | [fromKleisli](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/fromkleisli.md) | 68 | `declaration-track:7a3f2372c4ce8dd5d67c0dcf20e0ee1a8e82bb82f23bd3508d79d50dea1b2aff` |
| 6 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/adj-source-edition-2.md) | 81 | `declaration-track:d30346231ebd00df2ae52738352413f5a691d30d1a616204f61c28bb6b33a114` |
| 7 | `def` | [toKleisliCompFromKleisliIsoSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/tokleislicompfromkleisliisoself.md) | 92 | `declaration-track:053d936a11761dc632975f214693391c6b2b5128c014cab3524b21c984621116` |
| 8 | `def` | [Cokleisli](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/cokleisli.md) | 103 | `declaration-track:93a1ce03810d1db1006ea746a0144d700ca7123b854a9fa5cb5376423f469171` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/instance-source-edition-2.md) | 110 | `declaration-track:a0fa7aaa44ee5550d7fb195edf67ffa7e07ffcd81c9d04c367b5fd46d15c605f` |
| 10 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/category-source-edition-2.md) | 114 | `declaration-track:bdb700bfdca8c333ebc1df773c2b3f1e5d42760d2e30338f51937505f78068b6` |
| 11 | `def` | [toCokleisli](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/tocokleisli.md) | 123 | `declaration-track:8091a8dbd5fbf1fa0817377cba7e7b2e7e6cc16b41e39fc472e10c46872b3c7c` |
| 12 | `def` | [fromCokleisli](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/fromcokleisli.md) | 133 | `declaration-track:93cbb9a122e38e4cbb72395fe1df1df5bb2ca0d54032eda26e14a87c9dc04784` |
| 13 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/adj.md) | 146 | `declaration-track:a37b303f6b0563714819557392197c9992595dc19f0e9638151b01690dfbfd01` |
| 14 | `def` | [toCokleisliCompFromCokleisliIsoSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Kleisli.lean/declarations/tocokleislicompfromcokleisliisoself.md) | 156 | `declaration-track:91c2d1c5cf9c953a706c8984baabb045070748cf864323a336684e254826473b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68c9aebbf3e78c634df5f8222269d17ecbeeb5c7568f12568a95504c976ec4bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variantf273a5a27540b244b6acb71dcd069f2e20db8b8f60317dcd2286dda91944c04f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Kleisli/Variantf273a5a27540b244b6acb71dcd069f2e20db8b8f60317dcd2286dda91944c04f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
