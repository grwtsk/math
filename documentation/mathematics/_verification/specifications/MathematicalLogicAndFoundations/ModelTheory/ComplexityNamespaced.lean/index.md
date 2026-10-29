# Verification target: Complexity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39818c47e82878a87a008a083f6d3bce5b66de10",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Variant3482d1dee77741d3bca7d07f05dbc9baca5a0afcf308de9cc8e26738d09ddff4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39818c47e82878a87a008a083f6d3bce5b66de10`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Variant3482d1dee77741d3bca7d07f05dbc9baca5a0afcf308de9cc8e26738d09ddff4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Variant3482d1dee77741d3bca7d07f05dbc9baca5a0afcf308de9cc8e26738d09ddff4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Equivalence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsAtomic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-source-edition-2.md) | 54 | `declaration-track:eeb5ac17c05cbab9918e8ea24875f20910f60f50e1b9476f253cbeb1c32109d6` |
| 2 | `theorem` | [not_all_isAtomic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/not-all-isatomic.md) | 59 | `result-track:66ca48f1cf1e707fd5615fc44cf9cce22b60c13fee3fd4596fc3c6ea3b8d3ab5` |
| 3 | `theorem` | [not_ex_isAtomic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/not-ex-isatomic.md) | 62 | `result-track:af1c7c26dd71cf6198fa8757415ff039b4f155c089a54ae0b9360139128610df` |
| 4 | `theorem` | [IsAtomic.relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-relabel.md) | 64 | `result-track:59ff33c54f9ae261efa9547c0f585e7dfcdc61ea28fc66267b75faa120fb1ca5` |
| 5 | `theorem` | [IsAtomic.liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-liftat.md) | 68 | `result-track:0359801e53e29ab4772794dac9e86512355ae0ae1be2837a75e488ea25804db5` |
| 6 | `theorem` | [IsAtomic.castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-castle.md) | 71 | `result-track:b088bb168adbd0acc0ce5dfe40b55ed7427a081482fbcf436d414d5c7a97d464` |
| 7 | `inductive` | [IsQF](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf.md) | 76 | `declaration-track:b04f6ed81c44acaede7e0e641df3e708715769857f34a929189f2ee03b9d9d8d` |
| 8 | `theorem` | [IsAtomic.isQF](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-isqf.md) | 81 | `result-track:f59b43e20a14f3af0b55d3d75d407a19c3caed1fe34245039d5ec83cbc0624c8` |
| 9 | `theorem` | [isQF_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-bot.md) | 84 | `result-track:749c1a5589cd46c55b2f5e501f799f06ed400cb45bb25e1c6937fd95fe256220` |
| 10 | `theorem` | [not](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/not.md) | 89 | `result-track:e6486de5447c2050b0ab8850715e6927dfd0227b3362286525ef45a00034ab02` |
| 11 | `theorem` | [top](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/top.md) | 92 | `result-track:23a7e815d6031247f10b9b239fc3067d9db9349f17d27ac1800670657de1a042` |
| 12 | `theorem` | [sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/sup.md) | 94 | `result-track:22c82c3e026091f03fef759c926b391ac3c2147d8f4427e30dc50d354df7e021` |
| 13 | `theorem` | [inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/inf.md) | 97 | `result-track:a13caf17bda183cfbd7d7caa803a393e9781d990fff72e8a79e6242f558657f5` |
| 14 | `theorem` | [relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/relabel.md) | 100 | `result-track:3405fa229250b45f19f15d7545d2cbe3f284d162fc9f9afc66f20da043875055` |
| 15 | `theorem` | [liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/liftat.md) | 104 | `result-track:1b480bf5ade2338aa332fbe7bc4822b0b530b06cff2e3572f1fadd4e85c2f0d8` |
| 16 | `theorem` | [castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/castle.md) | 107 | `result-track:238695c6f69b603663f2c0eb631111cbdd012c44bda1b29da11f6652e9f345fa` |
| 17 | `theorem` | [not_all_isQF](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/not-all-isqf.md) | 112 | `result-track:6fa29f203bbab85783b644b9103823868c14f4045ae0ed42904556230993e3a5` |
| 18 | `theorem` | [not_ex_isQF](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/not-ex-isqf.md) | 116 | `result-track:dbd5af64a09d9b1630824f0d165a169dd1d70f953fb6c5109c4db85f72f6a316` |
| 19 | `inductive` | [IsPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isprenex.md) | 123 | `declaration-track:021b79559bba0e82b881e4940967445ac29c0201da83accaf737dcd4d99195ba` |
| 20 | `theorem` | [IsQF.isPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-isprenex.md) | 128 | `result-track:09cf7f56e23f5f7e447bd23d9fd9dd5e0a998fb2ca2a1c7e0b315c30557e9337` |
| 21 | `theorem` | [IsAtomic.isPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-isprenex.md) | 131 | `result-track:f168723413c1a58693089081b63f211b17080f9d8cabedb139a03b4ceacd687f` |
| 22 | `theorem` | [IsPrenex.induction_on_all_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isprenex-induction-on-all-not.md) | 134 | `result-track:d444ac06d22466b07904be5c808839726b63f93fb152a5ee17086858769f29c4` |
| 23 | `theorem` | [IsPrenex.relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isprenex-relabel.md) | 141 | `result-track:ccf4beca9627acf9dba6069f02c702ba2874b4f8af41dff11d396a1a7f7b2981` |
| 24 | `theorem` | [IsPrenex.castLE](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isprenex-castle.md) | 146 | `result-track:cd2a828407d30933c7efe53a74ab0d887e006a7e0467d576dce701deb2a9ea50` |
| 25 | `theorem` | [IsPrenex.liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isprenex-liftat.md) | 152 | `result-track:fd5ebdacdffee3b6074ef56a82f45339b85330d78ddd5ea2532e5c0b80154262` |
| 26 | `def` | [toPrenexImpRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/topreneximpright.md) | 159 | `declaration-track:e6506f608bf3f360fef3dd5160e6f4b67552895401c6853e5d0d1fb4152a8d89` |
| 27 | `theorem` | [IsQF.toPrenexImpRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-topreneximpright.md) | 164 | `result-track:fedccb3c6642648f21b53b115fa2187d29214048c2134c9d773b29d89aa2b198` |
| 28 | `theorem` | [isPrenex_toPrenexImpRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isprenex-topreneximpright.md) | 174 | `result-track:9d85fe12363a6b4ffdad4c43a0b68646069100e3e24d6e0d7d6b6efedb275ab1` |
| 29 | `def` | [toPrenexImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/topreneximp.md) | 184 | `declaration-track:c86c77d2b90cc54c6dfed3dee5aaa1ad0b753600e187387fa88529f5fd22ae57` |
| 30 | `theorem` | [IsQF.toPrenexImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-topreneximp.md) | 189 | `result-track:175e52dece8a589ea9a9477c248c30c0ff21c4b05f23fcb2e64573cbedcd69db` |
| 31 | `theorem` | [isPrenex_toPrenexImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isprenex-topreneximp.md) | 199 | `result-track:5608da163a935f08fdcd680ab49e52e868cdc36b3440fcf212178e4e0c9a3c17` |
| 32 | `def` | [toPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/toprenex.md) | 208 | `declaration-track:c0b486a02ed31bf7ffbe10437f7f35f3aabad81c085619f3dbf548a0ccd2a1d3` |
| 33 | `theorem` | [toPrenex_isPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/toprenex-isprenex.md) | 215 | `result-track:c51203fe2615ac11968ae524d5992fa05732a74a2822b355277a7f080d7e0de5` |
| 34 | `theorem` | [realize_toPrenexImpRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/realize-topreneximpright.md) | 222 | `result-track:401d5e4a11cfdcb55cd17301a34e08b19853b160c275738c6ffb0f89f4f58de2` |
| 35 | `theorem` | [realize_toPrenexImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/realize-topreneximp.md) | 245 | `result-track:4dd2cc4d53f5cee93b2970fcb8a3702642e28192839e012e7a6e089df5adfe92` |
| 36 | `theorem` | [realize_toPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/realize-toprenex.md) | 273 | `result-track:8740eaa33f75a5027b90e914c277750f848bf11db922fe371680383ed746019b` |
| 37 | `theorem` | [IsQF.induction_on_sup_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-induction-on-sup-not.md) | 288 | `result-track:6a8137f441baa300113d6719e8ed9954caf0bdc24175a71112d94300fdedf3f0` |
| 38 | `theorem` | [IsQF.induction_on_inf_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-induction-on-inf-not.md) | 298 | `result-track:3b327ec20dd6a6c6bf99e7e65e09c2782f81cca14642516db2049c3f1f9b66ef` |
| 39 | `theorem` | [iff_toPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/iff-toprenex.md) | 310 | `result-track:46b6dbd3266e261351b35fee3cec54fe447b8ef4c8e0fff5b15c0db53495b9c7` |
| 40 | `theorem` | [induction_on_all_ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/induction-on-all-ex.md) | 314 | `result-track:81c5728131b3263a63a7382dbaf13feef16d383ef0c39701b2ec3983e5ad7de4` |
| 41 | `theorem` | [induction_on_exists_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/induction-on-exists-not.md) | 329 | `result-track:67bda735562e87a4c895790cbfe69695c6b54d9767249fe0fcb9fb62dd250a56` |
| 42 | `inductive` | [IsUniversal](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isuniversal.md) | 342 | `declaration-track:67a3f92a5335fea1050b98a6bf4806f00acecf9f8ea18fa67f4873240911ef78` |
| 43 | `lemma` | [IsQF.isUniversal](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-isuniversal.md) | 346 | `result-track:da1da493fd91ae3e903d3f7056b1ecaec285c1f84d483e5b39697eba39195e0a` |
| 44 | `lemma` | [IsAtomic.isUniversal](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-isuniversal.md) | 349 | `result-track:344efb124bd5a1469238ddfc01560f26ca16aee80c8761e7d0c8cb1c4beae039` |
| 45 | `inductive` | [IsExistential](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isexistential.md) | 354 | `declaration-track:a6c6b5179a6e15b0f038678d065314627c33e55c98fb9cddeb31739e5efe2543` |
| 46 | `lemma` | [IsQF.isExistential](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-isexistential.md) | 358 | `result-track:44465eb84019595b1a8efaa70a7228bfaf17d2bb8cd5545df499e544016a8344` |
| 47 | `lemma` | [IsAtomic.isExistential](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-isexistential.md) | 361 | `result-track:6998c5811fab9dec8676de6bcbd53dec6b0515bc124d40183fec97e66e3a92da` |
| 48 | `lemma` | [IsAtomic.realize_comp_of_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-realize-comp-of-injective.md) | 369 | `result-track:5db8861762d915f5d80c6031bd909b4dfbc99014ceb95a9c4c041eadb1c8fc79` |
| 49 | `lemma` | [IsAtomic.realize_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic-realize-comp.md) | 379 | `result-track:97a8ca0f9bfed4a5fc4790efe2cc9a9f7cec5321e840b2f59e17fe19da57409b` |
| 50 | `lemma` | [IsQF.realize_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-realize-embedding.md) | 386 | `result-track:2693ae9bcc3c0679098a0c28cd89f26374ea6d33cfcb08fab3577723305e944d` |
| 51 | `lemma` | [IsUniversal.realize_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isuniversal-realize-embedding.md) | 399 | `result-track:4a48928902797eaa41bda42d06fbea4f33152abc38a2225911c14ce7d735de3f` |
| 52 | `lemma` | [IsExistential.realize_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isexistential-realize-embedding.md) | 410 | `result-track:613119378422de1372abb303ccd48180ca5b8d42551fd93a8a817e26d9b056fd` |
| 53 | `class` | [Theory.IsUniversal](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/theory-isuniversal.md) | 427 | `declaration-track:082a55fd93278d3d7984dc476bc38cf1f70a2bd16b7c4e4f9edd4cb87e50b250` |
| 54 | `lemma` | [Theory.IsUniversal.models_of_embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/theory-isuniversal-models-of-embedding.md) | 430 | `result-track:d13ce277bad9883243f232760eabef4538565e9353faef70e32e14152111a552` |
| 55 | `instance` | [Substructure.models_of_isUniversal](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/substructure-models-of-isuniversal.md) | 437 | `declaration-track:9eac67d9939640a88f3d299d98caa7c45aac4404751b700ccd385532832735cd` |
| 56 | `lemma` | [Theory.IsUniversal.insert](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/theory-isuniversal-insert.md) | 441 | `result-track:e13a4bdbe80ea25ba15c8660cf5299a555ad8394ecba746a43a49daad3e62a73` |
| 57 | `lemma` | [isAtomic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isatomic.md) | 451 | `result-track:be433888eff6def0c12010472bd2eda719fee7662e14db13e72346a04b285f3d` |
| 58 | `lemma` | [isQF](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isqf-source-edition-2.md) | 454 | `result-track:f5cd73b1ce60d9e24fd1d5d40555808519846e7dc842375dd8b9ee19e377f99e` |
| 59 | `lemma` | [isUniversal_reflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isuniversal-reflexive.md) | 459 | `result-track:b2d1570e9749998ea15a6448a95d435f199052ada43a0f72e4eb843e25e02939` |
| 60 | `lemma` | [isUniversal_irreflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isuniversal-irreflexive.md) | 462 | `result-track:25e793a068f72b6a6ffd2876a56874f50c7991d14e04c95109c2c80de06a6be7` |
| 61 | `lemma` | [isUniversal_symmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isuniversal-symmetric.md) | 465 | `result-track:59e703c499d8f04cb2e1d3cbbaca8ff57c0c617cfa86fdfd99c68c54fe0516f7` |
| 62 | `lemma` | [isUniversal_antisymmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isuniversal-antisymmetric.md) | 468 | `result-track:a73bd2f4f1b6ea3f2439b16f4ae143b35162d2b01f84e9fbb6095291e4eed8e4` |
| 63 | `lemma` | [isUniversal_transitive](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isuniversal-transitive.md) | 471 | `result-track:a7273295cf4fb6c20d7ee1ef7f22c56217d867ded02dd27a3ac5649110462eec` |
| 64 | `lemma` | [isUniversal_total](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/isuniversal-total.md) | 474 | `result-track:eb5f81d17bb512fe504a787bbee819ea626a8f2a4337233f1da983c5375ec42f` |
| 65 | `theorem` | [Formula.isAtomic_graph](../../../../../MathematicalLogicAndFoundations/ModelTheory/ComplexityNamespaced.lean/declarations/formula-isatomic-graph.md) | 479 | `result-track:662293566a1457311f806d4baa48f05b56c8c44a88cfdfaf9cb31041d3ee3f9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4e476865556c3c486e64c66cb688f466e5df7684656f61aa8874889975cda36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Variant3482d1dee77741d3bca7d07f05dbc9baca5a0afcf308de9cc8e26738d09ddff4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Complexity/Variant3482d1dee77741d3bca7d07f05dbc9baca5a0afcf308de9cc8e26738d09ddff4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
