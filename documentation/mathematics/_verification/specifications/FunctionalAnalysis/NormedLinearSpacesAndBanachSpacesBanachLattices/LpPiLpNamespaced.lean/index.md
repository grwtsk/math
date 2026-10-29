# Verification target: Lp Pi Lp Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e`.

Source path: `GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MeanInequalities` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Basis` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Lp.ProdLp` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PiLp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilp.md) | 80 | `declaration-track:eab41fa15ab9b44ac1e67d2ab7fa9833663a0bad8173ef176668464fc199039e` |
| 2 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instance-source-edition-8.md) | 85 | `declaration-track:d6477c55f8d9cdd2ac9e131de4fa3afa8a5846f33a934a9e1fe82e09743787df` |
| 3 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instance-source-edition-5.md) | 88 | `declaration-track:5f0ea1002cb9d84ea1c14530c0ce772affc6c63fa39f58caee019213a30e4261` |
| 4 | `theorem` | [PiLp.ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilp-ext.md) | 92 | `result-track:7796281ede64d35d0d9cb087b5a9c7e632b6f0ecaa842f3f860a53ba5cb5c804` |
| 5 | `theorem` | [zero_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/zero-apply.md) | 107 | `result-track:8790b932df0ebf52bba0b0309ec1f185b84faf0d391536f1d82575bcd8e58aed` |
| 6 | `theorem` | [add_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/add-apply.md) | 111 | `result-track:8043c351a2b4bcf7bc76d6054931d5ea3c966acaeabe4431a4bbda77db391c2e` |
| 7 | `theorem` | [sub_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/sub-apply.md) | 115 | `result-track:84cdae08ecb1f56e3874feab1dc52f362af096db6b4b189334d5162bc2c33f2f` |
| 8 | `theorem` | [smul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/smul-apply.md) | 119 | `result-track:a6f710b79755cefb85184456c3ba352d8c2245796dcad4a769c27520bc22e280` |
| 9 | `theorem` | [neg_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/neg-apply.md) | 123 | `result-track:c14f7854b904a1f61b564d5b17620ff195758fd87c7921982a26070e37d67a89` |
| 10 | `def` | [projₗ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/proj-source-edition-2.md) | 129 | `declaration-track:5ae97c62ca4b87f292eca9b0adc9e79cb63dbbcc1996d3e5e7b61c1eab3fd980` |
| 11 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/equiv-pi-apply.md) | 138 | `result-track:665616066886ddbb5a1115a3280820dd34088eaac256a9518fdb52e8ee374940` |
| 12 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/equiv-symm-pi-apply.md) | 142 | `result-track:b0382a183f71bffc067475c3876dded3e869ff9889863951e25c3afff5b77c10` |
| 13 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instance-source-edition-4.md) | 170 | `declaration-track:2aa2143c6a97a9e69653b077a1fd392991b2d24bab97de8660e316c1b4a0705c` |
| 14 | `theorem` | [edist_eq_card](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-eq-card.md) | 178 | `result-track:68614ae41b436fe3746921259391457b8708f9f486fa0a80ffae440ede6830ea` |
| 15 | `theorem` | [edist_eq_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-eq-sum.md) | 182 | `result-track:ab9a203461867a1c2618af2d064cf5c17c2c50cbea381cd4528995475ae10022` |
| 16 | `theorem` | [edist_eq_iSup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-eq-isup.md) | 187 | `result-track:5e3da0efc09b0f3d1784ad626cf986047f1b4238f043778732667035c6755053` |
| 17 | `theorem` | [edist_self](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-self.md) | 198 | `result-track:30e777b5b7fe6ffb5a874b848234bf2913bcd37572bf3c1551faa3e48ac505d7` |
| 18 | `theorem` | [edist_comm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-comm.md) | 206 | `result-track:f2f7078ebea7760a6c01850d2ef24b5af4b90704ecc7e6a3d2c46382c1d4871b` |
| 19 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instance-source-edition-7.md) | 225 | `declaration-track:9a44f0a7bf88952cbb47b290d38429a6d8ab32944ad4e7f6084086f4766bd123` |
| 20 | `theorem` | [dist_eq_card](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/dist-eq-card.md) | 233 | `result-track:314350e265fb22b945535c49757a9f2487d7a8358d7393014cd426b8a3e32d73` |
| 21 | `theorem` | [dist_eq_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/dist-eq-sum.md) | 237 | `result-track:147c0b1f0abdb3f7cc866e919feb3d9db3814d4031b931542030911a6fa9ad6b` |
| 22 | `theorem` | [dist_eq_iSup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/dist-eq-isup.md) | 242 | `result-track:805461d8974c3ad5f85100d4c972030fbf5af25040f0ec22993983d7c3ce926d` |
| 23 | `instance` | [instNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instnorm.md) | 256 | `declaration-track:95ebe446b79fe40ad67a210833cf42577d8734072d0fd6faed2dee5b1d091dcf` |
| 24 | `theorem` | [norm_eq_card](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-eq-card.md) | 263 | `result-track:d583a222b04670d905f728660ed3aea0515fa1ccb8294c40a3367c472a755dbc` |
| 25 | `theorem` | [norm_eq_ciSup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-eq-cisup.md) | 266 | `result-track:7c333624e9fc74f79bbfc42305cfa5b1f7b7ce9fdeb04291899fc589af71803c` |
| 26 | `theorem` | [norm_eq_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-eq-sum.md) | 268 | `result-track:2df9d722e335fbd9054b69b56d11011eb96876ca7fa9c7a259c7c6d33e7de3f4` |
| 27 | `def` | [pseudoEmetricAux](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pseudoemetricaux.md) | 303 | `declaration-track:f1d29b68f48a4b1ae8ef12d8d57ebe24cf3c1002742ba8f7573214b463c0815a` |
| 28 | `theorem` | [iSup_edist_ne_top_aux](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/isup-edist-ne-top-aux.md) | 330 | `result-track:24e00abdf7ff11b96a513920b5d7871faf643f30fb4bb47d605b573ae0a8c695` |
| 29 | `abbrev` | [pseudoMetricAux](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pseudometricaux.md) | 347 | `declaration-track:da5afe4c03802c8de2dd48df06ca290d3359a37b7d5ab14d3fb1b7e6f1b35d81` |
| 30 | `theorem` | [edist_apply_le_edist_aux](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-apply-le-edist-aux.md) | 381 | `result-track:c18e21ffbc6d8dc68396c0e574cf18df862a3bbe3d6bf49b29db6c59bddc5ea9` |
| 31 | `theorem` | [lipschitzWith_equiv_aux](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/lipschitzwith-equiv-aux.md) | 394 | `result-track:0ede8b4cb078a35d8133dbb4277f11cc47daae946be8c097f34e12ca99eef7f3` |
| 32 | `theorem` | [antilipschitzWith_equiv_aux](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/antilipschitzwith-equiv-aux.md) | 400 | `result-track:19a16143b0e2b268b89e6e8d52d5cb9ba2191365fe8025f1229d85d4a09bd57e` |
| 33 | `theorem` | [aux_uniformity_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/aux-uniformity-eq.md) | 427 | `result-track:040812783de46874b9104dceb9b505a24072f1587853386bcf937d191f68cbe7` |
| 34 | `theorem` | [aux_cobounded_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/aux-cobounded-eq.md) | 435 | `result-track:843f2813e1f872ec5396fe3db7d8f0ffe3630754cc0d35f43e5040e013692826` |
| 35 | `instance` | [uniformSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/uniformspace.md) | 447 | `declaration-track:0d11f7547a874179ef637dd0074c8126294eef0f3bdffe4bee7782d373a41218` |
| 36 | `theorem` | [uniformContinuous_equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/uniformcontinuous-equiv.md) | 450 | `result-track:f8a5b353751edb93df18ed6f8a41dd6a20a9e11a4a6149e04e8dd4975952ae99` |
| 37 | `theorem` | [uniformContinuous_equiv_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/uniformcontinuous-equiv-symm.md) | 454 | `result-track:f7e3de123b21c3e7184f40838d457c46d1f5fbb76590d8acd420e72195db24d1` |
| 38 | `theorem` | [continuous_equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/continuous-equiv.md) | 459 | `result-track:8351868737e1d01ceb679f7746a43e36f9a3e868f1fbe0281ec1fde5f4f0485d` |
| 39 | `theorem` | [continuous_equiv_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/continuous-equiv-symm.md) | 463 | `result-track:82907a33645b734d1a7fdee424a14199bd696f1c47f6edd32abd204446f94462` |
| 40 | `instance` | [bornology](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/bornology.md) | 467 | `declaration-track:d497695fae7d6030d123046cedec3e42ea2a45f4c837c8f948f70578612c3b20` |
| 41 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instance-source-edition-2.md) | 477 | `declaration-track:1bf21e6452b6116ae1d7f7899df3a7ea3fb8f56a35ef729a0cdd3efbd19f79e4` |
| 42 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instance-source-edition-6.md) | 482 | `declaration-track:7ef2cc28360f8942da2b0406d13e8b7f7f8852e92faf54de1339fbee518175ef` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instance.md) | 487 | `declaration-track:0736bd794ae9d6ce8a8cbf268af6dc5f9af567e1ee7c7e2a77df72636a16e9f6` |
| 44 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instance-source-edition-3.md) | 493 | `declaration-track:28f9a8a69e6828b3f5112c929b82b6347431a5201b74234cf158f807cd71139e` |
| 45 | `theorem` | [nndist_eq_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nndist-eq-sum.md) | 496 | `result-track:ea4efe9ba940e25718f869a0132fb70b05414fa7af59ab01f9257a4cf2949c8b` |
| 46 | `theorem` | [nndist_eq_iSup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nndist-eq-isup.md) | 503 | `result-track:46e797c3317191a18c1827b27f2f6f5485e48f592d309b92d331f7e068583560` |
| 47 | `theorem` | [edist_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-apply-le.md) | 512 | `result-track:eb1df985d42927fd7ff69b2b455ae4c39c6454a0442a739bdfa4fd56d56f86ba` |
| 48 | `theorem` | [nndist_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nndist-apply-le.md) | 516 | `result-track:5a33451c691b8abed201e15fe56c122d5d3a13f0b80aad43ea8769b0d1912526` |
| 49 | `theorem` | [dist_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/dist-apply-le.md) | 520 | `result-track:322df653d38c64002894d9a5ed24420c009dc3f6c2071c479a9219e06d9fa5a5` |
| 50 | `theorem` | [lipschitzWith_equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/lipschitzwith-equiv.md) | 526 | `result-track:242cc75365e89c9d34711d6a3037e18597cdce7b5d7e0ab1ed3b9223d5b4cf01` |
| 51 | `theorem` | [antilipschitzWith_equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/antilipschitzwith-equiv.md) | 530 | `result-track:4a06f6cec1f9b4524aa75a32173378be5d467a99c805ab12432e7a4c54075dd5` |
| 52 | `theorem` | [infty_equiv_isometry](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/infty-equiv-isometry.md) | 534 | `result-track:c4c8c44ee2ef6e5b5fd1332e46272ee0499122106be91d9ebe0c619f98a0da36` |
| 53 | `instance` | [seminormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/seminormedaddcommgroup.md) | 544 | `declaration-track:9c8cb66640ba251e60b3da0d932fba515eb24022867a7acf2475d489f1f64f2f` |
| 54 | `theorem` | [enorm_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/enorm-apply-le.md) | 560 | `result-track:95e35b1e06b5ff8eed1ed43e085cc6637ddfd2f31a20406a2502dd49c7ab956b` |
| 55 | `theorem` | [nnnorm_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-apply-le.md) | 564 | `result-track:4d2e1db591090774411056d3be21ad5fc6f99d7e2699e5ff8b840add5233a177` |
| 56 | `theorem` | [norm_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-apply-le.md) | 568 | `result-track:fcd683bbea754e2bba57d7068a83913f6054ed1d59ea9610227b1959e4169a3c` |
| 57 | `instance` | [normedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/normedaddcommgroup.md) | 575 | `declaration-track:414c5af71ff65fb2055c2b50f2b9c66a24bf9352434e84852d558bfd1c42cea1` |
| 58 | `theorem` | [nnnorm_eq_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-eq-sum.md) | 579 | `result-track:b8f17e6592beb4edc039319089a746ae0fa0546fea335b30fb17de1df64d04f6` |
| 59 | `theorem` | [nnnorm_eq_ciSup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-eq-cisup.md) | 589 | `result-track:8069411d42ab7437b3e86b3e55d3c6f1b0149f9e4d72e487f7bbff89c6292a8d` |
| 60 | `theorem` | [nnnorm_equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-equiv.md) | 593 | `result-track:8b4e21a4dea646ee818ee35bbfb6f4f72388fb47681871cba581cbee8b90a0c8` |
| 61 | `theorem` | [nnnorm_equiv_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-equiv-symm.md) | 597 | `result-track:f5e84c6ea017a20cfc39ee53d77ef409b699752b836c3b197fb8414938f5f1b5` |
| 62 | `theorem` | [norm_equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-equiv.md) | 600 | `result-track:049a1c041b0c13375135203a5b898f8eb48a97eec6449b5b4dff568270dc4a5b` |
| 63 | `theorem` | [norm_equiv_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-equiv-symm.md) | 603 | `result-track:4fc5b6004b01b9cf49ddfeb8d67c85b0e5bf4d9d7bb38951f7896757a7ac252a` |
| 64 | `theorem` | [norm_eq_of_nat](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-eq-of-nat.md) | 608 | `result-track:cb29f7124d2006f81eae57b6c5c27ea90c3a49f93cb0202b26e138673e6b834a` |
| 65 | `theorem` | [norm_eq_of_L1](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-eq-of-l1.md) | 618 | `result-track:784c4e31065c158c682b0a6b8e05835cb7936bdd32f361dee5bb819a9025e7fd` |
| 66 | `theorem` | [nnnorm_eq_of_L1](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-eq-of-l1.md) | 621 | `result-track:262d4b2abf0799a9f712421eede22543be867c0e116be57e86a49d95a326fd90` |
| 67 | `theorem` | [dist_eq_of_L1](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/dist-eq-of-l1.md) | 624 | `result-track:838a22cc1826179e6affbc6ad430d5263f174eca118ec311ec0e642869984025` |
| 68 | `theorem` | [nndist_eq_of_L1](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nndist-eq-of-l1.md) | 627 | `result-track:8841813b7a05241b43f05e32b8451f94ee8f3f25316dca270f56ad1628779f67` |
| 69 | `theorem` | [edist_eq_of_L1](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-eq-of-l1.md) | 630 | `result-track:c8fdaea700cb846c88d322b788336628135c80bd84b0a35eb4254d0f58a63585` |
| 70 | `theorem` | [norm_eq_of_L2](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-eq-of-l2.md) | 638 | `result-track:c33c99c1f049c092be1095ca8b8bee4a8fb3e524cefcc4d9b0867fa38fae132c` |
| 71 | `theorem` | [nnnorm_eq_of_L2](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-eq-of-l2.md) | 644 | `result-track:a14b473d48e95105fb4c6f6e218663e04be371c439724e8b27b3c4f97e489285` |
| 72 | `theorem` | [norm_sq_eq_of_L2](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-sq-eq-of-l2.md) | 650 | `result-track:668b015cdf3ea8757ec68f0fb3421e502c5ee7e42cdd4c4b04b8f127ef30738d` |
| 73 | `theorem` | [dist_eq_of_L2](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/dist-eq-of-l2.md) | 656 | `result-track:06b716774c899a0cd8aad1b4a8f549a62d1016bb4b488ed84da99959b26a9ccb` |
| 74 | `theorem` | [nndist_eq_of_L2](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nndist-eq-of-l2.md) | 660 | `result-track:42d0c12e21917032d53b77b84c189f53426d1b30d4d82b637105d0ab458e7570` |
| 75 | `theorem` | [edist_eq_of_L2](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-eq-of-l2.md) | 666 | `result-track:f65fda56400c0da946af50219ff1ad483b60bf77b8f0256e62f56e7a580d975a` |
| 76 | `instance` | [instIsBoundedSMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instisboundedsmul.md) | 671 | `declaration-track:3a92f3b4660a41206c8129a842e755cf923a3edc2495ec10af40b3a770e5e801` |
| 77 | `instance` | [instNormSMulClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/instnormsmulclass.md) | 687 | `declaration-track:8fd88f94d68277f9554dc1fd61197683fbb155a1d8f5400cb96632fa6daff876` |
| 78 | `instance` | [normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/normedspace.md) | 701 | `declaration-track:478bacfa2493c7e35f5e54d1b0a034a86777dcb010ca8c1ea12c699416737fbc` |
| 79 | `def` | [equivₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/equiv.md) | 711 | `declaration-track:1b2b82bde064eb1cfea3d8274591f148b966778c27fe75ae65c4a69335045813` |
| 80 | `def` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcongrleft.md) | 725 | `declaration-track:5366d4e54b775e0c2e9269a1f1ee47546c16993db10a7e2ec69763cd8c299ab8` |
| 81 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcongrleft-apply.md) | 739 | `result-track:ad7294231aea58c8f0155b3adf68a761bdebe3a5ddd8578be095dd8069cb9a1e` |
| 82 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcongrleft-symm.md) | 744 | `result-track:6af552c90dc66ab2c34e766394aa8969989a73e1def75a9ffa7dbe769f674a83` |
| 83 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcongrleft-single.md) | 751 | `result-track:f5aa3ed47961e335d381ccaf15de6530ae838c729ae94a05a2fb28c17213e550` |
| 84 | `def` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcongrright.md) | 769 | `declaration-track:cb489fe5d3316b51a31ac7593978150bd6df4db0cab6ef46aa552761b9e04c81` |
| 85 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcongrright-apply.md) | 786 | `result-track:4762b8b5c2d12b010873cba70b342d68c6f6a421d93581f0d8725f49078d93d8` |
| 86 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcongrright-refl.md) | 792 | `result-track:49c8f3e751a1076e976e8902e027cbbb26cdd6390f1040c14bf308ad5cca168c` |
| 87 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcongrright-symm.md) | 797 | `result-track:e940baca53419571a378787f810e0c4f8568a2d3e18cc8e49af7de70a3c14032` |
| 88 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcongrright-single.md) | 803 | `result-track:10fa136ea26e98cd25ccfb990a181aa1ea05b781ebf6bf9fac037ebedcb4e45d` |
| 89 | `def` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcurry.md) | 819 | `declaration-track:c2c53b149f84e514b452e5b9ab83b0cbe610d739b854e53f2700059877de8a6b` |
| 90 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcurry-apply.md) | 837 | `result-track:6ae9893e3b3cdb9b59840c1aaad4f8fdff28ffe6053fb24139d038a69d7e0121` |
| 91 | `theorem` | [Lp Pi Lp Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/pilpcurry-symm-apply.md) | 844 | `result-track:cb6e25d6beed65610c5390a1a087d4b99d9d13cf438bee5afc0eabd499dc9b18` |
| 92 | `def` | [sumPiLpEquivProdLpPiLp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/sumpilpequivprodlppilp.md) | 859 | `declaration-track:19ebef08721ed6e228f5af2b77742c9e8ed01de432c10c2209aba11518d4c5e5` |
| 93 | `theorem` | [nnnorm_equiv_symm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-equiv-symm-single.md) | 883 | `result-track:062076de5e91b9ef2d5b209c6a59ba6e0d64bfd9b0eff4a51254762ef30adf34` |
| 94 | `theorem` | [norm_equiv_symm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-equiv-symm-single.md) | 906 | `result-track:ac34d3472d6a102cd92cd5028361c05f4d010f3ae3e50b1fb888640e0aa39efc` |
| 95 | `theorem` | [nndist_equiv_symm_single_same](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nndist-equiv-symm-single-same.md) | 911 | `result-track:7be6bbae1317b36e533ef81832781b06398b0dcb915e14a606acc419840fdecc` |
| 96 | `theorem` | [dist_equiv_symm_single_same](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/dist-equiv-symm-single-same.md) | 920 | `result-track:c97b5aad0fe3fc9e458d39a88cab1a900ffcedcc41e5b662e3c55da623dcf44a` |
| 97 | `theorem` | [edist_equiv_symm_single_same](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/edist-equiv-symm-single-same.md) | 928 | `result-track:90ae8edf4cd3abe577e7f4501805949f93f373ad1ed91832151b05b43ceb8573` |
| 98 | `theorem` | [nnnorm_equiv_symm_const](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-equiv-symm-const-source-edition-2.md) | 941 | `result-track:50a63a2161dd600707c084bbe5d2247a277e6a1fc57f5932fb4d00c123484da1` |
| 99 | `theorem` | [nnnorm_equiv_symm_const'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-equiv-symm-const.md) | 955 | `result-track:3c97771b689f385e1c34baf348c6bc6453d4ecc760747a679bd62ab9669acc09` |
| 100 | `theorem` | [norm_equiv_symm_const](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-equiv-symm-const-source-edition-2.md) | 967 | `result-track:f97950c008a3c0a83acad63c5a231cc53d19ef5e5ef23906d68fb2d61d2923aa` |
| 101 | `theorem` | [norm_equiv_symm_const'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-equiv-symm-const.md) | 976 | `result-track:12d6252bc5bffaace24daa760635d2850e2b78fd5f877dbf221cfdfa6675c9e8` |
| 102 | `theorem` | [nnnorm_equiv_symm_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/nnnorm-equiv-symm-one.md) | 981 | `result-track:686738eb4433e08353352e184a71be7309d30b1e813bf18139332df3c99f1aa0` |
| 103 | `theorem` | [norm_equiv_symm_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/norm-equiv-symm-one.md) | 986 | `result-track:bfb8527703dfb4834f2b098a8f44942e837c27eb48ce6f541b77e1ce382a6144` |
| 104 | `def` | [continuousLinearEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/continuouslinearequiv.md) | 994 | `declaration-track:a8c9b802752615fd6b094a17183085d6f5c525728705765078a5f24de8299556` |
| 105 | `def` | [proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/proj.md) | 1002 | `declaration-track:0597e39dcb6582362300ac7ae42a6d0b563e8f9d24187f1700d7ddf0b245f322` |
| 106 | `def` | [basisFun](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/basisfun.md) | 1014 | `declaration-track:84f51ae98100d17a6ed38f5004654753dc8a6a0d0fdca3d075eabd0a86ba5cc7` |
| 107 | `theorem` | [basisFun_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/basisfun-apply.md) | 1018 | `result-track:43d475331ab9076fffaaaaf827d7a7702b57c1384654c8d61e237220a8af37a9` |
| 108 | `theorem` | [basisFun_repr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/basisfun-repr.md) | 1023 | `result-track:c6c6fe8e72b3dd22567c3c32240cbb4a35d5523913e490658874442717e95fc2` |
| 109 | `theorem` | [basisFun_equivFun](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/basisfun-equivfun.md) | 1027 | `result-track:db7ce9aab42e782213fdd656f401674d1da4ab627fa01e19a08c85acb2860603` |
| 110 | `theorem` | [basisFun_eq_pi_basisFun](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/basisfun-eq-pi-basisfun.md) | 1030 | `result-track:4a5c2525939787a9979c5620143415d2c44c97f87a2da32e7449f10083ec964d` |
| 111 | `theorem` | [basisFun_map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/basisfun-map.md) | 1035 | `result-track:a440e79a993e6904b9d1674f25fe0d4e5a8535a2caf7971c44b0e85676760d25` |
| 112 | `theorem` | [basis_toMatrix_basisFun_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/LpPiLpNamespaced.lean/declarations/basis-tomatrix-basisfun-mul.md) | 1043 | `result-track:314dec0778e4c768f4b76ca89a1e9fc6b97d5df212060da14a7b8c6acdc0b486` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=855fc18e90d41ec1f31f85f4b751e0b286901f452e716818c4736e6dba37046d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
