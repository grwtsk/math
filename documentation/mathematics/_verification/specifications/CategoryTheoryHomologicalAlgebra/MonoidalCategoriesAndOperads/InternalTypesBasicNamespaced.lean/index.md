# Verification target: Internal Types Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f02b95f4acab2fcd1e12a2eb85fd46a3a28479d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c407976374f407c536c641e11771fdcc96e74b5aa6d10d6071d0f0d3768b8af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f02b95f4acab2fcd1e12a2eb85fd46a3a28479d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c407976374f407c536c641e11771fdcc96e74b5aa6d10d6071d0f0d3768b8af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c407976374f407c536c641e11771fdcc96e74b5aa6d10d6071d0f0d3768b8af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CommMon_` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [monMonoid](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/monmonoid.md) | 35 | `declaration-track:8850ddfad68b21d4d95a0a4ef4ee236a3043bee629fa1aafad3ea80f08e6be16` |
| 2 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/functor-source-edition-2.md) | 44 | `declaration-track:d9e37d8dcc561eeb236b612c16164630dbbfba17d5c4a4a76d89c2c8e6351298` |
| 3 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/inverse.md) | 53 | `declaration-track:35053b7766b7212b07d5f4261aa74c61fc9014d04d81fc92e783b3fde0cacb72` |
| 4 | `def` | [monTypeEquivalenceMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/montypeequivalencemon.md) | 70 | `declaration-track:bc2190435ba505219268e54ddb77151a972297670a8cb007ec3d1452ddfbefa7` |
| 5 | `def` | [monTypeEquivalenceMonForget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/montypeequivalencemonforget.md) | 81 | `declaration-track:f7f9130bf46669eff916b792a40430ea525322cacd8aabbb4aa90954585170a6` |
| 6 | `instance` | [monTypeInhabited](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/montypeinhabited.md) | 85 | `declaration-track:becd717db3b428f7d0202a135d661501d001e772cdc99c10282d88f8636a14ec` |
| 7 | `instance` | [commMonCommMonoid](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/commmoncommmonoid.md) | 90 | `declaration-track:a590d91ca8e732e95e5bc75fe51b02c5f0de6c8685706de709b6b5ad9e78a10f` |
| 8 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/functor.md) | 96 | `declaration-track:348a085a19c420279035bc5ea5a1c4cb5ee5f6a7b8fbd80535220dd48554243e` |
| 9 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/inverse-source-edition-2.md) | 102 | `declaration-track:bee10917fcd892af3c4aaecd0fe4329ca275314ac11ea8fa0d9e1ab8eee4a2a1` |
| 10 | `def` | [commMonTypeEquivalenceCommMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/commmontypeequivalencecommmon.md) | 117 | `declaration-track:e6dc98b9aeff2c3a25de99586f338284f9a1a1503d1b244737fc1d8e4c7d15c8` |
| 11 | `def` | [commMonTypeEquivalenceCommMonForget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalTypesBasicNamespaced.lean/declarations/commmontypeequivalencecommmonforget.md) | 128 | `declaration-track:d5b2954d0331956cd0e392282a8b2f08166beda58ab4906280d9c3dcdc795edd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f1e6808930ead1f796d323c2a63e956ef2e44498c4168b73dee8d9113022b86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c407976374f407c536c641e11771fdcc96e74b5aa6d10d6071d0f0d3768b8af.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c407976374f407c536c641e11771fdcc96e74b5aa6d10d6071d0f0d3768b8af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
