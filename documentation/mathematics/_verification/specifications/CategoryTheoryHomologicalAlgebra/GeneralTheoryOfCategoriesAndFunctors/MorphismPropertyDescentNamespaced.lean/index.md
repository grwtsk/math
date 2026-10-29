# Verification target: Morphism Property Descent Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d4d1285701f7f6c255d8aaf048285b1cdbcc3ad",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantd5b6130c69d8b68b4f335a6bcc6c8150a967e8cf93a614449b440bad53cf3f9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d4d1285701f7f6c255d8aaf048285b1cdbcc3ad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantd5b6130c69d8b68b4f335a6bcc6c8150a967e8cf93a614449b440bad53cf3f9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantd5b6130c69d8b68b4f335a6bcc6c8150a967e8cf93a614449b440bad53cf3f9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DescendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/descendsalong.md) | 34 | `declaration-track:725a0736fe8f7a824ddd2c088e186afd21bdfa66a0b519f6204ab1c8c93b1c47` |
| 2 | `lemma` | [of_isPullback_of_descendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/of-ispullback-of-descendsalong.md) | 42 | `result-track:b39183dd3ac6f5c1228ac34c70409df72620840f571d8c7f30d5be77ab58d329` |
| 3 | `lemma` | [iff_of_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/iff-of-ispullback.md) | 46 | `result-track:d20b0cbf99ec63f84a842ce73ec6feac6fc7c49c961bb7c01bd331ab8e13908d` |
| 4 | `lemma` | [of_pullback_fst_of_descendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/of-pullback-fst-of-descendsalong.md) | 50 | `result-track:7b4425fcb0e0d89c62ff887b3713ea3acf35b15d0161ec734ce1e98b6e14fd69` |
| 5 | `lemma` | [pullback_fst_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/pullback-fst-iff.md) | 54 | `result-track:99a62a21c4bf6572775cc7eb0f0b7945b30fdc4f4e4c0313a72ff87d2ef477b8` |
| 6 | `lemma` | [of_pullback_snd_of_descendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/of-pullback-snd-of-descendsalong.md) | 58 | `result-track:a8c54367edfa8d4e0c7714cb3cf5edc328d4543fa3bc4be5c972553931ceb1fc` |
| 7 | `lemma` | [pullback_snd_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/pullback-snd-iff.md) | 62 | `result-track:12560f550f733305a376f127beea7ec2f3828a9c0ddbf5e01e96bb14dd9203ae` |
| 8 | `instance` | [DescendsAlong.top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/descendsalong-top.md) | 66 | `declaration-track:8a546d7d0aae7edb1730d5a935929e84887d75da8923fe14c69fa9eef4739321` |
| 9 | `instance` | [DescendsAlong.inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/descendsalong-inf.md) | 69 | `declaration-track:3ba61f7a896f895ce98f566e9e438e0b0b4f226a47c208ada836be165222f726` |
| 10 | `lemma` | [DescendsAlong.of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/descendsalong-of-le.md) | 73 | `result-track:94f29df7b9f4be720c8b0a7c1b38431692c2bb58204ad76f66b37d35d29bae34` |
| 11 | `lemma` | [DescendsAlong.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/descendsalong-mk.md) | 77 | `result-track:77c1bff5684f9984e092fc8ce511438f7ff048facc402745f2ce13b70493766f` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/instance-source-edition-2.md) | 86 | `declaration-track:d02f6e2373ca8a6fcac661dcf584ef733691dafb934a96ca9631214f4f5eeda3` |
| 13 | `class` | [CodescendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/codescendsalong.md) | 97 | `declaration-track:9c070d8fd40120a47942b54f61c3d32857e20ef8ba9354824adb601480660b0b` |
| 14 | `lemma` | [of_isPushout_of_codescendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/of-ispushout-of-codescendsalong.md) | 105 | `result-track:876cc4e2a9d3faca6ef9c3f91b5764664b6bd76223ba03b1d2c025facea22eb2` |
| 15 | `lemma` | [iff_of_isPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/iff-of-ispushout.md) | 109 | `result-track:55af1846b3b8dfca1ed55658e261644631762307aadfac3ecb02a5694b177c30` |
| 16 | `lemma` | [of_pushout_inl_of_codescendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/of-pushout-inl-of-codescendsalong.md) | 113 | `result-track:ba1df288889d0f756a97ec701ddc21753df709a6a5f16d7fee755319c918d900` |
| 17 | `lemma` | [pushout_inl_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/pushout-inl-iff.md) | 117 | `result-track:bc1aeb36297422ff5084b4bdbb5cbcbc47990f43aada3fa0f5605ead28d33570` |
| 18 | `lemma` | [of_pushout_inr_of_descendsAlong](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/of-pushout-inr-of-descendsalong.md) | 121 | `result-track:27734beecce2c00f6a4875349dd3e9d4089173ffce3ccc84430418cda065d93a` |
| 19 | `lemma` | [pushout_inr_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/pushout-inr-iff.md) | 125 | `result-track:3261efe45056f0d5766b822bd7902d8cb98f4a079be0fa8d14f352841089349a` |
| 20 | `lemma` | [CodescendsAlong.of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/codescendsalong-of-le.md) | 129 | `result-track:c176272eb595bf6deb831d7f5628095a93a4825727be16f274336bde3015d09f` |
| 21 | `instance` | [CodescendsAlong.top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/codescendsalong-top.md) | 132 | `declaration-track:16d0a48eb97537619ea05ad55e25489c22ee827c958d117e60861ce0b6d5295e` |
| 22 | `instance` | [CodescendsAlong.inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/codescendsalong-inf.md) | 135 | `declaration-track:98b1b3a7a1d0d459c397fe9bd8ba62908a5a720a3b34eb560a4b35a7d66db78e` |
| 23 | `lemma` | [CodescendsAlong.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/codescendsalong-mk.md) | 141 | `result-track:51f5c000c5bdfa774c0e9102ae48fad37ed1da4624684aabfcff90fb737657cb` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyDescentNamespaced.lean/declarations/instance.md) | 149 | `declaration-track:8aed627cd324eb64a1179db51ae17a4cb5ba18fbe0a66617c83e7b200a7752a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=571aac3bbe0b338cb28ca94c0de4b5e7bb16c9113a5cfb8d775ee92c257b187a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantd5b6130c69d8b68b4f335a6bcc6c8150a967e8cf93a614449b440bad53cf3f9d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Descent/Variantd5b6130c69d8b68b4f335a6bcc6c8150a967e8cf93a614449b440bad53cf3f9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
