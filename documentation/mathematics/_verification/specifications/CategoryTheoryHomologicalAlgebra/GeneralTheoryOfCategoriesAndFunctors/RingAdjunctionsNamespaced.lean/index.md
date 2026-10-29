# Verification target: Ring Adjunctions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfc3656de901121c49ea28006487b3bf5c56666a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1ea8379233597db6d8e86d8c117142997a1918b9cd7c38e9d10ad7c5c37e81cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfc3656de901121c49ea28006487b3bf5c56666a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1ea8379233597db6d8e86d8c117142997a1918b9cd7c38e9d10ad7c5c37e81cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1ea8379233597db6d8e86d8c117142997a1918b9cd7c38e9d10ad7c5c37e81cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/free.md) | 43 | `declaration-track:9425512c13372129df2f4111cbd6691c91bbb10eac03f62064f92a9ac886c9da` |
| 2 | `theorem` | [free_obj_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/free-obj-coe.md) | 48 | `result-track:f8426a34e900a6d885173f6bacf12647050d8fa6665a3b7273c4e6f2749323fb` |
| 3 | `theorem` | [free_map_coe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/free-map-coe.md) | 52 | `result-track:6e3b2fd00e21415b355512ec73b2989070bc389097a0ad72cc0aeb4e7d31c45b` |
| 4 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/adj.md) | 56 | `declaration-track:b192833ffe8513f954ed236a95ddfc3a7fa2f9abaf1d7e8fdff916cef053ec82` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/instance-source-edition-4.md) | 66 | `declaration-track:cf77bdbdee02000a374717398dd582e413e07df7adec0b5856d552f3e10f17d5` |
| 6 | `def` | [coyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/coyoneda.md) | 71 | `declaration-track:8cc2f13fe201f60ccab53668475520a29cd051ad1bae1ab1e00876f2235e49df` |
| 7 | `def` | [coyonedaAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/coyonedaadj.md) | 79 | `declaration-track:b4ef5894a0a34c83ea305a71ca414d5c0b3c5403e8c454d69da8ee9404eb0f3f` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/instance.md) | 84 | `declaration-track:596ed3bf9f8d0776435c1b25e31950a9a935bdee2bb900bf785b4efe4bf774a3` |
| 9 | `def` | [coyonedaUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/coyonedaunique.md) | 88 | `declaration-track:592c44a26a885cc7903a84f9323bd399062aa093c77af98581500c8c054127b5` |
| 10 | `def` | [monoidAlgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/monoidalgebra.md) | 93 | `declaration-track:3972a53ce2a509442601a23b1dab1978a1b71420b1d124f833feb6bca328b8c2` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/instance-source-edition-5.md) | 99 | `declaration-track:d6632dc30e70232f63085d08f5bbf6579ae50032151a1e51b74bc6d82bc1ef78` |
| 12 | `def` | [monoidAlgebraAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/monoidalgebraadj.md) | 106 | `declaration-track:656675e174cdff8b2cefbb789732a99f2d76ccb7c3c2c923573a359dc27c27f5` |
| 13 | `def` | [forget₂Adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/forget-adj.md) | 122 | `declaration-track:746d63f2a37080b8c3cd740aa0ce31d116ab4f36140928f9d5d16b8f185e7562` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/instance-source-edition-3.md) | 126 | `declaration-track:7e968c945a1d34c983f62445a5cc7f256f738b0f466a10b6adb22b2ef103f404` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingAdjunctionsNamespaced.lean/declarations/instance-source-edition-2.md) | 129 | `declaration-track:731820517f6c40f93ab5053bcb75c9848bb85f2b6157df10b6be5fa90c6e23c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=149d770daef2f0e3fad3fa0ed908e7273659b232f3c8b34a12f60df385ae0712 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1ea8379233597db6d8e86d8c117142997a1918b9cd7c38e9d10ad7c5c37e81cf.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1ea8379233597db6d8e86d8c117142997a1918b9cd7c38e9d10ad7c5c37e81cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
