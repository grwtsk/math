# Verification target: Canonical Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "663f36dbdbffd4791c14e6eb9ffc4670910dc164",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `663f36dbdbffd4791c14e6eb9ffc4670910dc164`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean.json)

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
| 1 | `def` | [finestTopologySingle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/finesttopologysingle.md) | 55 | `declaration-track:f7f26b82b17b92f0976e5099b24be7c585bf4ffb316f1e2ad43a556d4da7b869` |
| 2 | `def` | [finestTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/finesttopology.md) | 78 | `declaration-track:c9cb20d70e0f37f4ea1a8265db32dacfdecc82b17c9c6307bdb5269c7c7d4861` |
| 3 | `theorem` | [sheaf_for_finestTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/sheaf-for-finesttopology.md) | 82 | `result-track:88b0a3c601896fd3b6043f15ce35d3fe8d6c0f808f6d53283c71dbbee2376034` |
| 4 | `lemma` | [mem_finestTopology_of_forall_isSheafFor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/mem-finesttopology-of-forall-issheaffor.md) | 86 | `result-track:5acf040fd448498dbe7f7217e2364980a0a860fd53d58f0e26014cf0482e62a0` |
| 5 | `theorem` | [le_finestTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/le-finesttopology.md) | 95 | `result-track:e7095bcee8ece09805eaa0d457d98d161765703c4e5b1f94e9a6adad5057f18f` |
| 6 | `def` | [canonicalTopology](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/canonicaltopology.md) | 104 | `declaration-track:fd2950db8d5c282f3d7f51469e835349c44384abcf5ef4940a94f193cf2de350` |
| 7 | `theorem` | [isSheaf_yoneda_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/issheaf-yoneda-obj.md) | 108 | `result-track:ad4497c8736cdaec24cc9e87fd073ed80f997148b4909f3714b924c06fcb1fd9` |
| 8 | `theorem` | [isSheaf_of_isRepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/issheaf-of-isrepresentable.md) | 112 | `result-track:34cd478ed9e69c140940a73ed022eae868e29d0e5e66ebfa38d3bee3aab8baea` |
| 9 | `class` | [Subcanonical](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/subcanonical.md) | 130 | `declaration-track:5b2260bd7508f043687149cd4028ee472a8622fe671e0ef01aead6d746b780be` |
| 10 | `lemma` | [le_canonical](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/le-canonical.md) | 133 | `result-track:def0f6c462675b621a97851f8249078f98ee02662144b9e0069637f1e6aa0c13` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/instance.md) | 136 | `declaration-track:10f9d1842b7d48d471464a4160a4200690a5ba5ddd61fe33cd3a16fb9cf317cb` |
| 12 | `theorem` | [of_isSheaf_yoneda_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/of-issheaf-yoneda-obj.md) | 142 | `result-track:fc9bd69e64a23df6b2da45980e45dd2d4331804968bd9cec3806b09af3eb8de2` |
| 13 | `theorem` | [isSheaf_of_isRepresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/issheaf-of-isrepresentable-source-edition-2.md) | 147 | `result-track:4f7bb51fd3ba85afdfc96260d1d92db0c1d6e5717ed5fa356289436d3f0d4101` |
| 14 | `lemma` | [of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/of-le.md) | 151 | `result-track:d002f10ed65133bba9d5cf772b405ee199c96d181095a65b4e4d0f3b4113abc1` |
| 15 | `def` | [yoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/yoneda.md) | 164 | `declaration-track:cf730dc76ef4ce764a29a22472cf399e5e5ff8134798e4fc8eea4271629e1488` |
| 16 | `def` | [uliftYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/uliftyoneda.md) | 172 | `declaration-track:38f16ffc01c16b944642a06309621a9b8f19af69194b3e1591db18bb1f0c0036` |
| 17 | `def` | [uliftYonedaIsoYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/uliftyonedaisoyoneda.md) | 181 | `declaration-track:58cbf912c89c5e4d54ad231e65fc1e4131198c3bb047761ce79b3ab303a5f390` |
| 18 | `def` | [yonedaCompSheafToPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/yonedacompsheaftopresheaf.md) | 193 | `declaration-track:705fbd53621d2dcff38937f7b8c0a2ac1688e990892c682f697288c5cfcf7f8d` |
| 19 | `def` | [uliftYonedaCompSheafToPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/uliftyonedacompsheaftopresheaf.md) | 202 | `declaration-track:81910c0dbf8d412dbbb42d1a13fd39813b29b8a486d1ff9cc469ed1a85fcf400` |
| 20 | `def` | [yonedaFullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/yonedafullyfaithful.md) | 208 | `declaration-track:5bf7111e63621a10a431f63413bbd4ab6aadcebdd1ae15b3f01187a4de6b1c51` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/instance-source-edition-5.md) | 211 | `declaration-track:5f76ad88efec73d15a7a89e10d639c757299bf90aace3368efd99058dde69453` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/instance-source-edition-4.md) | 213 | `declaration-track:433baecad12225cdbd3030c2c9c785ebbbe223df9b02a9f6532e2fe087f7467d` |
| 23 | `def` | [fullyFaithfulUliftYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/fullyfaithfululiftyoneda.md) | 216 | `declaration-track:0c12fb3d921030c09c5492da216466d923ac20481d19e3b1b36d36e63c9bb806` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/instance-source-edition-3.md) | 219 | `declaration-track:21dfb3913a8457e83fd73fcc0ea334203f6b89683298f0a47632f195f75d97c6` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CanonicalPublic.lean/declarations/instance-source-edition-2.md) | 222 | `declaration-track:1941078ad1d877c0f8a60e5f05672be339ee4f3dfc64482ef786b0f8c5902353` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=224df480ac2ad4c14c812b2a21465dd390f53cda9f14f60babc8cea5e8b697d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant1310f535b471031ae81fbc58ec683a94b5b0e20172b829752a9e26dd0326d513.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
