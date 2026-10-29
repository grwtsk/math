# Verification target: Semantics Namespaced Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ca54a72b29ad319f57ef27c53b9230a4de25f66",
  "lexical_observation_count": 122,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ca54a72b29ad319f57ef27c53b9230a4de25f66`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Syntax` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-source-edition-3.md) | 80 | `declaration-track:a32d5517a49e66cf5649d278303f86d9a41b0b0be045f86f24e4ee3d0ca62401` |
| 2 | `theorem` | [realize_var](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-var.md) | 90 | `result-track:542fb4fcb7ff9b41b5deb398e9cae3ce375ca70407cd3e30c3ea89af9503a94f` |
| 3 | `theorem` | [realize_func](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-func.md) | 93 | `result-track:1c9919be6e43b28afbafd097e8863f0a90e711baad41c69380951ddde282c9f5` |
| 4 | `theorem` | [realize_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-relabel-source-edition-2.md) | 97 | `result-track:7d4e6e876332eddef195b281e3ef13e7cba46fd2d6405b8a49a62a4ae58c7263` |
| 5 | `theorem` | [realize_liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-liftat-source-edition-2.md) | 105 | `result-track:cb38f3dd860a6f12bdf7676be3842b9934dbbaf010514ba70532ec75c8d5f8b3` |
| 6 | `theorem` | [realize_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-constants.md) | 113 | `result-track:e10500b4fdb33cff3b8a9b04788bcab18d8452ac05f7b5c881ec36d025dd9567` |
| 7 | `theorem` | [realize_functions_apply₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-functions-apply.md) | 118 | `result-track:b341c1525841752039289967033df8e90a48b233e34dc1c8bf05c66f9ab30336` |
| 8 | `theorem` | [realize_functions_apply₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-functions-apply-source-edition-2.md) | 126 | `result-track:e495caae314f88439fdef5bed53ddba6f205ea8784b94760b23eadbfc3716171` |
| 9 | `theorem` | [realize_con](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-con.md) | 134 | `result-track:b84cccb51e478b67c8eb1a900731952afc729e384131af1c02b9b1e3e46201b5` |
| 10 | `theorem` | [realize_subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-subst.md) | 139 | `result-track:0de71882e31d8cc822afa8aef0db76eddfd90c8e1c2cf014c292ee2bfc02d812` |
| 11 | `theorem` | [realize_restrictVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-restrictvar.md) | 147 | `result-track:7d218d08652ec67ba128c62885e560900a18e9c9dd9c9e023b5190ddf8c3f93d` |
| 12 | `theorem` | [realize_restrictVarLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-restrictvarleft.md) | 156 | `result-track:4c8d2e1d645e40cbb8fa950c5062d7980d642b9f6a4eb4c254eaef3af1919333` |
| 13 | `theorem` | [realize_constantsToVars](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-constantstovars.md) | 167 | `result-track:a050b14c265590e5e2c0a2518b0d07177cc98f74d4003204905f9711591f3c5e` |
| 14 | `theorem` | [realize_varsToConstants](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-varstoconstants.md) | 187 | `result-track:3f6a89897cfb7aa61877227da15f50b897ac9ca68f9e92e4cc3d3ab17e60d931` |
| 15 | `theorem` | [realize_constantsVarsEquivLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-constantsvarsequivleft.md) | 200 | `result-track:ea6f78704b8040fa2624cb16add17c78a353117bbc5656f0d862263f5ef52bb2` |
| 16 | `theorem` | [realize_onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-onterm.md) | 217 | `result-track:a685c7ce82a5b2e8e763c1886c95d4c846a1f0975e6f01d19aa5015e043c69c1` |
| 17 | `theorem` | [Hom.realize_term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/hom-realize-term.md) | 228 | `result-track:c9ae1122660deb1ec083158d42102f5e89242e7701a9e11788ceecf203a11362` |
| 18 | `theorem` | [Embedding.realize_term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/embedding-realize-term.md) | 239 | `result-track:89be419228bc06446b783bfcc17fb05d85bb1e074c6f4ce8e3d28dbddc6e7f25` |
| 19 | `theorem` | [Equiv.realize_term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/equiv-realize-term.md) | 245 | `result-track:2f6f8e8a509d4e4c06512709a17c8d2ba295c903b263e68c3b69a34cf77e1231` |
| 20 | `def` | [Realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize.md) | 258 | `declaration-track:12ae3b36a4ec4d408672a17b1788964cd813e1926f38e4bba69f84f07e9b9a0e` |
| 21 | `theorem` | [realize_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-bot.md) | 271 | `result-track:3db60ffad14039d8840fbaf7b746e54d34dad5239e895f176cf33604294941b6` |
| 22 | `theorem` | [realize_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-not-source-edition-2.md) | 276 | `result-track:f4680d081cf8f5319f31f398473d8180c60df4fb9fef36cc17d9d62cc4752a4e` |
| 23 | `theorem` | [realize_bdEqual](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-bdequal.md) | 281 | `result-track:2ae48b4d739264d949383124e7e6eb2ed21ed7331706b6eb2669d79854137f05` |
| 24 | `theorem` | [realize_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-top-source-edition-2.md) | 287 | `result-track:e80df06058e2de921a06011837bd89b2104f05de2c7a0b719012e885d852c635` |
| 25 | `theorem` | [realize_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-inf-source-edition-2.md) | 291 | `result-track:f1802a80060daaf2f125a2227644030ee8f1c1b11c06eebe41d44abc6f46010c` |
| 26 | `theorem` | [realize_foldr_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-foldr-inf.md) | 296 | `result-track:bea52ddefe73e4355423d7a0664ad3f6a16ade9008bd9773461f468f34e784e4` |
| 27 | `theorem` | [realize_imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-imp.md) | 304 | `result-track:3eba199e84cdcf6a995136d6840c5505984a11fd556552bfef79b8d8a77dd7e5` |
| 28 | `theorem` | [realize_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-rel-source-edition-6.md) | 309 | `result-track:df82965655857eca9e67879e066932840b6a29db39c100327e9ad96008bcb92d` |
| 29 | `theorem` | [realize_rel₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-rel-source-edition-4.md) | 315 | `result-track:b8d769ae66060d869be7eb99aca15b9e7c626e9d32aa1d2e8b75baff660b5226` |
| 30 | `theorem` | [realize_rel₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-rel.md) | 323 | `result-track:0500a4c2bed849349bed61070a7ab13c8a75a5e883ea971ccb9e48aeecc82008` |
| 31 | `theorem` | [realize_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-sup-source-edition-2.md) | 333 | `result-track:8a880919e382519e700c1d83f31b7af4fe6282a8b515e9c91df644d43eea8a7e` |
| 32 | `theorem` | [realize_foldr_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-foldr-sup.md) | 339 | `result-track:cd5f76c7430e2cae3cc1a8cb516ec49822f14f4c371de120130095956aed5a2a` |
| 33 | `theorem` | [realize_all](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-all.md) | 348 | `result-track:01227173d616562dd9e06482de9913eff290c30e90a58861e2b7b3751d4a3294` |
| 34 | `theorem` | [realize_ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-ex.md) | 353 | `result-track:cfd6a957c060a0a7a7b264ead2cc0a4f0f20fba77bb4ae0d980668d7bc973466` |
| 35 | `theorem` | [realize_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-iff-source-edition-2.md) | 359 | `result-track:e538b04f8f94694deff8f7327176983041d17f0fea417a1b5322398222717030` |
| 36 | `theorem` | [realize_castLE_of_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-castle-of-eq.md) | 363 | `result-track:bab9e79e7d21a27c1a3d13fc651db493f3f24ba5adc72f3e6e8df963e7330c51` |
| 37 | `theorem` | [realize_mapTermRel_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-maptermrel-id.md) | 369 | `result-track:caba9e8601309317f716ef56f85528a5ab1fcbead16336ade6f3f771df245c3a` |
| 38 | `theorem` | [realize_mapTermRel_add_castLe](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-maptermrel-add-castle.md) | 386 | `result-track:04b2bd47909e5d5d84d76589dd96b08b6fefbcf859f426d49224b155d6d5d491` |
| 39 | `theorem` | [realize_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-relabel.md) | 405 | `result-track:335a426cef687646be16958673d836a3f68165e40542e26c71a1e87f86a4d99b` |
| 40 | `theorem` | [realize_liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-liftat.md) | 412 | `result-track:1bbdfaea810b65c38fbcbd50fa70d5ab2b37dbf842c856afbc5f1bb975ccfca5` |
| 41 | `theorem` | [realize_liftAt_one](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-liftat-one.md) | 442 | `result-track:c15eed05d99efe322ecfda3c6877530b04b459a626cbab30bc3b4428607e6c5e` |
| 42 | `theorem` | [realize_liftAt_one_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-liftat-one-self.md) | 450 | `result-track:aacd01bfeb2ef801c221e89e7f4f3b3f8ea3402a634d6dbe5789b14a315363d1` |
| 43 | `theorem` | [realize_subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-subst-source-edition-2.md) | 457 | `result-track:2a1d61f9190ab8a66e50c23ce41fd5950047b311c7fdd9f89ebf0d82ddc1ddb8` |
| 44 | `theorem` | [realize_restrictFreeVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-restrictfreevar.md) | 470 | `result-track:ff6b2fda399a818916467ae448f32cdb104ce17067c7a6ef49533016ee8bcb23` |
| 45 | `theorem` | [realize_constantsVarsEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-constantsvarsequiv.md) | 481 | `result-track:234b5dc1e408c098c8ae50e482cd92ca01eef2b4a8658afb0f96e89f30d2ded1` |
| 46 | `theorem` | [realize_relabelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-relabelequiv.md) | 494 | `result-track:b96575812705dfc7d1801796763f829a02d0dc5ccb7d76a224f479ec3255770d` |
| 47 | `theorem` | [realize_all_liftAt_one_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-all-liftat-one-self.md) | 505 | `result-track:1324a0ea01ef91361e87b9f642874b84cc4fcea7166f3019ba9677dc2220ce93` |
| 48 | `theorem` | [realize_toPrenexImpRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-topreneximpright.md) | 516 | `result-track:6bfe20116835a1b79f5f0e96557576676e8d19b3358991753eb068d75aedaee0` |
| 49 | `theorem` | [realize_toPrenexImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-topreneximp.md) | 538 | `result-track:0f9c154515d5c359b62cbf70b3142ad640d041e910073c483b23d5411dedf291` |
| 50 | `theorem` | [realize_toPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-toprenex.md) | 561 | `result-track:c18bdcf33ada47395dde4618e52e41d6416913745983dc6e68513416fd2cb16d` |
| 51 | `theorem` | [realize_onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-onboundedformula.md) | 588 | `result-track:73d560f8b07513edb8b51fb5f1e47f2669997f6d8aad62fa7fdd016f2006fa85` |
| 52 | `def` | [Realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-source-edition-2.md) | 613 | `declaration-track:75d958070a5311a468f363834b8bd54180450081cf0d2628ecabf5fd1f5fc9f3` |
| 53 | `theorem` | [realize_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-not.md) | 620 | `result-track:c678e15b12a918d1f0a4a7628a4dcc1c6c10708ed9b0e7d04cb29374f7ce50f2` |
| 54 | `theorem` | [realize_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-bot-source-edition-2.md) | 625 | `result-track:8a48f0bd54f89ccd969ced1ef8b34d0c390e434939ad6ddf2c5b1a53338e2578` |
| 55 | `theorem` | [realize_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-top.md) | 630 | `result-track:8b00364ec5d7daed9d7361febb20761890980fbdd7b2f76f6a4d346244738bf5` |
| 56 | `theorem` | [realize_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-inf.md) | 635 | `result-track:87f9f4a5c9beb0b6f3e2226a8e1cf5848979c347d236cf274b7aa705b2274329` |
| 57 | `theorem` | [realize_imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-imp-source-edition-2.md) | 640 | `result-track:b80a8c4e8bbf267610df5aa58928eafc4037685ba8dabe7163fb53ff92447d4c` |
| 58 | `theorem` | [realize_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-rel-source-edition-2.md) | 645 | `result-track:29a31a5a9da21e5bfcfcebffe40780a56aede52443def668b8a90ec504dcaa36` |
| 59 | `theorem` | [realize_rel₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-rel-source-edition-5.md) | 651 | `result-track:c62e9477ae1bd21990b75d85a42182f0a19c211c0e7028e702877e506569c239` |
| 60 | `theorem` | [realize_rel₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-rel-source-edition-3.md) | 659 | `result-track:973ff5bc29e86afb15d768e7f65c7db8c0794b091b0e6b37d29f3ccd6baeae2f` |
| 61 | `theorem` | [realize_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-sup.md) | 668 | `result-track:466457f6d39ccefb666491d1a7908bec6bcb77c11e051c188c7b253f19fa5348` |
| 62 | `theorem` | [realize_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-iff.md) | 673 | `result-track:d2117f4c47e3edb4880fa5ed20a77d15509357319ce879c5779f4655da17800e` |
| 63 | `theorem` | [realize_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-relabel-source-edition-3.md) | 678 | `result-track:a761f3f3ea6b1177b7fa185ec217fc58b4cfc264cc25865277fc28a1b525e41f` |
| 64 | `theorem` | [realize_relabel_sum_inr](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-relabel-sum-inr.md) | 684 | `result-track:58e1f917f1efe4e78522f1a346525fd054a1f13a9c17a7d650a357895663e555` |
| 65 | `theorem` | [realize_equal](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-equal.md) | 692 | `result-track:4646b9159fa5df2ed8f78483a0789a931abc3278157f2c1ee43da851bbdcac6f` |
| 66 | `theorem` | [realize_graph](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-graph.md) | 697 | `result-track:e05b8be9dcb54b40d253643b0dcacefb01c07437cfbaccef48a500a78eaa6ea3` |
| 67 | `theorem` | [LHom.realize_onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/lhom-realize-onformula.md) | 706 | `result-track:e813be4fb23e3614ca95e9f7a1a8d91332e8d10dec4210db387664468640b737` |
| 68 | `theorem` | [LHom.setOf_realize_onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/lhom-setof-realize-onformula.md) | 713 | `result-track:db73338333b14787a2d7a0005650bbd6778199ae6806191ded99d401c46fbd43` |
| 69 | `def` | [Sentence.Realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/sentence-realize.md) | 723 | `declaration-track:657b4c22f1d83f1342a834d54553064bc79839848fd108132969b1aba8761cfc` |
| 70 | `theorem` | [Sentence.realize_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/sentence-realize-not.md) | 732 | `result-track:d949c44c0841d85dde0fb00134146106216e07b2c02c0a9f2b1392eb33274254` |
| 71 | `theorem` | [realize_equivSentence_symm_con](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-equivsentence-symm-con.md) | 739 | `result-track:cdfebce69f0d8f300a1fe601e0b53f033b418a9b5415650a686677a8198ad159` |
| 72 | `theorem` | [realize_equivSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-equivsentence.md) | 752 | `result-track:5a57b8687a870f6b44ccf015b409117391e60a2770d6898d5c647c1b8cc9638c` |
| 73 | `theorem` | [realize_equivSentence_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-equivsentence-symm.md) | 757 | `result-track:faa8f398403ab71aff27e5a03bc8db4763a5709fb97453cd0b5532f646c10181` |
| 74 | `theorem` | [LHom.realize_onSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/lhom-realize-onsentence.md) | 768 | `result-track:934d9245e11ded855710c4024dd790b271bd973a213aa0e5ae463586bbdf1cd3` |
| 75 | `def` | [completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/completetheory.md) | 777 | `declaration-track:b5c8ad57f4cd76f6689c48bb20ad7b227de820178d35b366dd93064fc5b49b67` |
| 76 | `def` | [ElementarilyEquivalent](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/elementarilyequivalent-source-edition-2.md) | 784 | `declaration-track:f7d76474baff610ceb9b440820449b742a8af4c69bd63189b389b0918d9a5be1` |
| 77 | `theorem` | [mem_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/mem-completetheory.md) | 795 | `result-track:d3331d0041364aaf89ca827306b69d0c2b8f309927b7113083a1c9bd4982e7aa` |
| 78 | `theorem` | [elementarilyEquivalent_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/elementarilyequivalent-iff.md) | 799 | `result-track:c4396b3f98cdf1f6d51b72fe8bf76fa26cc01e4b08115969f156a08fc5a59c43` |
| 79 | `class` | [Theory.Model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/theory-model-source-edition-2.md) | 806 | `declaration-track:4b1c043480a484afa7c805e0ae669de02df847f771fbc2d299d896f5601436b6` |
| 80 | `theorem` | [Theory.model_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/theory-model-iff.md) | 818 | `result-track:635b85f9f83f4c6a2468de1756176716a3e26a08f0928989347b468acf100282` |
| 81 | `theorem` | [Theory.realize_sentence_of_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/theory-realize-sentence-of-mem.md) | 823 | `result-track:29f63931bb439e53beb72bce6747eb06a05dec8097267e4d2a7a0dd868fc4b67` |
| 82 | `theorem` | [LHom.onTheory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/lhom-ontheory-model.md) | 829 | `result-track:fc8a7fafa0c0f13d0fb3ee2b03102acfc711a5081ec04e55ec83374d627935de` |
| 83 | `instance` | [model_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-empty.md) | 836 | `declaration-track:93f2115e319b72c76e7619c3d470783bea7cec3f60ee73aebe5b80df82ef7d35` |
| 84 | `theorem` | [Model.mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-mono.md) | 842 | `result-track:77e9b18fabf5de1edf8a35b6897915f07c3b5a61c4cb3b2ee84aee13389f5178` |
| 85 | `theorem` | [Model.union](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-union.md) | 847 | `result-track:4bca5091a3bde109436d251ed3b704d893bcfe80eea0a212dce361a18eae7ba7` |
| 86 | `theorem` | [model_union_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-union-iff.md) | 854 | `result-track:d59f891697836ce2ff1805ce65bbbf8bffdb1d6ff285ecc7aa5c94d371e73a3f` |
| 87 | `theorem` | [model_singleton_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-singleton-iff.md) | 860 | `result-track:93b32d2a1b7c4f6d32b760e928e9df7b5659945aa86aa2415a1f22d6da5f022f` |
| 88 | `theorem` | [model_iff_subset_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-iff-subset-completetheory.md) | 864 | `result-track:8532475b79a4d467b76a052fb65b0fd2fc2742e6f401a20a96340e8235b4e0df` |
| 89 | `theorem` | [completeTheory.subset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/completetheory-subset.md) | 869 | `result-track:582340cc3a3e33222fac51bea2c4954cd538dd7bd5c9e2991c20d060875054ed` |
| 90 | `instance` | [model_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-completetheory.md) | 876 | `declaration-track:31184ddf6977d11044e868b6b81a25c84bcb414bd701a50e3a3728aa6cf62134` |
| 91 | `theorem` | [realize_iff_of_model_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-iff-of-model-completetheory.md) | 882 | `result-track:b8cf80c729f5787c22ab4fabd64db996c781d0e82a71885e27ee3e67acc849af` |
| 92 | `theorem` | [realize_alls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-alls.md) | 895 | `result-track:31c9e890b1988e7f0eddf6d09a819a0c2c2fbba738a4504f1b5f437401b6835e` |
| 93 | `theorem` | [realize_exs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-exs.md) | 904 | `result-track:cf2743920635331deb364e02ee2e503d87c7ee4fc72ad879f1415e25f07b8282` |
| 94 | `theorem` | [realize_toFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-toformula.md) | 918 | `result-track:24e35736f80c26c635f8d2a4fe870b69813157b868f14ba959f7a877d75e1c5a` |
| 95 | `theorem` | [realize_boundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-boundedformula.md) | 951 | `result-track:79619ad0e05b931a3475648ea93d9991505409713e519aa9abf891fe8b360456` |
| 96 | `theorem` | [realize_formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-formula.md) | 972 | `result-track:6051bca0b23241c0969d13903f580145eda09df13424585fd5b5e4a5710418d6` |
| 97 | `theorem` | [realize_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-sentence-source-edition-2.md) | 978 | `result-track:cb81de52d5116d751dfe9ac1ca7b0f7224194af8643b8427bda3ce3cdf197725` |
| 98 | `theorem` | [theory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/theory-model-source-edition-3.md) | 982 | `result-track:bf0d7cb2bcfff64d3b6cd305a91db4f52f463400e9f7a64af6278bc8cf2cd3d4` |
| 99 | `theorem` | [elementarilyEquivalent](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/elementarilyequivalent.md) | 987 | `result-track:84f91a5c4c09619fcec6444b670c38cfb3fcc789ccf65dc524072b3059098bbd` |
| 100 | `theorem` | [realize_reflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-reflexive.md) | 1000 | `result-track:cad8a7fd8e8d4162141e2d1ef507605d467e1f2559105739575b77f385a1da0c` |
| 101 | `theorem` | [realize_irreflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-irreflexive.md) | 1005 | `result-track:6502e68fb1ad2b6855f493a347b27ba75919f3152d3eaf61c4adeccee2e12831` |
| 102 | `theorem` | [realize_symmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-symmetric.md) | 1010 | `result-track:5714bf8d574df0dffff3f37643e13d13fd9ea100a61613adf51fa2a2a2bf6ad1` |
| 103 | `theorem` | [realize_antisymmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-antisymmetric.md) | 1015 | `result-track:6ee1c17dfb1423201930bb74901e54fcb2d9e6fc89e7d785fe14bc35d628a16c` |
| 104 | `theorem` | [realize_transitive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-transitive.md) | 1022 | `result-track:edb54d085250311351f85798b3613d859faf485115367263d58e8ef28a2bf113` |
| 105 | `theorem` | [realize_total](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-total.md) | 1029 | `result-track:96e593b89d708a0eb789ba53d8b0200ec59cfe0662482fcfbb0421b0497f757b` |
| 106 | `theorem` | [Sentence.realize_cardGe](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/sentence-realize-cardge.md) | 1040 | `result-track:92a2d1904b643b982a364a4e7286e69f1c4d65aa9f2b8b22831e16be24281b8d` |
| 107 | `theorem` | [model_infiniteTheory_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-infinitetheory-iff.md) | 1059 | `result-track:b3fbafe374feaca1227ab5e98f18af20706540793ddd554e99b43a2cefca306b` |
| 108 | `instance` | [model_infiniteTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-infinitetheory.md) | 1063 | `declaration-track:c2e1b1d9026043a3bfa1a5175e347614282357b5893611795b789d3fc8fc2bb0` |
| 109 | `theorem` | [model_nonemptyTheory_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-nonemptytheory-iff.md) | 1068 | `result-track:823e3bf4b980e2075adb67ce1959aebcce4e937d48acb044878ba227fc679da7` |
| 110 | `instance` | [model_nonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-nonempty.md) | 1073 | `declaration-track:95c48cc5638fc62c3721bb8c593cb4f4ebe860cef803d1f6f781b287e1297f1d` |
| 111 | `theorem` | [model_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/model-distinctconstantstheory.md) | 1077 | `result-track:8463b8c64a515747dcbf365910c890839125566870bc45fe950768eb44b8deaf` |
| 112 | `theorem` | [card_le_of_model_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/card-le-of-model-distinctconstantstheory.md) | 1092 | `result-track:ce67011435e3bc379f32cc02cc449fb6bcccd6aa31b628fe0a37b2fa2512538a` |
| 113 | `theorem` | [symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/symm.md) | 1102 | `result-track:31841b4c4e546a23d15d86c724315c365c2879af02e5ec48c7a857a1be148b71` |
| 114 | `theorem` | [trans](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/trans.md) | 1107 | `result-track:6980ad47a289d7d308f8b812595e54582b8d6e4e1044c4b287551b1fce27cf6a` |
| 115 | `theorem` | [completeTheory_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/completetheory-eq.md) | 1111 | `result-track:ca93393f0dcdb299ba71f1ecd996a1e95a9c7afca2d84ab97b62b6a1c224a61c` |
| 116 | `theorem` | [realize_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/realize-sentence.md) | 1115 | `result-track:9971de8cf6218437036528828bfc3b157acedc7a02a089da6e567bff7020a3de` |
| 117 | `theorem` | [theory_model_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/theory-model-iff-source-edition-2.md) | 1119 | `result-track:a785e6e28465bd767d5a73ebafe495633c65f863c2cecb7915c06371d1fc95ee` |
| 118 | `theorem` | [theory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/theory-model.md) | 1125 | `result-track:46b13ca580e6af9900f0506453da3e91cbc37f7d1f377beabbc9d5f8934ba86c` |
| 119 | `theorem` | [nonempty_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/nonempty-iff.md) | 1130 | `result-track:d751871cd6aae55700c07a00fbbd24b1921d8b42ddfbb40c32c904886d4633a0` |
| 120 | `theorem` | [nonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/nonempty.md) | 1134 | `result-track:6901df7ba8d97a57b65959eb30274256d5519af5a1d421ee9de72599438c8581` |
| 121 | `theorem` | [infinite_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/infinite-iff.md) | 1138 | `result-track:4c122b889ac0ec349c4479aa22648a458e751780bdbc7fc9e8d24ca3eb7210e2` |
| 122 | `theorem` | [infinite](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsNamespacedHom.lean/declarations/infinite.md) | 1142 | `result-track:50a7dba6bd4ac5b9efe63a295a7f0e039f09ecdcc46b36b5472759d6db9bf04c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4755585ebdb77cf6bb75776e397a1619e247e9b36071b79aacedfff50b3698ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant521549c1b5728f55c7ad68cc5efd083af8d66513a6e4ec54d9c140a94c15d78a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
