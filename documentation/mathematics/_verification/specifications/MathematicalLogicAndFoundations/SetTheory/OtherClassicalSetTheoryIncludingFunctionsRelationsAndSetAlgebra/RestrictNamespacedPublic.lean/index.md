# Verification target: Restrict Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "301799cbeec3c7486a4fa22ce2dda066f4a33020",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `301799cbeec3c7486a4fa22ce2dda066f4a33020`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-source-edition-2.md) | 40 | `declaration-track:6781fc728069e5f9b3892c4b7331c79ca30e8079de1897cff7c02352f6983cdd` |
| 2 | `theorem` | [domRestrict_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-def.md) | 42 | `result-track:b34da595c25c8675701d64c05e77e5fb2688749ddc68d65c97be7dd226dc43f8` |
| 3 | `theorem` | [domRestrict_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-eq.md) | 44 | `result-track:692d06bc98e05936918b90e16a1d2fec7f287c58c9b9d14e2ba63839261a6e5c` |
| 4 | `lemma` | [domRestrict_id](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-id.md) | 47 | `result-track:53ea6b56ddd5466e974d20d13e4d32e8a1a4bff484f914a05882c903a8a02d4e` |
| 5 | `theorem` | [domRestrict_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-apply.md) | 50 | `result-track:78b8bcadfab402dbb20fed613faf495f8c54578d0c27723aea9137ad2b495a67` |
| 6 | `theorem` | [domRestrict_eq_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-eq-iff.md) | 53 | `result-track:d623d1faea07679fc631cab89005e62b4869b2555f85ab7c48472242dce387c2` |
| 7 | `theorem` | [eq_domRestrict_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/eq-domrestrict-iff.md) | 57 | `result-track:ddba3e3c3edad0fdbca6ebf4a8d1c6354a61c8a817a55fa8340e07d624ad7d4a` |
| 8 | `theorem` | [range_domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/range-domrestrict.md) | 62 | `result-track:b421f1675c6201baf986ef1180d19a6642084d9a63dbd0d7a1b1afcfc32b3033` |
| 9 | `theorem` | [image_domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/image-domrestrict.md) | 65 | `result-track:851040cba1232c9f2a95ffa8097d7310ea1ebf3ec6c722ec2ba7da2592fbb2a8` |
| 10 | `theorem` | [domRestrict_dite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-dite.md) | 70 | `result-track:e8ed84ce3814b302dabffc8e7954ac2fb4ffafbe9b99a269903f1a7d6f51d60a` |
| 11 | `theorem` | [domRestrict_dite_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-dite-compl.md) | 76 | `result-track:4bef825da2ebd24c17461d268f6e8ebd9966f1b7e8a969b1f5d17b908cc84b06` |
| 12 | `theorem` | [domRestrict_ite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-ite.md) | 83 | `result-track:5f2a49d5d30425f71e637ccc9bc816931facb5a28432addecb0d18ad8a17b2f2` |
| 13 | `theorem` | [domRestrict_ite_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-ite-compl.md) | 87 | `result-track:9fbf34bf72c9c0557fc39fea52aaca543e3f8da9275845c07f1ccb5e409c9646` |
| 14 | `theorem` | [domRestrict_piecewise](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-piecewise.md) | 92 | `result-track:9209a82c84f0c477f35a139471e473c4a6e2c09b16ef305abe4f9fa99c2a2c07` |
| 15 | `theorem` | [domRestrict_piecewise_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-piecewise-compl.md) | 96 | `result-track:4300156887ab9fc6fc4e2c6335550c5d1c47d4db0730e7c1977566b7e158d722` |
| 16 | `theorem` | [domRestrict_extend_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-extend-range.md) | 99 | `result-track:8342ee1f1c3f60f10f7bf4dbc441cc549895064474f76b0e5d161d2dc6661880` |
| 17 | `theorem` | [domRestrict_extend_compl_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-extend-compl-range.md) | 105 | `result-track:df7ee6319646c3317f3f63b1e0d8ee827a3c07468adc2303481b8767d800745b` |
| 18 | `def` | [domRestrict₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict.md) | 112 | `declaration-track:0d1d48f6fd5a3da382581aaabc79b26ddaf249fd97ea2670f9b3882fb343f219` |
| 19 | `theorem` | [domRestrict₂_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-def-source-edition-2.md) | 115 | `result-track:f4c6fc0ef849a662251c84e9154d3cb607436a5d298fddd0922a1644bebb548d` |
| 20 | `theorem` | [domRestrict₂_comp_domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-comp-domrestrict.md) | 118 | `result-track:cbd7b47bdd2362aa43ca7cce874cd8202f4842078e9cca484d19d607a5ad625a` |
| 21 | `theorem` | [domRestrict₂_comp_domRestrict₂](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-comp-domrestrict-source-edition-2.md) | 121 | `result-track:dea31d6edeab812aeb8a620e8a8ad18ad1216b920dd0a034a7734a8d88b0e0a2` |
| 22 | `theorem` | [range_extend_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/range-extend-subset.md) | 124 | `result-track:1295ba38dbda81551b3f541c499fa21d755773a619398222ed159e1712adecb4` |
| 23 | `theorem` | [range_extend](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/range-extend.md) | 132 | `result-track:3a6f202478e024437e2efa5d1d3fb5ac34e82dac7d033955d52621ba1bb2be92` |
| 24 | `lemma` | [Restrict Namespaced Public](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-domrestrict.md) | 140 | `result-track:0b728ffe1914b14bf89838298a65c4bc46f5a9cf29f096850202b1b704cf208b` |
| 25 | `lemma` | [Restrict Namespaced Public](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-domrestrict-source-edition-3.md) | 148 | `result-track:9f1c09339cfbe2b6b871b2656caf98f44db8a6cd39c502a8f2d4bc4ef39dc66d` |
| 26 | `lemma` | [Restrict Namespaced Public](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-domrestrict-source-edition-2.md) | 155 | `result-track:483d14f082c02af46a556f3abd626ba8c2414bb7ce99a72f15a663b31a7519ed` |
| 27 | `def` | [codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/codrestrict.md) | 172 | `declaration-track:95f6cd1187b9f9cc4debbaa660b30c4cc6d79526dbd5343da5d32a69bb45469d` |
| 28 | `theorem` | [val_codRestrict_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/val-codrestrict-apply.md) | 175 | `result-track:a964e5ccf71977497b714f36f9e444dbbf735f5b7c36505329b750c444141411` |
| 29 | `theorem` | [domRestrict_comp_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-comp-codrestrict.md) | 180 | `result-track:a4d857f3e75821324536fc0614cf130b4d8ac081258b0ae79f11e0f07ecd6373` |
| 30 | `theorem` | [injective_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/injective-codrestrict.md) | 185 | `result-track:e76736455cec137c57a1d57502cd8476e5e13b823e61ac2ea6f02f5e7d8fc360` |
| 31 | `theorem` | [range_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/range-codrestrict.md) | 191 | `result-track:c514aaafc2278b79a5b54a379e567490da48ed3709c212a4f758abfefc1b9736` |
| 32 | `theorem` | [surjective_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/surjective-codrestrict.md) | 195 | `result-track:03c204ea4475c87239a1a7d01446e8624db450d3baa8f7ca68962a4c19fbffbf` |
| 33 | `theorem` | [codRestrict_range_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/codrestrict-range-surjective.md) | 199 | `result-track:1a859ae77a43ae7db69c70efba63355cd3593d83a230e198fa153cd36f3f86eb` |
| 34 | `theorem` | [domRestrict_eq_domRestrict_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/domrestrict-eq-domrestrict-iff.md) | 207 | `result-track:e82cd7421caec7e7144b62c17fc241ad212a2e04fc91c624064f04bf1d640e50` |
| 35 | `theorem` | [MapsTo.restrict_commutes](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/mapsto-restrict-commutes.md) | 244 | `result-track:d2d2541033be06b487965d6dc3722b525296cf4afe52c586ccaa7e1a2203dea8` |
| 36 | `theorem` | [MapsTo.val_restrict_apply](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/mapsto-val-restrict-apply.md) | 249 | `result-track:38f0d3c5e22714314b8117a98ec90586a27090583bef31382678fc1983672e85` |
| 37 | `theorem` | [MapsTo.coe_iterate_restrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/mapsto-coe-iterate-restrict.md) | 252 | `result-track:e344a986c4f81697632d4ba90f02f88fcff977b4bfa08b590fac0e6fe1016ab2` |
| 38 | `theorem` | [codRestrict_domRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/codrestrict-domrestrict.md) | 260 | `result-track:216c4af5e91d34d501afb9def659e88cc014734c420dd0c3327f619c53ec6471` |
| 39 | `theorem` | [MapsTo.restrict_eq_codRestrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/mapsto-restrict-eq-codrestrict.md) | 267 | `result-track:79f4f330168a582d62549a3854e54b5e9e2f4b324dbe504ab25848ed292f08c6` |
| 40 | `theorem` | [MapsTo.coe_restrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/mapsto-coe-restrict.md) | 271 | `result-track:f5a996d8b10b9b8cd6e6ce72e5f5846ad89b97ab2da5698a080aa9ebe2252b4d` |
| 41 | `theorem` | [MapsTo.range_restrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/mapsto-range-restrict.md) | 275 | `result-track:1ff7858b75c6f00eae016e33698921aee73a3688ccde5057ce345cec9c5fc48b` |
| 42 | `theorem` | [mapsTo_iff_exists_map_subtype](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/mapsto-iff-exists-map-subtype.md) | 279 | `result-track:fc98332b316d2d2eec311e3a1bb36a67f36281968d4c20f5f1e323e3577e0d8d` |
| 43 | `theorem` | [surjective_mapsTo_image_restrict](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/surjective-mapsto-image-restrict.md) | 284 | `result-track:f821741377a607f2d87e9c0c3de9907b40ff7cb4a0cccc175e81c20f372705f0` |
| 44 | `theorem` | [image_restrictPreimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/image-restrictpreimage.md) | 296 | `result-track:c8047f294b9fd80f06aa6ce7705193c91215fc0e1affd408e1ad098c18306e5d` |
| 45 | `theorem` | [range_restrictPreimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/range-restrictpreimage.md) | 303 | `result-track:477b50ab7b6c4f60476b65ec9d8b6a49692ad2a5151a1ad0c5436fd5c315a9c9` |
| 46 | `theorem` | [restrictPreimage_mk](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/restrictpreimage-mk.md) | 307 | `result-track:c604cbdde93794929d3a3a1c4c522c0f87e8efa26c5d0a4d41ba0a17bb6cc813` |
| 47 | `theorem` | [image_val_preimage_restrictPreimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/image-val-preimage-restrictpreimage.md) | 309 | `result-track:f1ed710f3d837db5e49db46799c152d54eabf7a6507dc39be9c563dce74fec50` |
| 48 | `theorem` | [preimage_restrictPreimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/preimage-restrictpreimage.md) | 314 | `result-track:ced1e9113d4ec97a59c525eae6dcc74a10c326636dad98e3d0bc7c6ba2f6639e` |
| 49 | `lemma` | [restrictPreimage_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/restrictpreimage-injective.md) | 319 | `result-track:6c3884b20da2bf4f3ebdce3434345bed2483af8334f11446bf5e8c5239ef475c` |
| 50 | `lemma` | [restrictPreimage_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/restrictpreimage-surjective.md) | 322 | `result-track:09c822ccbef162fb6a22376c8769902097e24c836bcd5affe2aa38533b021f37` |
| 51 | `lemma` | [restrictPreimage_bijective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/restrictpreimage-bijective.md) | 325 | `result-track:2f8bf2105d10549b9f1e5e5c998490912245a1cbc10f878b5d3e62574867265a` |
| 52 | `theorem` | [injOn_iff_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/injon-iff-injective.md) | 337 | `result-track:10da42ff3f07b7ee758405bae6b288be12716c2f26569df94963e82464fefec9` |
| 53 | `theorem` | [MapsTo.restrict_inj](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/mapsto-restrict-inj.md) | 344 | `result-track:f5f6303c9a070ac0e24d8e37fb68d19fea36bd0f7b8de29e4703e127cd522942` |
| 54 | `theorem` | [surjOn_iff_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/surjon-iff-surjective.md) | 352 | `result-track:7c331e2398d5195dc3ed9d3c0a48825dce1f610040ce7ee9a70473cc59f0a572` |
| 55 | `theorem` | [MapsTo.restrict_surjective_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/RestrictNamespacedPublic.lean/declarations/mapsto-restrict-surjective-iff.md) | 361 | `result-track:278f7787ea621f191c5b82f0e5fb065a14ac324ab01181b0b45ffa5665a30657` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3bbd0d98bf592727129d5a7ac7e4ce3a9440eba5230409cc40589a08a5ac2d2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant867f7b550d8810b2c6ad551e0cc40349e500b5bc7983d96cb02284b0485baad0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
