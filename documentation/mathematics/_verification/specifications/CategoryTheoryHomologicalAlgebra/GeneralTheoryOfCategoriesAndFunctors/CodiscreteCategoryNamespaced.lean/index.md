# Verification target: Codiscrete Category Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7efafe311a472bbc1a9700f092df065a803dacca",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant98204d06615fef5d733a604e7aca9aeff3f091e87a519828f79c74d9e7d65423.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7efafe311a472bbc1a9700f092df065a803dacca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant98204d06615fef5d733a604e7aca9aeff3f091e87a519828f79c74d9e7d65423.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant98204d06615fef5d733a604e7aca9aeff3f091e87a519828f79c74d9e7d65423.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Pi.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ULift` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Codiscrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/codiscrete.md) | 47 | `declaration-track:fce2450d0d2fec80712adc3beafaaad37b0e4b22269559f4866148ea85fd332c` |
| 2 | `theorem` | [Codiscrete.mk_as](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/codiscrete-mk-as.md) | 53 | `result-track:7196cbbc41f97275a285b60aab05a5403fa2581e5b79892eed1a28af435bff9f` |
| 3 | `def` | [codiscreteEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/codiscreteequiv.md) | 57 | `declaration-track:f37a1b73e9600f90d405263d555505053d54a40dbd542f8c35f9eae381c8a0a2` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/instance.md) | 63 | `declaration-track:a0562f303e04c71ef1911c1c6bc277ba3d5f4533ac3aadbd3b1cd64c3ceca5db` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:aa5f5f0ea5b5c3382f49b6cbd2b9fd8563a3b24ea7bde07e156fc9e0e46a0a2e` |
| 6 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/functor.md) | 77 | `declaration-track:032ca7755546aafaa175e973332289b99f256f7e314a722eb1719c0c65fa4395` |
| 7 | `def` | [invFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/invfunctor.md) | 82 | `declaration-track:db390d0d348ae8d31f2143784154f5f6626c0e4e594718cbe956231b9de6c29f` |
| 8 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/nattrans.md) | 85 | `declaration-track:7ca7cc191b889fb92f045a2db9dd36e0550a521fe1a1fec55c572c1a2be0236f` |
| 9 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/natiso.md) | 90 | `declaration-track:d1738625116a331cae06d5c9e5131c9cc75e3c0a14c8980e7d32fcd59e7c7136` |
| 10 | `def` | [natIsoFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/natisofunctor.md) | 97 | `declaration-track:8ac64fc204cd4a89c6dc7c2d24f77afff66050eec9460f5e06e61ec7aa60edb1` |
| 11 | `def` | [functorOfFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/functoroffun.md) | 102 | `declaration-track:a6cee56e539aa4b3fda35395153291b0ebc620dc3fce3e7c2acf480b984abe0b` |
| 12 | `def` | [oppositeEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/oppositeequivalence.md) | 108 | `declaration-track:d94d1dc0d6c5263b902b9e06f0ae66b9b092910eef8cc1c21ec2c802c100c8f0` |
| 13 | `def` | [functorToCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/functortocat.md) | 115 | `declaration-track:1b14d7ecf1f599d351a9921fa39870d3e1cd0c96435571c30cfcd984f97e76b3` |
| 14 | `def` | [equivFunctorToCodiscrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/equivfunctortocodiscrete.md) | 123 | `declaration-track:1d1b2920c5a31db9c9592c001683909cce1895c4f1fcbcb4fba51ec7714eea52` |
| 15 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/adj.md) | 132 | `declaration-track:4413fbc6a307cdf5fb29ae4587f494f1925df085747186e7b409dc07e9778874` |
| 16 | `def` | [unitApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/unitapp.md) | 138 | `declaration-track:9fadae0ef083b99347e52cbd2fee90ed6b87043a43cd0f157c184412e847106b` |
| 17 | `def` | [counitApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/counitapp.md) | 141 | `declaration-track:868e9bf1da0ab06c4cde49185a63e2f93cadcb382f00c0bc7b118172b06ed65d` |
| 18 | `lemma` | [adj_unit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/adj-unit-app.md) | 143 | `result-track:c271159b61b6423191984b501e466dac8089962b95bf8a26ebbf3b83ca329be7` |
| 19 | `lemma` | [adj_counit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/adj-counit-app.md) | 146 | `result-track:feef3af738dffcbf810d9c4bd8f8b80c0500af0ab4fe980f845239cbbd95d952` |
| 20 | `lemma` | [left_triangle_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/left-triangle-components.md) | 151 | `result-track:79b4b4c9cecd5cf495676d72d34ae9fcb16972d06119d057a22f00f52349cf9f` |
| 21 | `lemma` | [right_triangle_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CodiscreteCategoryNamespaced.lean/declarations/right-triangle-components.md) | 157 | `result-track:768fa77aa737b55c812622a178cab0fb0e6dcecc9240df79e571f6806b615143` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f01a35a810e0cc151a2bd645a2b50baa1d842a974a5d2b60deb46ad68aa41f2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant98204d06615fef5d733a604e7aca9aeff3f091e87a519828f79c74d9e7d65423.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant98204d06615fef5d733a604e7aca9aeff3f091e87a519828f79c74d9e7d65423.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
