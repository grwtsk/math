# Verification target: Cover Lifting Namespaced Cover Lifting

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90df3d8e1c30bd94d6bc6a41dd4ded8652b18a53",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90df3d8e1c30bd94d6bc6a41dd4ded8652b18a53`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.KanExtension` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.CoverPreserving` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoverLifting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/coverlifting.md) | 83 | `declaration-track:bda8c89e02e0366ea8ab5d918bf9925bc6c7ab22f7dee958eec3dc2a87e02b8e` |
| 2 | `theorem` | [idCoverLifting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/idcoverlifting.md) | 88 | `result-track:8d480c8e2d4ad4d2a981e4595ce7a4baff439701d1099b23a6714469762ba659` |
| 3 | `theorem` | [compCoverLifting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/compcoverlifting.md) | 95 | `result-track:81863c62d7db732e6449a3a97dd0eb61daa86a38e9d1c7fabf1086dbb1c16840` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/instance.md) | 136 | `declaration-track:09caafd66b5ffb76ce6d31749e2141df481097997d9ba46a7d1ec94bc690f5ee` |
| 5 | `def` | [pulledbackFamily](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/pulledbackfamily.md) | 145 | `declaration-track:9839b3e52f67af58f562510133b56de7cac952733bcb7cdbc3938fce72b6449e` |
| 6 | `theorem` | [pulledbackFamily_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/pulledbackfamily-apply.md) | 152 | `result-track:f09975d47bd0bc0aecf6fe1fe60df9c12c6b5959b9c0bf7e2123e4dee5a2e8a0` |
| 7 | `def` | [getSection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/getsection.md) | 165 | `declaration-track:a47c6604bc1ae259ee314f0a050f33951bbbc4f5d2351f9976261c014cae3926` |
| 8 | `theorem` | [getSection_isAmalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/getsection-isamalgamation.md) | 173 | `result-track:5f0eab1a480ae0710440c71f1592305b1d3673a86fefa2109e6fa74a17c35ae7` |
| 9 | `theorem` | [getSection_is_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/getsection-is-unique.md) | 179 | `result-track:4865f4510198824487c73cf658c10560d3740df1a43c7e0b1ef4bdc8bce80d71` |
| 10 | `theorem` | [getSection_commute](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/getsection-commute.md) | 189 | `result-track:15e5833591c8de378a04ffa8770f6beaffb79a2fa5f6d57c4e20345c596aad4b` |
| 11 | `def` | [gluedLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/gluedlimitcone.md) | 211 | `declaration-track:64a732979f1e060b1e25f0cd4e91094a4ea1a88b12f4f414ee1fdf23156fa347` |
| 12 | `theorem` | [gluedLimitCone_π_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/gluedlimitcone-app.md) | 218 | `result-track:475554b9a64f25b9af3e5a3cae5edd240fc4f51942e8c86f21d8d1dcea701b32` |
| 13 | `def` | [gluedSection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/gluedsection.md) | 224 | `declaration-track:a850bcde5930a04c77c380ed719411a99cd1a26e8b704e644d6396289fbe7328` |
| 14 | `theorem` | [helper](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/helper.md) | 235 | `result-track:61a25f30b65055205b0924c6936ea93b21d85c2e9bc941457d698891d7642b9d` |
| 15 | `theorem` | [gluedSection_isAmalgamation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/gluedsection-isamalgamation.md) | 263 | `result-track:37c9547c727b286aae403d80a709d78e640b3d4f366139edead75dfddba264e2` |
| 16 | `theorem` | [gluedSection_is_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/gluedsection-is-unique.md) | 280 | `result-track:abfcc0845dcbb07a90b4665317d69c74777be61e3d9ff36e123aa6c89077c0cb` |
| 17 | `theorem` | [ran_isSheaf_of_coverLifting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/ran-issheaf-of-coverlifting.md) | 302 | `result-track:569bee29478a5a74bffea9d828b88049b6148d60686f47d6c9cbc134016ca14a` |
| 18 | `def` | [Sites.copullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/sites-copullback.md) | 316 | `declaration-track:df07a72f48e7b539426afa98cb00e85f036cd33db7bfd90d2570b4d48336d6dc` |
| 19 | `def` | [Sites.pullbackCopullbackAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/sites-pullbackcopullbackadjunction.md) | 328 | `declaration-track:fc86f999c8f6eb8026193c66dc9eb1d97004b8d82e21a27a03e2dba2e7545389` |
| 20 | `def` | [pullbackSheafificationCompatibility](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/pullbacksheafificationcompatibility.md) | 372 | `declaration-track:db6bf2c0554dc425336564fe5e7ce436e563db64d93772fb3c597e4d0c413a5b` |
| 21 | `lemma` | [toSheafify_pullbackSheafificationCompatibility](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/tosheafify-pullbacksheafificationcompatibility.md) | 387 | `result-track:6080b0054c4781074c8ab8f6ac3543bfc29c5c05864d68488236a989d94ed650` |
| 22 | `lemma` | [pullbackSheafificationCompatibility_hom_app_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CoverLiftingNamespacedCoverLifting.lean/declarations/pullbacksheafificationcompatibility-hom-app-val.md) | 414 | `result-track:4b0e028b2ff07054bf28962aed45aae33094b9c49ceffbc9ff2fbf62a9c763fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14a509df5cad4d29ae73d0c105353d00701367f24a155f1c3a97e354bc9a0cbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant909202c7578e53538a69761bc7a121d55a97dfbaf45055b2e65c319955f50b61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
