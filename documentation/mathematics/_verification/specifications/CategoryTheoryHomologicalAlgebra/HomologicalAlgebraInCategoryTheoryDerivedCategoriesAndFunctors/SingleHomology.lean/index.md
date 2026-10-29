# Verification target: Single Homology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00034d7b101f297760f53091e00b2ce4272b43f6",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variantab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00034d7b101f297760f53091e00b2ce4272b43f6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variantab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variantab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Single` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/instance.md) | 27 | `declaration-track:bac8d8136c73bfdf22cfbfb7ff612d38923a1562253ee4e0a3caec3bed9dccb7` |
| 2 | `lemma` | [exactAt_single_obj](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/exactat-single-obj.md) | 30 | `result-track:f289ee97f3488dbd0f5b7ae62e64f431dc19c4da076db6eb6d44bebd6b799256` |
| 3 | `lemma` | [isZero_single_obj_homology](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/iszero-single-obj-homology.md) | 34 | `result-track:1d790b325dfdce4059fd47245adda68e4bca7a6a42239922093368c6552f6aa3` |
| 4 | `def` | [singleObjCyclesSelfIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjcyclesselfiso.md) | 40 | `declaration-track:e4be74e02d319ffc3ed15ccfb4f515e7faadf02201801f340cf58bba35bf15f9` |
| 5 | `lemma` | [singleObjCyclesSelfIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjcyclesselfiso-hom.md) | 45 | `result-track:74b1cd73f96300cddebf001e41450c8a179781228528b008b2038f354f3a7e95` |
| 6 | `def` | [singleObjOpcyclesSelfIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjopcyclesselfiso.md) | 50 | `declaration-track:f56095f6845605533a34a968d0d8dc886ea9382226ed8180671c822645543b6c` |
| 7 | `lemma` | [singleObjOpcyclesSelfIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjopcyclesselfiso-hom.md) | 55 | `result-track:a7c03f796a426a0594e1aba327dc3ff2ab6a8975b30edcafa83b67f0a523728d` |
| 8 | `def` | [singleObjHomologySelfIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjhomologyselfiso.md) | 60 | `declaration-track:1a075c87a781675e6f618431cf33a1d9040ccb64dd1cadd94085ad4c8baef137` |
| 9 | `lemma` | [singleObjCyclesSelfIso_inv_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjcyclesselfiso-inv-icycles.md) | 65 | `result-track:073c019aac8524fc62bb62462ea1a2fb142c542e8327d955f378b0f55dca3e7b` |
| 10 | `lemma` | [homologyπ_singleObjHomologySelfIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/homology-singleobjhomologyselfiso-hom.md) | 71 | `result-track:3f9aa742391ffadca1290fdf143d2eb5dbbe724323d13453b25fa6e6bdf4fe25` |
| 11 | `lemma` | [singleObjHomologySelfIso_hom_singleObjHomologySelfIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjhomologyselfiso-hom-singleobjhomologyselfiso-inv.md) | 77 | `result-track:b4a7adb8f44b2fec1baf625efa8ac1e4fd45db45f1d119a76e5be9d7306d02f4` |
| 12 | `lemma` | [singleObjCyclesSelfIso_hom_singleObjOpcyclesSelfIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjcyclesselfiso-hom-singleobjopcyclesselfiso-hom.md) | 84 | `result-track:ac03b6741c407f04ccfedd873f5f53476d087244daa7e1ae40f48012c9e2a8e9` |
| 13 | `lemma` | [singleObjCyclesSelfIso_inv_homologyπ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjcyclesselfiso-inv-homology.md) | 90 | `result-track:3ad85e04975c5aca9593a554c8ba8b32b66ca7e838d128d21d1be9d492014603` |
| 14 | `lemma` | [singleObjHomologySelfIso_inv_homologyι](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjhomologyselfiso-inv-homology.md) | 96 | `result-track:d688987473b8254d7997037c11446084e838eadacb52e01f9c7a5ff5cf83307d` |
| 15 | `lemma` | [homologyι_singleObjOpcyclesSelfIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/homology-singleobjopcyclesselfiso-inv.md) | 104 | `result-track:94265a001b73252be049b83c9cc4e7db93abe6aaf00d3863f49ba314c4466e51` |
| 16 | `lemma` | [singleObjHomologySelfIso_hom_singleObjOpcyclesSelfIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjhomologyselfiso-hom-singleobjopcyclesselfiso-hom.md) | 111 | `result-track:f9e5ebb009ef214d080982a6d45f7bd9f29d8eefd3b3ab13ad8bb3b207469e2e` |
| 17 | `lemma` | [pOpcycles_singleObjOpcyclesSelfIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/popcycles-singleobjopcyclesselfiso-inv.md) | 118 | `result-track:e2d48dfcad411e64cd0d309d4af3f0c28ba91b419441f2bc70d6f03489de083c` |
| 18 | `lemma` | [singleObjCyclesSelfIso_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjcyclesselfiso-hom-naturality.md) | 130 | `result-track:372b664045e179c44ab75d8e6e1bacc565975d6251947ab32205f4b5fe844a9b` |
| 19 | `lemma` | [singleObjCyclesSelfIso_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjcyclesselfiso-inv-naturality.md) | 139 | `result-track:863364ea4bd5db8835370314fe5ee80639c5c95e43d2c6f1d9cd5bfcd7c4055c` |
| 20 | `lemma` | [singleObjHomologySelfIso_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjhomologyselfiso-hom-naturality.md) | 146 | `result-track:9bc739a1fd1afc148b16e2d73eec09d8fb9bb624cb54ccf539f355d0949b6750` |
| 21 | `lemma` | [singleObjHomologySelfIso_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjhomologyselfiso-inv-naturality.md) | 154 | `result-track:fd75b97967110ee3ee11cc7d9579aa6115c56ad1da3786bf896b738123550f12` |
| 22 | `lemma` | [singleObjOpcyclesSelfIso_hom_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjopcyclesselfiso-hom-naturality.md) | 162 | `result-track:a00fa28605e60779ac0ae7b6bbeb622843c718e50deaacc1eee7a390f6568a25` |
| 23 | `lemma` | [singleObjOpcyclesSelfIso_inv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/singleobjopcyclesselfiso-inv-naturality.md) | 171 | `result-track:c6e734af825586cb587c193c18bbe254cd5186bb8df8ad4e24b23a87715f2333` |
| 24 | `def` | [homologyFunctorSingleIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/homologyfunctorsingleiso.md) | 182 | `declaration-track:3be5434d67bf0d5a03b5f2f4ecd83a0cfd89d195933a960e50a9c53598db3c8a` |
| 25 | `lemma` | [ChainComplex.exactAt_succ_single_obj](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/chaincomplex-exactat-succ-single-obj.md) | 191 | `result-track:bd0e0f7e3c0988a8c14b0aeb6f29a7739281ba869a33334a3022ae821ff3158f` |
| 26 | `lemma` | [CochainComplex.exactAt_succ_single_obj](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SingleHomology.lean/declarations/cochaincomplex-exactat-succ-single-obj.md) | 195 | `result-track:9a231079968417b043ebbaf2e7488179b0c0766aaae01df35598bdbb2bf5d333` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b968f4225a445e88ccda12265641b4ca864e41cf69556f3d6cdcbd73c8b92f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variantab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/SingleHomology/Variantab5198a30ca679dbd52847259f17541a7cbe21219fef2c24ca5428311bd0d441.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
