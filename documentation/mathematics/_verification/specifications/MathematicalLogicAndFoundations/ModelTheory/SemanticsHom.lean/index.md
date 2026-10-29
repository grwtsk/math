# Verification target: Semantics Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f36653ddda5cd1b7b9b8b1f47d9b122a7ed38be7",
  "lexical_observation_count": 122,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant97f6d6f3fa90743ed91c6142cfe204cceb67b675f7ea69b604bbc080eb753761.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f36653ddda5cd1b7b9b8b1f47d9b122a7ed38be7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant97f6d6f3fa90743ed91c6142cfe204cceb67b675f7ea69b604bbc080eb753761.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant97f6d6f3fa90743ed91c6142cfe204cceb67b675f7ea69b604bbc080eb753761.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Syntax` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-source-edition-3.md) | 72 | `declaration-track:66573e2c76a21d028060c7cfbf1b41da2e5dd2aef13cceb7b40e1ce81ca29399` |
| 2 | `theorem` | [realize_var](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-var.md) | 82 | `result-track:6ec0e7cc5bba2f85017e5c42dd80528b71b4a0ccf2a715451fe94febe3173d5a` |
| 3 | `theorem` | [realize_func](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-func.md) | 85 | `result-track:25b8244b4929adb0ea402a62e6f7378a93bd4349111cc8d262f31f3a2faee1a3` |
| 4 | `theorem` | [realize_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-relabel-source-edition-3.md) | 89 | `result-track:76a9d41ec562596310ff19b1c8347cf96d124bc391e6a1417873cb4a75ee9f08` |
| 5 | `theorem` | [realize_liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-liftat.md) | 97 | `result-track:6ac823b2be692d8a591255709bcebdd49b49b966f173dafd98bad6723c247ee1` |
| 6 | `theorem` | [realize_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-constants.md) | 105 | `result-track:14f83af9e324259c4cffa2d92510275770b980552283ad8aa833bf0dcc5b0ad8` |
| 7 | `theorem` | [realize_functions_apply₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-functions-apply-source-edition-2.md) | 110 | `result-track:d0036ac39963d4f1444b89d3011c3e7c35a423db8e70a0e03181d1d4213d310f` |
| 8 | `theorem` | [realize_functions_apply₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-functions-apply.md) | 118 | `result-track:53c2a8bff778d988fd5c3991eaa09caaa87f3be6e561b05b440cab2a440c7b8e` |
| 9 | `theorem` | [realize_con](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-con.md) | 126 | `result-track:6f6e354a10bf2587f1b5b79cd7876f22bbc8eb72f5f7d75cd6b76b96baef5463` |
| 10 | `theorem` | [realize_subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-subst-source-edition-2.md) | 131 | `result-track:bbc64ae1387ec4badd752659767843e5f07a6937c6e484b95c31e26b4012dea7` |
| 11 | `theorem` | [realize_restrictVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-restrictvar.md) | 139 | `result-track:5bc2294f2038f40c10f6a379db311b01b3cabd9dfa0d27f60d14203ee25f146e` |
| 12 | `theorem` | [realize_restrictVarLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-restrictvarleft.md) | 148 | `result-track:40129d771b3be34f2e5c00c0d34a26055dd37c74c6742d3478aa6d3e7172be06` |
| 13 | `theorem` | [realize_constantsToVars](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-constantstovars.md) | 159 | `result-track:49bbb443232d9f48b4db6ab0422499125edd92b3940aa5ccf8165504c9c0300f` |
| 14 | `theorem` | [realize_varsToConstants](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-varstoconstants.md) | 179 | `result-track:88e8c654b8f7aded1dba903cef639581a82a945dc5aaa8e0bbcffa13d6911552` |
| 15 | `theorem` | [realize_constantsVarsEquivLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-constantsvarsequivleft.md) | 192 | `result-track:d36952019901eba5d364396f419e154714390f7df0cc78175e8c307a7511f333` |
| 16 | `theorem` | [realize_onTerm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-onterm.md) | 209 | `result-track:a1e5fee062ed038450917ffe0d111662fd64c7979ee0fc9b48d9de813310a760` |
| 17 | `theorem` | [Hom.realize_term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/hom-realize-term.md) | 220 | `result-track:e2894326ab966d5b33963c841ae8d3c05a56cea6fd56bae6b112c2346e0c5db1` |
| 18 | `theorem` | [Embedding.realize_term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/embedding-realize-term.md) | 231 | `result-track:f56f70c26559a8228ee34d8783c79cf1ccacfaa7a8ba36373428f08082012335` |
| 19 | `theorem` | [Equiv.realize_term](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/equiv-realize-term.md) | 237 | `result-track:3e20d2f0b230916c43b3310062979e3b893bbd529cc878b75837118dcb49fd95` |
| 20 | `def` | [Realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-source-edition-2.md) | 250 | `declaration-track:49d50318cf8386c683980d6d6e0bc640cb1756bf45e03a823daf235787901f64` |
| 21 | `theorem` | [realize_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-bot-source-edition-2.md) | 263 | `result-track:8edc912d278224242613d1565257d85a125ed4de4113a14cc58ab8a28ca2e19c` |
| 22 | `theorem` | [realize_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-not.md) | 268 | `result-track:1428fce9a0281dad299b8c64ae153dfebf77d69de3bb00072bb555db9afbb8bc` |
| 23 | `theorem` | [realize_bdEqual](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-bdequal.md) | 273 | `result-track:1d4242608fa5f277250351dce589f3c81f40c29467bd4a7d857f7eed663d5074` |
| 24 | `theorem` | [realize_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-top.md) | 279 | `result-track:2d4a26c3251dfd3165a7f1b6704fc5bf154745863c3f2f11aea0a021b65b66b0` |
| 25 | `theorem` | [realize_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-inf.md) | 283 | `result-track:19506a0aca254106addc2a2dde484d1db591def09b4e8484a4014028ea763047` |
| 26 | `theorem` | [realize_foldr_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-foldr-inf.md) | 288 | `result-track:fb07184dd70874239bf5774cf06ee0686e549659d360714a3c8f2993cdbf5cca` |
| 27 | `theorem` | [realize_imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-imp-source-edition-2.md) | 296 | `result-track:d399de20b61a129e87282b3409e40f228c83f41bc15d2019930f729f2f4d9eb9` |
| 28 | `theorem` | [realize_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-rel-source-edition-2.md) | 301 | `result-track:3188ce950c28c33f82a9c29b3ac615c2c4110998ec2988dc594ea317986512c7` |
| 29 | `theorem` | [realize_rel₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-rel-source-edition-3.md) | 307 | `result-track:7877469fa4dcbcc463b95c44007598c8a9471681d112c8b7175446d5de95b1ef` |
| 30 | `theorem` | [realize_rel₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-rel-source-edition-4.md) | 315 | `result-track:a871cc0c55db698bd733470199587d3807fef4132aee84c64614e023b004ded4` |
| 31 | `theorem` | [realize_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-sup.md) | 325 | `result-track:665f7c497a7fe8e343b5f771675e168e765f1cc94a6b6b79c74fc88f24fabc0c` |
| 32 | `theorem` | [realize_foldr_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-foldr-sup.md) | 331 | `result-track:107999ce509fa9bc321d28ad19579039a93259ab7f9f4649d7b0c639fb7a78e1` |
| 33 | `theorem` | [realize_all](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-all.md) | 340 | `result-track:e71e8eabf36bb527a733808f1efddbf2c10f7cb47c2df60b466008492a26dbc4` |
| 34 | `theorem` | [realize_ex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-ex.md) | 345 | `result-track:cbf74b1b88700c7afa090be5d39a2a4b9817b35a1f42efe75a5470246e44a79d` |
| 35 | `theorem` | [realize_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-iff-source-edition-2.md) | 351 | `result-track:49184b98c4d9ba31350b23ee68bdd97715392063e2ffcf189f129847c30020c1` |
| 36 | `theorem` | [realize_castLE_of_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-castle-of-eq.md) | 355 | `result-track:b86389495610fc69596a579b9431157834778ea51d27d8a5ba5014ede7d68d2a` |
| 37 | `theorem` | [realize_mapTermRel_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-maptermrel-id.md) | 361 | `result-track:c9ad6f250e704e428298c5cb4c429eb068df8afb965e1c7404e9397a660bc917` |
| 38 | `theorem` | [realize_mapTermRel_add_castLe](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-maptermrel-add-castle.md) | 378 | `result-track:a6c4095ca7f2609d987f28e5a3e4eb1280bb919d99e5ebb8cfa15d1edb6370db` |
| 39 | `theorem` | [realize_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-relabel.md) | 397 | `result-track:1978466de7ed763e49f9f0ae7e0dc6a85171b88398283c94d0d9539691dc4733` |
| 40 | `theorem` | [realize_liftAt](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-liftat-source-edition-2.md) | 404 | `result-track:9530336636430730e2e782cbac56fa674f7caa94c78f5f68e4c2a9801e8951d7` |
| 41 | `theorem` | [realize_liftAt_one](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-liftat-one.md) | 434 | `result-track:79f9540e361f2eba449a819e4450c2c9683ec83ac1c9d8cf3074cbfa2ebdcf1f` |
| 42 | `theorem` | [realize_liftAt_one_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-liftat-one-self.md) | 442 | `result-track:b2d87ab127a2deb0845d4138a9c799906a42a581bafbb62ee10a2ca805216bdc` |
| 43 | `theorem` | [realize_subst](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-subst.md) | 449 | `result-track:2173a3587500d3953442fac96b183def8673d4ce3aaae331f01081614e3e319d` |
| 44 | `theorem` | [realize_restrictFreeVar](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-restrictfreevar.md) | 462 | `result-track:45a2f0c05eec47b26a8f3acdeeba1944ca8b6df0b2751bafa637e3822b1b5fb7` |
| 45 | `theorem` | [realize_constantsVarsEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-constantsvarsequiv.md) | 473 | `result-track:c45b9c2d928f5eddce5f752c783ae3f0bcea93bc6b0e9fc3ea1fe15a559c1da4` |
| 46 | `theorem` | [realize_relabelEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-relabelequiv.md) | 486 | `result-track:cefd6ab2b8883744622cf5f547f6f307a9654deded30b7ed0cef2758967384b8` |
| 47 | `theorem` | [realize_all_liftAt_one_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-all-liftat-one-self.md) | 497 | `result-track:1283c5b62cdb4cb3f53ce084e4c0e2d7b9668b7f346b4ac16d7785cbbbfe448a` |
| 48 | `theorem` | [realize_toPrenexImpRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-topreneximpright.md) | 508 | `result-track:6fd7492984bc08a1f6be702b10e5deed36198d07386bb34cd66d2897f3bc52c1` |
| 49 | `theorem` | [realize_toPrenexImp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-topreneximp.md) | 530 | `result-track:38e082bb35c1fda7df36c4f8d44183579b3df0644a35f1a89c93a63882aeab8c` |
| 50 | `theorem` | [realize_toPrenex](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-toprenex.md) | 553 | `result-track:238de9b6c63fbe4e488972b2ec6c3c7079bc063713680bf9a9e674d4ba7a618d` |
| 51 | `theorem` | [realize_onBoundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-onboundedformula.md) | 580 | `result-track:d6504078a3063252b23f4dd7686f96558d6379054202973a63afe6cd38caebfa` |
| 52 | `def` | [Realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize.md) | 605 | `declaration-track:051af6e875fe85a201f3debd1c3c81e241d1f8d97ef14474ab58a20d9ab14e28` |
| 53 | `theorem` | [realize_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-not-source-edition-2.md) | 612 | `result-track:510ab91a34a348889ee45d7188eeacb9299092e5d44b6fee867e36a7edfeeceb` |
| 54 | `theorem` | [realize_bot](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-bot.md) | 617 | `result-track:37fbd43779fb7b78c409fcaaef7af2dff1f7393945f823bd9ad392c232ae11a9` |
| 55 | `theorem` | [realize_top](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-top-source-edition-2.md) | 622 | `result-track:833f1551046a56fff5fdfc2352f89c9e48246cac61d4064a9943db7fe4649ca0` |
| 56 | `theorem` | [realize_inf](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-inf-source-edition-2.md) | 627 | `result-track:f222f6d7260c4f3d9adc21191e7424f33ba0247f4acefe14e67edf8b81daf527` |
| 57 | `theorem` | [realize_imp](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-imp.md) | 632 | `result-track:7053f312d922e9fb05f28258f60d10ba32569b8366a1e08a2754b6655f26956b` |
| 58 | `theorem` | [realize_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-rel-source-edition-6.md) | 637 | `result-track:c80096dcf200eee5bc786047849e59fb41d1587a0fbb2feda557f0bd6a325b0e` |
| 59 | `theorem` | [realize_rel₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-rel-source-edition-5.md) | 643 | `result-track:b16ab458ee13786f070547cafced832ae6b7eeda4595130fe4f0cbec2fd7ff44` |
| 60 | `theorem` | [realize_rel₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-rel.md) | 651 | `result-track:2f96131c0a7014b223f693fcb0f36be379a5024267241484720e92fabcd3f559` |
| 61 | `theorem` | [realize_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-sup-source-edition-2.md) | 660 | `result-track:80b3a4bb4d6466f5fcca288f823f0e186869c5ca8af55fea3d89e242b0f67e36` |
| 62 | `theorem` | [realize_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-iff.md) | 665 | `result-track:36225ee41dca2330266bc8bfcbd2f9409890b68da9b024f32778294dd078927a` |
| 63 | `theorem` | [realize_relabel](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-relabel-source-edition-2.md) | 670 | `result-track:5919554bf8f5b14fce398bb629e897f862338d3d7a77f80ed46ce64f204c1fa7` |
| 64 | `theorem` | [realize_relabel_sum_inr](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-relabel-sum-inr.md) | 676 | `result-track:255ab51e3b4e3ba4fb71b5dd15149f3baa0a780ce4a799569c7997626ddb1e11` |
| 65 | `theorem` | [realize_equal](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-equal.md) | 684 | `result-track:e4ab4d9e0ea9fce9740f55a336de79ef2ceadb0ab93b7edc25c062eb44691710` |
| 66 | `theorem` | [realize_graph](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-graph.md) | 689 | `result-track:31fc0b180ed17cd96e675e276a9940a1fbab1c0f0a3f74d9da1d1c00e7590ccd` |
| 67 | `theorem` | [LHom.realize_onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/lhom-realize-onformula.md) | 698 | `result-track:4a3b94bfe4868265b1200b656ecebf33250ce55e921821f0c5bbceaaa5a87476` |
| 68 | `theorem` | [LHom.setOf_realize_onFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/lhom-setof-realize-onformula.md) | 705 | `result-track:61e1b7e1895a2b684182e5ea1c0b4f432360f7defd83a6ac522a5c16a7a66ccd` |
| 69 | `def` | [Sentence.Realize](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/sentence-realize.md) | 715 | `declaration-track:554b3ba32a2d21589f8fe7000a596b15041f2a706c5cdfdd16d5ebeb095a2511` |
| 70 | `theorem` | [Sentence.realize_not](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/sentence-realize-not.md) | 724 | `result-track:2751ebaeb89a996531dc1e1cbf7d497ed60ae1ad6a4b618073f4205ce1d3d0f4` |
| 71 | `theorem` | [realize_equivSentence_symm_con](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-equivsentence-symm-con.md) | 731 | `result-track:6487914fc053cb6136ed2d2abc49cfa019a839a94f4a4afe9806f0a7fdf95d2a` |
| 72 | `theorem` | [realize_equivSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-equivsentence.md) | 744 | `result-track:0b2164151ab201d850fa7627abb1e7295168126ce9f10105977daf44f6c287c6` |
| 73 | `theorem` | [realize_equivSentence_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-equivsentence-symm.md) | 749 | `result-track:ab076bf27760511671f1c306035e851eb7fa26867994f135be57f7cde43482cc` |
| 74 | `theorem` | [LHom.realize_onSentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/lhom-realize-onsentence.md) | 760 | `result-track:90985659f169762635ac0a090fd1c1582965c523d0b2506b60a9b09cd0561118` |
| 75 | `def` | [completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/completetheory.md) | 769 | `declaration-track:ea9a3d3e98c62b3c4a288963b3f8402059f4c9d0eb5b8d31d91a0611321b33ec` |
| 76 | `def` | [ElementarilyEquivalent](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/elementarilyequivalent.md) | 776 | `declaration-track:39adeea227ad8b6ffd1d10b18f6308bb88d2e0ef78a44c38c568029b0f9b4072` |
| 77 | `theorem` | [mem_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/mem-completetheory.md) | 787 | `result-track:a932717e145f07ba3eb7abff776232f80034e9c3ee9cdc3c660c6f9952ca408f` |
| 78 | `theorem` | [elementarilyEquivalent_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/elementarilyequivalent-iff.md) | 791 | `result-track:237624de76911e0ed6d32c1b76fba5a420c8f64dc45eade744e9b7f96fe25a29` |
| 79 | `class` | [Theory.Model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/theory-model-source-edition-3.md) | 798 | `declaration-track:d5746d67604df0dbc1b896ec9794a94977cc9c9853b43f88e1b29f45ede582eb` |
| 80 | `theorem` | [Theory.model_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/theory-model-iff-source-edition-2.md) | 810 | `result-track:db71a25272daa1e93f7c9179500473a9fced9e57ae0b9e027176878dfa222350` |
| 81 | `theorem` | [Theory.realize_sentence_of_mem](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/theory-realize-sentence-of-mem.md) | 815 | `result-track:a79ab7251828bad3fe023b17febaf0e7ae6018cf0bde6727d6fca0b2f58cd904` |
| 82 | `theorem` | [LHom.onTheory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/lhom-ontheory-model.md) | 821 | `result-track:57a0a2445a65c5ce783d7fac9d199a60cc0fa523e58cddd99048f1981b91788f` |
| 83 | `instance` | [model_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-empty.md) | 828 | `declaration-track:149bd48da6d7e69a54ad13d0431490b8e8c2fb22ba58d4110a9e40aa697116db` |
| 84 | `theorem` | [Model.mono](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-mono.md) | 834 | `result-track:b9cde7b08bf2bd3e504894d86eb36f44e9289d81edc75a1ee3ee467eaa7e1f67` |
| 85 | `theorem` | [Model.union](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-union.md) | 839 | `result-track:aaba8e416acb1b47c3da3bc795de287ed041d8482278894db59e1069d1e96f44` |
| 86 | `theorem` | [model_union_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-union-iff.md) | 846 | `result-track:1fe9f4785f3870990a8ef6160fa602df4e63ae891611843d8f717a4b27ea6829` |
| 87 | `theorem` | [model_singleton_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-singleton-iff.md) | 852 | `result-track:e8b646997ac569ae72f49067118e35c14d4e8c83c58303c1993bf5ef54d11acf` |
| 88 | `theorem` | [model_iff_subset_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-iff-subset-completetheory.md) | 856 | `result-track:b7ecbf6144a7049ae0e2b7a182b950d64a6d9d2311532317b175e266f493817b` |
| 89 | `theorem` | [completeTheory.subset](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/completetheory-subset.md) | 861 | `result-track:dc9eef05c3e21f1478e769990cf02904362f34d9cb002ff86298c27b8b437eb9` |
| 90 | `instance` | [model_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-completetheory.md) | 868 | `declaration-track:3f5d9fe5b387b149cec0e5b60b67fd812060e58d0f0cfc79b54fe0ec6d63890b` |
| 91 | `theorem` | [realize_iff_of_model_completeTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-iff-of-model-completetheory.md) | 874 | `result-track:7d44c0872376dd5663c3c8f0df7438d6c76be4d6bc953643c7837ff857bbd3f6` |
| 92 | `theorem` | [realize_alls](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-alls.md) | 887 | `result-track:0cb1ed01b6ac3b1794f898a13dfa19719d9eb2552a080287475c0c7adca810c8` |
| 93 | `theorem` | [realize_exs](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-exs.md) | 896 | `result-track:1d678ed6be2edf4a87755ddf195ab77a4839d2f0ec4ac01b1cb3fe51ad2ec8c6` |
| 94 | `theorem` | [realize_toFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-toformula.md) | 910 | `result-track:8df9ce6623f34e6cbfb733096a3d03f2230d90cf868e4f7b9ef786ad14999793` |
| 95 | `theorem` | [realize_boundedFormula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-boundedformula.md) | 943 | `result-track:dfd6b0ebb0c2c51905df7a3ab9bc35468c004fbb491120f1efccbe0fbb339461` |
| 96 | `theorem` | [realize_formula](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-formula.md) | 964 | `result-track:21857c9756940335f3964472c58be289e7d1b5f297558cd88145564d4edacd63` |
| 97 | `theorem` | [realize_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-sentence-source-edition-2.md) | 970 | `result-track:69070aefc759899314453d018da0731fbe2cc91ae0ec1d9a8dccbb2786bf0845` |
| 98 | `theorem` | [theory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/theory-model-source-edition-2.md) | 974 | `result-track:20d7c83bfc6078afc63d2e07d7666115b6d3ca174e39d1de98e18706a205e571` |
| 99 | `theorem` | [elementarilyEquivalent](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/elementarilyequivalent-source-edition-2.md) | 979 | `result-track:696ca92f76a3c4440450ec828fea9fd974169b42fdbd2ae886138e343a04af9a` |
| 100 | `theorem` | [realize_reflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-reflexive.md) | 992 | `result-track:21308b9b98d176bf5dc0eb24f8453e1ac07d03229882763f03ba911afcd7bf18` |
| 101 | `theorem` | [realize_irreflexive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-irreflexive.md) | 997 | `result-track:7130b7e1126db888f7f0034b8e1a045254341a16461a0c541311cb55a2f6602c` |
| 102 | `theorem` | [realize_symmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-symmetric.md) | 1002 | `result-track:c736f215c3363898c27c9c9cdc386196aa47101b583169913e3323f098b3accd` |
| 103 | `theorem` | [realize_antisymmetric](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-antisymmetric.md) | 1007 | `result-track:329f2ea25b31b00d4c5c5c4acedd09255ee489240a617c118c6b584deaafd5db` |
| 104 | `theorem` | [realize_transitive](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-transitive.md) | 1014 | `result-track:3a19b35698abd5eb3b478cce0ceb9f9fde9c7041d0cbf101c0e3cbf42e01da45` |
| 105 | `theorem` | [realize_total](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-total.md) | 1021 | `result-track:adbade91621c1c02abd492fd676d9ec1f7af8199feee46ca98a759cdff6729ad` |
| 106 | `theorem` | [Sentence.realize_cardGe](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/sentence-realize-cardge.md) | 1032 | `result-track:99ec835ffbc9d7f49ebdf34371612dbc7aee9e12dfea408c0d0e26de88230fee` |
| 107 | `theorem` | [model_infiniteTheory_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-infinitetheory-iff.md) | 1051 | `result-track:e8d153503d27fede241570c01a669a1f0db3986089e551f1557409053e194026` |
| 108 | `instance` | [model_infiniteTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-infinitetheory.md) | 1055 | `declaration-track:a98d23a483f96873c0b240a507d4c8b5f47ed6a400ad4a8a37be3d346f2906a9` |
| 109 | `theorem` | [model_nonemptyTheory_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-nonemptytheory-iff.md) | 1060 | `result-track:13001909ad368a58cb72eeb19d27c02e4e884ec3e6d4ba1f9081647648b6ec1f` |
| 110 | `instance` | [model_nonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-nonempty.md) | 1065 | `declaration-track:79b6493404e9d9c6dfc2c7e32379f10b695ed09e97c769c830ab98e7c0aba575` |
| 111 | `theorem` | [model_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/model-distinctconstantstheory.md) | 1069 | `result-track:48eb59a19df9084a3132b85bc5c6c8a9c1844b255875c42cc3472555a6953eb0` |
| 112 | `theorem` | [card_le_of_model_distinctConstantsTheory](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/card-le-of-model-distinctconstantstheory.md) | 1084 | `result-track:1e8e4612023b6cee2121a801c190117e79b0ffcb396ab1eca968df80ff0288f2` |
| 113 | `theorem` | [symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/symm.md) | 1094 | `result-track:a0b4746e2fcaaba2f63063c3b2c8cf0163b178662e9c04115fe16b1222a0d194` |
| 114 | `theorem` | [trans](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/trans.md) | 1099 | `result-track:b2c6f311c16c2bac45ce7cff11e91e3e7b8251fca58d7aec3f6dfaa214d4d8fd` |
| 115 | `theorem` | [completeTheory_eq](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/completetheory-eq.md) | 1103 | `result-track:a5dace72bd143ca482885d46745977e1c33e121caab2e0195648982e7a240243` |
| 116 | `theorem` | [realize_sentence](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/realize-sentence.md) | 1107 | `result-track:1329a558a65eac171eb770bfee673fad80654248f727848118935a5b7a1115f6` |
| 117 | `theorem` | [theory_model_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/theory-model-iff.md) | 1111 | `result-track:7756d3cb4a8b782576bf75b4583b95c2da8dcba11e7601888ed75bd2634abd0c` |
| 118 | `theorem` | [theory_model](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/theory-model.md) | 1117 | `result-track:10a026e6e2987d643d55e21add87b11c4bdec90960c869f48fa02be1ad31a502` |
| 119 | `theorem` | [nonempty_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/nonempty-iff.md) | 1122 | `result-track:79730bffcbc8e1d77db98660c8f1435076ba0f84d26e8ba5846dc3e4368adbe3` |
| 120 | `theorem` | [nonempty](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/nonempty.md) | 1126 | `result-track:aadbd084e8d85a05191144f10e5115b6bb4cef2d390622cf3913fac73fe139c1` |
| 121 | `theorem` | [infinite_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/infinite-iff.md) | 1130 | `result-track:5384eb8e9545e3ebce00192d27f94219036964e710687689ec208a183d67d0c2` |
| 122 | `theorem` | [infinite](../../../../../MathematicalLogicAndFoundations/ModelTheory/SemanticsHom.lean/declarations/infinite.md) | 1134 | `result-track:248fa40daf2f3a72ae0c9f9128599f82edf7f1357779bfef04c0a83d2c68015a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cbb61e94dd8d56a22753ae860e04797e7678b0a6ecaf8b88763cb6693bbb8a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant97f6d6f3fa90743ed91c6142cfe204cceb67b675f7ea69b604bbc080eb753761.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Semantics/Variant97f6d6f3fa90743ed91c6142cfe204cceb67b675f7ea69b604bbc080eb753761.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
