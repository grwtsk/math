# Verification target: Triangulated Functor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf51ae4fe7ed4c486653a298be21989e62b5f267",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf51ae4fe7ed4c486653a298be21989e62b5f267`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Triangulated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ComposableArrows` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.CommShift` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/maptriangle.md) | 37 | `declaration-track:71e46359ed5b925d3043105cffc373e129502fc2bc4755163c4091a17356d67b` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/instance-source-edition-8.md) | 51 | `declaration-track:e4899eb5ff02674238418c5c3d7730153ae9971ef91d7807c522f9bb09f5b188` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:3f1bbc94a0aed9927c077c3eb501d9a5b6c5be67b78d5301fb9cf485273dc004` |
| 4 | `def` | [mapTriangleCommShiftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/maptrianglecommshiftiso.md) | 77 | `declaration-track:e2304d73af0c77fc7c4afb4d81722012b63367752a8a18f1e7e9c23723e5a4e6` |
| 5 | `theorem` | [mapTriangleCommShiftIso_add](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/maptrianglecommshiftiso-add.md) | 96 | `result-track:e3c2f9923c1d643b758494d2953e9337dd7d37140e49f0d49bfd9d9cf6843f4f` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/instance-source-edition-6.md) | 104 | `declaration-track:7c44dfc4a058fc5678e2c98e80d17a2e1b93d26434ef9311d8b19164d5cc8cc0` |
| 7 | `def` | [mapTriangleRotateIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/maptrianglerotateiso.md) | 111 | `declaration-track:71c327ce81893568dc944dc65a0c6084f2e93d7763850d411585299c4c9a0250` |
| 8 | `def` | [mapTriangleInvRotateIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/maptriangleinvrotateiso.md) | 121 | `declaration-track:acf28561042a811d6a19b715c84fab2433fb04f3c3673d0c872c4202895e61b0` |
| 9 | `def` | [mapTriangleIdIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/maptriangleidiso.md) | 132 | `declaration-track:56f077f94b6cd4e3fe9b024e19d18556a0f767e739a25a26b134a5592fb2327d` |
| 10 | `def` | [mapTriangleCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/maptrianglecompiso.md) | 137 | `declaration-track:5cd7447517fb3036c63dbda68013301003bec2240830cb886ee992932633d498` |
| 11 | `def` | [mapTriangleIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/maptriangleiso.md) | 144 | `declaration-track:a99171b0db62530ead196f6fe8d594858047841115b489598683532bcc4eb7bb` |
| 12 | `class` | [IsTriangulated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/istriangulated.md) | 162 | `declaration-track:74ba7fe1df925edd8bfb5e03fe7d71b9d1ed2a6a15b2e1b7e248f8a82ee72c0d` |
| 13 | `lemma` | [map_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/map-distinguished.md) | 165 | `result-track:a7027542cded9de9df46b1cd6d623a67635d760d41bfbf57adc6bccb90fb1cb1` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/instance-source-edition-4.md) | 173 | `declaration-track:4c4328b9a28247501819a73939d23331065fc32e4ef1027be5b451e76878c01f` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/instance.md) | 184 | `declaration-track:0fe0f493a0115a601eda7eae8f89ee54431160667e76e904e5c23de8769bb02e` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/instance-source-edition-3.md) | 210 | `declaration-track:4384f522d09f4eebf8428d639778b301fcf80cdef0fe058df6475db6cefd97e2` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/instance-source-edition-7.md) | 213 | `declaration-track:7ea39c564f5cbeb123c1818b16f12f597d68270c719d6900f57c5b5d2c24bd66` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/instance-source-edition-5.md) | 217 | `declaration-track:7a104a2fbcffa42e150494f85a1b04895946e1f6afa8467a49178e19bd78c318` |
| 19 | `lemma` | [isTriangulated_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/istriangulated-of-iso.md) | 224 | `result-track:47efb869abade9d33831d97d5e7d2c31c1a4da931862c71be6f473b427bb185d` |
| 20 | `lemma` | [isTriangulated_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/istriangulated-iff-of-iso.md) | 229 | `result-track:b9b0af991291bccf243f7eb31a018fa6076f6470b221b3d8232371a0f06a8838` |
| 21 | `lemma` | [mem_mapTriangle_essImage_of_distinguished](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/mem-maptriangle-essimage-of-distinguished.md) | 238 | `result-track:1a50e1b8079a1eec139ae5322007556d356ed6e4815544573a8ab6141900ac4c` |
| 22 | `lemma` | [isTriangulated_of_precomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/istriangulated-of-precomp.md) | 248 | `result-track:9ed3145fd6edf5c0dbdd3737d32183d6ccd68e204e40b7599b58d574fddfa6b8` |
| 23 | `lemma` | [isTriangulated_of_precomp_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/istriangulated-of-precomp-iso.md) | 257 | `result-track:d2bb8e55a19998b1cec5cee3d3d1d27e202eeedd35b34024021cba504507f3ee` |
| 24 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/map.md) | 284 | `declaration-track:4d05546b79cc467d3aa25be42c18d15c4e07cac5483bd513cf0acdb56a8f2e23` |
| 25 | `lemma` | [isTriangulated_of_essSurj_mapComposableArrows_two](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedFunctor.lean/declarations/istriangulated-of-esssurj-mapcomposablearrows-two.md) | 303 | `result-track:65692c77e9092656de6902a7b57d0d94e00ad2083f53442ea18af5441e3ac7ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10af1c0c1eb143e26b7ae3e185cac511a456467717df9cdf3e18489b2503d294 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variante44bcc04536737a67d9c9c8765187ac980845b4088af4b45886fe53f7fc53ebe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
