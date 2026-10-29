# Verification target: Regular Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06d4c721dfda24c9d1d07a3bfcd2ca9afc3b893f",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Varianta128f381fc9ac2590ca069576f1110e0ccfe729aff6a720e789d18cc5783cebf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06d4c721dfda24c9d1d07a3bfcd2ca9afc3b893f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Varianta128f381fc9ac2590ca069576f1110e0ccfe729aff6a720e789d18cc5783cebf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Regular/Varianta128f381fc9ac2590ca069576f1110e0ccfe729aff6a720e789d18cc5783cebf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Ordinal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.FundamentalSequence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular.md) | 41 | `declaration-track:6eba312f7db8aa389f90e98ebdee7d35c4b320a564931424c8104dfcfc21b28e` |
| 2 | `theorem` | [IsRegular.cof_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-cof-ord.md) | 47 | `result-track:5c61b74fd568b98a6b95fe811396a70cdd9add2d5a6a926753e5338c63d00aa0` |
| 3 | `theorem` | [IsRegular.cof_omega_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-cof-omega-eq.md) | 52 | `result-track:9d75bf7046c333c5f6324dd48a6b8bdb857f2491e2861880f445ed8dcea7c82d` |
| 4 | `theorem` | [IsRegular.pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-pos.md) | 55 | `result-track:b6ace142e8842a67156ed7e8d0d461fd8feb5cf52e8c97297de50d9fae8a3bcd` |
| 5 | `theorem` | [IsRegular.nat_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-nat-lt.md) | 58 | `result-track:a35559364dfc920ecb27df427ea4f596160071717960ba3610e84b5e8ef80af8` |
| 6 | `theorem` | [IsRegular.ord_pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-ord-pos.md) | 61 | `result-track:12bdaf402f358a72d88aec66e6ac2ebf83fdc486c5667631412f0408e12a2e07` |
| 7 | `theorem` | [isRegular_cof](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-cof.md) | 65 | `result-track:cd19d42a4682723b7ea92184bfb7c6c767534d006b6651b245cf7a94416fd6a7` |
| 8 | `lemma` | [IsRegular.ne_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-ne-zero.md) | 70 | `result-track:f6d0f14923b1863907798fdcccaf83af9b035946b3bb94b2f98fade5b1111024` |
| 9 | `theorem` | [isRegular_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-aleph0.md) | 73 | `result-track:333ec7273269b98444853a49dc30d5143aa5c06db8e8a3cf63fb2d19c6328564` |
| 10 | `lemma` | [fact_isRegular_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/fact-isregular-aleph0.md) | 76 | `result-track:00dd12ff67a0c5a00f21199353914fc203d4a4d6d33a612d452f5dd8f0a8dd54` |
| 11 | `theorem` | [isRegular_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-succ.md) | 79 | `result-track:97dcd5caef6737fad604a8f32f56a2efcde66078a32fde4be0a2fd92fc7129a5` |
| 12 | `theorem` | [isRegular_aleph_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-aleph-one.md) | 91 | `result-track:8318fdc1f9c9ae3216dbc8d095cbce81d20f2fdd6e9e5252597dc6c6bb1f086d` |
| 13 | `theorem` | [cof_omega_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/cof-omega-one.md) | 96 | `result-track:fdba3b3f5b2f0849dcfceca0baf494dbd6a821513824280d416706dc6e088aa0` |
| 14 | `theorem` | [_root_.Ordinal.iSup_lt_omega_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/root-ordinal-isup-lt-omega-one.md) | 100 | `result-track:54b1757981613f0a6e9633c713421411dd5f7cc1f4955b0e456d67c76da4baab` |
| 15 | `theorem` | [isRegular_preAleph_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-prealeph-add-one.md) | 107 | `result-track:f04166af6be05e2f03708de81a80c9684c644f7cd83a7492c2a8fbb66687c17c` |
| 16 | `theorem` | [isRegular_preAleph_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-prealeph-succ.md) | 112 | `result-track:3e174c4666bcaf111ba65e4c0651a66c1afbb95a7e0673185ab0534451fdb2ca` |
| 17 | `theorem` | [cof_preOmega_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/cof-preomega-add-one.md) | 115 | `result-track:7c4d10a2730a8005c758a97b649573be23c01fbd8f98d216bb1d6ca6bd6f7095` |
| 18 | `theorem` | [isRegular_aleph_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-aleph-add-one.md) | 119 | `result-track:122ef777353de454e3ac1fc55b2a31482d41a6f0edabc04eb5069c3edbb1a588` |
| 19 | `theorem` | [isRegular_aleph_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-aleph-succ.md) | 124 | `result-track:f914caad9fba38c11b932b7ee55ec524b25b8787974a32b9d765f10df4bbb937` |
| 20 | `theorem` | [cof_omega_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/cof-omega-add-one.md) | 128 | `result-track:76ff05f37fbb5c221e64b55d196e5119f0804a345efa4b447d0fad0717d32a9b` |
| 21 | `lemma` | [IsRegular.lift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-lift.md) | 131 | `result-track:bf73e98491aa3d95e51b33f047377fab4be58eaa6269524c0c5c410fe8d76f62` |
| 22 | `lemma` | [isRegular_lift_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-lift-iff.md) | 139 | `result-track:53d3300c1ae65e4b2cadadae4f7d4e7d7e2f9059e56607fe2d7cd656f2a748cb` |
| 23 | `theorem` | [lsub_lt_ord_lift_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/lsub-lt-ord-lift-of-isregular.md) | 144 | `result-track:93bfc5ce0eab86949717680f975a7cc5c087a2d2e6c9cba204ae254ea0d1467b` |
| 24 | `theorem` | [lsub_lt_ord_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/lsub-lt-ord-of-isregular.md) | 150 | `result-track:26ee4781a3b74a24a46c5524153913c1d138c17110571fc99dc4b335095784d2` |
| 25 | `theorem` | [iSup_lt_ord_lift_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isup-lt-ord-lift-of-isregular.md) | 155 | `result-track:cf671d4ee059642ef12ffd534642d052760460aa577d56883269b7bb4de5c675` |
| 26 | `theorem` | [iSup_lt_ord_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isup-lt-ord-of-isregular.md) | 161 | `result-track:40b79cc01761dfb93f2bee28e7cdf009cd30b262a01e3f6d54f3f0c30184cbca` |
| 27 | `theorem` | [blsub_lt_ord_lift_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/blsub-lt-ord-lift-of-isregular.md) | 166 | `result-track:c08c193792a3a7d4427eaec980f9790d1c14019143b4f176514f2cfd4eaf1686` |
| 28 | `theorem` | [blsub_lt_ord_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/blsub-lt-ord-of-isregular.md) | 172 | `result-track:21fef4dd4592dc4362d3a285a41417c44cd6d91d60566847609e0f11b8469849` |
| 29 | `theorem` | [bsup_lt_ord_lift_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/bsup-lt-ord-lift-of-isregular.md) | 177 | `result-track:eaa08c668779b4f207832062e2b9e91c3fd30c896ccb38515f26b4690cc09555` |
| 30 | `theorem` | [bsup_lt_ord_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/bsup-lt-ord-of-isregular.md) | 183 | `result-track:2e12ee2e153a8271e5f9c15a44ee6f6ac483c01ee8fafddf29a195b03429c0e2` |
| 31 | `theorem` | [iSup_lt_lift_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isup-lt-lift-of-isregular.md) | 188 | `result-track:4a5330dbce809d6360933e21929c38b12b533a30746327932a6b08cafc907c49` |
| 32 | `theorem` | [iSup_lt_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isup-lt-of-isregular.md) | 194 | `result-track:851c65e4b18ecbf9131587d78e4f332dd8ca81ba1d8f6d1e621b4672b84f6b1a` |
| 33 | `theorem` | [sum_lt_lift_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/sum-lt-lift-of-isregular.md) | 198 | `result-track:88c1404e3ea32017611b9c3a03a39368a8641bbc03e643b3cf43f056f035421c` |
| 34 | `theorem` | [sum_lt_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/sum-lt-of-isregular.md) | 204 | `result-track:d5aab9b8265e5ba89ac854a97d5d41f7d7b43a10875cdccf5a7fa8e2ee717346` |
| 35 | `theorem` | [card_lt_of_card_iUnion_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/card-lt-of-card-iunion-lt.md) | 209 | `result-track:8499a603b16fa8c58178858891826f2482702789d044d3599b1afe752edbeb0e` |
| 36 | `theorem` | [card_iUnion_lt_iff_forall_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/card-iunion-lt-iff-forall-of-isregular.md) | 214 | `result-track:c15f082e4d9460c5c77b8e8bd68c2da57bda79299e352dc92df1fef339c5ffbc` |
| 37 | `theorem` | [card_lt_of_card_biUnion_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/card-lt-of-card-biunion-lt.md) | 223 | `result-track:906cb6d9e35f65a197d7c32a1aaa7e5ee33ce789b49c07a7526005474309ffce` |
| 38 | `theorem` | [card_biUnion_lt_iff_forall_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/card-biunion-lt-iff-forall-of-isregular.md) | 229 | `result-track:0b9a7503051ffff1bf69e1a6c5a14226e6d2bfffd97e88eff6a5f33211b800be` |
| 39 | `theorem` | [nfpFamily_lt_ord_lift_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/nfpfamily-lt-ord-lift-of-isregular.md) | 234 | `result-track:e5469ea86a3d7b6381d5f82ecea26d90999fc7ffc1b16b6d11ffe5c98e55aedf` |
| 40 | `theorem` | [nfpFamily_lt_ord_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/nfpfamily-lt-ord-of-isregular.md) | 241 | `result-track:94936e2cc2ae268fc66e07656360008c5846837d222843780dac4d52012907bb` |
| 41 | `theorem` | [nfp_lt_ord_of_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/nfp-lt-ord-of-isregular.md) | 246 | `result-track:b913703f8b06d54f124e598bc0e422e9eeb51bc1d9c3ec24fc5d5e6d225d6de4` |
| 42 | `theorem` | [derivFamily_lt_ord_lift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/derivfamily-lt-ord-lift.md) | 250 | `result-track:05eb4efe18db31dd936be9192e5e18c5398b7551c3d1631114f0214f9a5aa4a8` |
| 43 | `theorem` | [derivFamily_lt_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/derivfamily-lt-ord.md) | 273 | `result-track:4e40752629eb5a3fa8b3424539c722c171437db40bf138ee76046ec43776adf0` |
| 44 | `theorem` | [deriv_lt_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/deriv-lt-ord.md) | 278 | `result-track:534f068faa89ab0e3bfbd0e807c4c57417f9495db55e331c06c134a279459655` |
| 45 | `structure` | [IsSingular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular.md) | 287 | `declaration-track:2f63f59564b4f6f786c2682788eb1d13ba4e97e92a6bd7728fdbac779e57d922` |
| 46 | `theorem` | [IsSingular.cof_ord_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-cof-ord-lt.md) | 293 | `result-track:818ce948b08f4ebb1a439ef698cdf8d9167eb4e8d138e1182f2dea5393098848` |
| 47 | `theorem` | [IsSingular.natCast_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-natcast-lt.md) | 296 | `result-track:cf084acf047cfd51e4e0297165fdf683e4a4eb827b1e0c4e322b364af9c776e7` |
| 48 | `theorem` | [IsSingular.pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-pos.md) | 299 | `result-track:2acf3f24e6b942187b06592dacbd758c2f6dcfcf5206b62037d1b4b25501411a` |
| 49 | `theorem` | [IsSingular.not_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-not-isregular.md) | 302 | `result-track:c4e6f816c3532f7ef121b1b841b3004a6f01e36c04defed249bf6a4e6c013fe7` |
| 50 | `theorem` | [IsRegular.not_isSingular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-not-issingular.md) | 305 | `result-track:b17be95caaaa75a0f0f3de33204331a8966966667999ab504f11b3c21f8d13e6` |
| 51 | `theorem` | [not_isSingular_aleph0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/not-issingular-aleph0.md) | 309 | `result-track:5255207129a26389aaab77f5281f0c9343d57922309f677a211a9a41092feed7` |
| 52 | `theorem` | [not_isSingular_aleph_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/not-issingular-aleph-one.md) | 313 | `result-track:17d31150f16df3df3640f5282e73173d815e9e09b573f01b30b2c809640ada39` |
| 53 | `theorem` | [not_isSingular_succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/not-issingular-succ.md) | 317 | `result-track:b3c91f94293fec78f279c03ca9e6078ee391c7496fca41032aefffc5231d1495` |
| 54 | `theorem` | [not_isRegular_aleph_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/not-isregular-aleph-add-one.md) | 326 | `result-track:531cf2e38734c82dbfca7e04ca744367ab48b30aa9c21cef41be2432fedbe7ff` |
| 55 | `theorem` | [IsSingular.isSuccLimit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-issucclimit.md) | 329 | `result-track:7bd93138e4967007d02dc59ed5f91f165800b82acd253892313187fe785631e4` |
| 56 | `theorem` | [isRegular_or_isSingular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-or-issingular.md) | 335 | `result-track:7e216daad0cad9c800bddec9447238eef19c1ab3c9ffdf46b6b77d5575067d00` |
| 57 | `theorem` | [lt_aleph0_or_isRegular_or_isSingular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/lt-aleph0-or-isregular-or-issingular.md) | 339 | `result-track:47d425001362be664d0619d88bfa18882e931c0259ca48332b0bacaa796cd9a6` |
| 58 | `theorem` | [IsSingular.of_not_isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-of-not-isregular.md) | 344 | `result-track:e3945afbd26d5b9a3a661fdb5e1891d6168d32158f62dd1f7fa8851daf45d01d` |
| 59 | `theorem` | [IsRegular.of_not_isSingular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isregular-of-not-issingular.md) | 347 | `result-track:882d74d3b2377074139c872ae44545d2aa865e8a900f8884fb4c3538f1d444ac` |
| 60 | `theorem` | [isSingular_aleph_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-aleph-iff.md) | 350 | `result-track:87e3f41147b713274f0278a8da1bd318ac0d98f5b5631d2c6dbc12483f86de46` |
| 61 | `theorem` | [IsSingular.isSuccLimit_of_aleph](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-issucclimit-of-aleph.md) | 357 | `result-track:e1f927d4a6c357e0c3883ec98ca5158e289dcd8e2e8acbcf21819f47c386a782` |
| 62 | `theorem` | [isSingular_aleph_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-aleph-omega0.md) | 360 | `result-track:f5a67a802dd6c30458de3e461c4d0abfedc908178e01a0273b7c9d45f1ee4cc6` |
| 63 | `theorem` | [IsSingular.aleph_omega0_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/issingular-aleph-omega0-le.md) | 362 | `result-track:8738dc0d17cd9a39a6b9216ee1e25647d99df3f4e1b6c07a6d92b639c3800b25` |
| 64 | `structure` | [IsInaccessible](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible.md) | 371 | `declaration-track:ba55572a1e274a1010e5cbea8c199ca3447749fd5240f57473bff2d198759ec7` |
| 65 | `theorem` | [IsInaccessible.nat_lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-nat-lt.md) | 379 | `result-track:f69ec44ad9d1b35983054728760df4579d1b57135e661891279b87ec1e8b981a` |
| 66 | `theorem` | [IsInaccessible.pos](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-pos.md) | 382 | `result-track:0911dadbe38b08d8899c810e650d8c435c527a853deaa992ead475aab211ee67` |
| 67 | `theorem` | [IsInaccessible.ne_zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-ne-zero.md) | 385 | `result-track:7272f46bd6e42c6245eb516f8ae7d626b05ed4172a653a3c740184d04f8e6a9a` |
| 68 | `theorem` | [IsInaccessible.isRegular](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-isregular.md) | 388 | `result-track:193733e16a9dbae538bb426d5fcda37ca15003c96166eb949bc4e4e56da4eae7` |
| 69 | `theorem` | [IsInaccessible.isStrongLimit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-isstronglimit.md) | 391 | `result-track:de68f891954cb2be7218a3f664f5be9b2193acea9c664e64868b15528f36e0d0` |
| 70 | `theorem` | [IsInaccessible.isSuccLimit](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-issucclimit.md) | 394 | `result-track:fb5b186c9607c18549c73493f8ad566a51ee57e6ef3f372ff89fa1dc03f7a019` |
| 71 | `theorem` | [isInaccessible_def](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-def.md) | 397 | `result-track:411639a3e49577d7fa698232878120fd938813c810de3bac52a8d7cb0033484e` |
| 72 | `theorem` | [IsInaccessible.univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-univ.md) | 402 | `result-track:9ff0ff7a4ab1c32234513c9ee3a9cd23ceef9e90ea47a9daaec405d128beb361` |
| 73 | `theorem` | [IsInaccessible.preBeth_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-prebeth-ord.md) | 405 | `result-track:2723c2c2d8a71ea8259cb9c16471f6c391c5355a4cb4f63a3661e2350207d26b` |
| 74 | `theorem` | [IsInaccessible.beth_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-beth-ord.md) | 416 | `result-track:9f86e168d09e84a90dd17951287dcbc29064e63bb9563ff41a6a62e5913c2399` |
| 75 | `theorem` | [IsInaccessible.preAleph_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-prealeph-ord.md) | 421 | `result-track:2c6dffc1d3b2724c405fe4d4a2a44ff08481c49e3cd181e8aa26c7d11402f246` |
| 76 | `theorem` | [IsInaccessible.preAleph_symm_eq_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-prealeph-symm-eq-ord.md) | 425 | `result-track:dd0843b581e254a3f18bac966f2e6cbd39952c4010b77bcb67524d012fc6e063` |
| 77 | `theorem` | [IsInaccessible.aleph_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-aleph-ord.md) | 428 | `result-track:04f491c3be4a67bd07dc06f4706fd8fe0ee0586366e2cc6d7e4bac5caf57f339` |
| 78 | `theorem` | [IsInaccessible.preOmega_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-preomega-ord.md) | 431 | `result-track:823e1e8b1ff59c8d1c82d9d2f19913c8d7bbe5d0a04014227cc6b66a9fbd60ce` |
| 79 | `theorem` | [IsInaccessible.omega_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/isinaccessible-omega-ord.md) | 434 | `result-track:f079f6ab5ba40bd24621ce7dc7224f0b75764278bf1cd40b0264a4d8579aa7a0` |
| 80 | `theorem` | [preBeth_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/prebeth-univ.md) | 438 | `result-track:bac020c86c9bd7fc7348802a6d2793471d055bc80ac4cb0c6fbad2ba20448252` |
| 81 | `theorem` | [beth_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/beth-univ.md) | 442 | `result-track:d8b2908edb78677c0ebb1dc6d9d3831d12cecf8fb1fc0d5f0f7bebf2e3b77c31` |
| 82 | `theorem` | [preAleph_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/prealeph-univ.md) | 446 | `result-track:8738f41ab512bda5260e2fa2808c6cc1b241d7ac6514c1b1359aa88810ed1906` |
| 83 | `theorem` | [preAleph_symm_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/prealeph-symm-univ.md) | 450 | `result-track:2eceab4b502a4913e69b75aeea5d9882ff02775b78d3d7a418651281d5f34b06` |
| 84 | `theorem` | [aleph_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/aleph-univ.md) | 454 | `result-track:11ea9ba2f568179591a3b68ebc5d612c7217b09c4a1c690f8e2fe0795c207ed5` |
| 85 | `theorem` | [_root_.Ordinal.preOmega_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/root-ordinal-preomega-univ.md) | 458 | `result-track:9f549d8c5e5951f82fa351fa302598599d89367303e2c9dfb82d057f5eb4c6d5` |
| 86 | `theorem` | [_root_.Ordinal.omega_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/RegularPublic.lean/declarations/root-ordinal-omega-univ.md) | 462 | `result-track:82e61484fb390c978f0d6aec9603869a8cf01ef001767f1d1e7e1dd9fa78c6ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ff9ccb29aa5658989ed573096ebd9ca1aa7140169fca3de81ec00865cb02a2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Regular/Varianta128f381fc9ac2590ca069576f1110e0ccfe729aff6a720e789d18cc5783cebf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Regular/Varianta128f381fc9ac2590ca069576f1110e0ccfe729aff6a720e789d18cc5783cebf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
