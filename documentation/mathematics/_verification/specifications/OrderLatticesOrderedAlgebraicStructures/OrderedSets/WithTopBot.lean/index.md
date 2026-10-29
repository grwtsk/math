# Verification target: With Top Bot

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0789a88cf982bad3f2a13265bce31f446d95871f",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithTopBot/Variant22c37cf382a3cd5a1450705099495b2d52312275994bf9a6fdf1bbbf98cd3d24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0789a88cf982bad3f2a13265bce31f446d95871f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithTopBot/Variant22c37cf382a3cd5a1450705099495b2d52312275994bf9a6fdf1bbbf98cd3d24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithTopBot/Variant22c37cf382a3cd5a1450705099495b2d52312275994bf9a6fdf1bbbf98cd3d24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.BoundedLattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WithBot` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualBotEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualbotequiv.md) | 28 | `declaration-track:1327d72dc29929df57abf75061dbf53dfdf83fe54c23bfcc114dd63935a642ac` |
| 2 | `theorem` | [toDualBotEquiv_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualbotequiv-coe.md) | 32 | `result-track:e2654378742d3e60f2b104851779a7fb8e2a3badf02d8dae8ae137c9186d5d18` |
| 3 | `theorem` | [toDualBotEquiv_symm_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualbotequiv-symm-coe.md) | 37 | `result-track:331ad76564130cb294573dc714ef3e4dda890fa32e22bea2aa1e3fb00b47ea41` |
| 4 | `theorem` | [toDualBotEquiv_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualbotequiv-top.md) | 42 | `result-track:edc0a3e6db251ea17ff3135a75c8a4ec90922d07a798623aafd9200a21454843` |
| 5 | `theorem` | [toDualBotEquiv_symm_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualbotequiv-symm-top.md) | 46 | `result-track:a42b0a27839321c3485c1cb05ad600c4bb471c9643a670f6945b412f2382cbfa` |
| 6 | `theorem` | [coe_toDualBotEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/coe-todualbotequiv.md) | 49 | `result-track:d71f568da4e1977d136823e7b89fdfb2c67bf56fdb63c9bf42604e694952624a` |
| 7 | `def` | [_root_.Function.Embedding.coeWithTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/root-function-embedding-coewithtop.md) | 55 | `declaration-track:cf87b0165f3c8c04cb4aabd91cd9e860b96f685aa6b7ddbe1f13188ce7a85862` |
| 8 | `def` | [coeOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/coeorderhom-source-edition-2.md) | 61 | `declaration-track:7e49f854253edb2ee37306a02cb4f85d185d351a8e82a11d3630982699a63a5d` |
| 9 | `def` | [toDualTopEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualtopequiv.md) | 74 | `declaration-track:de2c33a287e75f20d4df39fd02ae39f50857f0187619e633e8a16012a1bb35b5` |
| 10 | `theorem` | [toDualTopEquiv_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualtopequiv-coe.md) | 78 | `result-track:d97d5d0b952d325a8f429b973f7520fe0fbbfbe86e0b3c6cb6e7174d144338ed` |
| 11 | `theorem` | [toDualTopEquiv_symm_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualtopequiv-symm-coe.md) | 83 | `result-track:1f51b44ac892f33c591b70dc1926745abf7038d25fff4780e9bd7a196076f04f` |
| 12 | `theorem` | [toDualTopEquiv_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualtopequiv-bot.md) | 88 | `result-track:436ce8a833e26817fc63bd1a1b9a072885a957c5c5100e8da125d4e966159d3d` |
| 13 | `theorem` | [toDualTopEquiv_symm_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/todualtopequiv-symm-bot.md) | 92 | `result-track:b99b672413f64cb74c4a8899158fbdbd32c0a007fc1f2ba193b32b9bbb153710` |
| 14 | `theorem` | [coe_toDualTopEquiv_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/coe-todualtopequiv-eq.md) | 95 | `result-track:c819c4ceee7caa42b51bc4bddab841c3e28bd989866a59b8a9c8fde136a100ac` |
| 15 | `def` | [_root_.Function.Embedding.coeWithBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/root-function-embedding-coewithbot.md) | 101 | `declaration-track:f59c898ac56162a9facd6dbd0b69b4154ce23079485dda48854d62fc7a2ea64b` |
| 16 | `def` | [coeOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/coeorderhom.md) | 107 | `declaration-track:6e3cd1db4dccc385af9f9c0c6b664d53f99440f2e03c158f36eedcfec473add9` |
| 17 | `def` | [withBotMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbotmap.md) | 120 | `declaration-track:53693bca4689df3e81c2dcec7585d309bbf0746c1bbff62b7d4e1834bb1f3e77` |
| 18 | `def` | [withTopMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopmap-source-edition-2.md) | 125 | `declaration-track:c17180e338a4f7ce0b321216ce01ca672ad6c3ed4b2ad863d05660dab0c84b00` |
| 19 | `def` | [withBotMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbotmap-source-edition-2.md) | 136 | `declaration-track:ee41221044ae482c8446a7425620971a72f0ab937bf05bd6e42ae26b98857e18` |
| 20 | `def` | [withTopMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopmap.md) | 142 | `declaration-track:96f5ed734d956a00d64792e7219294339210ba2f68699d6501805884e54b3427` |
| 21 | `def` | [withBotCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbotcoe.md) | 147 | `declaration-track:c95953719e9510c1668bb1411a5b31b3ba935822732b5352fe1012c666ff56d0` |
| 22 | `def` | [withTopCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopcoe.md) | 154 | `declaration-track:49e34b467931ed7875c539029b7f33addf698a87d0bf565a7cbf93bf90bdf099` |
| 23 | `def` | [withTopCongr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopcongr.md) | 165 | `declaration-track:8fe363ea6fb2aaf8f37fea736c1794edc488a33f897b9d9d2b99914bd539d2bb` |
| 24 | `theorem` | [withTopCongr_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopcongr-refl.md) | 170 | `result-track:7834bfa128844df08405355d6653e050445a751285acb1f6329b1b97817cc780` |
| 25 | `theorem` | [withTopCongr_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopcongr-symm.md) | 174 | `result-track:e518aec7ff817ba0f576c7358feec6f678525ffc8d87cb04b9dc87905e037581` |
| 26 | `theorem` | [withTopCongr_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopcongr-trans.md) | 178 | `result-track:94e76fb0076da7efa300dd6e29b4c67ad8fe6537ec82f15e51743d837c55bfd3` |
| 27 | `def` | [withBotCongr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbotcongr.md) | 184 | `declaration-track:c4fa91f257d55d3fdf592264c3ae2600a9af2f6b901a4ab6ede04509ef8fd12b` |
| 28 | `theorem` | [withBotCongr_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbotcongr-refl.md) | 188 | `result-track:d42f0f759bbe03d353cace1c0a64e46a60175bbad7cfa3cc191e6d40aaf15783` |
| 29 | `theorem` | [withBotCongr_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbotcongr-symm.md) | 192 | `result-track:c2b0045854dc5b5b2b8ac5e20f65a5af7b3a4be9f568f9a71852576977c74c01` |
| 30 | `theorem` | [withBotCongr_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbotcongr-trans.md) | 196 | `result-track:844feb4b541d7f9bd3575be4090aa79bfe0bdb2fe9707d82e535b26047343222` |
| 31 | `def` | [withTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-source-edition-6.md) | 208 | `declaration-track:ebf58d0549a7d14bf7adf4dc7f8bee733147a244e406876e99c7188ab02d5ed1` |
| 32 | `theorem` | [withTop_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-id-source-edition-2.md) | 218 | `result-track:5f51a5a952af58d68ee23cd7cb371d5498852227315a3607f37a2828baa5be44` |
| 33 | `theorem` | [withTop_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-comp-source-edition-2.md) | 221 | `result-track:8bd0a008ea494dd9b345a0d54abb75169f80191f54e58fd3b00fdf6d6874c33b` |
| 34 | `def` | [withBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-source-edition-2.md) | 227 | `declaration-track:17d5390d420b020fa02b5970139eb394b85e48712589139757af9936353fa57a` |
| 35 | `theorem` | [withBot_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-id.md) | 238 | `result-track:658feb1b9f7e0ca8873216696429df70cb14c7170623c6ebe53f2ba581d0e3d3` |
| 36 | `theorem` | [withBot_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-comp-source-edition-2.md) | 241 | `result-track:714b6ce119406a6153bcedb7ebf696a1e61c6b2da97005af5ef13139466ee921` |
| 37 | `def` | [withTop'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-source-edition-4.md) | 247 | `declaration-track:de8558ea1937a6e6edd87ecaa5b6f57ab6164e1276440c316091e68ceaea1492` |
| 38 | `def` | [withBot'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot.md) | 258 | `declaration-track:14fb96bfc06ea23119703247369c5a51783c7e5e82f97bd38305edc6916027fa` |
| 39 | `def` | [withTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-source-edition-3.md) | 276 | `declaration-track:550ebfefa060dce1c524acf0e8494ad09a50df31157bb2b2bc2746f90288c2c7` |
| 40 | `theorem` | [withTop_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-id-source-edition-3.md) | 287 | `result-track:81b2264fa6cd1e01000cd0f99dd4d0ca961b467b5d445b056daeb0e5cc17841e` |
| 41 | `theorem` | [withTop_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-comp.md) | 290 | `result-track:14a740c6f4498e5caf004c344cb57b1e5465bcaa38782b62d8b8752820ffbbd8` |
| 42 | `def` | [withBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-source-edition-6.md) | 296 | `declaration-track:ff1e2921e18b52f31b0cad1e51e5b02d8764a02bd24d895a13502a8bf6cec21b` |
| 43 | `theorem` | [withBot_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-id-source-edition-3.md) | 306 | `result-track:da1cc55019a6206744fa23e1fac0f5a381a6fc890ac24a8bbabc96432aaca2ae` |
| 44 | `theorem` | [withBot_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-comp-source-edition-3.md) | 309 | `result-track:d7811f04a9d92828885a5bd0304e7355f5bb658ef6c002553a0525ee07ac1b3e` |
| 45 | `def` | [withTop'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-source-edition-2.md) | 315 | `declaration-track:47e90ec97772ccbaf41add73a8f2739e337f77d236b3d61a22d6459366975260` |
| 46 | `def` | [withBot'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-source-edition-4.md) | 327 | `declaration-track:dda013323587ba1779eebc4438a01ae2c982e73daf668590044fd53c7a083f4b` |
| 47 | `def` | [withTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop.md) | 344 | `declaration-track:3f0a9ecb299e0fc6daa14108c99088fc02cb4edd6798027a06c13acb4e0423b2` |
| 48 | `lemma` | [coe_withTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/coe-withtop.md) | 349 | `result-track:351e3dd90b8931ab3916c0a2a8699f1eee1a3c14e290e9ef211ed150e9c2d3e4` |
| 49 | `lemma` | [withTop_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-apply.md) | 351 | `result-track:9c87ec5ec08434e98990fd1050f023f915b93578407f421c8066dd31ce292db8` |
| 50 | `theorem` | [withTop_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-id.md) | 354 | `result-track:4ee4b261a781dbd194309b91484bcdeadfb5ac5ff05cbb1af11d9c3ed6f252e9` |
| 51 | `theorem` | [withTop_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-comp-source-edition-3.md) | 358 | `result-track:d6f019183e371f83ec61ab7a724b20faaabea795f4865b50a6c91a4c84f762b6` |
| 52 | `def` | [withBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-source-edition-5.md) | 364 | `declaration-track:eacf155e256157786ff427ba71f8832ab76976156deec68cb9aa066741f1e531` |
| 53 | `lemma` | [coe_withBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/coe-withbot.md) | 369 | `result-track:3812ac144b19b7950b824aabef33c11a499f7b184f6f7738a56689ace43b1877` |
| 54 | `lemma` | [withBot_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-apply.md) | 371 | `result-track:fee37a65f6c2aac55bed5a01495a3327363f61773f78c6e65dc82332ff948494` |
| 55 | `theorem` | [withBot_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-id-source-edition-2.md) | 374 | `result-track:ad4bd9e05d7a21cb408060a7337972acfac5e56f8099839371b3989c4766f27e` |
| 56 | `theorem` | [withBot_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-comp.md) | 378 | `result-track:4317d9b5187d5bf4daa74e70a81ca073749434f18cd4a01441f3420844f60e1f` |
| 57 | `def` | [withTopWithBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopwithbot.md) | 384 | `declaration-track:572cad35cc2caac500fddd1b31dc63432bce0c75ef0047cb26e89f18017f0b3c` |
| 58 | `lemma` | [coe_withTopWithBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/coe-withtopwithbot.md) | 390 | `result-track:3ca75939264cfd3cc87b354c1f123e548eeea0909a9c59fdcdbbd84a306ffa4e` |
| 59 | `lemma` | [withTopWithBot_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopwithbot-apply.md) | 392 | `result-track:303335b0f36410b1d48580dfa3680d1f548c93c47186e339feb12cd109818074` |
| 60 | `theorem` | [withTopWithBot_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopwithbot-id.md) | 396 | `result-track:42c09fc6f138ce700b828764c539d5c6305259759d71db76617090e0abfe3b5b` |
| 61 | `theorem` | [withTopWithBot_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopwithbot-comp.md) | 403 | `result-track:7fec12c84413299ac58708e160435b738a845078dc06e6695ac8327eead62cf6` |
| 62 | `def` | [withTop'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtop-source-edition-5.md) | 409 | `declaration-track:e814ca0a4bcd1b0c9055cca2ff6aefc3c4de4ea58112e56e5e779e2a4dcd0644` |
| 63 | `def` | [withBot'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withbot-source-edition-3.md) | 414 | `declaration-track:1aaa3bf20d60f695e951fe89813f0a09dd2c67a04a1a336f2f743649e5887028` |
| 64 | `def` | [withTopWithBot'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/WithTopBot.lean/declarations/withtopwithbot-source-edition-2.md) | 419 | `declaration-track:f901146996943f45c2387edd8b3ec1cd4ecbe0023099067c81f97d5921cd4990` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=150c931742ea137a98137a45c72afa91a49cde483241192af033d39a1f6aca3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithTopBot/Variant22c37cf382a3cd5a1450705099495b2d52312275994bf9a6fdf1bbbf98cd3d24.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithTopBot/Variant22c37cf382a3cd5a1450705099495b2d52312275994bf9a6fdf1bbbf98cd3d24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
