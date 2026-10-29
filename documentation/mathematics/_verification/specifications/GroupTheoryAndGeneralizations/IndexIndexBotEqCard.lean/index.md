# Verification target: Index Index Bot Eq Card

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dac553b8dbe9e5e07707d287c659af66923899e1",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Index/Variantb6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dac553b8dbe9e5e07707d287c659af66923899e1`.

Source path: `GRWTSK/Algebra/GroupTheory/Index/Variantb6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Index/Variantb6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Quotient` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [index](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index.md) | 46 | `declaration-track:198cd1c73f0e9fa7d281d95ee84bb265731cc2bc4c993c1ddc9a50a5cea5dc98` |
| 2 | `def` | [relindex](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex.md) | 55 | `declaration-track:8bd8f875d24ad4d05077137bbd303db8d00258478b6ee9cf6989a35b7d4d1fee` |
| 3 | `theorem` | [index_comap_of_surjective](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-comap-of-surjective.md) | 61 | `result-track:b84896e921c476e6a82bc9df183598bbb0f53c56105d88f02d3950f31f9c9ee4` |
| 4 | `theorem` | [index_comap](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-comap.md) | 80 | `result-track:67137576cfb7c5e7b15a02990d21837027da28dd4c64c56177fec8fced3adec2` |
| 5 | `theorem` | [relindex_comap](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-comap.md) | 88 | `result-track:a0b0baf7ab71015daa38728f8e879bfc6ce45c74de86c9ba607f32286009f03e` |
| 6 | `theorem` | [relindex_mul_index](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-mul-index.md) | 97 | `result-track:5beeb37b416708dbeaa15ab825fff5bede5b6acd9d5e1a3142eda084fb83885a` |
| 7 | `theorem` | [index_dvd_of_le](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-dvd-of-le.md) | 104 | `result-track:90c847e1c744a1fb01a73f9fbcdd0ddac9d203289b9f905c9b5dbfe072f4fc90` |
| 8 | `theorem` | [relindex_dvd_index_of_le](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-dvd-index-of-le.md) | 110 | `result-track:8fd99e40fd50534cc85f581db42dafad65416e65ae5d04db5d1fa7e1d84d5547` |
| 9 | `theorem` | [relindex_subgroupOf](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-subgroupof.md) | 116 | `result-track:666da8384fcc8b888f41837e72c9831c57ff1bf7b775a9fffba375ee39f5ee93` |
| 10 | `theorem` | [relindex_mul_relindex](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-mul-relindex.md) | 125 | `result-track:f22b706ecc1eec4a3780492da9fc0c8a680d8f1a7a4d84da7ab1d8285fdcab2b` |
| 11 | `theorem` | [inf_relindex_right](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/inf-relindex-right.md) | 133 | `result-track:7b8c5af99813da7af1edd95642e8e8249bb6cdab3a7d4993b793595dafca205d` |
| 12 | `theorem` | [inf_relindex_left](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/inf-relindex-left.md) | 139 | `result-track:91edea086896d3a0f2fb7606b003ac812db53eeaf79369e89485a216363541fa` |
| 13 | `theorem` | [relindex_inf_mul_relindex](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-inf-mul-relindex.md) | 145 | `result-track:43f727edfd423271e4bd6520d4cb5947deade7db0b08cccc460452d5b4f19993` |
| 14 | `theorem` | [relindex_sup_right](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-sup-right.md) | 152 | `result-track:f2543a75c947e5416aebe5c14e43d9043e04caddf8cc24b56d045c79e6109743` |
| 15 | `theorem` | [relindex_sup_left](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-sup-left.md) | 158 | `result-track:5c29162a7c1c73efbd93e0645a84d38504271c3585a5a6affbe4455c90d48833` |
| 16 | `theorem` | [relindex_dvd_index_of_normal](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-dvd-index-of-normal.md) | 164 | `result-track:cc87131973d45fdca754c2dc002f7fddee8f43b23dc5d58cfc25125d1a9c374c` |
| 17 | `theorem` | [relindex_dvd_of_le_left](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-dvd-of-le-left.md) | 172 | `result-track:f9d18c113c3107a5ba9575ec0c0eb5571cb6cd852483e5fabed119e536164e36` |
| 18 | `theorem` | [index_eq_two_iff](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-eq-two-iff.md) | 181 | `result-track:43f83dc837be7c5f51199be7bdcb1d7122a3ea9b63505dcdb926717d9dfc5519` |
| 19 | `theorem` | [mul_mem_iff_of_index_two](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/mul-mem-iff-of-index-two.md) | 196 | `result-track:7c32bcd05503ef757fe2637e2b5744bd174b2726428bf1793a8b76f09946f721` |
| 20 | `theorem` | [mul_self_mem_of_index_two](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/mul-self-mem-of-index-two.md) | 207 | `result-track:b8f9bbd3accbc237b61f1291cdaba2535073284174dff257aa080cab4d862524` |
| 21 | `theorem` | [sq_mem_of_index_two](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/sq-mem-of-index-two.md) | 213 | `result-track:77335826fe21c99c1d06f6036fc7c339363ce4faaca5c50b4f78d28f5d78f895` |
| 22 | `theorem` | [index_top](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-top.md) | 222 | `result-track:be155a04e9e65763ee7b3906f231b8d99e708b1c06db4a1f8fd9d35eb9bfa5cc` |
| 23 | `theorem` | [index_bot](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-bot.md) | 228 | `result-track:803edf022f11d9f4f3827384b72baac964539a86282b3bd1b2bea43ee21eeb78` |
| 24 | `theorem` | [index_bot_eq_card](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-bot-eq-card.md) | 234 | `result-track:ca6335f2e05c880d392e85572dfdbfa27be837d90010995ddb52564dcb9000d1` |
| 25 | `theorem` | [relindex_top_left](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-top-left.md) | 240 | `result-track:fa44e9cd42ada97c6fd84eaba4587e9eaebb8f126363f664eb222c66b4719a98` |
| 26 | `theorem` | [relindex_top_right](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-top-right.md) | 246 | `result-track:374553ce941ee3292429b4a66991f4195d9d0c34e1d03f457463145965ab352a` |
| 27 | `theorem` | [relindex_bot_left](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-bot-left.md) | 252 | `result-track:adb5595059c91169067d47a3b5a7486f731dd6af6a00efe424e5c418a32e6f13` |
| 28 | `theorem` | [relindex_bot_left_eq_card](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-bot-left-eq-card.md) | 258 | `result-track:a484cb41e51dd6d35432f073a3f7b690ce248e804a4900233d6cb741d8a4c20b` |
| 29 | `theorem` | [relindex_bot_right](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-bot-right.md) | 264 | `result-track:08850fbc7277440a80f6e85986c718aa839de251c851234117ec15bde51f36f4` |
| 30 | `theorem` | [relindex_self](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-self.md) | 269 | `result-track:a790e5e22225e934512f63626f656885e25f42c416296b2ce683bd0091547f7e` |
| 31 | `theorem` | [index_ker](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-ker.md) | 274 | `result-track:58eb8fa426725f184642a0ab9a77333e215507b252f8ac5c7a87e21524d85bd6` |
| 32 | `theorem` | [relindex_ker](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-ker.md) | 281 | `result-track:6422f9f4d41e3529ec03786be8d8f8d1131cae701e44ad45993f63f88719cff1` |
| 33 | `theorem` | [card_mul_index](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/card-mul-index.md) | 289 | `result-track:d39521dcf400e333d0fee5722d37289a2c8c8f780434d3423232201956a8c250` |
| 34 | `theorem` | [nat_card_dvd_of_injective](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/nat-card-dvd-of-injective.md) | 296 | `result-track:aeffc2784cc6aa24a3af8d9d30c535552fe9d3697e2b960b231622a000a2a40d` |
| 35 | `theorem` | [nat_card_dvd_of_le](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/nat-card-dvd-of-le.md) | 304 | `result-track:013a3511429d61aa66e05dd730984d491093c754a9fc3d5e4f5271c0ef20d978` |
| 36 | `theorem` | [nat_card_dvd_of_surjective](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/nat-card-dvd-of-surjective.md) | 310 | `result-track:a07c12408d9c2416f7006868219db4c2594d605067de922683e1f232b3690aa0` |
| 37 | `theorem` | [card_dvd_of_surjective](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/card-dvd-of-surjective.md) | 318 | `result-track:65032cc89245f8d016ec875a3c0b5b53d72de1b3b9937c4ddfcf32fdb425375d` |
| 38 | `theorem` | [index_map](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-map.md) | 325 | `result-track:65d8a2f25333817996df493e0bdcced6a3f82b94430ddd389d3aafd8b08b311e` |
| 39 | `theorem` | [index_map_dvd](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-map-dvd.md) | 332 | `result-track:9216fdb682d942ca3da08e042c61f021c1572adad3c16c4b2583eab2b252a1ae` |
| 40 | `theorem` | [dvd_index_map](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/dvd-index-map.md) | 340 | `result-track:8a90ec59e38745371a3437e59c5d68445afab88533a0c17a80b173f488c1b72e` |
| 41 | `theorem` | [index_map_eq](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-map-eq.md) | 348 | `result-track:c2fd2b0ac4d0c3b596bcca690bbdcfe53ea4db24ff85b5f1f63c0dfafbeeb5cd` |
| 42 | `theorem` | [index_eq_card](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-eq-card.md) | 355 | `result-track:c7280d16786ed48529a6d56db7ed16a6c092b744ad251711ddc438e7400bf3c6` |
| 43 | `theorem` | [index_mul_card](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-mul-card.md) | 361 | `result-track:237e4037b95f4b011aaf634db4cf2c16983cd62bedf0deaa46ef8ca40cf4b059` |
| 44 | `theorem` | [index_dvd_card](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-dvd-card.md) | 369 | `result-track:41cb3af642a68597b19cabf8d637303363aa2b387ba4769093e87db9fcda50f0` |
| 45 | `theorem` | [relindex_eq_zero_of_le_left](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-eq-zero-of-le-left.md) | 377 | `result-track:c74649db6dda917766ea358a970f91f241b705951b0ff478dbaff8576b1bc1b4` |
| 46 | `theorem` | [relindex_eq_zero_of_le_right](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-eq-zero-of-le-right.md) | 383 | `result-track:691b94b0e0e63a0c1749dad7189f742f5f48993f6c9e458f2cbffbce66dfc28f` |
| 47 | `theorem` | [index_eq_zero_of_relindex_eq_zero](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-eq-zero-of-relindex-eq-zero.md) | 389 | `result-track:9d2fbed537e984256b534f20e4da6b2571957ec47868c2746d63ff150add3161` |
| 48 | `theorem` | [relindex_le_of_le_left](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-le-of-le-left.md) | 395 | `result-track:7333d866b062d2797396973cd5a71ebbd98cba22d057f5c7cd481cec43d2ebf9` |
| 49 | `theorem` | [relindex_le_of_le_right](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-le-of-le-right.md) | 402 | `result-track:f23a9bab47b051f256613dee62314b7a9fa506ba34b332aed49776b3d284cb0d` |
| 50 | `theorem` | [relindex_ne_zero_trans](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-ne-zero-trans.md) | 409 | `result-track:a7411697ff4035ea9831779a73ecdb0f72d44fd2f233c02a03451292fe8944d4` |
| 51 | `theorem` | [relindex_inf_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-inf-ne-zero.md) | 417 | `result-track:31cd733f55b5ec05bc7a8a05a37255437a1fb1c30e15a3e030658afddfc0286f` |
| 52 | `theorem` | [index_inf_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-inf-ne-zero.md) | 427 | `result-track:e3889bc7d4ab1ed16f8a5c6a390215b2fb16fbffaab9cf91a2f5037615d71fa3` |
| 53 | `theorem` | [relindex_inf_le](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-inf-le.md) | 434 | `result-track:f8673a6600785c888f95ef8363248e0e4b2bf0c28f62be912a98ec10cfd18955` |
| 54 | `theorem` | [index_inf_le](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-inf-le.md) | 444 | `result-track:2b391afcd2a3ac65c4c53f778eb3fc890bdf51095d8ef39dad8ef5846261805d` |
| 55 | `theorem` | [relindex_iInf_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-iinf-ne-zero.md) | 450 | `result-track:6eed4d2977a4605a8ab1e717a83effb7e5924f69b2d4db13b17958f8003e29af` |
| 56 | `theorem` | [relindex_iInf_le](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-iinf-le.md) | 460 | `result-track:0eb969d1501258da4011eb64ac0175d5d339b94fcb5f19f4c49dff08ffde28dc` |
| 57 | `theorem` | [index_iInf_ne_zero](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-iinf-ne-zero.md) | 471 | `result-track:7d49bbf12485dea161937b766cc29081f3296a249f5710356de1564195e1ef2d` |
| 58 | `theorem` | [index_iInf_le](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-iinf-le.md) | 479 | `result-track:ecd6167a9f1c951b7792f1f74c1b35c4ca14b438fdff9650082716b0b90ce439` |
| 59 | `theorem` | [index_eq_one](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-eq-one.md) | 486 | `result-track:9fed1c281eb187f3b88b66b85f80c5a7ddf9c5cbc8bed9ec1afb07bb93525ba1` |
| 60 | `theorem` | [relindex_eq_one](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/relindex-eq-one.md) | 494 | `result-track:369316107ba6b184836494da02447bfe5b0375cbff981f81eb0ce21da42fffdb` |
| 61 | `theorem` | [card_eq_one](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/card-eq-one.md) | 500 | `result-track:60b52960e1281b123673bb3293e38b083cbcd7d92f258edfe6eb4dd0d6876a42` |
| 62 | `theorem` | [index_ne_zero_of_finite](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-ne-zero-of-finite.md) | 506 | `result-track:daa11647ccc8be13223bead9ed6d2762b0147cfcb2264f2a71cde065c369a157` |
| 63 | `def` | [fintypeOfIndexNeZero](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/fintypeofindexnezero.md) | 516 | `declaration-track:f562fd712e2bed0db187d2afb38a645e65ed53e800a4b28abb1f756ba08bdeff` |
| 64 | `theorem` | [one_lt_index_of_ne_top](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/one-lt-index-of-ne-top.md) | 522 | `result-track:6582742c15a2604e8c05fa8ba824f00f929558bc9a1b3e0dbb2273d1ae132f6c` |
| 65 | `class` | [FiniteIndex](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/finiteindex.md) | 532 | `declaration-track:43f4de4695a78f6a29131d665dbe58a89fad7ab8759456d9068298fc35a896d3` |
| 66 | `class` | [_root_.AddSubgroup.FiniteIndex](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/root-addsubgroup-finiteindex.md) | 538 | `declaration-track:b525ae270c0eff74121ccbe34f38fd159b7d0072cc5eb00705dd3f2fd09731dc` |
| 67 | `def` | [fintypeQuotientOfFiniteIndex](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/fintypequotientoffiniteindex.md) | 545 | `declaration-track:daf996bed2c49b1d09529f40e2bece4313d1ac63bba17ca58e5d9c8601d031f6` |
| 68 | `instance` | [finite_quotient_of_finiteIndex](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/finite-quotient-of-finiteindex.md) | 551 | `declaration-track:61b9ae17b4e848426a4995b858309968ebd5ac4d33f090c9f27e1fa50e3bea35` |
| 69 | `theorem` | [finiteIndex_of_finite_quotient](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/finiteindex-of-finite-quotient.md) | 557 | `result-track:95cf7e6e1a4364c9e267797abefc29699ee09ca5c4ebe30f1274e8101f4665f2` |
| 70 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/instance-source-edition-2.md) | 564 | `declaration-track:4edf885c73c080008a41c836db887cbfe91748edb510b8ea7edd76e09fb219df` |
| 71 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/instance-source-edition-3.md) | 570 | `declaration-track:f669f8be8268bce7c0a11ee68abf107f2932fcfe4cbc4eacf73762105b654b52` |
| 72 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/instance.md) | 574 | `declaration-track:0c542519fcff67944f6ee272c081b2b57dbe52867b105218d4980043f9512b3d` |
| 73 | `theorem` | [finiteIndex_of_le](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/finiteindex-of-le.md) | 580 | `result-track:e1555512f5046a7852a0df94cf9cc9f468cce0449656e5a27912156f463fcb0d` |
| 74 | `instance` | [finiteIndex_ker](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/finiteindex-ker.md) | 588 | `declaration-track:98ae23b8b522fae6ec2735ec465070a1111889ba1ddc0ccaa4e8599214fe373f` |
| 75 | `instance` | [finiteIndex_normalCore](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/finiteindex-normalcore.md) | 595 | `declaration-track:f01639e9e512fdb22e15408c2e33cacb25ebae5ddc9343303214f4a0cab8e996` |
| 76 | `instance` | [finiteIndex_center](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/finiteindex-center.md) | 602 | `declaration-track:fc8b7bd5129f3765ee4c05b716fdab1427ffcb2afff195c77acefc56d16bfd79` |
| 77 | `theorem` | [index_center_le_pow](../../../../GroupTheoryAndGeneralizations/IndexIndexBotEqCard.lean/declarations/index-center-le-pow.md) | 607 | `result-track:b94774ba02ec0b7e4603bf4bea7233b9f28d3628dc1d5ee68e528efa8b950569` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5c094a0e54440ed119fa744cffc63efb1931bb1be0023b201051d3c9607eb48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Index/Variantb6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Index/Variantb6f1ea288d0a0c536365cefa20b4e0cd7cd6f6ed5f9547eb20c1ac387ec44df3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
