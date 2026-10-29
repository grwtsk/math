# Verification target: Category Theory Filtered Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d130e88eae454a3b1310ab9d0ce6ebf7f58630b",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d130e88eae454a3b1310ab9d0ce6ebf7f58630b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FinCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Cones` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.ULift` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsFilteredOrEmpty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/isfilteredorempty.md) | 76 | `declaration-track:4a5a76d717bd8d3cce6d07c58208d76c6676c0903ffd0986d1864b79cae2a7c6` |
| 2 | `class` | [IsFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/isfiltered.md) | 92 | `declaration-track:430da49b91179499b42ac40e1c9869e698b910706ddb5860f50afeb79a6cb2df` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-13.md) | 97 | `declaration-track:cab3a23f1f0d333df08816c68e73795fd111db5b2f14b7a4c3bd859192e5a84a` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-2.md) | 106 | `declaration-track:17ab6e4821805673b104552fe88e6f5a0d61491c3384f6826284987b646469bc` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-3.md) | 110 | `declaration-track:278cd2c2928ddd353f6128e51a0d97944953fb69e01ae6689e7ddfb8feab51ba` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-12.md) | 120 | `declaration-track:bcfa2faad8e007e3426ba331c6b3e630dbac3be22c3d94ade6bb79de9b9343a1` |
| 7 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/example-source-edition-4.md) | 125 | `declaration-track:ac89d87680146fb3245ee45c488e70929ad1d44e7dc63494bd32cc8b4f000cf9` |
| 8 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/example.md) | 127 | `declaration-track:023a4669f546acbabc61bf17b11db22c8665b8e9b7e79dd60d38dabc1831119f` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-8.md) | 129 | `declaration-track:7f95c90d1049267024610a1ce57f4584f07779d23f77228bae5e22a6efe9698d` |
| 10 | `def` | [max](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/max.md) | 157 | `declaration-track:cb89e02019b4b28c8369aa4e3086e46073b4aa42698678f27b12d75e33e9a31c` |
| 11 | `def` | [leftToMax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/lefttomax.md) | 164 | `declaration-track:8eadcb52be5ab20663a326324153711a23cf8ad75b417eaa882b83e50c7b2850` |
| 12 | `def` | [rightToMax](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/righttomax.md) | 171 | `declaration-track:d3df3157c53812b78395e0c6ebcd4d8b0d19b7ee05772b071ae54814cbb21b0f` |
| 13 | `def` | [coeq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/coeq-source-edition-2.md) | 180 | `declaration-track:c026bbfa3ff5086469d7658369629d47c2dc18d40ac61a26433e66b4f654e8cb` |
| 14 | `def` | [coeqHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/coeqhom.md) | 189 | `declaration-track:1b403c3f3b915b8b6c76c54afff05d76162b858bdf1c04cc5027c87c1c98e4bb` |
| 15 | `theorem` | [coeq_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/coeq-condition-source-edition-3.md) | 198 | `result-track:95497f88a9e39d68a9f635ec26aaa39a1f31c0a80f7f34b4e16c183314b042a0` |
| 16 | `theorem` | [of_right_adjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-right-adjoint-source-edition-2.md) | 216 | `result-track:b9a1bc09271a99399ef8170a72bece6f9abf340288aadfa0bd90adc4a4bef475` |
| 17 | `theorem` | [of_isRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-isrightadjoint.md) | 225 | `result-track:06942ab939005ff99700cacdc671a3698ed0faa1f914bff00f93424db96f5a4b` |
| 18 | `theorem` | [of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-equivalence-source-edition-4.md) | 229 | `result-track:cb553d9f9a85d8a4a90c94866e9230a9e47574664159cd3f975e0267fa03b7bb` |
| 19 | `theorem` | [sup_objs_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/sup-objs-exists.md) | 245 | `result-track:49b3313184e10853640489c58c00ce62a5c1360bbf75c32ead9a2d2b81b885e7` |
| 20 | `theorem` | [sup_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/sup-exists.md) | 264 | `result-track:c4514c5c64b14b2da24f4b1623ab552e3971bdc48445da3076c05e833eda8c61` |
| 21 | `def` | [sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/sup.md) | 300 | `declaration-track:dfae5390f2d7a4ca9240066b8c4a0eb2cf2fbd0c6ab883874b51bc6b607c720f` |
| 22 | `def` | [toSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/tosup.md) | 306 | `declaration-track:9f596b7e15e4660414c8ee36057695ae1b93e4c5da15c4b1b2727025edc7cabb` |
| 23 | `theorem` | [toSup_commutes](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/tosup-commutes.md) | 312 | `result-track:2b52e662d9e0498e78494d02698466300f3ab22c699237ee64c470566ee558ee` |
| 24 | `theorem` | [cocone_nonempty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/cocone-nonempty.md) | 323 | `result-track:dea2eb75e0dffd7bd7160e61c06d5dd12d3a4b3d944fae9fa9c48c54d4301e09` |
| 25 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/cocone.md) | 343 | `declaration-track:25c4e0247842490abdb923edae64e68b45c33fac0276a1c57237c32e21bc59fe` |
| 26 | `theorem` | [of_right_adjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-right-adjoint.md) | 351 | `result-track:5d96746e9182cd2a19f48272386c838970a155cbb28a93d5741ac40be50b13d3` |
| 27 | `theorem` | [of_isRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-isrightadjoint-source-edition-2.md) | 357 | `result-track:502290ac29298a7cd924ffef7a0e40ec9b7e4b7ae06e61ad6bc1b90db74aa365` |
| 28 | `theorem` | [of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-equivalence-source-edition-3.md) | 362 | `result-track:b52cb3d8ab8fc871823ddf4dc18e9e31736928d751fa7b50cdb725a8699312d4` |
| 29 | `def` | [max₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/max-source-edition-2.md) | 376 | `declaration-track:e89d4ef0a40a11408c04479b359053a9f7d592b258b6b9b7b27667c6def6ae19` |
| 30 | `def` | [firstToMax₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/firsttomax.md) | 383 | `declaration-track:4135057bd5a00557e198af807788c3a77afa192232a15015b6ea783bb79ee669` |
| 31 | `def` | [secondToMax₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/secondtomax.md) | 390 | `declaration-track:313ff7176b7225180dbdf24d3a5395bdc978724967f26c8ed4c3414d47e1a0aa` |
| 32 | `def` | [thirdToMax₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/thirdtomax.md) | 397 | `declaration-track:08d98c8d83ef1e9045d5446d37d4d191b34270d511918f671fce78ad533b9446` |
| 33 | `def` | [coeq₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/coeq.md) | 406 | `declaration-track:7828fc4976c523324e72483dbcbedaaed204be53014d281676ff72712825b4dc` |
| 34 | `def` | [coeq₃Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/coeq-hom.md) | 415 | `declaration-track:91b03c2f9833ec794c78191f65f478b67256e25f87e89eceb4cd3624517b1bb6` |
| 35 | `theorem` | [coeq₃_condition₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/coeq-condition.md) | 422 | `result-track:0560eeb653b88965194e362df3a648cf40b490d2b0e41bc438ea5f787f5e889d` |
| 36 | `theorem` | [coeq₃_condition₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/coeq-condition-source-edition-2.md) | 426 | `result-track:5f0c5c3adc3e2152e2cd6b02b72e6e22cec619944ca26ea5323e0b4942097b21` |
| 37 | `theorem` | [coeq₃_condition₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/coeq-condition-source-edition-4.md) | 435 | `result-track:f53b32795ce41957c4f4ab1ab0b1032a27ac7a5a92da71c5a2543145e3cd3113` |
| 38 | `theorem` | [span](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/span.md) | 441 | `result-track:e873760e9a837fc276bc23aa0140ea2d0143bca6e72cf0a23fd7c92dcfbb09d4` |
| 39 | `theorem` | [bowtie](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/bowtie.md) | 461 | `result-track:5c2577503d70504d81598f6a83810e4097a31a0f71ac28d6835f8174d1797f6b` |
| 40 | `theorem` | [tulip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/tulip.md) | 486 | `result-track:1795697a1be0ef324e34a0d44b4f28a492b12c6831b45d396e859367bb682f70` |
| 41 | `class` | [IsCofilteredOrEmpty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/iscofilteredorempty.md) | 505 | `declaration-track:ef7087d4eee22e1425fb7b55bb8593834171021ad49b10702e28c1bc057a33fa` |
| 42 | `class` | [IsCofiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/iscofiltered.md) | 521 | `declaration-track:72c3988745d1915cf6329add7588651aecc97492c046d0229672ee612e6f0662` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-7.md) | 526 | `declaration-track:556735f1b8b94c61dbc7b08818dac2fe1d9c1e854919d4c8a06d743cf54d9287` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-6.md) | 534 | `declaration-track:451da4bd7a745c2cd460a7a95e03e52e1788ff1fea35bf8170af5e95a27200b7` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-10.md) | 538 | `declaration-track:914dcb86c667439c0212ad4f723742b96a6a731848b202a4eb5c6dc53ce07aaa` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-9.md) | 548 | `declaration-track:8113a5cb82634f6971c641e297cca7c6001764e43f038e9f5d01bf6bb5e1f7d8` |
| 47 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/example-source-edition-3.md) | 553 | `declaration-track:6833d1f5460a8eafc380e566ecf8dfc48291a7bd36e6a86f6faabb481ef20df2` |
| 48 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/example-source-edition-2.md) | 555 | `declaration-track:6233d96218c29dec1bf5da0dbf8bcf4d7b29b5a8796d7e5ccf83512977b5d0ec` |
| 49 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance.md) | 557 | `declaration-track:09f980d41298cc5245388781664cc42ecd839701961f1c49cc14623e3bd1d58b` |
| 50 | `def` | [min](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/min.md) | 585 | `declaration-track:4f502658a8bfa83f259ce1954e87ecb0ffc0f4c4e724b8de711cbeb4e6c212a7` |
| 51 | `def` | [minToLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/mintoleft.md) | 592 | `declaration-track:f3a1fb9579669fcee5a508230dce25595c5250068a5783dbabbe9fe6b9ffab91` |
| 52 | `def` | [minToRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/mintoright.md) | 599 | `declaration-track:d06565c10c0ba20b8c46e816ca1fe52410ce875590407fbe9af158959d36ff4a` |
| 53 | `def` | [eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/eq.md) | 608 | `declaration-track:9df59e4852afe5234bece3a9daab618d901be280d950e95dd762957d6994e25a` |
| 54 | `def` | [eqHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/eqhom.md) | 617 | `declaration-track:8cf4fad584a95a9f03dc08103ba7559f7fefa89081cb911c852d0333b530ef0f` |
| 55 | `theorem` | [eq_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/eq-condition.md) | 626 | `result-track:e256720683d9a9cffe1ce7665da39ee65f05694b39da78cb6c1df59c72ebe58d` |
| 56 | `theorem` | [cospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/cospan.md) | 632 | `result-track:9304506c3643515c0d02ffbf55db8d1e8293a687f508116319aa47d54236636f` |
| 57 | `theorem` | [Category Theory Filtered Namespaced](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-isfilteredore.md) | 639 | `result-track:e1875a7f7a411fe12dc42ce68a7454a4c8fdfa4954de527332172878a8319784` |
| 58 | `theorem` | [of_left_adjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-left-adjoint-source-edition-2.md) | 659 | `result-track:2e102cda4962666067469df50d19555fc47b6e85fd26f678006067e7c1f241db` |
| 59 | `theorem` | [of_isLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-isleftadjoint.md) | 669 | `result-track:25169733bf2346f3937429b062cb04300ed37c00eb6501f5f60c4703b151104d` |
| 60 | `theorem` | [of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-equivalence.md) | 673 | `result-track:69d8683c217e6db38334ecc500f674a4b493fd73e530282b17c3a49958595ce8` |
| 61 | `theorem` | [inf_objs_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/inf-objs-exists.md) | 689 | `result-track:81bde636bc013b1dd5cb7b38be7c276d2904368901a59eeb7026217521ce9b74` |
| 62 | `theorem` | [inf_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/inf-exists.md) | 708 | `result-track:2704cc06d2d6ab01b14e1edea86cbb9413f8cc0503856a3999d33c39f83a4e22` |
| 63 | `def` | [inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/inf.md) | 744 | `declaration-track:e967ad16b3df3f4b32952cc99abe0b56326f61e988a4dd7e4190180ca56a4bb1` |
| 64 | `def` | [infTo](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/infto.md) | 750 | `declaration-track:114f070c4e1e5320ef07edd2b732fc9c3a379e0050e666bb2033ba979a6c4263` |
| 65 | `theorem` | [infTo_commutes](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/infto-commutes.md) | 756 | `result-track:23dc56b696bbd7ca43c8bf12718ecfaf89024bb94abc278c230ba2b6c77d5733` |
| 66 | `theorem` | [cone_nonempty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/cone-nonempty.md) | 767 | `result-track:e1a4966028962220d57cd238d65ad7a6ef9629692a78ad75b212e7245ba789e9` |
| 67 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/cone.md) | 788 | `declaration-track:bdc60f87874a8b850ae538f8d1b40fc0bb4bfdf68d27942719effd30b311517f` |
| 68 | `theorem` | [of_left_adjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-left-adjoint.md) | 797 | `result-track:1a493acbd62583f6549f158718706d80484dafa327ad33602edcc34c173d1a95` |
| 69 | `theorem` | [of_isLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-isleftadjoint-source-edition-2.md) | 803 | `result-track:ae8cce286c04e34bbf8c12332abc749db6ca89a913d89e99db3d7f9bcfe22a94` |
| 70 | `theorem` | [of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/of-equivalence-source-edition-2.md) | 808 | `result-track:93ec15bba8513c9f7aee9e1d83f55fbfcd2f520f2e27a102d827a73d8def4c70` |
| 71 | `instance` | [isCofilteredOrEmpty_op_of_isFilteredOrEmpty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/iscofilteredorempty-op-of-isfilteredorempty.md) | 820 | `declaration-track:0495057097fbb8b40ef9d196a109353c76136db64c5c3c077f929541a7d9f191` |
| 72 | `instance` | [isCofiltered_op_of_isFiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/iscofiltered-op-of-isfiltered.md) | 831 | `declaration-track:10fcd52e3361ec30ee549d11ddb0964673214fc8559597eab44b2b85112c0b50` |
| 73 | `instance` | [isFilteredOrEmpty_op_of_isCofilteredOrEmpty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/isfilteredorempty-op-of-iscofilteredorempty.md) | 835 | `declaration-track:acfc7d823879b1697ab7fef0d99d5ced9374483575ae5493c59351cba6edc590` |
| 74 | `instance` | [isFiltered_op_of_isCofiltered](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/isfiltered-op-of-iscofiltered.md) | 846 | `declaration-track:b1c8a6958b536ec69661dfa1be94789c29a60d0d87ceded1aa4593f2816d4da5` |
| 75 | `lemma` | [isCofilteredOrEmpty_of_isFilteredOrEmpty_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/iscofilteredorempty-of-isfilteredorempty-op.md) | 851 | `result-track:9cf83c2e5987fefa662e53c4087e59dcab613546e36c80247fe110defde9fb8c` |
| 76 | `lemma` | [isFilteredOrEmpty_of_isCofilteredOrEmpty_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/isfilteredorempty-of-iscofilteredorempty-op.md) | 855 | `result-track:cc426d928f0aafcf395efadda4364d1c1ef8f5b56e7c1d51907a838f4b4346e3` |
| 77 | `lemma` | [isCofiltered_of_isFiltered_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/iscofiltered-of-isfiltered-op.md) | 859 | `result-track:49fcebc93c6071bd121bc633b5f696403014fa87da0f17237a34c026cc846c56` |
| 78 | `lemma` | [isFiltered_of_isCofiltered_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/isfiltered-of-iscofiltered-op.md) | 863 | `result-track:fc54dde52e04540dca97372cb2a9d5f86f425f205229d55659208b3142e7c147` |
| 79 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-16.md) | 870 | `declaration-track:e59a70ac5beb628d76995fd2da52e64d364edf281b3b41390cf63afb14815264` |
| 80 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-14.md) | 873 | `declaration-track:cb50f3de53ecbf7c1752577d8c3cc93228c7a5822dd836067d986ce966fc4152` |
| 81 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-5.md) | 876 | `declaration-track:440acb6e5b60bc02f7e810a6defcdd4f09c2c1490c2158881a106745f6003381` |
| 82 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-4.md) | 879 | `declaration-track:2c0dbc6821b04c0273458c09364f57371f737b1543380ad576dc19f8a4abae87` |
| 83 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-15.md) | 882 | `declaration-track:e37d21e5586a07e8ff0f583d04a44f6f55fa8b79f72063daa36ab3b4f0039f31` |
| 84 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryFilteredNamespaced.lean/declarations/instance-source-edition-11.md) | 885 | `declaration-track:973737593505724a10a23bb4c0957000d0b2d69cebefc1d0da7085e16e86b410` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5628a589a423b480c8cb110b20d831316bd29d7fd570afc97ff116146e0f9b53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
