# Verification target: Max

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "740d03f92df543b530302dc019798485e4481138",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Variant950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `740d03f92df543b530302dc019798485e4481138`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Variant950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Max/Variant950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [max](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max.md) | 30 | `declaration-track:2d08e71e8356e824f07ba4c9f6cdf2b584b12ff14e6f22e10e7a7ef9c3d90e93` |
| 2 | `theorem` | [max_eq_sup_coe](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-eq-sup-coe.md) | 33 | `result-track:0afd0431ff4befb2ef9a40b2e7ef32e138dc102d937306860b88ec2e45f38f78` |
| 3 | `theorem` | [max_eq_sup_withBot](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-eq-sup-withbot.md) | 36 | `result-track:874f3cc06aaf07b9b215ab5318cac03ea171707eb3acd75d24f3050bf1a7b312` |
| 4 | `theorem` | [max_empty](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-empty.md) | 40 | `result-track:729163c88dc66ca29e9100d39bfbc02e379c40a5e0e153bf7e419757396bbfc2` |
| 5 | `theorem` | [max_insert](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-insert.md) | 44 | `result-track:81838b69a5b005fb6d5f3e61328fc9a87db209365eff31cf50dc3fc9ef94ca2e` |
| 6 | `theorem` | [max_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-singleton-source-edition-2.md) | 48 | `result-track:2ac8e5a4d72d5b9ff3620a5bd501d78859571767bbda64ef2d4e71c20fff1227` |
| 7 | `theorem` | [max_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-of-mem.md) | 52 | `result-track:3098317cd4f171c6683c15f98f9b1df707a886a527906ec2460717e20f1c14d3` |
| 8 | `theorem` | [max_of_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-of-nonempty.md) | 56 | `result-track:109d7f4518fada1471fc15569bf92f6018a4f9eb823cc916d41448b0ea4415ff` |
| 9 | `theorem` | [max_eq_bot](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-eq-bot.md) | 60 | `result-track:cf6a4a9e74844500046c02b3a937ee37003bf8c53be718d89f1d04b98cd0fe8d` |
| 10 | `theorem` | [mem_of_max](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/mem-of-max.md) | 66 | `result-track:e1c2a609b8d0bd4ea34165850bf1dfb4334fa88589016c4cff44841d988b93d0` |
| 11 | `theorem` | [le_max](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/le-max-source-edition-2.md) | 78 | `result-track:89de268cd51ba33a348961c3cafd37990bbbe3190eda6f12a118a92e11eefbd8` |
| 12 | `theorem` | [notMem_of_max_lt_coe](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/notmem-of-max-lt-coe.md) | 81 | `result-track:eeaed4a2509e1e5928a02538749745d32dac9794d69871437e07b4b5353e955d` |
| 13 | `theorem` | [le_max_of_eq](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/le-max-of-eq.md) | 86 | `result-track:2d95934a9a6cb05b7329da1e0837271fe18e6c9c8492e87b255a2e21d7bb34a1` |
| 14 | `theorem` | [notMem_of_max_lt](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/notmem-of-max-lt.md) | 89 | `result-track:9de837a16d323abb3cf59e3198933cca90039fa1cc768431371f1b179bd114fc` |
| 15 | `theorem` | [max_union](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-union-source-edition-2.md) | 94 | `result-track:82c7b8aa2e6da4530f82dfbb7b1cf6f7b6295554b1d9025114e826c1123e7a09` |
| 16 | `theorem` | [max_mono](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-mono.md) | 97 | `result-track:8f4e7045612770207c9caf685a6b3b0c23d37cefcf130eaf9a2c599d249af0fc` |
| 17 | `theorem` | [max_le](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-le-source-edition-2.md) | 100 | `result-track:57621e966be2ef7691e6f8b0d925f413610eb8d985ae99efda34ef6cca1f502c` |
| 18 | `lemma` | [max_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-le-iff-source-edition-2.md) | 105 | `result-track:d14f02037f77545475b127237b29821ede6cce3317d5ef5c7c74235bcfbb86db` |
| 19 | `lemma` | [max_eq_top](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-eq-top.md) | 109 | `result-track:e682c2e1f506f58202420e2943150dc8503987b1133747c986164320f5c28708` |
| 20 | `def` | [min](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-source-edition-2.md) | 115 | `declaration-track:16eb049e5b4bd0696caae60226ad7b0edc2516324a2a0170dcaf1d23d9badadb` |
| 21 | `theorem` | [min_eq_inf_withTop](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-eq-inf-withtop.md) | 118 | `result-track:2991868a1226e8ed518227feaf6bc7e3427124f886027e8917f804807aa73de3` |
| 22 | `theorem` | [min_empty](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-empty.md) | 122 | `result-track:720c2f62d2d9533000dcec3e06c55bb7079318437a7672bdfa7b7cc773982ae6` |
| 23 | `theorem` | [min_insert](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-insert-source-edition-2.md) | 126 | `result-track:c69ee8f5751c6bb0fe99418dc0b494a6a263d17bfec0e9dea436c1f06056f397` |
| 24 | `theorem` | [min_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-singleton.md) | 130 | `result-track:5bdbd373916b26a9b8939d2a01f10df64ba863669decc8df810ab92d76330bb2` |
| 25 | `theorem` | [min_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-of-mem.md) | 134 | `result-track:6983fe1dd3ea56093c2a134d6bb5db114ba44b73e863eecaee3f36e3d88c7595` |
| 26 | `theorem` | [min_of_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-of-nonempty.md) | 138 | `result-track:d5bd8ad2139dcda0275a7183959f56d546830e511a85168f9e3185c3b1a842f3` |
| 27 | `theorem` | [min_eq_top](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-eq-top.md) | 143 | `result-track:fb795183cc4fd14738753f72c3c21a5ec69c4b3ef2267cee6a3ae1d85454c47d` |
| 28 | `theorem` | [mem_of_min](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/mem-of-min.md) | 146 | `result-track:c616445ce4f5d007fc73ddb96a74c6f3c62d7a7614cae3c30527c48124781e47` |
| 29 | `theorem` | [min_le](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-le.md) | 149 | `result-track:73ca9cb81c2fa5cfc03b1d3111a922c61531c673d8135ada5090fd2b4674d234` |
| 30 | `theorem` | [notMem_of_coe_lt_min](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/notmem-of-coe-lt-min.md) | 152 | `result-track:451fc58f24f91407882dcdea4b78d5d29bb900a082aaf24573177cc17a48a1f9` |
| 31 | `theorem` | [min_le_of_eq](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-le-of-eq.md) | 157 | `result-track:9cc52ac594ef03b791c793850c31762147157282a40eaf8a481679fa87206ee5` |
| 32 | `theorem` | [notMem_of_lt_min](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/notmem-of-lt-min.md) | 160 | `result-track:9d0f7898a0c87358c8893a6c87ed5b107c6bac7e811efaaeac414f0dfda90df4` |
| 33 | `theorem` | [min_union](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-union-source-edition-2.md) | 165 | `result-track:accf7d59a89a3fa050198c41cc3abcb52ee275320d38de5e959d108253b4a788` |
| 34 | `theorem` | [min_mono](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-mono.md) | 168 | `result-track:0fb5198dfed196550cd93875fac5accf82fec3c1171d053c27e65386fa65fe01` |
| 35 | `theorem` | [le_min](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/le-min-source-edition-2.md) | 171 | `result-track:c2727a9bcb952d6c2372e305974aba0beb64bb0ad3d9202bfa1bdb96176475aa` |
| 36 | `theorem` | [le_min_iff](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/le-min-iff-source-edition-2.md) | 175 | `result-track:fc0c543ab35eeacb04896225cba817ccf20691914dcf72a4b284265452eb5e1e` |
| 37 | `theorem` | [min_eq_bot](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-eq-bot.md) | 179 | `result-track:ec2a29443831c5ebdb39a032bae47b9bd38837331124605633ddf30c6ebaa6da` |
| 38 | `def` | [min'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min.md) | 185 | `declaration-track:07e2037d854820ddc042c3e14a1dfbc51c266795e2a4e97b62b58e20b3ce53d1` |
| 39 | `def` | [max'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-source-edition-2.md) | 191 | `declaration-track:747920ac8ec20839cfb72509cbf6319c11a0725e78fbf7c21cd8bac8ec143b51` |
| 40 | `theorem` | [min'_mem](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-mem.md) | 196 | `result-track:7d5fa3928c9994b15e884117ea7aa0abdf485d0cb9d899935674374212f34290` |
| 41 | `theorem` | [min'_le](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-le-source-edition-2.md) | 199 | `result-track:c44626251e6222e6b78d28d4988a92e0ae5ac2daa38bf3e22890545a84805357` |
| 42 | `theorem` | [le_min'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/le-min.md) | 202 | `result-track:0b01ec389f7cd91f9b2a94a8916124202a4dce36e9b69c2017372460a54f6d2e` |
| 43 | `theorem` | [isLeast_min'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/isleast-min.md) | 205 | `result-track:572b7fabdd353b8af77c0cb2a04f6e95aabd347b58672126b07d0fa842a53c5d` |
| 44 | `theorem` | [le_min'_iff](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/le-min-iff.md) | 209 | `result-track:695a2e5a1c3ede6624b4f4cf63170925c03dbd2da71e9989a765997c3eca13fe` |
| 45 | `theorem` | [min'_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-singleton-source-edition-2.md) | 214 | `result-track:83a4f3092c1a91e220077312236f24645e962e2b1314aa1549d9dd0b5314724c` |
| 46 | `theorem` | [max'_mem](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-mem.md) | 216 | `result-track:94bbd62e75309d530592292627f3cd5ddf744430b6511c79d9e6d5aa1707c53a` |
| 47 | `theorem` | [le_max'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/le-max.md) | 219 | `result-track:5f8240c727a640146d7a8b621e365e26468c6313b6ee736ecf8dd3d1c9ece186` |
| 48 | `theorem` | [max'_le](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-le.md) | 222 | `result-track:294f4c36d2c879e5b020730f5fa90d2237ffc4cfbb54939261ed1743a3d901a8` |
| 49 | `theorem` | [isGreatest_max'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/isgreatest-max.md) | 225 | `result-track:309dc4034d339645c5555b6856f752cd08544cc00297556c0b5ccb71fa74f7a8` |
| 50 | `theorem` | [max'_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-le-iff.md) | 229 | `result-track:1c6377f4fcf16daed937e3b214e7ace2f98228ac2bb0f136c875404f10081211` |
| 51 | `theorem` | [max'_lt_iff](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-lt-iff.md) | 233 | `result-track:882b81f5b2fcb85073e249e610029829c8dad5e3687d526b66554ad43389443b` |
| 52 | `theorem` | [lt_min'_iff](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/lt-min-iff.md) | 237 | `result-track:c6132258465173ff93fbc1d177b629a7f223778225657d540b08c99981550edd` |
| 53 | `theorem` | [max'_eq_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-eq-sup.md) | 240 | `result-track:52ceb840630f09fc7325c727a3782afb3b1205f9ec6d0eea18507266cdb6c96b` |
| 54 | `theorem` | [min'_eq_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-eq-inf.md) | 242 | `result-track:fcdfdcfd6262c803741d9f42844269facee6ac72e9ce2cfbf4892ccabe027a61` |
| 55 | `theorem` | [max'_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-singleton.md) | 246 | `result-track:10c2126b4727be9a92c057393ddcb4665a1ef4e23198c92c830e464906c712e2` |
| 56 | `theorem` | [min'_lt_max'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-lt-max.md) | 248 | `result-track:48749fd020bec2129c059f2421a96801e2e3aee7822a4bb397626d05d288cb49` |
| 57 | `theorem` | [min'_lt_max'_of_card](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-lt-max-of-card.md) | 255 | `result-track:957ebcbae02b0a3f7f596433b7073cbac3c89826a482966afdf1fb8e14cd8582` |
| 58 | `theorem` | [max'_union](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-union.md) | 260 | `result-track:3690424a8d3d80f8987e2dd9d025fa6a3a511a314b6c3189d34bdb84269118d0` |
| 59 | `theorem` | [min'_union](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-union.md) | 263 | `result-track:2b1a96faf6e83c63c02c380818ac5a54918f35cd25f88bb9d7a6a65ae7bdf602` |
| 60 | `theorem` | [map_ofDual_min](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/map-ofdual-min.md) | 266 | `result-track:ba14414865d6e808d96a5b33d19237bd6edac42f0b384eca82746f79e56ecdb4` |
| 61 | `theorem` | [map_ofDual_max](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/map-ofdual-max.md) | 270 | `result-track:5f74ad394344859571b3833e71afe96a4fd86895dc3b482407eae27ed16b5ae8` |
| 62 | `theorem` | [map_toDual_min](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/map-todual-min.md) | 274 | `result-track:3e9bf4ff22bef29d9a2976d890851b0c11b0909b601f6d195b3f86f59f4d7507` |
| 63 | `theorem` | [map_toDual_max](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/map-todual-max.md) | 278 | `result-track:fa7692d21fcd0000ae696a7774915bdb8290796bea66ddc58be439a2412d0c9f` |
| 64 | `theorem` | [ofDual_min'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/ofdual-min.md) | 282 | `result-track:4c406082306faba3ebe6b1ee62301016e8be801e6a5321e74651bcc2e155fff3` |
| 65 | `theorem` | [ofDual_max'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/ofdual-max.md) | 287 | `result-track:26da59c3fec118f56231638e955709140e6c2e9e7eae09a19e1a99336aef80e8` |
| 66 | `theorem` | [toDual_min'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/todual-min.md) | 292 | `result-track:16cdcca7f356a959cf366db4bf8cda24ef4dbfdf63b28cf692506c2acf76eca7` |
| 67 | `theorem` | [toDual_max'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/todual-max.md) | 297 | `result-track:c03037f5153ceab71457cc0eed24b54ecded01410aaba0573debe60b80741dc3` |
| 68 | `theorem` | [max'_subset](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-subset.md) | 302 | `result-track:4b59c00d9e380c00154f81a2c3722a8407127cbcb59f7133aef7c0b0a91d4437` |
| 69 | `theorem` | [min'_subset](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-subset.md) | 306 | `result-track:5191719727b22dbc750506621db9a33deea28a9083f36261b96af39d1a97b37f` |
| 70 | `theorem` | [max'_insert](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-insert-source-edition-2.md) | 310 | `result-track:a4213ca3adefe8a8cabd51c3d9bcdea8cb4016175e14c57a023414eabdbc6f2e` |
| 71 | `theorem` | [min'_insert](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-insert.md) | 316 | `result-track:9cbb5b069532f08870e35e77222a49474f649df7c2df2191488cfd976240dcf3` |
| 72 | `theorem` | [lt_max'_of_mem_erase_max'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/lt-max-of-mem-erase-max.md) | 322 | `result-track:e6b50cb7e27d80951c3756286f9120a5be9b4e121ef11788b90cbc6785627ce8` |
| 73 | `theorem` | [min'_lt_of_mem_erase_min'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-lt-of-mem-erase-min.md) | 326 | `result-track:df32f61bdcdd1c9cba4871f3302c4e20b6c4bf3c2b939f35dd682c8d11562078` |
| 74 | `theorem` | [max'_image](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-image.md) | 332 | `result-track:eb8a06750222c0754e7f9dc08bdd4217c6394a462fed5fcb2df31a569760cac8` |
| 75 | `lemma` | [_root_.Monotone.map_finset_max'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/root-monotone-map-finset-max.md) | 339 | `result-track:c2b8566be4a21df533d50859ad014833d55944301f1cf75e58d9875b04f7e7ce` |
| 76 | `theorem` | [min'_image](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-image.md) | 345 | `result-track:194842cdf679a626996bc76fce8145145360cdb7c45554127822bce5a1a6f754` |
| 77 | `lemma` | [_root_.Monotone.map_finset_min'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/root-monotone-map-finset-min.md) | 352 | `result-track:199dfc00ba98a7425b45b7753124dd4c2b79f927539b81abf901e4e4da1f5198` |
| 78 | `theorem` | [coe_max'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/coe-max.md) | 356 | `result-track:3cf35ae6a9dc98fb6f4b690ca2bef92c449af7597eab2b833fe34fcba5fb8198` |
| 79 | `theorem` | [coe_min'](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/coe-min.md) | 359 | `result-track:ccce62f23c26ab9ae021d13affeac34b0d2fa5ce4b327db947c7529f845f1fea` |
| 80 | `theorem` | [max_mem_image_coe](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-mem-image-coe.md) | 362 | `result-track:e3c9fad779927c68ce606d5401ad325bbaf141c3f599bd3ad77e53084825765f` |
| 81 | `theorem` | [min_mem_image_coe](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-mem-image-coe.md) | 366 | `result-track:1131d01dda93bc6cf27ba8cbeae5e2f9e07c59dde78152e51c7bf438715b0299` |
| 82 | `theorem` | [max_mem_insert_bot_image_coe](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-mem-insert-bot-image-coe.md) | 370 | `result-track:a994a7024bde5b0959e571dcacf6e9ac1647d3fcf9799d7975f8cc678e222bf0` |
| 83 | `theorem` | [min_mem_insert_top_image_coe](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-mem-insert-top-image-coe.md) | 374 | `result-track:d9912a1de85ba3ae384fd6ef1d573764cf087b585db2d58d428442c5a8ad15e5` |
| 84 | `theorem` | [max'_erase_ne_self](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-erase-ne-self-source-edition-2.md) | 378 | `result-track:53ef7e0c5a2d36635f552e76cc2e191eccdeabe20c63f009ebac4030cd1275ee` |
| 85 | `theorem` | [min'_erase_ne_self](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-erase-ne-self.md) | 381 | `result-track:0b11803bc1b48db849f435b5a1d8d59f74ee5b91d54c776d111395cc46a36b0b` |
| 86 | `theorem` | [max_erase_ne_self](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/max-erase-ne-self.md) | 384 | `result-track:3dc32768ec7e111e0589bd7a6ea2e4c1fcccc780ee3a1f586dbceafd34624a80` |
| 87 | `theorem` | [min_erase_ne_self](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/min-erase-ne-self-source-edition-2.md) | 391 | `result-track:1ba3c3a290733cb87ec9c4284934745957daecddee0711355676890f9f85d89b` |
| 88 | `theorem` | [exists_next_right](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/exists-next-right.md) | 396 | `result-track:cf1abe52ebbe611f246f7ec4dd52d4bac7b9d2477c931b3ebc326c8163dd82c4` |
| 89 | `theorem` | [exists_next_left](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/exists-next-left.md) | 402 | `result-track:b3082c9785970119052611947b3a9051ace7d57da3b01c24ecdc2bd085ee765a` |
| 90 | `theorem` | [card_le_of_interleaved](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/card-le-of-interleaved.md) | 407 | `result-track:f4d0ea1fdcd33a8b0237b75dd6ce9ffaed58a0f8a35e3fe3d7add7ada32ac40c` |
| 91 | `theorem` | [card_le_diff_of_interleaved](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/card-le-diff-of-interleaved.md) | 435 | `result-track:8ee3e5af447079c38e65d2875b722d8d410319b57d10e494275d1f3c98b6a204` |
| 92 | `theorem` | [induction_on_max](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/induction-on-max.md) | 451 | `result-track:78e9a3706ac5115659947d174b606fbabe79cd664246e34d961e069dab4f2bfd` |
| 93 | `theorem` | [induction_on_min](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/induction-on-min.md) | 467 | `result-track:602598822f7168d5dd9ba19abf92bbf0e012a80ae2f4572db2a15066a85b6ae5` |
| 94 | `theorem` | [induction_on_max_value](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/induction-on-max-value.md) | 484 | `result-track:66d4bd7d29ba9ab8cece0a18a752a6907424d013526fcba8ad6d700716b2d6d7` |
| 95 | `theorem` | [induction_on_min_value](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/induction-on-min-value.md) | 505 | `result-track:d11316d0e4bdc7d54108b40fb49d746f7a958e4ca7fd2de07bca0b935ccc9427` |
| 96 | `theorem` | [exists_max_image](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/exists-max-image.md) | 515 | `result-track:bd40526a35310362db200f888c83f7bfd3c72c9695979cd0cff8722159fc8b9c` |
| 97 | `theorem` | [exists_min_image](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/exists-min-image.md) | 521 | `result-track:85a83074422aa2a59a3d2753930208bd32ff62ecde3a05f56c57c6d54ffb51cb` |
| 98 | `theorem` | [isGLB_iff_isLeast](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/isglb-iff-isleast.md) | 527 | `result-track:b485d07a3094a8f145381c733f1f5ab2d7f6e0d5acd23535a9e01f5c7a9abe62` |
| 99 | `theorem` | [isLUB_iff_isGreatest](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/islub-iff-isgreatest.md) | 536 | `result-track:c1d97c37be0517885c1d183f13e03d6d15cf6ff701a51cde37bc628ea06aea55` |
| 100 | `theorem` | [isGLB_mem](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/isglb-mem.md) | 540 | `result-track:18dcdf89ee71ae6bf00953b96db2e068eff3e111a877214f13d277ebe1fc3ae7` |
| 101 | `theorem` | [isLUB_mem](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/islub-mem.md) | 545 | `result-track:a2a2505400b54b05e57d3c0035549041ae76e9e3fd2f031e68b0a7b83fdc6957` |
| 102 | `theorem` | [Multiset.exists_max_image](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/multiset-exists-max-image.md) | 551 | `result-track:d716d14dc23a329dfb403cd10235aff2333f0b5d3ea6390d0c20b81caa27a159` |
| 103 | `theorem` | [Multiset.exists_min_image](../../../../../Combinatorics/EnumerativeCombinatorics/Max.lean/declarations/multiset-exists-min-image.md) | 557 | `result-track:e120fbd92c08ee5727ec74a2359ac1c187afbbf0be0dd0f4b5138e9de4f6ff8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db85726a2ad59a9945e2f180f8e902bda029529b392e53b1586fd0ebf6d9a5a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Max/Variant950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Max/Variant950931cc4f2a814c60a11bc6ae012c1defb3f0cc70068549d1363d54259d632f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
