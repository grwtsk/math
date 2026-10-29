# Verification target: Restriction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d520f398d521ba7463727b2515cfa803963067f7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variantd0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d520f398d521ba7463727b2515cfa803963067f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variantd0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variantd0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Embedding.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restriction](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/restriction.md) | 31 | `declaration-track:1610174bb1dbe01baaeedc2d2cddfaa7b2a9f2483cb310c65e30467229f95a56` |
| 2 | `def` | [restrictionXIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/restrictionxiso.md) | 37 | `declaration-track:261b1d7d5186e05b0ec9cd2994ff8ddc1861c36781c4a44ffcbeb4ac5c4bc6fa` |
| 3 | `lemma` | [restriction_d_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/restriction-d-eq.md) | 42 | `result-track:06095c4c86532eec21afda45b4c45aa9845520c615a61bb58df0707ea39036ef` |
| 4 | `def` | [restrictionMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/restrictionmap.md) | 52 | `declaration-track:e6cb0a2c4bb5c49a0f080d308ee33997bd370b0bd86cc162e4b08c03d71ca5cf` |
| 5 | `lemma` | [restrictionMap_f'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/restrictionmap-f.md) | 56 | `result-track:0de7f524cb5e4895ef0f5d13257e4f2632449eeba506d334e980ab2e14435594` |
| 6 | `lemma` | [restrictionMap_id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/restrictionmap-id.md) | 65 | `result-track:5368847fb33350b4b8292ce56969faaf70584186b9927b7f14e23bfdd63c10f6` |
| 7 | `lemma` | [restrictionMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/restrictionmap-comp.md) | 68 | `result-track:14331ae79a1d0aacfdc07c492d2daad1a2f3c0f389a29d2aa02eff1988900b58` |
| 8 | `def` | [restrictionFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/restrictionfunctor.md) | 80 | `declaration-track:b01476569eb244ee6a6f2644fae5820b9020e187b25595db71caa763b83006ac` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/instance.md) | 85 | `declaration-track:4a314697d50b39b34d5c321ad69be45005477c687dc59f310fac2f474e83e4a5` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Restriction.lean/declarations/instance-source-edition-2.md) | 87 | `declaration-track:79006ee8af2627e8b5f569f85da060f4588a5063d426b80653852d9323e51f53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9bb83b4db71cb2503dd983a881dff3bc92843a0e93180193817c4d7f8059374 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variantd0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Restriction/Variantd0bcc21b41d73485a6abe65fc50efa62725c2a220f34f7b88c205c7ef5b437d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
