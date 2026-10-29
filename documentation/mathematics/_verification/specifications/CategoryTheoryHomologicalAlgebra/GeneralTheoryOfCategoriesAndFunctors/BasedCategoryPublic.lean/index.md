# Verification target: Based Category Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8456a33f55966a3892c2fa577722e58ecac5a7f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variantf0ad11c3d8e123a7a6482878e66a24da1e57b9ef8a531aec51e90d1d70abafc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8456a33f55966a3892c2fa577722e58ecac5a7f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variantf0ad11c3d8e123a7a6482878e66a24da1e57b9ef8a531aec51e90d1d70abafc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variantf0ad11c3d8e123a7a6482878e66a24da1e57b9ef8a531aec51e90d1d70abafc5.lean.json)

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
| 1 | `structure` | [BasedCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/basedcategory.md) | 41 | `declaration-track:7ee68c14fe0e28180e06aea4d5f33ad85049acebeebe51b64baacd5c09d2c2a7` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/instance-source-edition-2.md) | 49 | `declaration-track:00ddb7352e0db61a0287a0aa64997ae3623b74826000aa99dc68905def351237` |
| 3 | `def` | [BasedCategory.ofFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/basedcategory-offunctor.md) | 52 | `declaration-track:65ec5f2fd6fccf6d31be817f66a59ab85c0ecac86eccc22807adeab55e96f10e` |
| 4 | `structure` | [BasedFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/basedfunctor.md) | 58 | `declaration-track:43faa9831709839d4749e63bae73ba97a049935badc647b57430ffb267112314` |
| 5 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/id-source-edition-3.md) | 71 | `declaration-track:dc3a8c16d5d0261ed9691befe64b6959342320be4f71b376271d3be1e73934b0` |
| 6 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/comp-source-edition-2.md) | 81 | `declaration-track:4e7cc01a30541d68c23e98f17ad146fabae8ae2ac8891ea67ca9247af45fb242` |
| 7 | `lemma` | [comp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/comp-id.md) | 89 | `result-track:1011d73d42f404cfb41b2148736f2c4d1f68d0477ff235f48887516a58692e0f` |
| 8 | `lemma` | [id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/id-comp.md) | 93 | `result-track:d3243de858893b41042827103e758dded7d8609baf82fb44d8f0a4837029a109` |
| 9 | `lemma` | [comp_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/comp-assoc.md) | 97 | `result-track:ba0dfb467a476fc7c95fd6c0d778aaf4e37285cf89c92020d54acda2e23af4b9` |
| 10 | `lemma` | [w_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/w-obj.md) | 102 | `result-track:7ab99ee353c0c5d50d65c33eff734b4aabc02f422d4dcef61072034e458d8c6e` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/instance.md) | 105 | `declaration-track:006a45f352f7b3b0ab565f9c37c5e572f77228347c163eab6becf52a6312346a` |
| 12 | `instance` | [preserves_isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/preserves-ishomlift.md) | 115 | `declaration-track:b53ea2eb13ba0e0c6b7e4833bf2e1904c1ebc600e54ed2d3893e59f10e53dac6` |
| 13 | `lemma` | [isHomLift_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/ishomlift-map.md) | 124 | `result-track:8fc6168e5da1860beaf445a5ba072e936ee8416ebc7032a5194f433fdb1a6dc0` |
| 14 | `lemma` | [isHomLift_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/ishomlift-iff.md) | 129 | `result-track:847e9a67c4d4b70b4275fbb95afbc69c9668140c53b86f9c31835f0cbc9efb33` |
| 15 | `structure` | [BasedNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/basednattrans.md) | 139 | `declaration-track:a99653e231d3182934f153a3fb04c794de0e04caecd85e6f26586a2a71af61fc` |
| 16 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/ext.md) | 156 | `result-track:e59965300acaf46d558e47dd03d781589a151f3edcb411882e7fda28cbf2615b` |
| 17 | `instance` | [app_isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/app-ishomlift.md) | 159 | `declaration-track:deedc9cda4b8c521dc202fcd23962f0f232544518e80c936d7e46ca83188a129` |
| 18 | `lemma` | [isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/ishomlift.md) | 162 | `result-track:90e98876cbdd2047a383dde59708874851e1e33f86c02daf533358bbc6ae2dad` |
| 19 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/id-source-edition-2.md) | 170 | `declaration-track:a7a83597e0312940d67ef278f08e070091ccef0bdf5181eba2a5b7fb0bef8f2e` |
| 20 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/comp.md) | 177 | `declaration-track:28022dc0333f80a4038358d2e7cd4287961fa6705ebbcee5aa1220487c6ed2b9` |
| 21 | `instance` | [homCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/homcategory.md) | 185 | `declaration-track:4b8338f21c088799798ccc925d4f9fca773f35973e1b5a6f94a987874f394266` |
| 22 | `lemma` | [homCategory.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/homcategory-ext.md) | 192 | `result-track:0322e4ffaab71e86dfa551d4f7c6b263f432c939f19e8e104b27922c1ca433b5` |
| 23 | `def` | [forgetful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/forgetful.md) | 198 | `declaration-track:36ebe6caa7c2ad289b0b22fab2635584095726661eedac6cfa35b73df8d54e1e` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/instance-source-edition-4.md) | 204 | `declaration-track:a8856110d6241e59998e5334e496da7976b543c48416e8432b751309bd6a9c44` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/instance-source-edition-3.md) | 213 | `declaration-track:1abb57387b6a1d589f235106dcfd4cedeb926e5f3adf42763f6702cbf0d39a1e` |
| 26 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/id.md) | 226 | `declaration-track:7ae38fcfc80973354b68bffda4cbc4c4bbd2c132775c3ab5b64a9b514fc66696` |
| 27 | `def` | [mkNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/mknatiso.md) | 234 | `declaration-track:0a56b91a236e2e3942ca9249c0264403c103c49c99283f00da10d8a1d08220a1` |
| 28 | `lemma` | [isIso_of_toNatTrans_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/isiso-of-tonattrans-isiso.md) | 245 | `result-track:377844d056354d85bd0efb9fa5317b892bd77f339c4a88023a912e1c1efe853b` |
| 29 | `def` | [whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/whiskerleft.md) | 262 | `declaration-track:053d0f1b0b2f370ba96f01ca168247afbcab58b06500066c996fd6cb9e5d4d31` |
| 30 | `def` | [whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/whiskerright.md) | 270 | `declaration-track:c7b89ca34092d5eac1ca4e2b6b2ce388247d48c38a92b4a48edf7940a250f0d4` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/instance-source-edition-6.md) | 279 | `declaration-track:e84fe1a931622c34b90fd541639624f93919d3e0323293eb2b95369c2a40ec82` |
| 32 | `instance` | [bicategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/bicategory.md) | 287 | `declaration-track:911e60421d12d9f32f08cc5308a6b753746cf206489c3fbf500d6deabc5ff273` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BasedCategoryPublic.lean/declarations/instance-source-edition-5.md) | 299 | `declaration-track:ba9f5aeb7b563ef75e842a88afa2e820abbe078ff9a1171dbe6bcc493b51a701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39ae0e32fe72024f06195fcd78bbd0d53d2f432078deaa2aab027597daa0a462 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variantf0ad11c3d8e123a7a6482878e66a24da1e57b9ef8a531aec51e90d1d70abafc5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/BasedCategory/Variantf0ad11c3d8e123a7a6482878e66a24da1e57b9ef8a531aec51e90d1d70abafc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
