# Verification target: Order Fin Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c44679b3ac147129f591347c4f37fd4024c9dc74",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant74911bad9b5b8a4f781ebd39c25995f58adccc64b9e3d7092f9f213027b927bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c44679b3ac147129f591347c4f37fd4024c9dc74`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant74911bad9b5b8a4f781ebd39c25995f58adccc64b9e3d7092f9f213027b927bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant74911bad9b5b8a4f781ebd39c25995f58adccc64b9e3d7092f9f213027b927bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Rev` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/instlinearorder.md) | 52 | `declaration-track:c168b3f13c86085d17236eb5f83fb0103941ad20caa99917b2bde5fdbfb25447` |
| 2 | `instance` | [instBoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/instboundedorder.md) | 57 | `declaration-track:f18b99359b508e055cfb91205265de185498032f2afb1f1c6cbd680c706e1224` |
| 3 | `instance` | [instBiheytingAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/instbiheytingalgebra.md) | 63 | `declaration-track:721ee168b2980159823d47ace5bf83b30ae185b8f3444e0430c4ef10ec4b6b13` |
| 4 | `theorem` | [coe_max](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/coe-max.md) | 67 | `result-track:0ffa8bbcccff5cbb8fdae646d3f0d7e3505395be58f96b0f675849339c24f04a` |
| 5 | `theorem` | [coe_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/coe-min.md) | 70 | `result-track:71a8272413e1dbb0265ed9c2de933ad608bb35738235638628f9cd4e100a4e32` |
| 6 | `instance` | [instPartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/instpartialorder.md) | 87 | `declaration-track:bda92c8e6c4803d42d152ef43df015d3700481f0017310f593bf5d2496b5d694` |
| 7 | `instance` | [instLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/instlattice.md) | 88 | `declaration-track:d649ea419535c29897feffab6799dbfa1be2c993e403b230959931313e6292d5` |
| 8 | `instance` | [instHeytingAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/instheytingalgebra.md) | 89 | `declaration-track:45fafda731ec087efca2ff8161f2323fc505a14c1d20dd6df87e2033f1da06c5` |
| 9 | `instance` | [instCoheytingAlgebra](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/instcoheytingalgebra.md) | 90 | `declaration-track:267062288cb556a46732f7f232b93efaf77979a98de4a334456e0357aba6a264` |
| 10 | `lemma` | [top_eq_last](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/top-eq-last.md) | 94 | `result-track:776ec57241bd51297fff175909afc883a35fcce95dd9a992b4039183ddf37388` |
| 11 | `lemma` | [bot_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/bot-eq-zero.md) | 96 | `result-track:dec19db93b2c908b8ea36a47d9df3ce0dc94f4fe707e3be7f3e097a5cd500cb1` |
| 12 | `theorem` | [rev_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/rev-bot.md) | 98 | `result-track:b88bad040472b781fb533bc065b0d49a7290912d88f6c32109251734a6d2bc52` |
| 13 | `theorem` | [rev_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/rev-top.md) | 99 | `result-track:9f902594f873a7ce3eac313919df8f896e18a257ebc0a3617d76b9deec3b3500` |
| 14 | `theorem` | [rev_zero_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/rev-zero-eq-top.md) | 101 | `result-track:17a1a443ce45d25ed49f3a1ce71508b0e3b526f2bab44abdd5e24deaf37c28b2` |
| 15 | `theorem` | [rev_last_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/rev-last-eq-bot.md) | 102 | `result-track:e16e9066dea8e6de38cea3eac161f94da71d97db5cc381af3bfad15f7e15e688` |
| 16 | `theorem` | [succ_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/succ-top.md) | 105 | `result-track:8b522d0e2072834a07d2fdf8c81b448e6d09aa32975cb92660b6ce52d6bcae6b` |
| 17 | `theorem` | [val_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/val-top.md) | 109 | `result-track:cb8ef75b9fc3c08f7474d44ff80328afa242868a79fbb2f6101ac14d116c84a8` |
| 18 | `theorem` | [zero_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/zero-eq-top.md) | 112 | `result-track:d554b48664f2125bf18358963bd3340b96fd48a250c6035752ee6edcc12a1919` |
| 19 | `theorem` | [top_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/top-eq-zero.md) | 117 | `result-track:f6d5bbbeb520d8cbeaf57d6f402f5fbe23ec87f9b46ffd41253a5d3305b3a041` |
| 20 | `theorem` | [cast_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/cast-top.md) | 121 | `result-track:ffff8a9d03c918d6638fa7360b6f5fd836d1e0e362539570eec1fe25a50da329` |
| 21 | `lemma` | [strictMono_pred_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-pred-comp.md) | 127 | `result-track:9361fbce761a7f82ea70537d853e50efc246a7cc7ba2b36e4db3b3d53c14f500` |
| 22 | `lemma` | [monotone_pred_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/monotone-pred-comp.md) | 130 | `result-track:9fd81195149f2ac02bc58b0eac63cc90b2a1b80ca4f6f0da28c2ce1fea349ad2` |
| 23 | `lemma` | [strictMono_castPred_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-castpred-comp.md) | 133 | `result-track:ac1fb42ee9891a6d9eddb96ec73dae7e8a2bc52fe054593105ac58da7970b572` |
| 24 | `lemma` | [monotone_castPred_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/monotone-castpred-comp.md) | 136 | `result-track:5de99ad59c066c797b4f30a99b303629fe3979e1ba05a71c92f11a7b6af5abcb` |
| 25 | `lemma` | [strictMono_iff_lt_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-iff-lt-succ.md) | 146 | `result-track:e14840b5bd02729b648b6b05a1f3a70dd15c9064ee47965a002cbd30d7427f26` |
| 26 | `lemma` | [monotone_iff_le_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/monotone-iff-le-succ.md) | 150 | `result-track:658400d4817cb445b44ea31e7b09abb2806d1b19fab50678df43052ba5b17ed4` |
| 27 | `lemma` | [strictAnti_iff_succ_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictanti-iff-succ-lt.md) | 155 | `result-track:cddd7d7865da0d0fbf4d119099b0ba50290d173af2f18277463e51373dee01f9` |
| 28 | `lemma` | [antitone_iff_succ_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/antitone-iff-succ-le.md) | 159 | `result-track:bf8f78440ff04fe5c3e61e4b60e7d6390703023e6f2e66cd18b784d94fa367ad` |
| 29 | `lemma` | [orderHom_injective_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/orderhom-injective-iff.md) | 162 | `result-track:a05d4b98d5148bd8c6bafaf2a8b62103a770ccae2044acad07c7d7da736dd3b7` |
| 30 | `lemma` | [val_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/val-strictmono.md) | 176 | `result-track:168f0cef317d6ea259edb66f8f051ab9234f17b53f7d023b5d1d587859cac627` |
| 31 | `lemma` | [cast_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/cast-strictmono.md) | 177 | `result-track:c1c2a206b09ba16083e81ffa9e366c9e809d075b7525ad47e2724ac69e033f74` |
| 32 | `lemma` | [strictMono_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-succ.md) | 179 | `result-track:e2a105bc9b44075788734821e1bfbce688a763a1b247effd7391ec1b1ce802ab` |
| 33 | `lemma` | [strictMono_castLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-castle.md) | 180 | `result-track:1ba601226e840bed0667b6e25c7f656cdbe5114984e8ae1cbe7bb728c4ce86a6` |
| 34 | `lemma` | [strictMono_castAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-castadd.md) | 181 | `result-track:2bab1deae3286516b953182615940b72316629bac0b5144b62535cf7f20de2b9` |
| 35 | `lemma` | [strictMono_castSucc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-castsucc.md) | 182 | `result-track:eb9517dea6b3bf273ee31dfdacac348485e6ea37975ed74591350fab66b5c4bf` |
| 36 | `lemma` | [strictMono_natAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-natadd.md) | 183 | `result-track:f5b4f531824d182388b103c75be6d4a18a11f44752411afe7a6ab57770bd4e69` |
| 37 | `lemma` | [strictMono_addNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-addnat.md) | 185 | `result-track:a58ec52ade1af0187e588d29ef628a7a372b22ff529549ddb938793e9566a9e3` |
| 38 | `lemma` | [strictMono_succAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/strictmono-succabove.md) | 188 | `result-track:79864f2b8e52d253bd8a23b95db1cb95d06d45d5673bad871e08bf76071e38dc` |
| 39 | `lemma` | [succAbove_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/succabove-inj.md) | 196 | `result-track:12ea9a7621f680183199357e517b4018fbed7d5e19555d55ccc56325b847ad66` |
| 40 | `lemma` | [succAbove_le_succAbove_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/succabove-le-succabove-iff.md) | 200 | `result-track:ee9762797d610b044dcaffc24ed426da1baf8e3cda9fb65f842acd94db545c62` |
| 41 | `lemma` | [succAbove_lt_succAbove_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/succabove-lt-succabove-iff.md) | 207 | `result-track:bc9f4846a82eb5f64d47dd7c16f04ab1605e83b839b8f0f3e56769dd3727b738` |
| 42 | `theorem` | [natAdd_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/natadd-inj.md) | 214 | `result-track:6b2389b7109122d721fc655d75bed72d28be67647c2034b2e91f51555871b9d6` |
| 43 | `theorem` | [natAdd_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/natadd-injective.md) | 217 | `result-track:f3e00b0abc7d16de4dbaa1b555efb3b7b46ae99ff89d2ce8c92fff67c30945c4` |
| 44 | `theorem` | [natAdd_le_natAdd_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/natadd-le-natadd-iff.md) | 222 | `result-track:7fad085c893d1f2723d9631fb3fc7e69d87682186805765b33bc78ff496f28cf` |
| 45 | `theorem` | [natAdd_lt_natAdd_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/natadd-lt-natadd-iff.md) | 229 | `result-track:399ca898779bc4f2b5962182dcae69f7db6f331543e04609c63f8a3cebbf64e6` |
| 46 | `theorem` | [addNat_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/addnat-inj.md) | 236 | `result-track:196d9e0331eda581faf1d0c4873e5c594646908b6df564f74924ea9786b792cd` |
| 47 | `theorem` | [addNat_le_addNat_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/addnat-le-addnat-iff.md) | 240 | `result-track:d70fd97fbafb9fcc7ede02d33fa3811474eb31386c661e400f0de04758e8d49b` |
| 48 | `theorem` | [addNat_lt_addNat_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/addnat-lt-addnat-iff.md) | 247 | `result-track:edaf8dbcf0f5a9ddad875b158d5e38086023d6bbccb181dd8f0b8d8b2b97b047` |
| 49 | `theorem` | [castLE_le_castLE_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/castle-le-castle-iff.md) | 254 | `result-track:3b0d6b60a35b331986ca4805e58bbba2633969263b85fe7761dfdf934f274141` |
| 50 | `theorem` | [castLE_lt_castLE_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/castle-lt-castle-iff.md) | 260 | `result-track:0a756433f8a6890ffd520f34362bca0077a5f33e3a27435a05ec1e80dc6dc5b5` |
| 51 | `lemma` | [predAbove_right_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/predabove-right-monotone.md) | 265 | `result-track:51e3484e2fdd4910205dd49c9b799a03b6fdba67f2a1fea4eae1e9667765fd6f` |
| 52 | `theorem` | [Order Fin Basic Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-co.md) | 277 | `result-track:31a8d5e6ee42bdf2af66cf0582673ce5b2e6c220af931a4d9bf47e299dd4f75b` |
| 53 | `lemma` | [predAbove_left_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/predabove-left-monotone.md) | 281 | `result-track:38c2cfd7e6c6840286c054d60b329c49191de62c44afd77980b9633b02a309b7` |
| 54 | `lemma` | [Order Fin Basic Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-co-source-edition-2.md) | 291 | `result-track:f923453a4215739fcc0961e43a715d829c4a9a7f4ad1a477a39fe1bd9e0afbf6` |
| 55 | `lemma` | [predAbove_le_predAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/predabove-le-predabove.md) | 296 | `result-track:a39e725993f1a9aa988a65548b024d1938c983cda27ad0b946065f3959074170` |
| 56 | `def` | [predAboveOrderHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/predaboveorderhom.md) | 301 | `declaration-track:374bea31a55ff96c788be71a52a9ee6c76bb1f7a0a99bc8b85bfab492523e6b5` |
| 57 | `def` | [orderIsoSubtype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/orderisosubtype.md) | 308 | `declaration-track:a7843c98d7c708d25ebe7fae378dddc2110c325f2fd2383dc4197fb48e024825` |
| 58 | `def` | [castOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/castorderiso.md) | 315 | `declaration-track:d180268671d4b0bb98d15956723f20602b575e438fd304d48e20c9e87a2934e2` |
| 59 | `lemma` | [symm_castOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/symm-castorderiso.md) | 320 | `result-track:8896f074aa487828f4cea47d83e1ec2c08b35666f774e594632280945a05b041` |
| 60 | `lemma` | [castOrderIso_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/castorderiso-refl.md) | 323 | `result-track:e9f4a8a958077a6aee8f88d5a36721916b4a7b8825b167e87100d37a7017e995` |
| 61 | `lemma` | [castOrderIso_toEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/castorderiso-toequiv.md) | 327 | `result-track:9d6c38054252f001e5893caa1f0933a5cf376ad16ce9951b7a0d0ade3d97f820` |
| 62 | `def` | [revOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/revorderiso.md) | 332 | `declaration-track:f805823270383a3c02c7169ef4119c69ffacd6a602c2a17a135c85580516f0be` |
| 63 | `lemma` | [revOrderIso_symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/revorderiso-symm-apply.md) | 335 | `result-track:924ee1ffbb82762c8ed3c06c9b976fc2292dae347015e709f17e8b286113ab47` |
| 64 | `lemma` | [rev_strictAnti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/rev-strictanti.md) | 337 | `result-track:5c5931aecbd0506c3fe1c6117a4a688f1a11103b788bb8d4c3a5320411496e9a` |
| 65 | `lemma` | [rev_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/rev-anti.md) | 339 | `result-track:b6962fd040ee83c6ba077cc6f03f645d0262392db1b56552007aff3cf15ee5a5` |
| 66 | `def` | [valOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/valorderemb.md) | 345 | `declaration-track:9166a8ad50a3f62c5d4db9c28ee5e66ded0a9743cb5f8c5cb113f29abfa790f9` |
| 67 | `instance` | [Lt.isWellOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/lt-iswellorder.md) | 348 | `declaration-track:8c6f464b029de3e59eec61e1be96a10044f2e84169296401935a2681249d97c0` |
| 68 | `def` | [succOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/succorderemb.md) | 351 | `declaration-track:91938a6c181bedd1d87c785cb962714303046f6219aeb822847079cdb6e0491f` |
| 69 | `lemma` | [coe_succOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/coe-succorderemb.md) | 353 | `result-track:fbaba16b2f3ebe1b684418d2c130410fa0785ea7995d07c88127c10e822e6f74` |
| 70 | `lemma` | [succOrderEmb_toEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/succorderemb-toembedding.md) | 355 | `result-track:567bb6526d3a016d8d1e462e5b3f3282f32b0a5bffc20f2f56b9007390288df1` |
| 71 | `def` | [castLEOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/castleorderemb.md) | 361 | `declaration-track:15adee6fe09f8a5378523a63a662732aa5d76515156c9ba702689dc1473ffa67` |
| 72 | `def` | [castAddOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/castaddorderemb.md) | 367 | `declaration-track:48694aa7ad3766d7d594e4d7e6b941ee325c931b75f8af621424ab2815f52e47` |
| 73 | `def` | [castSuccOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/castsuccorderemb.md) | 373 | `declaration-track:2c39df27584c70086d5a0d135443cc0e28acaa944ea866956038bd32289598bd` |
| 74 | `def` | [addNatOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/addnatorderemb.md) | 379 | `declaration-track:74604f12e7a5c68397f24daa0dbe5d0207d59d6d7b08ce92eb52f127c33eb04c` |
| 75 | `def` | [natAddOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/nataddorderemb.md) | 385 | `declaration-track:818fb2b7642724bcb92a3b785b05195f99ebb3c08a363c636b33d652d2a6848a` |
| 76 | `def` | [succAboveOrderEmb](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/succaboveorderemb.md) | 389 | `declaration-track:e6b92080fe1d0231234a4ef1ce7857576dc26da0c2f65fd3d565a37030284c97` |
| 77 | `lemma` | [coe_orderIso_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderFinBasicNamespaced.lean/declarations/coe-orderiso-apply.md) | 398 | `result-track:eaa76fa538ba5de1bf58f0fa8a7ff030588021e9c1398f87890fc293c4c0e828` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5dff4ae923c83dbfa671b7165d46670ed50e93d81eefdcf5f32f78f2769836ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant74911bad9b5b8a4f781ebd39c25995f58adccc64b9e3d7092f9f213027b927bc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant74911bad9b5b8a4f781ebd39c25995f58adccc64b9e3d7092f9f213027b927bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
