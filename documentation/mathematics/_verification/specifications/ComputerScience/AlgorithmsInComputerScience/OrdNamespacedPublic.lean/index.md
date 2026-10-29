# Verification target: Ord Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0e7b9a32e871925e95577cb730807e430f05f93",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0e7b9a32e871925e95577cb730807e430f05f93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Array.DecidableEq` — import line 15; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Order` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.BEq` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ReflCmp](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/reflcmp.md) | 48 | `declaration-track:7c0b93f76a4e7769402223783c1a2a645fe31c7f0a3bec1321130e412df694b3` |
| 2 | `theorem` | [cmp_eq_of_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/cmp-eq-of-eq.md) | 54 | `result-track:e6a360c08a6bc0ce052e962eefa37ec621d149f32c408010975a3f97b812e7be` |
| 3 | `theorem` | [ne_of_cmp_ne_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/ne-of-cmp-ne-eq.md) | 57 | `result-track:4004da31bf81dc24d9e56f448b1f32ce93bac81316ac8fb44fa93ab4f30a8e72` |
| 4 | `abbrev` | [ReflOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/reflord.md) | 64 | `declaration-track:ef7edb7381157a729141d8762dd58af670b7cdab7be335cde15cb1bd0104a485` |
| 5 | `theorem` | [ReflOrd.compare_self](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/reflord-compare-self.md) | 67 | `result-track:5e69a43f48775bf1b3300192d67f49c6bf010dfeb1f535ceb38bb8b79141e716` |
| 6 | `theorem` | [ReflCmp.isLE_rfl](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/reflcmp-isle-rfl.md) | 70 | `result-track:c7063c4c600f2009786b7e3eb9522037e6bc5d686dd5d65c142c53943f9b27be` |
| 7 | `theorem` | [ReflOrd.isLE_rfl](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/reflord-isle-rfl.md) | 75 | `result-track:c493a3c76beb2298b5072115335e542e52005cfeac39e3aa0391045987b50e62` |
| 8 | `class` | [OrientedCmp](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp.md) | 89 | `declaration-track:6c3951b69907274eca2cc36c363e4f30c28073b3b3e7863960f354cb0f993f40` |
| 9 | `abbrev` | [OrientedOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedord.md) | 97 | `declaration-track:c95338ebb4a49e2cafde01aada1fe9d00dee4ef65290ed52ed63dab0d1c29874` |
| 10 | `theorem` | [OrientedOrd.eq_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedord-eq-swap.md) | 101 | `result-track:bde6c2e49b9648d8f195054d845cad80096a844d838dd5db1568cf4791349730` |
| 11 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 104 | `declaration-track:4bfb61316520da5b69362b02cc076f58a93aaaadd68e48bd5b982ee9f3a3e84e` |
| 12 | `instance` | [OrientedCmp.opposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-opposite.md) | 107 | `declaration-track:934792dfc76323167592a781337258ff67e788ffd911ee0dcb68793becf14e03` |
| 13 | `instance` | [OrientedOrd.opposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedord-opposite.md) | 110 | `declaration-track:3b3c46f9ac09711bfb401e3324469205863b61f8d6f50debf0e77b303a6f70c3` |
| 14 | `theorem` | [OrientedCmp.gt_iff_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-gt-iff-lt.md) | 113 | `result-track:d95e3b6ea1892e41dab17942abcad3d1977ab55aebd50160d8ccbcdd5f6a6de2` |
| 15 | `theorem` | [OrientedCmp.isGT_eq_isLT](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-isgt-eq-islt.md) | 117 | `result-track:9fa8c16f2f2d1a97162fea45564b9b01be8838df993ee3aefd284f8ff1380834` |
| 16 | `theorem` | [OrientedCmp.lt_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-lt-of-gt.md) | 120 | `result-track:18f2fcd31bf73599eb0b289ce69c31d58322717432a0522eaf6a9db58c1fd89a` |
| 17 | `theorem` | [OrientedCmp.gt_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-gt-of-lt.md) | 123 | `result-track:e0f88f091528769b05bdf17c35e2300a96d8ad9bdeff9376f06fcdcd97e53129` |
| 18 | `theorem` | [OrientedCmp.isGE_eq_isLE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-isge-eq-isle.md) | 126 | `result-track:3f288dd8f537595a91b4a7766b5282b5b3eb26b3f55d4f0f57da3eeae03fbd89` |
| 19 | `theorem` | [OrientedCmp.isGE_iff_isLE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-isge-iff-isle.md) | 129 | `result-track:92b1d5d022d2b8b43c97bdb3aa9d42663d844d2b2e97ecc2fac036f0f6216884` |
| 20 | `theorem` | [OrientedCmp.isLE_of_isGE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-isle-of-isge.md) | 132 | `result-track:ded219c0ca57f56d4d4140edb75af6fb7ff888eb033a0d38d3f236465ffa1d53` |
| 21 | `theorem` | [OrientedCmp.isGE_of_isLE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-isge-of-isle.md) | 135 | `result-track:19318544d86187f71ad2560e424f259bfd97cf8bfe992824f130960a751c3acc` |
| 22 | `theorem` | [OrientedCmp.eq_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-eq-comm.md) | 138 | `result-track:b57e340097b445dd460703666c44d76c2922e980caeedac72b40fd72563351b9` |
| 23 | `theorem` | [OrientedCmp.eq_symm](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-eq-symm.md) | 142 | `result-track:027b7688895bb7ec15c172182721a004b6e4491980d1b331379f20da7eebb675` |
| 24 | `theorem` | [OrientedCmp.not_isLE_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-not-isle-of-lt.md) | 145 | `result-track:ebca2c1606d96b2a85ded6bf0d06391ac700bbe4398254b1c7736bbfcf233887` |
| 25 | `theorem` | [OrientedCmp.not_isGE_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-not-isge-of-gt.md) | 150 | `result-track:904f6a36ea14e26ade56074f14bc4468bbfd48053431d3575ea4361502194997` |
| 26 | `theorem` | [OrientedCmp.not_lt_of_isLE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-not-lt-of-isle.md) | 155 | `result-track:268365103673c16a77b1d4921d557f7ba3f82db614ebfdadb811e406e472b0ab` |
| 27 | `theorem` | [OrientedCmp.not_gt_of_isGE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-not-gt-of-isge.md) | 160 | `result-track:331c6c529d3ccd619b9cfbe8fcd2b7344f953775d06368903f7a0ccfc4ef8e12` |
| 28 | `theorem` | [OrientedCmp.not_lt_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-not-lt-of-lt.md) | 165 | `result-track:4ab120a300eb94360090f5cf2d491cf66f91bf87f7a436bc17c7b2b349eb2845` |
| 29 | `theorem` | [OrientedCmp.not_gt_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-not-gt-of-gt.md) | 170 | `result-track:38e3cd5b7207ab154559ec9f163119c710bdf9535c06e1cbb3527593acbb7dd1` |
| 30 | `theorem` | [OrientedCmp.lt_of_not_isLE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-lt-of-not-isle.md) | 175 | `result-track:6c7b197eec2d606e8f9711e1850cded16acc224f749c61c85a34c3f905c39675` |
| 31 | `theorem` | [OrientedCmp.gt_of_not_isGE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-gt-of-not-isge.md) | 180 | `result-track:0a320ca809e21b0d7b6ae288eb337dface433eba547ef962aa3ea00045927cfd` |
| 32 | `theorem` | [OrientedCmp.isLE_antisymm](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-isle-antisymm.md) | 185 | `result-track:adbe4dbc9a4be9e1d06dcca83438422f995700a649c118811809f7e611b6f8c0` |
| 33 | `theorem` | [OrientedCmp.isGE_antisymm](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/orientedcmp-isge-antisymm.md) | 190 | `result-track:f87764aed0c274334b6cc336f8e9815bb02282ff13b62f9ccc02cd590afd3b57` |
| 34 | `class` | [TransCmp](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp.md) | 200 | `declaration-track:be3a8efc308376ca493a9ea6f536c58f61c61e001e0917b5a89afd4c62e6f919` |
| 35 | `abbrev` | [TransOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transord.md) | 205 | `declaration-track:5029227712580286999a0034c1800d6c2aaaf37f9888c982f97120a0cdcf1375` |
| 36 | `theorem` | [TransOrd.isLE_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transord-isle-trans.md) | 209 | `result-track:cb620c01b49100a45358f934208ad0543299985c925cdd90e8b875d8a262154a` |
| 37 | `theorem` | [TransCmp.isGE_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-isge-trans.md) | 213 | `result-track:7df056cb17a68a432bcc6b887a7490fe8e2b94863716cc3380af2151ce14f214` |
| 38 | `theorem` | [TransOrd.isGE_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transord-isge-trans.md) | 218 | `result-track:2b499d1388d917fd15d59076d675633567dcc7bf7a13793ca5706b9f5d8710dc` |
| 39 | `instance` | [TransCmp.opposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-opposite.md) | 222 | `declaration-track:a49623d6978d0deeaa5ca713362c60c92067c468e96b8357df4ca664aac2314a` |
| 40 | `instance` | [TransOrd.opposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transord-opposite.md) | 225 | `declaration-track:9fb02e0dd7231acf2453936093a17ebf47fe425a5e1bf11dc202195ffcccf521` |
| 41 | `theorem` | [TransCmp.lt_of_lt_of_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-lt-of-lt-of-eq.md) | 228 | `result-track:844a63384d8d7fd48a5ed94b0a03bc1a846963e79765a7982f13d37a237445a8` |
| 42 | `theorem` | [TransCmp.lt_of_eq_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-lt-of-eq-of-lt.md) | 235 | `result-track:1849a09c32c377aa8212c89428dadb9f32b6fdb915ddc9524c140295fad8e1c7` |
| 43 | `theorem` | [TransCmp.gt_of_eq_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-gt-of-eq-of-gt.md) | 242 | `result-track:228fe3b62aeea32e1ee95a9e7f65c9334932e1d4ac24ad690e9fa47648d16a3b` |
| 44 | `theorem` | [TransCmp.gt_of_gt_of_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-gt-of-gt-of-eq.md) | 247 | `result-track:3d760275ebfa9d01c5aa229cd816b36e3a3337cac134c12c0cd2767d5faed4a1` |
| 45 | `theorem` | [TransCmp.lt_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-lt-trans.md) | 252 | `result-track:bbd9b2229f5f8c6655b1fa777440b306ff75245ac4eebdc60fe42a7e1c85ef00` |
| 46 | `theorem` | [TransCmp.gt_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-gt-trans.md) | 263 | `result-track:ff2e4dad24208e1155b34f8554afbb9c2c2af4a537a6e84d4b205e34b53ae943` |
| 47 | `theorem` | [TransCmp.lt_of_lt_of_isLE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-lt-of-lt-of-isle.md) | 268 | `result-track:7703c86010e0a28945a6f933a6a771f33d3d6634d1f9787077951f2fb0a92eb4` |
| 48 | `theorem` | [TransCmp.lt_of_isLE_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-lt-of-isle-of-lt.md) | 275 | `result-track:b431c0e237cbd4bb228038a96b8bde63569bade94171c15b24fdf53fdbedf9b5` |
| 49 | `theorem` | [TransCmp.gt_of_gt_of_isGE](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-gt-of-gt-of-isge.md) | 282 | `result-track:48c2ed086aba1fe29fb6239847c7483880904f05388e49495be5d40eae48e62c` |
| 50 | `theorem` | [TransCmp.gt_of_gt_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-gt-of-gt-of-gt.md) | 288 | `result-track:9040d8e4bf4376d7126fa31a863d3341e591aa1a5d0007dd4faeb9465770e097` |
| 51 | `theorem` | [TransCmp.gt_of_isGE_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-gt-of-isge-of-gt.md) | 292 | `result-track:29a0e647e9b019ea8803cb15c8241d86b131098001a7f70c332df74ece895ce9` |
| 52 | `theorem` | [TransCmp.eq_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-eq-trans.md) | 297 | `result-track:f4bc04b5c5a56cfabc330028cdc95751bdce647ffc822b6c879bca3494174df6` |
| 53 | `theorem` | [TransCmp.congr_left](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-congr-left.md) | 305 | `result-track:af728be5cf849d5ed544777c95a7e73952af4577ecefb552c1ea8d56286408bc` |
| 54 | `theorem` | [TransCmp.congr_right](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/transcmp-congr-right.md) | 314 | `result-track:4d9362d48b1933ed0c1ddfa007298586299e0c14cdacb38f7999f59b3e560ee7` |
| 55 | `class` | [LawfulEqCmp](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfuleqcmp.md) | 334 | `declaration-track:3935e71dbb95883662e11faf62510cb707821ab461a4b14efa9de53a112ebf0a` |
| 56 | `abbrev` | [LawfulEqOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfuleqord.md) | 345 | `declaration-track:92f85829c33d0d634d0608489d4978cf4c6fc6edc3322e0f8631a072c9ce413d` |
| 57 | `theorem` | [LawfulEqOrd.eq_of_compare](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfuleqord-eq-of-compare.md) | 349 | `result-track:9eebc311afed5e5e72d8a74e8d46f65757ae3613f273efee3bc9d4cfc20f6175` |
| 58 | `instance` | [LawfulEqCmp.opposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfuleqcmp-opposite.md) | 352 | `declaration-track:02c6ed7f4e9012ef823c649d79d2677d54452895970629029614c6d229870a83` |
| 59 | `instance` | [LawfulEqOrd.opposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfuleqord-opposite.md) | 358 | `declaration-track:fbdf9ec8e1dc576680080f1cc77332462e77360a78311b6bf4c205f970da7458` |
| 60 | `theorem` | [LawfulEqCmp.compare_eq_iff_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfuleqcmp-compare-eq-iff-eq.md) | 363 | `result-track:e28111d28c8bb19047b207deef1b5bf82bf4b00bc171550a8309ec10449755a0` |
| 61 | `theorem` | [LawfulEqCmp.compare_beq_iff_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfuleqcmp-compare-beq-iff-eq.md) | 366 | `result-track:7d4dc933aabe7a279abe6a1f2e6fdd5e0ae52fd60c12b24a70e42d2230da6a1e` |
| 62 | `theorem` | [LawfulEqOrd.compare_eq_iff_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfuleqord-compare-eq-iff-eq.md) | 371 | `result-track:740e3027af32dd939e47b75c0872a3e308b7476a0b13869a737404e0fa4a3fec` |
| 63 | `theorem` | [LawfulEqOrd.compare_beq_iff_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfuleqord-compare-beq-iff-eq.md) | 377 | `result-track:359a36844d67466e373e5a49554e2252ea5c13b26c8c6f95ded2a6c852c2d150` |
| 64 | `class` | [LawfulBEqCmp](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqcmp.md) | 394 | `declaration-track:cd58f08f38de3ad2179c09f446daaf4fe4b0a4e74c7cea3a22c6a71361efcd61` |
| 65 | `theorem` | [LawfulBEqCmp.not_compare_eq_iff_beq_eq_false](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqcmp-not-compare-eq-iff-beq-eq-false.md) | 398 | `result-track:13d43d8f7ac252edd907b6fd30943b43a513d74848d95e19edf4637c12e5a121` |
| 66 | `theorem` | [LawfulBEqCmp.compare_beq_eq_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqcmp-compare-beq-eq-beq.md) | 403 | `result-track:c5e2a5fd3ceed1f78ed509ceeec964f4efcdea4f84fcfe4a8db01c55a15cc074` |
| 67 | `theorem` | [LawfulBEqCmp.isEq_compare_eq_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqcmp-iseq-compare-eq-beq.md) | 407 | `result-track:122878ae5cec6bacb8dec2ac47a4e47d4b4eeebc9b0d9a4696e90a161edd6a08` |
| 68 | `abbrev` | [LawfulBEqOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqord.md) | 418 | `declaration-track:31ff94c3c71c9f1ef0c113aa84074577963617707102aa52e5d0239e7b6a623c` |
| 69 | `theorem` | [LawfulBEqOrd.compare_eq_iff_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqord-compare-eq-iff-beq.md) | 422 | `result-track:21165c084c67e792971bf5045053895af4983c9a8a0a2673105f4c5037c7f4ac` |
| 70 | `theorem` | [LawfulBEqOrd.not_compare_eq_iff_beq_eq_false](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqord-not-compare-eq-iff-beq-eq-false.md) | 426 | `result-track:443d014c1adc0f76d483dbc182fda313e985766469895aff79b81b4891081fda` |
| 71 | `theorem` | [LawfulBEqOrd.compare_beq_eq_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqord-compare-beq-eq-beq.md) | 430 | `result-track:f32a68f046346684a18ab5c3b40c52747ec81a61e8e20119403f106ae6bc41f7` |
| 72 | `theorem` | [LawfulBEqOrd.isEq_compare_eq_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqord-iseq-compare-eq-beq.md) | 434 | `result-track:19a99cde7c80a178bea8d6104be25d0c0e2a7e37f3bc69914cd05babe2889fe3` |
| 73 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-21.md) | 441 | `declaration-track:64a033b5f4934280801569b200f1fe9bd2f167f7ec1a5bda32ae1751f54a2fbc` |
| 74 | `theorem` | [LawfulBEqCmp.reflBEq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqcmp-reflbeq.md) | 444 | `result-track:3ff19907d575ee4eee294dc55b479b1083d283b690d749d110d0eee183c716b0` |
| 75 | `theorem` | [LawfulBEqCmp.equivBEq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqcmp-equivbeq.md) | 447 | `result-track:2306159ab3a8a4490c7c2793ab5ccdc263279e55c409a85db42f910fc81f7a79` |
| 76 | `instance` | [LawfulBEqOrd.equivBEq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqord-equivbeq.md) | 456 | `declaration-track:52ce983f590cefe34f0b7bc36c6fbde747a4829952c6c9be166118e0c3e489a0` |
| 77 | `theorem` | [LawfulBEqCmp.lawfulBEq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqcmp-lawfulbeq.md) | 459 | `result-track:341c52f91b533f496ecc92e4f1a9be77e038c05e9d2d03da5701d801eb0dc224` |
| 78 | `instance` | [LawfulBEqOrd.lawfulBEq](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqord-lawfulbeq.md) | 463 | `declaration-track:5fa14ad1556589755728d6965cc72adefbde0714a9891df0e48c806ea91a0092` |
| 79 | `instance` | [LawfulBEqCmp.lawfulEqCmp](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqcmp-lawfuleqcmp.md) | 466 | `declaration-track:49522208035ea7b48e5ea080fb14cc3ce4ac436ab0bbfdc5687b56099d836aa2` |
| 80 | `theorem` | [LawfulBEqOrd.lawfulEqOrd](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqord-lawfuleqord.md) | 470 | `result-track:482546705fe44db595ad23e272aa8654caafc1a551516237296a0eea0aa866c1` |
| 81 | `instance` | [LawfulBEqCmp.opposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqcmp-opposite.md) | 473 | `declaration-track:39d287ccc7ecb2e90c5592f23fd69a5243a1a15f166ec600d831753b0f6344be` |
| 82 | `instance` | [LawfulBEqOrd.opposite](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/lawfulbeqord-opposite.md) | 478 | `declaration-track:2a2d555cf6596140a26c36c96d164ea4e4835d8a9851148db4984409689872db` |
| 83 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-42.md) | 485 | `declaration-track:d01f3bffac601025d621d302639d984ec349ce0121aa685114067cc39cd9f534` |
| 84 | `theorem` | [Std.TransOrd.compareOfLessAndEq_of_lt_trans_of_lt_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/std-transord-compareoflessandeq-of-lt-trans-of-lt-iff.md) | 494 | `result-track:d2ecc97a56e582f03c61ed0342acda12919ff0acab607692489d0c8c2b628989` |
| 85 | `theorem` | [Std.TransOrd.compareOfLessAndEq_of_antisymm_of_trans_of_total_of_not_le](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/std-transord-compareoflessandeq-of-antisymm-of-trans-of-total-of-not-le.md) | 510 | `result-track:c6a50e2aa89604141d5f83a2742b9b2d03482a1ad632d3dd9ba3970674fcce2e` |
| 86 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-33.md) | 526 | `declaration-track:9eda945f0edc673b4fc1d8a9fdb17cd91fc2989f5a7f838db814d798490df047` |
| 87 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-44.md) | 530 | `declaration-track:e0451ffc0bc8758ff0d0de685b4a87d4d450fdc2189bfc7b666a437b0d46de35` |
| 88 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-31.md) | 537 | `declaration-track:9bea688929ca2ec4b2b98ee8204d4ee9ceead17201bb0201f6140408c305a9e2` |
| 89 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-30.md) | 541 | `declaration-track:97bd1af9b12fd88366aa5fbd99c5f25efd47aec7b57fe3bed8912368c34887eb` |
| 90 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-27.md) | 548 | `declaration-track:83de4e67ac9e1a5ec37c432ee4e348cbbb7104ff059d2a3657c5338bc5e2ff73` |
| 91 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-40.md) | 552 | `declaration-track:c25d0d0b3c713052ec4f58a3ea43d6000e459548f3b5950c2ac92d538987a998` |
| 92 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-38.md) | 561 | `declaration-track:bbc241100c1e00bbf01500471b5a89f3d45a619f5cd11a41c62ae74c56378187` |
| 93 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-23.md) | 564 | `declaration-track:673c067776f21fe554d1203ea81213340ff7f94758f794b6aceceefad04c36df` |
| 94 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 567 | `declaration-track:46daabf3d2ed9482a29f9c2efeb1a1310ec1be96ee9be2754215d2270ac7f20d` |
| 95 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-36.md) | 574 | `declaration-track:ae897d76874c8cde833537032856bdd1da49937b98c6b925357a65c1d0026bb0` |
| 96 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 577 | `declaration-track:338cb51eb49d150a848b7fdb869b50aacd9ed4e69a37cf1576963be4d09c731a` |
| 97 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 583 | `declaration-track:0a9fefb899e5df9a7257e0b69ff0a621c5f05f6e8bbe8a441aecbb2ec3b6603f` |
| 98 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 586 | `declaration-track:1b61c8f47f99b5f18a33f0371d5214b7dc7e1c42877ce195d7ce40b0aff5061c` |
| 99 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 590 | `declaration-track:56036aed8d849711ba63dc409f5455358b04ac665a6e428e567dc81a48502f28` |
| 100 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-39.md) | 600 | `declaration-track:bcee78d5d7f4dfe26c5e7d8d44632c8446394b319de7041a8d8fde4f73a5581d` |
| 101 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-29.md) | 604 | `declaration-track:92c6d79dbedbe34bc16e984b228507e364a1950a8343b0342bd61c7a73aaa394` |
| 102 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-26.md) | 610 | `declaration-track:838718322df687217e0ebfb4883b3aba0ea3ea17b46d9ed16fbd641da64fe7e4` |
| 103 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-24.md) | 623 | `declaration-track:7de4ccdf4acb6e9f23a39c83755668b32e544709fb9b11069885ded60c02251b` |
| 104 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 627 | `declaration-track:1d4f668fb9effaa448deb8ea8cbc2936425c29e0e57e6e5aec3aad4586ebb053` |
| 105 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 631 | `declaration-track:208edcaab991b45d17618e408af12cd5f394fb8f02076866fd99bb66030576ad` |
| 106 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-46.md) | 637 | `declaration-track:f45ccf914dcdb815400384da1b20afe7fd01a0424ffa8ca247eaedd7cef0c968` |
| 107 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 641 | `declaration-track:56230d9ef553ab20369a34099a54d29d5edb4cdd84e770c9386e0005f39bc9c2` |
| 108 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 645 | `declaration-track:300b3e88c85087335710647bdbf800e3f1d3f7f8b4bd91ad7e60d8c2db18839a` |
| 109 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 649 | `declaration-track:616850d411b75bc59fdb9c5d1bd32c89b5d163ea365b14f2646146a7c97fca7e` |
| 110 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-47.md) | 668 | `declaration-track:f4ec630b2110dc582d074f3b6281c41b4a9bfb35e8a153acbeb423fcf2769874` |
| 111 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance.md) | 675 | `declaration-track:0827ef190131a8df2ae2fb533de718750534b5318007705d7062f05c90e076af` |
| 112 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 686 | `declaration-track:5d0cf2eca9cfa1568b2efb4cd090316778ff715697908c33824b26963c2e7521` |
| 113 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-43.md) | 695 | `declaration-track:e019b7c2549dcdb9897bbdabe22b813f41f57e2f951c5b125aac0a2cbb3bb0f6` |
| 114 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-34.md) | 707 | `declaration-track:a13bb3be5f4aa377bd819987300a609bc0bc74c61921d0f1815574fae2797757` |
| 115 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 722 | `declaration-track:221959cfccb2b78c48595ae6916110018096b95a0aa63cbcb2a4a6f0815d4c6f` |
| 116 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 725 | `declaration-track:4d3cf34a7bf4d037d157e02de8bae579b9ba15429b8fb610073c6cfccc574c7e` |
| 117 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-22.md) | 728 | `declaration-track:664f24d468212ba2335f7b3f55edc8e826c57294799bf8d2be14b2bd27eaf8e0` |
| 118 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 731 | `declaration-track:6491148542bd179fd73a0ae5c48b2bf3db9da2753b17910d898d76903e79ae5f` |
| 119 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 734 | `declaration-track:41ddbcc13a463f226262d0dfd61984ec0ddc7501435637bd740d84974a54f4be` |
| 120 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-32.md) | 745 | `declaration-track:9ca4eb6b0648302aca1f1d591fea84bdc29709daa6a0a97c24259e7b7f620e19` |
| 121 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 748 | `declaration-track:363f2c9bbed4606417d75b9aba51d4c4c38fa47e810eecd0f9775cdb62bc135f` |
| 122 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-35.md) | 753 | `declaration-track:a92aba1d8123211a45e9150d703a64cb96bd84f811dc25433c29262631da81dc` |
| 123 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-45.md) | 758 | `declaration-track:f1f00472715db954667731c20945e4de7bbfbfd027aa878120c8c683b056139b` |
| 124 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-28.md) | 761 | `declaration-track:8b07dbdab97d4082612118fdb1f46936ae229825b55b7dd284229bce5d245a8a` |
| 125 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 766 | `declaration-track:3fe6f06e257bd6007d7468c814048e16c31e7bfa01b9d069cda9d8363c51e2f0` |
| 126 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-25.md) | 769 | `declaration-track:7dface93b86b38329a6eda2cf44ff9e47e6f6f69ce9c6fc5b22800c64c1fb803` |
| 127 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-41.md) | 772 | `declaration-track:cf84cc0a806d0631ca2341f8df1bb4a63e10ee1022d1a5d4f9a62efe67ac6ca5` |
| 128 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-37.md) | 775 | `declaration-track:bb738c9b2ea871e19c72c8ef8b2c753ccd49f6f6812623c78da761f766615bd5` |
| 129 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/OrdNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 778 | `declaration-track:09c82f4e73d32b4ca332c3960d439220722a56ec1a40ec5ce8322159631e1109` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1413bd2bc67753171cdbfc80bd235e6bbe5e12f2d7fda70d6f9d6dc695d99369 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Ord/Variant9bd1e87f3809d0e6943c7ee588e347f716d31eb9a05d1e9766cf9d683e560726.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
