# Verification target: Power Series Substitution Substitution Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16984e582371189eb40c1174b49da057798ce784",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16984e582371189eb40c1174b49da057798ce784`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasSubst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst.md) | 40 | `declaration-track:6475a6c304cb9d21df6fb1ce2c99bfc7141054faf31c5d99a93192ef06c2491c` |
| 2 | `theorem` | [hasSubst_iff](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-iff.md) | 43 | `result-track:6bb68e072d8928f8e22352bdda4e1b9b0ea6b6234baceb2a8a543bede6e50da1` |
| 3 | `theorem` | [HasSubst.const](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-const.md) | 48 | `result-track:14fa84e4d21fda47aff2da75080fa8d4fdf55ddb955aa5d37d9ffb012bd288a4` |
| 4 | `theorem` | [hasSubst_iff_hasEval_of_discreteTopology](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-iff-haseval-of-discretetopology.md) | 52 | `result-track:dd8a01c43088e35cbd95a897b1483786cc436191e0ecc77014d2e62fe8a465ec` |
| 5 | `theorem` | [HasSubst.hasEval](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-haseval.md) | 58 | `result-track:bbaf34ca2f60d26aaf3ee29bba851a274e9c167bf17b73db56b511bc1719c05f` |
| 6 | `theorem` | [HasSubst.of_constantCoeff_zero](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-of-constantcoeff-zero.md) | 61 | `result-track:dfeaa3e36a2f58886e24f99f80009e1e889aebefaf10528d54aaedc504e08b94` |
| 7 | `theorem` | [HasSubst.of_constantCoeff_zero'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-of-constantcoeff-zero-source-edition-2.md) | 67 | `result-track:e9c64eab51af8a158bd3dfdd9516813c9bdc4dc06231864bf4ba4d45f520dd6c` |
| 8 | `theorem` | [HasSubst.X](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-x.md) | 71 | `result-track:3fd7dbb832000968bf6adb8ba2b3f4305bc7c496557bf511e6e0a81bba52ac28` |
| 9 | `theorem` | [HasSubst.X'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-x-source-edition-2.md) | 78 | `result-track:f99bf0a7b77e5aa03a378fe4919e906527ccf801827f86aa5146c79d115a6659` |
| 10 | `theorem` | [HasSubst.X_pow](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-x-pow.md) | 81 | `result-track:d5546f14f906771147de69220d2ef06cb3230a34b410e7f7dd2881c6f781f73d` |
| 11 | `theorem` | [HasSubst.monomial](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-monomial-source-edition-2.md) | 84 | `result-track:b0c560bc6104b7f94fa9149ec85333b6352aa3a0081634f843699d14de212845` |
| 12 | `theorem` | [HasSubst.monomial'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-monomial.md) | 92 | `result-track:8d4a2972b4ad2d30e9de8ea876629825fd78e171e22d8814eef1ed1b4572089b` |
| 13 | `theorem` | [HasSubst.zero](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-zero-source-edition-2.md) | 96 | `result-track:58b355ce656c509f246b680bf06f10e9c5b993052c40193820475462985cd7e3` |
| 14 | `theorem` | [HasSubst.zero'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-zero.md) | 101 | `result-track:045f681f7b42a8184d5037c3d977090e201d9351e4bf216d58f518280aa6463e` |
| 15 | `theorem` | [HasSubst.add](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-add.md) | 106 | `result-track:b628afa8bb33e0647622e229815e5f84ff726a8f6c99a3bc2882d153e1693bcf` |
| 16 | `theorem` | [HasSubst.mul_left](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-mul-left.md) | 111 | `result-track:36faa2dd6e87dfc22d94a3c78fe1b69c59e0b6e28d1e670a24f6e60b847f2413` |
| 17 | `theorem` | [HasSubst.mul_right](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-mul-right.md) | 116 | `result-track:781ce6ddd6b96620f79359ea61b12c59a21da9af56fca24e4cc6d1a369d6422f` |
| 18 | `theorem` | [HasSubst.smul](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-smul-source-edition-2.md) | 121 | `result-track:bb03ae3e10ab5275cbdf98a34be1d819137e0425d04bfff0bcecdcc6255d49e2` |
| 19 | `def` | [HasSubst.ideal](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-ideal.md) | 126 | `declaration-track:63da093b0237b03fa2d9523d5102a41d054ee24e6fb883795525c1e95cf8b293` |
| 20 | `theorem` | [HasSubst.smul'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-smul.md) | 133 | `result-track:7625cd47ebfd06bfb522b5c26cb1a7d91c72db129672063a8256bcdff35549b5` |
| 21 | `theorem` | [HasSubst.smul_X](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-smul-x-source-edition-2.md) | 138 | `result-track:ffd4d130ffda679b9dba390a359f369b5c3493f3d155c88b6d29a318b00d07d7` |
| 22 | `theorem` | [HasSubst.smul_X'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-smul-x.md) | 142 | `result-track:b3e719e01d57496944f7780341b0021b75e6f061df3194f414d40e31dc409bdd` |
| 23 | `lemma` | [HasSubst.eventually_coeff_pow_eq_zero](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-eventually-coeff-pow-eq-zero.md) | 145 | `result-track:ca16f45ba8e641c0f64145e8f1970e61b3c863840a954a20b1ec2c0bdeb39b9b` |
| 24 | `def` | [subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst.md) | 158 | `declaration-track:2fc7a294dff2a0df05d5ff8ee5172788e8253a9912426e97554cdf144505c3ce` |
| 25 | `lemma` | [subst_def](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-def.md) | 162 | `result-track:fa780c9cfc418aa0ea718ddef7d0c07ec5f2ba3e6c3ab14e008c9b103424d0b5` |
| 26 | `lemma` | [subst_X_comp_const](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-x-comp-const.md) | 165 | `result-track:9fd43cb186f9cfe66cacf9165c0200a2d6409dc1c1435aaf6d622e93954c25ed` |
| 27 | `def` | [substAlgHom](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom.md) | 171 | `declaration-track:e3908ac6d5fc23b12ccdaa64ae8f83e6abfda37dd46325da4cd86566d55619ef` |
| 28 | `theorem` | [coe_substAlgHom](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coe-substalghom.md) | 175 | `result-track:1096ee5fd5fd10d74340f2801fd84bbcc2836fe1af163a417d348cefafba7732` |
| 29 | `theorem` | [substAlgHom_eq_aeval](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-eq-aeval.md) | 184 | `result-track:230af49ec5413f2a8113368dbaf0af6ac7d0ee7db4ddcce907193c963c1efb65` |
| 30 | `theorem` | [subst_add](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-add.md) | 191 | `result-track:bc5eecfda2c3c2318fd3bedfb522032fe28d7b3c440508a75b5566bd4a29c252` |
| 31 | `theorem` | [subst_sub](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-sub.md) | 195 | `result-track:2aee0782ba066ff761bf624a66d25e4851f34bb5bbba4fa974140865dffeb0ed` |
| 32 | `lemma` | [subst_zero_eq_C_constantCoeff](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-zero-eq-c-constantcoeff.md) | 199 | `result-track:12e33b45e84fc143bd5c99c1a777030301258ea9cfe61bfa4ff4b59f71c0b524` |
| 33 | `theorem` | [subst_zero_of_constantCoeff_zero](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-zero-of-constantcoeff-zero.md) | 204 | `result-track:5970db53d1572b305845c5842a4a49748f6b88f42afcd11ca08baad55e113f5a` |
| 34 | `theorem` | [subst_pow](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-pow.md) | 208 | `result-track:ccd0f44140778da56144a0ad78af3a165a97273b2f92473122a80155f4af1386` |
| 35 | `theorem` | [subst_mul](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-mul.md) | 212 | `result-track:617fb770d21286675fe4bdc8584dec96250a6efad4993f470fc7af2b98ffc570` |
| 36 | `theorem` | [subst_smul](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-smul.md) | 216 | `result-track:6473a7db72712ff2715e6dd262f80be475502be295f4d04ccbf8e163e49ab322` |
| 37 | `theorem` | [coeff_subst_finite](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst-finite.md) | 221 | `result-track:605b04d22f858bea06d07ea5477e1d7eb3280f0ee828182a893b97bca261869d` |
| 38 | `theorem` | [coeff_subst_finite'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst-finite-source-edition-2.md) | 232 | `result-track:9a751237eefed992b92b0220b2d7829b0462dc0fb3d63267253d675508b5d40d` |
| 39 | `theorem` | [coeff_subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst.md) | 236 | `result-track:051a786bafa4bfbf116516f15e94784d4e518152aeb6d0e373699a3cbac3ec5b` |
| 40 | `theorem` | [coeff_subst'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst-source-edition-2.md) | 247 | `result-track:7a8f0bd23ccec4b58416e720c164a89ee4e737665bd8acfc89c8f27adddffd04` |
| 41 | `theorem` | [constantCoeff_subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/constantcoeff-subst.md) | 253 | `result-track:260c1f32cb0e557f2f49eae9a3d7b6eca0600530f6ed8d2690bb0e0c593a54c1` |
| 42 | `theorem` | [coeff_subst_X_pow](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst-x-pow.md) | 259 | `result-track:a8ffbd8b5fa70f98629919a4b9ba550d9da16020fefb78fda410d38fc0e4cda5` |
| 43 | `theorem` | [constantCoeff_subst_X_pow](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/constantcoeff-subst-x-pow.md) | 275 | `result-track:bf51e7dc0d72852c2cecfdac9b6b01b662f432b57585e3dd929fd410167d7478` |
| 44 | `theorem` | [constantCoeff_subst_of_constantCoeff_zero](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/constantcoeff-subst-of-constantcoeff-zero.md) | 280 | `result-track:2c38e497f5bdbdb47e350eb0df55401d7e32a0936fa8a07907d813c25f586f84` |
| 45 | `theorem` | [constantCoeff_subst_eq_zero](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/constantcoeff-subst-eq-zero.md) | 286 | `result-track:3106091416b2e7f69dc2c8126fd1594e20f23df294cee922234573273ba80396` |
| 46 | `theorem` | [map_algebraMap_eq_subst_X](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/map-algebramap-eq-subst-x.md) | 290 | `result-track:51018303846fc39c3fea9e9ddd1de1a35dfe1ff9ba868b93c6b745e36fad11b1` |
| 47 | `lemma` | [coeff_subst_single](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst-single.md) | 294 | `result-track:656e92e410f50bf89ee9a324236e4e72e45b715cb50a1e4b0cac4518dfae4687` |
| 48 | `theorem` | [X_subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/x-subst.md) | 301 | `result-track:47326535868b6475f2fa8771c4980643bbb6319b27b420a5c6230493d37f6693` |
| 49 | `theorem` | [_root_.Polynomial.toPowerSeries_toMvPowerSeries](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/root-polynomial-topowerseries-tomvpowerseries.md) | 305 | `result-track:58e5d41ed12af0e69c543ea6894203148062adc9ae0f3cb071bd346e38950490` |
| 50 | `theorem` | [substAlgHom_coe](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-coe.md) | 309 | `result-track:281faa81d7dacee64edc95eb871ef565d725b17b6c60a9829d79d97c739f0810` |
| 51 | `theorem` | [substAlgHom_X](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-x.md) | 317 | `result-track:d954713a82572672aef0cf11574190c1d081b1d8421690688390445aed91915c` |
| 52 | `theorem` | [subst_coe](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-coe.md) | 321 | `result-track:61fddfd004eb6901dd5594f0d705eeff25727ae990f09bf3bcc17d569be5bb7b` |
| 53 | `theorem` | [subst_C](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-c.md) | 326 | `result-track:cbeb439109a70ef97ee7833516ddd0a763ea52aa4a3930a60b4e9ecbdcac7d26` |
| 54 | `theorem` | [subst_X](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-x.md) | 328 | `result-track:e1cf4c2d0e9f1a98b1ddf10c72f85a9c616401c977bf34d097658cc31942cd2b` |
| 55 | `theorem` | [map_subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/map-subst.md) | 333 | `result-track:32eaa78a33e0e5da832de5c7a77bcec801d517ad3e52d60d7a2abbe95acd52b2` |
| 56 | `theorem` | [le_weightedOrder_subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/le-weightedorder-subst.md) | 339 | `result-track:3f56c05329d54740ba1d1faf56be693f46f9b857042d64cbd69ded8b6082e547` |
| 57 | `theorem` | [le_order_subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/le-order-subst.md) | 348 | `result-track:40fe046ba64dab247d5b71a4d2663f2726e1630dae51bc2696f9f02395ca22db` |
| 58 | `theorem` | [le_order_subst_left](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/le-order-subst-left.md) | 353 | `result-track:16d27801ece5c4c39b7876061e24b510a5163d58c8ab9461aef1c9c1719f1aa7` |
| 59 | `theorem` | [le_order_subst_right](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/le-order-subst-right.md) | 358 | `result-track:3f9534d65e058699f13f73ef0500f29bc38ca369dbd9f5c733027d35f3c46726` |
| 60 | `theorem` | [le_order_subst_left'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/le-order-subst-left-source-edition-2.md) | 363 | `result-track:8346ea5641c7c97fd7b79c3633ed2c4883059ebe99fa2bcd48502826f62eee97` |
| 61 | `theorem` | [le_order_subst_right'](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/le-order-subst-right-source-edition-2.md) | 368 | `result-track:459ae850215da9b75ad993ee18f90a079fd96f94dc337607b794ee43c26deeb3` |
| 62 | `theorem` | [HasSubst.comp](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-comp.md) | 375 | `result-track:b67ff4d7eff1cc5f0f792ee978198cc7b467ed986d776a9d2e33f6d87181448c` |
| 63 | `theorem` | [substAlgHom_comp_substAlgHom](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-comp-substalghom.md) | 382 | `result-track:d80118f4263be686eae9293355473d22af55c583cead96c72a81662468c8bf68` |
| 64 | `theorem` | [substAlgHom_comp_substAlgHom_apply](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-comp-substalghom-apply.md) | 386 | `result-track:e2f5a6c782b6e20080b0ba3047d41993d070f8ca3f3a17c3c4008615ad14cd47` |
| 65 | `theorem` | [subst_comp_subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-comp-subst.md) | 390 | `result-track:85904ae9537feded9175a2a5b2cac825d606546de6d7186b37d2654269323c30` |
| 66 | `theorem` | [subst_comp_subst_apply](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-comp-subst-apply.md) | 394 | `result-track:82070c1aebdac74b668d576fd493d2d04b7460bfa30e8c092fa23ecb9e66fa49` |
| 67 | `lemma` | [rescale_eq](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale-eq.md) | 398 | `result-track:146f5f8fc3b27d4bc6b15c62c9bdec8641268c8854bf454348a0ca635d9f6f21` |
| 68 | `lemma` | [rescale_eq_subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale-eq-subst.md) | 404 | `result-track:80ad17b0c42647c6fa272ce9f4c9cfc62481fedcba300616fff48bac02951939` |
| 69 | `abbrev` | [rescaleAlgHom](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescalealghom.md) | 409 | `declaration-track:6d45297dd4a1ab8478e9d0d0310b2c14fe7c5ffc404cca42ddea6becc072f11d` |
| 70 | `theorem` | [coe_rescaleAlgHom](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coe-rescalealghom.md) | 412 | `result-track:d26cf98c3e73f77ae49c99a230a9649afcad4e3b642a2605603e7e566cca5931` |
| 71 | `lemma` | [subst_rescale_of_degree_eq_one](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-rescale-of-degree-eq-one.md) | 417 | `result-track:c100018e6ae9d7eb07367da29d19fad949b0d992e3d16745cb6045cedb55043e` |
| 72 | `def` | [substInvFun](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substinvfun.md) | 446 | `declaration-track:953420d44ff376c289f5df1dfa5d5cf33d0ca279cbe45c53caa096d3cc1f193e` |
| 73 | `def` | [substInv](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substinv.md) | 457 | `declaration-track:0f9cc05f58cfc1170a106639b35cb4a19ef74157a1cb688c7b0900684859d987` |
| 74 | `lemma` | [coeff_subst_sum_C_substInvFun_mul_X_pow_sub_X](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst-sum-c-substinvfun-mul-x-pow-sub-x.md) | 460 | `result-track:d612cceb09d2ce5627f9268697e5bfcc183a482d70852249c449cc4448d186c7` |
| 75 | `lemma` | [subst_substInv_right](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-substinv-right.md) | 511 | `result-track:7ffa997293893aa4b21e218eda9cd92a80e407c16777d7e1ad149cf21640f351` |
| 76 | `lemma` | [constantCoeff_substInv](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/constantcoeff-substinv.md) | 530 | `result-track:c5b215e0888e6f71e7efe2250fd47fe8c186366cbc4ab32d2ea97732ead3cc1c` |
| 77 | `lemma` | [HasSubst.substInv](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-substinv.md) | 533 | `result-track:9942ebf09de1b3cd607435a777409d700bc107a18d36c70d4c03c24fa7b7d8af` |
| 78 | `lemma` | [coeff_one_substInv](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-one-substinv.md) | 539 | `result-track:5220c47cbf068a06c6ba22957c55280e01db4520371d91ca381a67bbc27dbcac` |
| 79 | `lemma` | [subst_substInv_left](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-substinv-left.md) | 543 | `result-track:5a1bdfc0a0fe10693ca6ae1704366474998b04373a5b4f3af919fdc69d90d88a` |
| 80 | `def` | [substInvOfIsUnit](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substinvofisunit.md) | 567 | `declaration-track:0de1db45ea227bc87fd3d931cb9e81bd9e6fae14ff69dc6628f3e77d1013d821` |
| 81 | `lemma` | [substInvOfIsUnit_eq_substInv](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substinvofisunit-eq-substinv.md) | 571 | `result-track:33b04e901fc8d69e359e01d5f48be3dbb075cb8b8ab4b9b3277acf119ea40635` |
| 82 | `lemma` | [constantCoeff_substInvOfIsUnit](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/constantcoeff-substinvofisunit.md) | 576 | `result-track:63b13db60287b5e6e965fa7ac50a3d3fd88564912b4a37985a50f30b6ebb8231` |
| 83 | `lemma` | [HasSubst.substInvOfIsUnit](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-substinvofisunit.md) | 579 | `result-track:f20371e8de48aac24e9989a8ca49e001e0635d64080d6e77f367a2e31a071c55` |
| 84 | `lemma` | [coeff_one_substInvOfIsUnit](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-one-substinvofisunit.md) | 583 | `result-track:459393e75cd90865d0236b32e33c00a3fb6d9665d6c1970e5d6e32e0cb54c6fc` |
| 85 | `lemma` | [subst_substInvOfIsUnit_right](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-substinvofisunit-right.md) | 589 | `result-track:aa20b0417aee7db86c326ba76190623a574c192de30e0a21d2f6977f843aca39` |
| 86 | `lemma` | [subst_substInvOfIsUnit_left](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-substinvofisunit-left.md) | 594 | `result-track:5cd962317afafe116e3f55e79513c36a68b9f57356cdb725f773f85261cf1b58` |
| 87 | `lemma` | [eq_substInvOfIsUnit_of_subst_eq_X](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/eq-substinvofisunit-of-subst-eq-x.md) | 600 | `result-track:c5ac004010d3566d2160565a2781b4b6e145fb74087242f66bc269b5aaf0ba0d` |
| 88 | `lemma` | [subst_eq_X_of_subst_eq_X](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-eq-x-of-subst-eq-x.md) | 609 | `result-track:91b72efcce5f0db67f6da46235f805d24b0d54acff825a13fbf30207c904215b` |
| 89 | `lemma` | [subst_tsum](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-tsum.md) | 624 | `result-track:aabbf4ae77516603bf9c5f38630fdd8be5e7789f926c06b88a47aa20d92fe774` |
| 90 | `lemma` | [summable_subst](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/summable-subst.md) | 629 | `result-track:9077a233a9482bcaa846db68676e756e71cf1f6e3333f9e114a78fdc5ed4a9d9` |
| 91 | `lemma` | [coeff_subst_X_zero_add_X_one](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst-x-zero-add-x-one.md) | 642 | `result-track:483537b3149c963bc5e896beac2ad64e725d23d2b4ffb7bddd1adeab7337ca9e` |
| 92 | `lemma` | [coeff_subst_X_zero_subst_mul_X_one](../../../../CommutativeAlgebra/PowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst-x-zero-subst-mul-x-one.md) | 655 | `result-track:762508048488ddfc7e068f1da7950e311880ac96f0ad6f71be59afad99bbaab4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0107a8b8eab406fa9fd3c510711175083170dcea6602eea7f52a4538792f4cf8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Substitution/Variant6442dc150c2f686e966a3645a5d23885cd69598ec7b117047f14dfa643dade16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
