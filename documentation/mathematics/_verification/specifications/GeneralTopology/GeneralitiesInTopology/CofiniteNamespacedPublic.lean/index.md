# Verification target: Cofinite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89312a85d0510c3cc3094e43326cdfa4a8027674",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89312a85d0510c3cc3094e43326cdfa4a8027674`.

Source path: `GRWTSK/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/cofinite.md) | 49 | `declaration-track:660ecc1784fd3488972d255844fd57bc5a0200fc87ad1f75304cad97f117548e` |
| 2 | `theorem` | [mem_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/mem-cofinite.md) | 53 | `result-track:7f8e125328a9b6dfe0666eed0c82706bfa380377732c058fd7f0fa1d7268c431` |
| 3 | `theorem` | [eventually_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/eventually-cofinite.md) | 57 | `result-track:b80647b9cddffdb5790acfd55ce545ac439d47cf7e7c9f948f4fad0c2bb033c6` |
| 4 | `theorem` | [hasBasis_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/hasbasis-cofinite.md) | 60 | `result-track:a150fa9c20a9db6e4ed2107617cf7b2192d449e359dde829e28002c17ac50fe6` |
| 5 | `instance` | [cofinite_neBot](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/cofinite-nebot.md) | 65 | `declaration-track:879ae610bfe92f117e4b220788cf9318af7c39a79cf04b52f060bf72d7ff0aa0` |
| 6 | `theorem` | [cofinite_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/cofinite-eq-bot-iff.md) | 69 | `result-track:0fac8dd72042ac816e25be809312b79a2fd8b4f1fe88245826829403556518f1` |
| 7 | `theorem` | [cofinite_eq_bot](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/cofinite-eq-bot.md) | 73 | `result-track:865adbe22b83c7db149d86565e08dce4f5b524bebd3d787785e450e2a38fb533` |
| 8 | `theorem` | [frequently_cofinite_iff_infinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/frequently-cofinite-iff-infinite.md) | 75 | `result-track:6ec8e402fced96e237356922bae60bc91cef00253b698ff5e498eb298faca7b1` |
| 9 | `lemma` | [frequently_cofinite_mem_iff_infinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/frequently-cofinite-mem-iff-infinite.md) | 79 | `result-track:98955de021baecc4bd3a594d8b32227658f6ee2b3450ea5ceff862c19a5d9903` |
| 10 | `lemma` | [cofinite_inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/cofinite-inf-principal-nebot-iff.md) | 85 | `result-track:5f860fd5d049c06f9bae726bceca4f0249c41b26b3d7f5154141520bbff6b9fd` |
| 11 | `theorem` | [Cofinite Namespaced Public](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/compl-mem-cofinite.md) | 90 | `result-track:db445a3000cc1b3582849c4f01b247443d09409b2e11da50ec3846c10b02518c` |
| 12 | `theorem` | [Cofinite Namespaced Public](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/eventually-cofinite-notmem.md) | 93 | `result-track:ef25fab8028d8902d1893fe86073d6a5a9cf12ce76e5bc206b49f3533ec23f1f` |
| 13 | `theorem` | [Cofinite Namespaced Public](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/eventually-cofinite-notmem-source-line-97-occurrence-2.md) | 97 | `result-track:fa3904e6d27a124bc45a2271b9d18dbc0506590306cbb498e118ef757bedb7c8` |
| 14 | `theorem` | [Cofinite Namespaced Public](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/infinite-iff-frequently-cofinite.md) | 100 | `result-track:650609a688a7f3750e55ea315a34132c481b9049390b56a69655255aa2189c04` |
| 15 | `theorem` | [eventually_cofinite_ne](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/eventually-cofinite-ne.md) | 104 | `result-track:a1275abd898b51d1771d5ed338f10742a2844bd5442c4d510477374d2e4ac67f` |
| 16 | `theorem` | [le_cofinite_iff_compl_singleton_mem](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/le-cofinite-iff-compl-singleton-mem.md) | 107 | `result-track:5626e49659b4ddb9a91a072d2aceab22b5f257434a9225dcbf1a7e41e679a5d6` |
| 17 | `theorem` | [le_cofinite_iff_eventually_ne](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/le-cofinite-iff-eventually-ne.md) | 112 | `result-track:b8304776b89d9409403ca93d8df5018a1469d5dade01c748cef651824cef6616` |
| 18 | `theorem` | [atTop_le_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/attop-le-cofinite.md) | 116 | `result-track:1193805c77778f70636f2f27e7dd1dfa83cc8d24485d1fbd7b5ceeb4aa58e206` |
| 19 | `theorem` | [atBot_le_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/atbot-le-cofinite.md) | 120 | `result-track:a3fa8c02197d8ab64ed3d1a6538627d8903b0689e43987b2142d58943c99ba26` |
| 20 | `theorem` | [comap_cofinite_le](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/comap-cofinite-le.md) | 123 | `result-track:53c54ae086cbc979787a05728c0706a93e6fde70daa18519129e06b643292ac2` |
| 21 | `theorem` | [coprod_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/coprod-cofinite.md) | 128 | `result-track:08a7e2de1cda21980912556dc2f5befb8c6f9da94d4dc72d66f0f4aa4cce66fe` |
| 22 | `theorem` | [coprodᵢ_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/coprod-cofinite-source-edition-2.md) | 132 | `result-track:a174fa0857c2ed90d6e63f9ac5735a5ff75bd75a40c44fefc3f40f3a2d0d5346` |
| 23 | `theorem` | [disjoint_cofinite_left](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/disjoint-cofinite-left.md) | 137 | `result-track:19a9427bcb59c9b208e2da6d934a7e5822ec5631f2b6fd13b9be9f71883bd6f7` |
| 24 | `theorem` | [disjoint_cofinite_right](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/disjoint-cofinite-right.md) | 140 | `result-track:3c9e2b35b8150f96bc9f69f4a4b5572fbab5f5482611375c4f488a54291b5e9d` |
| 25 | `theorem` | [countable_compl_ker](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/countable-compl-ker.md) | 144 | `result-track:23b6c54007b94c3f09ccccfd30c205fc17fe2bc042f106108b60236eabc45e13` |
| 26 | `theorem` | [Tendsto.countable_compl_preimage_ker](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/tendsto-countable-compl-preimage-ker.md) | 151 | `result-track:8ef037bbd9a45a502f9e36073a945d81c36b06096f11aede1c0466b2a11f782b` |
| 27 | `theorem` | [univ_pi_mem_pi](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/univ-pi-mem-pi.md) | 158 | `result-track:068911f61d0a36d9dcfc0d2487f87ba7df99f70ca673365dd531c621fb6ef9fd` |
| 28 | `theorem` | [map_piMap_pi](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/map-pimap-pi.md) | 173 | `result-track:1595afbd9b58266f6aebc9102e6168a7fdf73240f8d8a7d3cc6ae11882c589e7` |
| 29 | `theorem` | [map_piMap_pi_finite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/map-pimap-pi-finite.md) | 194 | `result-track:6e033036379f5a001d6b3ee6856a4ed8830f8c59dcde939bd22ca98df5958f45` |
| 30 | `lemma` | [Set.Finite.cofinite_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/set-finite-cofinite-inf-principal-compl.md) | 203 | `result-track:5b0deb0fd3089207fa30831bd241611493acfb0706335d17afc04cfcd7db80cf` |
| 31 | `lemma` | [Set.Finite.cofinite_inf_principal_sdiff](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/set-finite-cofinite-inf-principal-sdiff.md) | 207 | `result-track:7eed41e8df6f7e36fb8893eee148f2970155bc117678437c5e559a9243e42c7a` |
| 32 | `theorem` | [Nat.cofinite_eq_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/nat-cofinite-eq-attop.md) | 215 | `result-track:9b9542f3b967f21828219041f9a5d4fe4435f8ac7b44677bf99418a1dcde8c83` |
| 33 | `theorem` | [Nat.frequently_atTop_iff_infinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/nat-frequently-attop-iff-infinite.md) | 220 | `result-track:e3d5d2de297414064809375b09efbe19be1ae76e0653a9774d37dc0e9154c669` |
| 34 | `lemma` | [Nat.eventually_pos](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/nat-eventually-pos.md) | 224 | `result-track:7800de6ca1fea6cc32e6b63a52271018245ffcee619b44c574ae01b43a5de17e` |
| 35 | `theorem` | [Filter.Tendsto.exists_within_forall_le](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/filter-tendsto-exists-within-forall-le.md) | 227 | `result-track:5f2ba44981ec9bbb500a8b63c40f2588c4f6b9f7ac87e72ef471f94f216ac2cd` |
| 36 | `theorem` | [Filter.Tendsto.exists_forall_le](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/filter-tendsto-exists-forall-le.md) | 243 | `result-track:a39141125548088b74039f6de8425358a791df6c29b1d23a7ca3e997ab113e4e` |
| 37 | `theorem` | [Filter.Tendsto.exists_within_forall_ge](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/filter-tendsto-exists-within-forall-ge.md) | 248 | `result-track:33c1a3519ac79bb22755c9ce5f7004149fdf842e338887c67b3cbbd2c8b72738` |
| 38 | `theorem` | [Filter.Tendsto.exists_forall_ge](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/filter-tendsto-exists-forall-ge.md) | 253 | `result-track:40ebe481d13b28182528e2e02fa4b2b750a91213bcfad53a2544243f6a000a22` |
| 39 | `theorem` | [Function.Surjective.le_map_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/function-surjective-le-map-cofinite.md) | 257 | `result-track:d90905bac8d9eb1646e495091d9736975aa7a09e783ee3d02e8d25b98d3c5371` |
| 40 | `theorem` | [Function.Injective.tendsto_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/function-injective-tendsto-cofinite.md) | 262 | `result-track:d1a208e038226c13807119142a45d200cd8c4f8e1028d86e18ffb483cc0ab73e` |
| 41 | `theorem` | [Filter.Tendsto.cofinite_of_finite_preimage_singleton](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/filter-tendsto-cofinite-of-finite-preimage-singleton.md) | 266 | `result-track:12ab5eec6a037f286643e7717a804a7a7340885baa6b6c8501f51be5f507229f` |
| 42 | `theorem` | [Function.Injective.comap_cofinite_eq](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/function-injective-comap-cofinite-eq.md) | 272 | `result-track:ac7c87ddcb5f2d004a06c2ce45bb40294a30e9d5780e0f0d4742bb424360ed80` |
| 43 | `theorem` | [Function.Injective.nat_tendsto_atTop](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/function-injective-nat-tendsto-attop.md) | 277 | `result-track:c61272406c3c01015ca3c0ae477e2dd58e1e5c93f9df096f3d0eec691b517a8b` |
| 44 | `lemma` | [Function.update_eventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/function-update-eventuallyeq.md) | 281 | `result-track:c62975fb2831783b55401f66fe00b3512829cc75aced432229cefc3f90de68b7` |
| 45 | `lemma` | [Function.update_eventuallyEq_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/function-update-eventuallyeq-cofinite.md) | 285 | `result-track:e01ab0af33e39e1bc43706eb3650ca73780171158e2847f575babcfcd89c34c2` |
| 46 | `lemma` | [tendsto_cofinite_pure_iff](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/tendsto-cofinite-pure-iff.md) | 290 | `result-track:3f4e18efc5102b7a7d48683e185b433621ed4394a15469184106802c7291b750` |
| 47 | `theorem` | [le_cofinite_iff_ker](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/le-cofinite-iff-ker.md) | 297 | `result-track:b1c206dff9a645f3e19a9a4683fae9a444690df9d4b2f94919dee84d79541031` |
| 48 | `theorem` | [le_cofinite_iff_boundary](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/le-cofinite-iff-boundary.md) | 302 | `result-track:fa9531426636c5e71de7e37e3dc30f16c930a995537e9f6659295df0a250ae2b` |
| 49 | `theorem` | [boundary_le_cofinite](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/boundary-le-cofinite.md) | 315 | `result-track:cc36116cd46daa6fa665bfcce20eb137e54104b1fdedb1041fcc9d07da50b5d3` |
| 50 | `theorem` | [boundary_principal](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/boundary-principal.md) | 319 | `result-track:e6fef7ed7b94d6a981a53f02238f2ac331a386e11e0ddc609086e89f365b816a` |
| 51 | `theorem` | [existsUnique_eq_principal_sup_free](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/existsunique-eq-principal-sup-free.md) | 324 | `result-track:47241c1d30f6ce80e338796bf1ac69c21fd13e3be21e6f577ae806c0fc201f61` |
| 52 | `theorem` | [exists_eq_principal_sup_free](../../../../../GeneralTopology/GeneralitiesInTopology/CofiniteNamespacedPublic.lean/declarations/exists-eq-principal-sup-free.md) | 343 | `result-track:5163041e44d842dafa25f4b98d477160bebda1c0be69a346b4b5b10309b33cee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04fcd5ec70ef6a27b4056c285ed3e4d556a937f690f086ff05c17350fa318ebe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Cofinite/Variantf47f12cff779b54f4b0f7418405ea66d1f424189cd14a1e2cc42aa31bd27054b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
