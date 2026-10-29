# Verification target: Lattice Namespaced Epi Iff Mk Eq Top

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e15f01b61d6220d084d86b748c86d7136df76a5",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant13840a3b364d5f852d8240cdcab3b57d5a02d8474fd7cd9d16255773623ffc7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e15f01b61d6220d084d86b748c86d7136df76a5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant13840a3b364d5f852d8240cdcab3b57d5a02d8474fd7cd9d16255773623ffc7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant13840a3b364d5f852d8240cdcab3b57d5a02d8474fd7cd9d16255773623ffc7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Currying` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.FactorThru` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/instance-source-edition-4.md) | 42 | `declaration-track:d37150ec045a4cf03167e886eff873e3e98c5180e68f6b09cfeae1a1cf13dcad` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/instance.md) | 44 | `declaration-track:5215921186e0b6bf3fb41c31a57c3992581871fd184b0827606b4c112b26914e` |
| 3 | `def` | [leTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/letop.md) | 48 | `declaration-track:cb2898fd4785441188840dc05a24f668a022c609d64b5a5fe023585cf49b1ace` |
| 4 | `theorem` | [top_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/top-left.md) | 52 | `result-track:e3eba2fb08612959ddb361ab974829a0912fc479d546d0e351d7af643cc43778` |
| 5 | `theorem` | [top_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/top-arrow.md) | 56 | `result-track:e6dad7ba643e2762b56dbedca416276cca4608e407f0af6e8e53400c2c39603d` |
| 6 | `def` | [mapTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/maptop.md) | 60 | `declaration-track:6287fa96399d3af0b0af0e55230fc927b6e4679c19e4685e9d419672f77cd45d` |
| 7 | `def` | [pullbackTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/pullbacktop.md) | 69 | `declaration-track:43b1b631da3f372b564b38f04f8159a49272d75f2696394ef8b3435f8466669c` |
| 8 | `def` | [topLEPullbackSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/toplepullbackself.md) | 75 | `declaration-track:0524f4298b85b506406c5e6e8d71701b7b523cc024c8d5d1e26137d0cbb95a09` |
| 9 | `def` | [pullbackSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/pullbackself.md) | 80 | `declaration-track:639dc853a5817e5edd3592c10a32e1a4473602292af636cc544c86c976793112` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/instance-source-edition-3.md) | 91 | `declaration-track:cc1f773b473c8607a1512c367af45417186cbe7353157a47a5b7266f288844de` |
| 11 | `theorem` | [bot_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/bot-left.md) | 94 | `result-track:72e015065c0b1106ce2581fe540b61519b567994258d923ecef176e352ca308d` |
| 12 | `theorem` | [bot_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/bot-arrow-source-edition-2.md) | 98 | `result-track:f3575a5a588753f442184877aa4bc4b290d24a9991dfbf6f1097331c5afb05a7` |
| 13 | `def` | [botLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/botle.md) | 102 | `declaration-track:e695c0773b04fee6ac61174404d1a005485ad61e554d301ba554c151a8ebd592` |
| 14 | `def` | [mapBot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/mapbot.md) | 106 | `declaration-track:2d7cb2834de764b0500082f8af7518ed7f8086649e4a07cc1d36f2625083e9cd` |
| 15 | `def` | [botCoeIsoZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/botcoeisozero-source-edition-2.md) | 118 | `declaration-track:83decad1041614e43901f8a88fd3ba2b3f64cec7f9727eb017075086a8ded2dc` |
| 16 | `theorem` | [bot_arrow_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/bot-arrow-eq-zero.md) | 122 | `result-track:729618508ad8375b1b2337c109209c555e20cce034af7ffbb7c68370c0258d3e` |
| 17 | `def` | [inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-source-edition-2.md) | 138 | `declaration-track:c601262cbdc8106e656b0df281c824d4703ca3c399b044d90f69fc733ccf3502` |
| 18 | `def` | [infLELeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/infleleft.md) | 149 | `declaration-track:681409f48628506f51c27943824240529f4b5954fd6f290f67183af374485189` |
| 19 | `def` | [infLERight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/infleright.md) | 153 | `declaration-track:5b19d4e0114da915166993dc0e82addd16c582a1057b171037d8c3bff98f28f9` |
| 20 | `def` | [leInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/leinf.md) | 157 | `declaration-track:cac75f34fcc584ef33aa1d4ebd988300ead38a56a4bd79170dcf8ff03856d008` |
| 21 | `def` | [sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/sup-source-edition-2.md) | 172 | `declaration-track:eaac9fb95ecaabafaa67e477847935465c405afe53bc2556972e791b6d606dcc` |
| 22 | `def` | [leSupLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/lesupleft.md) | 176 | `declaration-track:cdd19b19153bf43569e1f987317bfd84cea10eef65a4bdc9957137c305892429` |
| 23 | `def` | [leSupRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/lesupright.md) | 182 | `declaration-track:461e06ab39bfe865b5548cb991abf7f421282e08abc60525c1a4c45d9897f3d4` |
| 24 | `def` | [supLe](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/suple.md) | 188 | `declaration-track:243b501ff0c0f522503e37a2a59863d5053c7f1e800866195ce0fd428fdb0092` |
| 25 | `instance` | [orderTop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/ordertop.md) | 205 | `declaration-track:0ff4861932423c3ae83df02f7b8b97155add50813e00f41bfda56f721f2b5a2d` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/instance-source-edition-5.md) | 211 | `declaration-track:e7787d5769dda94ed28fa54e077ccb41b7a28b7ffa6e54befa7f4f4492b8eeb5` |
| 27 | `theorem` | [top_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/top-eq-id.md) | 214 | `result-track:8cff379eb77d406fbb6b9d3415624de25048e2b6aa9f100e83edffd2efa7e1a4` |
| 28 | `theorem` | [underlyingIso_top_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/underlyingiso-top-hom.md) | 217 | `result-track:509f7b3421363e7917e9bc6ae736d69adf11cf0f9b1aab837914f0031ce7c015` |
| 29 | `instance` | [top_arrow_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/top-arrow-isiso.md) | 221 | `declaration-track:632c46636f00618bef1213a04965e49a8c27578a9d0fa0d5a44e9050dfb505a4` |
| 30 | `theorem` | [underlyingIso_inv_top_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/underlyingiso-inv-top-arrow.md) | 226 | `result-track:b9f5ec1870b90ce1137c4da2e2f62335667a52478c195c7ec05a58724918e264` |
| 31 | `theorem` | [map_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/map-top.md) | 231 | `result-track:5bab59e2840ec328eeadf9f71336067de893983d29a436a4d61d78fe3bd5078b` |
| 32 | `theorem` | [top_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/top-factors.md) | 234 | `result-track:b364441c9e2e4a7e20058bc3c402d327b745a736838eafd44afbbfa3567f9805` |
| 33 | `theorem` | [isIso_iff_mk_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/isiso-iff-mk-eq-top.md) | 237 | `result-track:14ab3ce8afa58fef35e61e7c6c5e002a8600d6b7e155fc6393aa78da71c030c0` |
| 34 | `theorem` | [isIso_arrow_iff_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/isiso-arrow-iff-eq-top.md) | 242 | `result-track:27f59ff1e7b4e45dd5a6ed1f25a17b99648ca2b8df10d414489527e95289a823` |
| 35 | `instance` | [isIso_top_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/isiso-top-arrow.md) | 245 | `declaration-track:c2e72381825a8eee65268a231158f9270aaaf0d1180113a4b8ebde51c6dc7520` |
| 36 | `theorem` | [mk_eq_top_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/mk-eq-top-of-isiso.md) | 247 | `result-track:77adc02de14a1b1824e72a69c918b5f6c4d7977322c233816cfc7e88188cf584` |
| 37 | `theorem` | [eq_top_of_isIso_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/eq-top-of-isiso-arrow.md) | 250 | `result-track:b8d0434a776759f37ba7f9e23cb0b99f45698e0af98b14fce7ee998a42e6b1b9` |
| 38 | `lemma` | [epi_iff_mk_eq_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/epi-iff-mk-eq-top.md) | 253 | `result-track:eb27efb68c05cf7e9e5b8883bda8672c0bf844b09f5686b951cacf9e789d3c8a` |
| 39 | `theorem` | [pullback_top](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/pullback-top.md) | 262 | `result-track:89378643ac2450ab2c68f25f9f439071a87372deb08bae6c740922168a4018a0` |
| 40 | `theorem` | [pullback_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/pullback-self.md) | 265 | `result-track:bebad8034518efcc4aac9fe599aea89a6470fd03b14ab22b9ea955496b06bb45` |
| 41 | `instance` | [orderBot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/orderbot.md) | 276 | `declaration-track:5a1e3deacd5dd6daf9d3dd0d8e6519a7452567a3fd75befd27fc341044a84876` |
| 42 | `theorem` | [bot_eq_initial_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/bot-eq-initial-to.md) | 282 | `result-track:17e9b4a2026e41fba56e368b4354f3be37eac591bf15209e8e8f366f857db27c` |
| 43 | `def` | [botCoeIsoInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/botcoeisoinitial.md) | 286 | `declaration-track:a282216fdec86a6e2eb6b0253ea99e16ba08b89cf4800ff9325f17bef2abb139` |
| 44 | `theorem` | [map_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/map-bot.md) | 289 | `result-track:07481ed28bae135fbce8701fc62a7b731d7d2504047dcf162e7f1cce0f01d1bf` |
| 45 | `def` | [botCoeIsoZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/botcoeisozero.md) | 301 | `declaration-track:11af5f0e3b69d01dc5c08c4149a4e716936fd06ac96db921a0386c1040e597e3` |
| 46 | `theorem` | [bot_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/bot-eq-zero.md) | 306 | `result-track:c9aabb77aa9828544b44b660e4146e42e86c170bcb1a57d21dfe17ed7ba29ed4` |
| 47 | `theorem` | [bot_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/bot-arrow.md) | 311 | `result-track:69052285782d36678c70ae873c06e41f465c32bf004c5e1ab8024ab452239a6d` |
| 48 | `theorem` | [bot_factors_iff_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/bot-factors-iff-zero.md) | 314 | `result-track:2ac03a1294394524a2b3499d11a9508e09970b3e601e6504e94ef2d2fe118475` |
| 49 | `theorem` | [mk_eq_bot_iff_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/mk-eq-bot-iff-zero.md) | 323 | `result-track:74ebc848c573b181191bbcc1830e880e5169e04495ff8d38220a13bef4c4adcf` |
| 50 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/functor.md) | 335 | `declaration-track:bf6546f3d9f9a0d6f5d5f0e5e0e8ba66d3ac26fb6dd0d9bde07f139aaa474079` |
| 51 | `def` | [inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf.md) | 348 | `declaration-track:5e94c912c4ba11d5b7b49ad7e1ff7f05f4d2ab9fb39d1761a19d4f1e0f7368bd` |
| 52 | `theorem` | [inf_le_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-le-left.md) | 351 | `result-track:a9e8f60c4900ad56eb8290f6a9db820d72d9804a6beea64126f282ea313b1e80` |
| 53 | `theorem` | [inf_le_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-le-right.md) | 354 | `result-track:09d2c41c1b16356d2031daddc16a283cdef7f32ba252f3ac4f83b55e3c3c4b5d` |
| 54 | `theorem` | [le_inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/le-inf.md) | 357 | `result-track:16fc33a59cc4b9c8d6d6a2a6865dc21903459fa0ca35914790c279d75492afc3` |
| 55 | `instance` | [semilatticeInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/semilatticeinf.md) | 363 | `declaration-track:6a1d8bd30fb263d8acfb04ba523b87de67f283359c8ff4eb6a6a26933db02718` |
| 56 | `theorem` | [factors_left_of_inf_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/factors-left-of-inf-factors.md) | 369 | `result-track:a0be863c9abad90d40d36a41c661a8032af51cfe1b1691fad3c050ec24141741` |
| 57 | `theorem` | [factors_right_of_inf_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/factors-right-of-inf-factors.md) | 373 | `result-track:c21a314c619398c6ea5711db549bb75eac4d366e63200716a2ec3745ccd7f73a` |
| 58 | `theorem` | [inf_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-factors.md) | 378 | `result-track:823de3f4e63f91157e042eacdd5d5ed9e27560d7a61180a83e6f58be936755ac` |
| 59 | `theorem` | [inf_arrow_factors_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-arrow-factors-left.md) | 386 | `result-track:9f95b8b7205c04108fd18803bb04711a7452a838860c51c7c1fefbd77fba8742` |
| 60 | `theorem` | [inf_arrow_factors_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-arrow-factors-right.md) | 389 | `result-track:101008e43d38e4875cb12528e0ca679c056db298a940c7b8e910da1c39539ba7` |
| 61 | `theorem` | [finset_inf_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/finset-inf-factors.md) | 393 | `result-track:d998a7a4aab6e3b52f8aaa0450791f6962d8b4af6e48fa9c93550b710c7c3f0e` |
| 62 | `theorem` | [finset_inf_arrow_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/finset-inf-arrow-factors.md) | 401 | `result-track:6575cd039b3d0b038d093720997bd688a26142a59bd6929a3bb9889038e096c1` |
| 63 | `theorem` | [inf_eq_map_pullback'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-eq-map-pullback.md) | 418 | `result-track:d07e3cc2fcf2bc68cbb937e76b1ce03453b29c8352e3bea966afd7413814d4b7` |
| 64 | `theorem` | [inf_eq_map_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-eq-map-pullback-source-edition-2.md) | 424 | `result-track:ddbffba0a6c63f5397829817bfb338f7334d75a7c6fd683a7e60c0a779bdb4da` |
| 65 | `theorem` | [prod_eq_inf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/prod-eq-inf.md) | 428 | `result-track:6f5dc3b2fd2423bb9a88b529d4ed6f34a95e14116ebec07a168814183a20bea3` |
| 66 | `theorem` | [inf_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-def.md) | 435 | `result-track:3e84aa1f7c2e6d313f7db6f4221f0e5f8e624bad011ed695d29bc6138991506d` |
| 67 | `theorem` | [inf_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-pullback.md) | 439 | `result-track:0568a4bedb10aaa9b318dbb4adca457d0c1e324a9a72257bb09d468370c47bf2` |
| 68 | `theorem` | [inf_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/inf-map.md) | 450 | `result-track:360e3d1c53a1d11541f5d39b90bfa9a2d2bc3711490038b10fa46a5976787a84` |
| 69 | `def` | [sup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/sup.md) | 466 | `declaration-track:30334f2abcd04881fbcb7f5bc4daf4cb980a9dda8dec17de71df9db5cf9df1fa` |
| 70 | `instance` | [semilatticeSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/semilatticesup.md) | 469 | `declaration-track:aaeff6aa39ca5edc7f09daaccf79bce7c021abe648580d14d7baf9b2859a7251` |
| 71 | `theorem` | [sup_factors_of_factors_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/sup-factors-of-factors-left.md) | 476 | `result-track:09699f9571ba26ffb1699ca21cc77f719ac80a86d29735122de524e282523803` |
| 72 | `theorem` | [sup_factors_of_factors_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/sup-factors-of-factors-right.md) | 480 | `result-track:fe4513d43f0c957f0ff66d1576337017733f02e56e263809ed123845db6abdb8` |
| 73 | `theorem` | [finset_sup_factors](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/finset-sup-factors.md) | 486 | `result-track:042a6780940e42bf27ada09cc76d9142357205e31a32669aea1aba7397c0c679` |
| 74 | `instance` | [boundedOrder](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/boundedorder.md) | 504 | `declaration-track:cb3af9ea26ca14910d12b39b1abd53d71f7fb05b29cb47bad4ebdf2656cf8475` |
| 75 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/instance-source-edition-6.md) | 509 | `declaration-track:e8b888a9d2cfc7e7c9b2e9ac3b041bf766afb2ff7607caabe322b1312b668d79` |
| 76 | `def` | [wideCospan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/widecospan.md) | 522 | `declaration-track:f41d3a6ab4d397b16cca729afa35d875781745e55f5a650fd86754a359ed6149` |
| 77 | `theorem` | [wideCospan_map_term](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/widecospan-map-term.md) | 528 | `result-track:f5999dd86576e2bb74e701ee4806aea635d2ed6800dd7b5735dabd94e3789551` |
| 78 | `def` | [leInfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/leinfcone.md) | 534 | `declaration-track:33e586a17121338ea817a9ef60814cf0c57e1f0c416f99981cb7253a836384c8` |
| 79 | `theorem` | [leInfCone_π_app_none](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/leinfcone-app-none.md) | 547 | `result-track:52e7be5b3118e0cc249a14e48a7517f7e4313b06c1d34693126b0cb23d10071c` |
| 80 | `def` | [widePullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/widepullback-source-edition-2.md) | 555 | `declaration-track:8dcde111ea7d25afd83248cd0e39ce0e87a667405495629fafaf903b4bd39515` |
| 81 | `def` | [widePullbackι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/widepullback.md) | 560 | `declaration-track:0331f7f71b936489c6709286f1c71e35360885553f9e00c08f5639bfa5c8d431` |
| 82 | `instance` | [widePullbackι_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/widepullback-mono.md) | 563 | `declaration-track:2da3eae0b8fff99914bb26b50d9a11f9213b9cf828a06d3603b6418ee1171a0f` |
| 83 | `def` | [sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/sinf.md) | 575 | `declaration-track:f26b47377353c75e8e0ee76a2246186bca8b171157fd5cab30394db98697fbcd` |
| 84 | `theorem` | [sInf_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/sinf-le.md) | 578 | `result-track:49cd965c1dcd81830d457ef9fbe183ee3d24f2510728ab3cd7827b56fc737bae` |
| 85 | `theorem` | [le_sInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/le-sinf.md) | 591 | `result-track:0861dd3291b30bbe65c5a0f11f30613ad78be8a6a6b7c73bfe06ca82c146930e` |
| 86 | `instance` | [completeSemilatticeInf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/completesemilatticeinf.md) | 598 | `declaration-track:63194baf91677d3915ce3eec2c57bdc1eb43cf1a5b3cc042f07b249a513a9b36` |
| 87 | `def` | [smallCoproductDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/smallcoproductdesc.md) | 612 | `declaration-track:abedadd71f6cec796e74e3efa732b8c3de1fb79919703ad40b752cbb6821c065` |
| 88 | `def` | [sSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/ssup.md) | 619 | `declaration-track:2140c7294440cdbfe0aa41ae2ec9b344fa8e257ea71613ed670a55df1f484825` |
| 89 | `theorem` | [le_sSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/le-ssup.md) | 622 | `result-track:3409a57d8189c397c0fb59350fdaf809b71006eb1e8e851ec87323602abebb10` |
| 90 | `theorem` | [symm_apply_mem_iff_mem_image](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/symm-apply-mem-iff-mem-image.md) | 629 | `result-track:d50e285c631b254b4df027b75a2944020ef4e0414f965bd16c83d2a6c81b9dcf` |
| 91 | `theorem` | [sSup_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/ssup-le.md) | 635 | `result-track:8b01cdbbf24e519ecea6fc01285e35e50fdccd80917168bb5a50507753edcd2a` |
| 92 | `instance` | [completeSemilatticeSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/completesemilatticesup.md) | 649 | `declaration-track:05c9bc4d27621a6f2222afd62f14211714b560613cb74dea79cca89d2544f258` |
| 93 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/instance-source-edition-2.md) | 663 | `declaration-track:9c73cdfcf2bcf76daaffd6a308c5f666cb6dffceb9ff764fee2bf5b61015ad86` |
| 94 | `lemma` | [subsingleton_of_isInitial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/subsingleton-of-isinitial.md) | 669 | `result-track:1330b4c1de37c0cebd54f7aa156115be132fcfc70c5ec050d41b2534035c4457` |
| 95 | `lemma` | [subsingleton_of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/subsingleton-of-iszero.md) | 681 | `result-track:cc3ff2d80cf67ff5c07a41620707907ae7a5e481f7fcfa28349bbedf83427eaf` |
| 96 | `theorem` | [nontrivial_of_not_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/nontrivial-of-not-iszero.md) | 691 | `result-track:072f0293f994db387d8aa2292ec3ffb88561f42bfb6251248d6fb5648f5d43de` |
| 97 | `def` | [subobjectOrderIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LatticeNamespacedEpiIffMkEqTop.lean/declarations/subobjectorderiso.md) | 699 | `declaration-track:c9fc6d22921c728d3c149e3287c5a6bd003605ac374be9b053065cf066dfb913` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c73ac56fc4c4b42bbca0ee0d0788b3c3e18900cd4f0e276b007be97101bdf8c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant13840a3b364d5f852d8240cdcab3b57d5a02d8474fd7cd9d16255773623ffc7a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Lattice/Variant13840a3b364d5f852d8240cdcab3b57d5a02d8474fd7cd9d16255773623ffc7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
