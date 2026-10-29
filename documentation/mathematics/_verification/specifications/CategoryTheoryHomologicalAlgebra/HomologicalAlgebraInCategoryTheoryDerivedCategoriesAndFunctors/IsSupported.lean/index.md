# Verification target: Is Supported

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f6885443ab1dba5fcf7aa2f69fa7eaf1f82b41d",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f6885443ab1dba5fcf7aa2f69fa7eaf1f82b41d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsStrictlySupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/isstrictlysupported.md) | 40 | `declaration-track:3437288e7851e9457aa0d6b59cc534c8b3758fb76cfecd689ac866239942c2ed` |
| 2 | `lemma` | [isZero_X_of_isStrictlySupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/iszero-x-of-isstrictlysupported.md) | 43 | `result-track:b2a25c70470b09fbfaaa581ca73919f08421d31f02957d2b3fe9efaf3b6d43b8` |
| 3 | `lemma` | [isStrictlySupported_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/isstrictlysupported-of-iso.md) | 50 | `result-track:da6323d211beb4a84f402bbbb0246391707675842ff5512034e78ce6bcf35438` |
| 4 | `lemma` | [isStrictlySupported_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/isstrictlysupported-op-iff.md) | 55 | `result-track:9b22f8d485c36ef57d400f5c9d0fa3b66d5ea2989182022e4ad954a38ab5275b` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/instance-source-edition-3.md) | 60 | `declaration-track:ac2994577e65c2b898bc3444acb6d82c3619d9be8b79b39de9552c8aec5399da` |
| 6 | `class` | [IsSupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/issupported.md) | 68 | `declaration-track:ac6fc40e8fc37f48ffdeb320a2d53d457bb68a2185360886dd04f15939de1249` |
| 7 | `lemma` | [exactAt_of_isSupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/exactat-of-issupported.md) | 71 | `result-track:55636d59afcc12de396d332a8fdd3f59a9ccf8b2e248343260557045b8419a32` |
| 8 | `lemma` | [isSupported_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/issupported-of-iso.md) | 77 | `result-track:91fd79003e378f93738a743531b6b95ac31f2edc5f97c3722e4a767feb99c4e2` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/instance-source-edition-2.md) | 81 | `declaration-track:1a146c2bd2458dc7edf4f4d4e1286a2e9cd4c7df26148e8522a0b9146bd81772` |
| 10 | `lemma` | [isSupported_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/issupported-op-iff.md) | 87 | `result-track:a1eaa32084451613eb12ae994d12f7c48f2ff62b6c46d69be6adb0de50eb95a0` |
| 11 | `structure` | [IsStrictlySupportedOutside](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/isstrictlysupportedoutside.md) | 94 | `declaration-track:a09a594060070dc3b42503be1b6c6ae4fbe37380d5000180b59b2954713146f2` |
| 12 | `lemma` | [isStrictlySupportedOutside_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/isstrictlysupportedoutside-op-iff.md) | 98 | `result-track:2a87585ceedb82e8586f3d1cc5c81b8e13638d346cb280430baee23ab06a8f90` |
| 13 | `structure` | [IsSupportedOutside](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/issupportedoutside.md) | 104 | `declaration-track:0a5683322d5f3e105b3973b04ef55aa5ef091d2f23419bd3399f703cfe33ecaa` |
| 14 | `lemma` | [isSupportedOutside_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/issupportedoutside-op-iff.md) | 108 | `result-track:0ccadbcc0efbd6a1db80643700408cd8a4eda116fba354d77b774e8d59b5729b` |
| 15 | `lemma` | [IsStrictlySupportedOutside.isSupportedOutside](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/isstrictlysupportedoutside-issupportedoutside.md) | 113 | `result-track:3861ba9a20b9c39f8b9a577038987ce8dcf88ab1aa9f2055e179673120ea0114` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/instance.md) | 119 | `declaration-track:1957f1e5c738c17510c76ee4373298124408c7882afd0d14f00c499951d090e1` |
| 17 | `lemma` | [isZero_iff_isStrictlySupported_and_isStrictlySupportedOutside](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/iszero-iff-isstrictlysupported-and-isstrictlysupportedoutside.md) | 122 | `result-track:ad130a67d7408806660d4e4705071b1911634c55028c086f74fed6202c8d9953` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/instance-source-edition-4.md) | 140 | `declaration-track:b7bff72cdc91f5f608e351c02ec522f9eaa6355ee789e64fd1057972b4298f90` |
| 19 | `instance` | [map_isStrictlySupported](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/IsSupported.lean/declarations/map-isstrictlysupported.md) | 150 | `declaration-track:e0cc11fc6684d4a972d6dcceb8086030a3f93b7fbfdad7fe3744f9069db1178d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d75c1d3085174ac88ae35c7f0f34602c6421c85f16d5fa733cb51fe4de3a5b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/IsSupported/Variantd9ecbacae09fe94dda31739170db595eeb6cc8b51bc5c16d942f60a9f3dbf64f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
