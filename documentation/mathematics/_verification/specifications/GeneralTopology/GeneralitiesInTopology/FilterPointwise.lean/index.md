# Verification target: Filter Pointwise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "449673628534b0e914cd919cd9dfd65b15756cc9",
  "lexical_observation_count": 176,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `449673628534b0e914cd919cd9dfd65b15756cc9`.

Source path: `GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Pointwise.SMul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.NAry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [instOne](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instone.md) | 74 | `declaration-track:0d8cb3194060103eb057d3c88ab1327a822d3588cc4d6a7844ed8b21fd654ff5` |
| 2 | `theorem` | [mem_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mem-one.md) | 82 | `result-track:1dff114a3ec5d7c74e8a97384f85f20f65843070c8584f452bf2e27336fcb7b9` |
| 3 | `theorem` | [one_mem_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/one-mem-one.md) | 88 | `result-track:678fdfffbad79c6dc2c4aee28783d14b8ca4843181d8e0d6978568ebf5a086eb` |
| 4 | `theorem` | [pure_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pure-one.md) | 94 | `result-track:01c34ec7063206945f27502acff9c3843f19e681054f5be6994c07aeda9c0249` |
| 5 | `theorem` | [principal_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/principal-one.md) | 100 | `result-track:8a0bf481e8ada8cca631a66a1df1ddbcb86f5b91ae2c6d65d33292ef95327472` |
| 6 | `theorem` | [one_neBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/one-nebot.md) | 106 | `result-track:36ebdf24c61db4f74fb8711be0479a52cd46931f7dabbfd6ce777da9fc43b848` |
| 7 | `theorem` | [map_one'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-one.md) | 114 | `result-track:5459892f17d603318dfee367d2beb5df2d85d9baf549e38e3343ec85ca78bf6d` |
| 8 | `theorem` | [le_one_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/le-one-iff.md) | 120 | `result-track:6375c4c0ff612e69d492b0efe747262092a40c6da43bfdcfb5c57c9f28c1fd85` |
| 9 | `theorem` | [NeBot.le_one_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-le-one-iff.md) | 126 | `result-track:e8861f08ec620ec16d4752465e289faf4ee0c39a42c411e1fce58f194e88e4ff` |
| 10 | `theorem` | [eventually_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/eventually-one.md) | 132 | `result-track:b4993bbbcd9fe45fe14e8ebf9f995b07b2bad4074d4551cb4424665722c2d77b` |
| 11 | `theorem` | [tendsto_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/tendsto-one.md) | 138 | `result-track:6baa288675cd260d5b602a4d96b00f8bab6451d3c38e574558e900727214e3b6` |
| 12 | `theorem` | [one_prod_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/one-prod-one.md) | 144 | `result-track:445a946228ec01ccad03deaa5aece9839a9b33e05cdc4a6b301b07ccde0b37e7` |
| 13 | `def` | [pureOneHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pureonehom.md) | 151 | `declaration-track:4a3a8043d6b131e0a069a284b8da41c96788f60867f6ff96cb981fd7abad715b` |
| 14 | `theorem` | [coe_pureOneHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/coe-pureonehom.md) | 157 | `result-track:dadfe3f74f93551eb6370c71a1d5e7562c9045758a9462afba2563c747d09f9e` |
| 15 | `theorem` | [pureOneHom_apply](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pureonehom-apply.md) | 163 | `result-track:45253ea1c78926e1477e2fc7e523c8541b93c2331dc9ee7453f93047cebfd177` |
| 16 | `theorem` | [map_one](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-one-source-edition-2.md) | 171 | `result-track:668d426d20c41ac0114ffe3739cc258b51d2df85952474bdbebe7534e358e21f` |
| 17 | `instance` | [instInv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instinv.md) | 187 | `declaration-track:e343c118750906fce949d03d53f15d67a0a47be110a4371260b48795b0a5a247` |
| 18 | `theorem` | [map_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-inv-source-edition-2.md) | 191 | `result-track:d86ffcd4a53538f9b46ad32047453b58a686df94717d038d83a5ad37a144029f` |
| 19 | `theorem` | [mem_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mem-inv.md) | 197 | `result-track:b5824c4b724d062a5697738e98fd49ccf46916f4f1527106932c8ae83cd48988` |
| 20 | `theorem` | [inv_le_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/inv-le-inv.md) | 203 | `result-track:dcaa5740e0e085d1c282e9bf778bad0a50e9be2f6e7ed03f23aefc66c87e2da5` |
| 21 | `theorem` | [inv_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/inv-pure.md) | 209 | `result-track:3c7d0f62546e85053b01c428617d16b2117dd948a8d421e65d1e904175ed20e2` |
| 22 | `theorem` | [inv_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/inv-eq-bot-iff.md) | 215 | `result-track:9074c53d40f8bf748c56e1be3480efe0cb19e75afdf42812fcb16500a9798aab` |
| 23 | `theorem` | [neBot_inv_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-inv-iff.md) | 221 | `result-track:680cec80bd4be9c00352a66aace7317d7fc79bd8c32679d91dd5bd14ddac9d96` |
| 24 | `theorem` | [NeBot.inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-inv.md) | 227 | `result-track:df187283f9d54763d97701aa3fa6f23a6e84c8b48b5914d935eb81045656e0ef` |
| 25 | `theorem` | [inv_mem_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/inv-mem-inv.md) | 238 | `result-track:2b9b649ec8ac2be518e3a37ccba51692460b4e944b99e9ef4e0a0f586ac5afa4` |
| 26 | `def` | [instInvolutiveInv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instinvolutiveinv.md) | 244 | `declaration-track:f57ab9f24267f393c56559ec194c0af364e6adf5e8fb65391f3cf7ce32584fe2` |
| 27 | `theorem` | [inv_le_inv_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/inv-le-inv-iff.md) | 253 | `result-track:b8b87a253cb78cfd13b5c15d5f64da59cac7ab7592777fe7c4c3ad2b34bd5969` |
| 28 | `theorem` | [inv_le_iff_le_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/inv-le-iff-le-inv.md) | 259 | `result-track:75fcb327ec0f5feb21d9a691529c5a49ece74b139349feda63a18ebefbacc167` |
| 29 | `theorem` | [inv_le_self](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/inv-le-self.md) | 264 | `result-track:81b6bfba1d5a64d1b56ae63facf611db108fc249c2aeff4307306da229ccd3b1` |
| 30 | `def` | [instMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instmul.md) | 280 | `declaration-track:eaba874c99fd0e71a28d8ebeab7e47514e7efa29d276b2386f18429f42601c5b` |
| 31 | `theorem` | [map₂_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-mul-source-edition-2.md) | 290 | `result-track:8e1f533646e953aa09dfda0bcafd3d4a726d0c44b75acf09cdc34140b1167d62` |
| 32 | `theorem` | [mem_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mem-mul.md) | 296 | `result-track:27d812ac666d9885739ee9fccb537442733c8ef9ff13f84b861ce63b183b7327` |
| 33 | `theorem` | [mul_mem_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mul-mem-mul.md) | 302 | `result-track:d5b1355a29ffcc3a1ad994be4ca7ba6b209e2a2e2a4b294f049ebcd49ed2e715` |
| 34 | `theorem` | [bot_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/bot-mul.md) | 308 | `result-track:a8fc74b23db67a6e971b5935937f77162dffed080e08a1f8eb297264a11af75a` |
| 35 | `theorem` | [mul_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mul-bot.md) | 314 | `result-track:053bb58329b0ad6846dd16619e73bd27f9c91b66fc1efcc64aa5e150d04a8f23` |
| 36 | `theorem` | [mul_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mul-eq-bot-iff.md) | 320 | `result-track:ec765451b54753605c5f1f6bd676c63091b69284f9ea48ca341ee4d31c5c396d` |
| 37 | `lemma` | [mul_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mul-nebot-iff.md) | 326 | `result-track:72df03837a27c8d8e47334dccfb0dadc4296f62ba0525ad7dca1e8c792787fac` |
| 38 | `theorem` | [NeBot.mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-mul.md) | 332 | `result-track:a45531ccd3e4215330bbaaaa000c8d3f342f37e60533ead49b34f0fede395ff0` |
| 39 | `theorem` | [NeBot.of_mul_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-of-mul-left.md) | 338 | `result-track:b0ac83f7b292745f601e4ba16d443c3b1ae87874805b78360214171ff78f6e5a` |
| 40 | `theorem` | [NeBot.of_mul_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-of-mul-right.md) | 344 | `result-track:d306c2aeba90f27c82b26cb4ae0b45ef8e1c006c1ecdfffe6e4bcc57b2c3c17f` |
| 41 | `theorem` | [pure_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pure-mul.md) | 350 | `result-track:92683d30b0b1c136597a65deca21f52371d9c73036dcb66c5c9984500e0581c6` |
| 42 | `theorem` | [mul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mul-pure.md) | 356 | `result-track:e103778798135c8affcdf0bfdd2f03f1a125f9bf0d9970ce3be427c66a2d91a7` |
| 43 | `theorem` | [pure_mul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pure-mul-pure.md) | 362 | `result-track:881e0f2819980707402a08c66291a3df768497f99973f73858365249e67086b0` |
| 44 | `theorem` | [le_mul_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/le-mul-iff.md) | 368 | `result-track:c43612b7277976d70080afbd57872d4dae015aca9d8ca274d7c3f28325a61eb8` |
| 45 | `instance` | [covariant_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/covariant-mul.md) | 374 | `declaration-track:9efcb67f8d0e4315a45c5a3030f20db551db7afc367b9d832d3c99ebb5fe1c93` |
| 46 | `instance` | [covariant_swap_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/covariant-swap-mul.md) | 380 | `declaration-track:186e9cf1eb7c8b127e7365d1b1fbae80e2533d53d7d3234bd37c4ba768dd78d5` |
| 47 | `theorem` | [map_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-mul.md) | 386 | `result-track:086d53b189cf806be489167740328311953a20c08a00c4866dbc554bb01efd20` |
| 48 | `def` | [pureMulHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/puremulhom.md) | 393 | `declaration-track:1c209dce28779d1c3adc872af8beb2363e2951f024baceacbc14eca38120d249` |
| 49 | `theorem` | [coe_pureMulHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/coe-puremulhom.md) | 399 | `result-track:f8a74ceb0d693aaf43ee6e8590c2ca9288285a83c2e7e34e938a730e59440c99` |
| 50 | `theorem` | [pureMulHom_apply](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/puremulhom-apply.md) | 405 | `result-track:694e98edf6267517226b33e282cca116cee2db44555fca27f0bb8718430f938b` |
| 51 | `def` | [instDiv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instdiv.md) | 421 | `declaration-track:9333c1f9bca2f0eff9809ba8ddfb7315dcaa250bb2cea1df321fa94d5d896956` |
| 52 | `theorem` | [map₂_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-div.md) | 431 | `result-track:8544454d3880ab49a729e5387e942115159e98af322ac454b1395224ab7ed89c` |
| 53 | `theorem` | [mem_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mem-div.md) | 437 | `result-track:a36878a421f5c9cb7bf24d968e2a05e293650116473afb9ac80353cd826d61d2` |
| 54 | `theorem` | [div_mem_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/div-mem-div.md) | 443 | `result-track:ffd3177bca38e57eb23afd74757733e5e347142c083bb31cc37ab31ca5a09416` |
| 55 | `theorem` | [bot_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/bot-div.md) | 449 | `result-track:ae8c3eaa96105b007d4b53a185adae5eaefd61e8750c49fe64791875fd960e3e` |
| 56 | `theorem` | [div_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/div-bot.md) | 455 | `result-track:78781d393dfdd654e41e5ebc10eb891465199545dd67f7a2ab6d7149e23faf53` |
| 57 | `theorem` | [div_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/div-eq-bot-iff.md) | 461 | `result-track:49f37284ec415fb5e7c7ddcdad719c16679b569c931dde0bfc828f4738db38bd` |
| 58 | `theorem` | [div_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/div-nebot-iff.md) | 467 | `result-track:5a28aaef1900ba76f705a6562b6579924ead95be839649329efd06574df6e0b9` |
| 59 | `theorem` | [NeBot.div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-div.md) | 473 | `result-track:e036c343c98dd70d411cdaba44eb6167b47a16438fc58781c101eb8007e869f5` |
| 60 | `theorem` | [NeBot.of_div_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-of-div-left.md) | 479 | `result-track:fb3858cbc3b46bf6833ee3b56419f9702730359cddef4ee4139338fd26eff50d` |
| 61 | `theorem` | [NeBot.of_div_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-of-div-right.md) | 485 | `result-track:d309e34ac0cff39cdbc5e17c14ae5e7cdf799b752ff087e3028f3f3ad985f89f` |
| 62 | `theorem` | [pure_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pure-div.md) | 491 | `result-track:2ef6351a40ec5e575bced609b71e94404556afa67905f017817b148f0b0d10ec` |
| 63 | `theorem` | [div_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/div-pure.md) | 497 | `result-track:774b2d40ffe3335f7c4e297991fdc36481a30448df3944e5f6419808e1f7f569` |
| 64 | `theorem` | [pure_div_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pure-div-pure.md) | 503 | `result-track:31a361c5e9e523295bd86599f4837cfa979bbf6b13b21efe56be6c4c184b3b50` |
| 65 | `theorem` | [div_le_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/div-le-div.md) | 509 | `result-track:1db529cc5d38d1791b2e2101b2aa4657fa38d07d8e85a2691f72e6c0a29bb540` |
| 66 | `theorem` | [div_le_div_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/div-le-div-left.md) | 515 | `result-track:39472ad04e0f06dfb982480705a3748ede785c9cdb74acb2769ce5c2a43e8440` |
| 67 | `theorem` | [div_le_div_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/div-le-div-right.md) | 521 | `result-track:6930cb536a15e18a2db5240c1ca41dbece129ccb57a3de1520bb6d9c6fb13987` |
| 68 | `theorem` | [le_div_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/le-div-iff.md) | 527 | `result-track:370e4b2985ae7c669e65c8cc24695c516d9ff52f2508807c6ebe6114213be38e` |
| 69 | `instance` | [covariant_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/covariant-div.md) | 533 | `declaration-track:97004ee2eaeae487d0e4d2bc260b5cc0fb969d649a77618b6ffd56420c6ceefc` |
| 70 | `instance` | [covariant_swap_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/covariant-swap-div.md) | 539 | `declaration-track:5d3c7153c2a958274b52422bd67ece367c00dcb2cfb55c88ae60575abc2f912b` |
| 71 | `def` | [instNSMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instnsmul.md) | 550 | `declaration-track:d8691006972bcfdbc2c2a7c975ade2d7066c415fbc8557a34cb7a87347481e3e` |
| 72 | `def` | [instNPow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instnpow.md) | 557 | `declaration-track:97166b1269cabe659044cb9ff7464b1af0e656b5673fcfea01fd770cc0c8fa61` |
| 73 | `def` | [instZSMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instzsmul.md) | 563 | `declaration-track:6900e983be375ea515fd85d098ade03ab0099801df8c09b41bfab89ce95a54f4` |
| 74 | `def` | [instZPow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instzpow.md) | 570 | `declaration-track:288c6e6c2761afb8e2355e7d72654a8962a5f13c099dacff49b74f8542af1ceb` |
| 75 | `def` | [semigroup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/semigroup.md) | 579 | `declaration-track:d9d8d36ec2e672f7868a7e97eb5e7037d027015daa4e11dc225fdb0a9927fe92` |
| 76 | `def` | [commSemigroup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/commsemigroup.md) | 587 | `declaration-track:bc7dfae2c3dee406e2f822dc32547953cd8b7601a7175ec60cc724a8ad4cde4e` |
| 77 | `def` | [mulOneClass](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/muloneclass.md) | 598 | `declaration-track:d5888f0c9380610d7053c9b86995da6e8a522daa059b957f6149a2087b6a441e` |
| 78 | `def` | [mapMonoidHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mapmonoidhom.md) | 613 | `declaration-track:13594d6fedff971160a3faf9f0ec3d51825b8c05b045d73a7028e61c95f86726` |
| 79 | `theorem` | [comap_mul_comap_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/comap-mul-comap-le.md) | 622 | `result-track:d7742c770da8195adee7d469e6db72a057cff32c52c780d7309a2c699a5d1a0e` |
| 80 | `theorem` | [Tendsto.mul_mul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/tendsto-mul-mul.md) | 630 | `result-track:8597f44ada49ac6ca6d876647a469000d7d4e803ef39c9769e3928a72f581ded` |
| 81 | `def` | [pureMonoidHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/puremonoidhom.md) | 638 | `declaration-track:c48e9a20dfdf7d7ace42f7d976ce6201a9894b9bf02274572bd3a6418acd9765` |
| 82 | `theorem` | [coe_pureMonoidHom](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/coe-puremonoidhom.md) | 644 | `result-track:e3cc438beab64d4da2db6033227e66626cccfe8d2ab402ce8bb8ac055ba1ad09` |
| 83 | `theorem` | [pureMonoidHom_apply](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/puremonoidhom-apply.md) | 650 | `result-track:782af8bc5e56469c01d6d62016ef75cafa04f35d861cf8c0c9bb0fc917b2e7ad` |
| 84 | `def` | [monoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/monoid.md) | 663 | `declaration-track:ea5275d185abadc4a09912ef6e697b06f61fa1328cabfa4f9f80ee0d337cf0f9` |
| 85 | `theorem` | [pow_mem_pow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pow-mem-pow.md) | 671 | `result-track:125d96a1eaf67b91af4075df0e80adb38e1fa434432093277dde3946120af8b1` |
| 86 | `theorem` | [bot_pow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/bot-pow.md) | 682 | `result-track:ca044cf9b5ee9ac10df1ff34b125c8039a4f2b2a72b0a88935d487ef7f795435` |
| 87 | `theorem` | [mul_top_of_one_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mul-top-of-one-le.md) | 688 | `result-track:293bc3da26492de7154151d101ed8dfa8050c3d13c61c87cd7914ac6559a6280` |
| 88 | `theorem` | [top_mul_of_one_le](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/top-mul-of-one-le.md) | 697 | `result-track:7ad153de62f43c5a7046a40aa6b406236be336f56ef6da6ca0adef77476b5169` |
| 89 | `theorem` | [top_mul_top](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/top-mul-top.md) | 706 | `result-track:707eb2f844b049ad58040c26388ef562ba3e0c2679d3acb5546db15409eccccf` |
| 90 | `theorem` | [top_pow](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/top-pow.md) | 712 | `result-track:c35cf70091b681f310e689b82e053cd3eed7121363c296d6d45583ea035aa0f3` |
| 91 | `theorem` | [_root_.IsUnit.filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/root-isunit-filter.md) | 720 | `result-track:29263615f938465b75af878e4f43477a12cc705752f1761fc7b4f931a1d51c44` |
| 92 | `def` | [commMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/commmonoid.md) | 729 | `declaration-track:463f44cd64664b6e8d678e75213e763c0522ef9e8d8ed6c16dcb5c2f982ad2ef` |
| 93 | `theorem` | [mul_eq_one_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mul-eq-one-iff.md) | 741 | `result-track:9fdd7511c22486f81870258a62847c87dae34811493ffcd607aefaf413b57fef` |
| 94 | `def` | [divisionMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/divisionmonoid.md) | 759 | `declaration-track:496b869e0b102be92ce341b3aed3eb4baad30820675eed1eed85cd9697c36e34` |
| 95 | `theorem` | [isUnit_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/isunit-iff.md) | 770 | `result-track:97489fc6eb5e16f8416765439888e0375fb1fe64ac0544c3488d0ef99bd893b2` |
| 96 | `def` | [divisionCommMonoid](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/divisioncommmonoid.md) | 787 | `declaration-track:9ccc63ae9465df6170307c4a1599977b8798d1f7abf96da9ecfd098889262597` |
| 97 | `def` | [instDistribNeg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instdistribneg.md) | 793 | `declaration-track:1813d92d201e97bced67c165d425e2c0e29a589fee5e8080108d91dc0eb665db` |
| 98 | `theorem` | [mul_add_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mul-add-subset.md) | 812 | `result-track:cf28644599f947dbd11b09a14ccb5174e665d9770fc293c7e0818dc4ed05962e` |
| 99 | `theorem` | [add_mul_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/add-mul-subset.md) | 816 | `result-track:eeb3a6e4a05a43540e90642bf5908e59702a39239a8c7bfa166f139922746225` |
| 100 | `theorem` | [NeBot.mul_zero_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-mul-zero-nonneg.md) | 829 | `result-track:670c5136a9506793f984481490c78011b74c0d3a725aa5eb026571cd8b4bab8d` |
| 101 | `theorem` | [NeBot.zero_mul_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-zero-mul-nonneg.md) | 835 | `result-track:bcad8ead3eb6093bbccfeb81f6127ee5738541efc5805abbdce3068e19b7bd44` |
| 102 | `theorem` | [one_le_div_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/one-le-div-iff.md) | 852 | `result-track:5f00309cf04a6b337ed8e69c503e8a77695f91faf430d90012de07a2ed9c0684` |
| 103 | `theorem` | [not_one_le_div_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/not-one-le-div-iff.md) | 862 | `result-track:79f0282a94217518f7df95e07915c3154dbb36628361aebc6d9533a2645d93a1` |
| 104 | `theorem` | [NeBot.one_le_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-one-le-div.md) | 868 | `result-track:eccb2eb47e28049d01c0da8b10b2a557abb3b2c7ce9d4dc1e4903ee04eab6dad` |
| 105 | `theorem` | [isUnit_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/isunit-pure.md) | 877 | `result-track:2ba01ba351f389f69fa1ed96d16980d02990049061a7b25d66314b63769c377b` |
| 106 | `theorem` | [isUnit_iff_singleton](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/isunit-iff-singleton.md) | 883 | `result-track:e412e70f5fbc848e5eade9d96a587dea521acdce86022fe56726b07e21434335` |
| 107 | `theorem` | [map_inv'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-inv.md) | 888 | `result-track:9c798903cf4ac55b5c6f02edaaee2533809affd5e77f81024d03b2b0f24a2c79` |
| 108 | `theorem` | [Tendsto.inv_inv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/tendsto-inv-inv.md) | 894 | `result-track:c1bdeed07a52dc4b1d8a5c6fbd74fdfcd2735fd9bc12da5bf9e3f6763be33796` |
| 109 | `theorem` | [map_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-div-source-edition-2.md) | 900 | `result-track:c405a5b061d57191de1a4054057c52addbb68680120a267b46b3f16b84845b53` |
| 110 | `theorem` | [Tendsto.div_div](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/tendsto-div-div.md) | 906 | `result-track:4e1ca6f033eec3fc84179dc75a6979d28b651b5081d4be40b090cb2ea7123fa1` |
| 111 | `theorem` | [NeBot.div_zero_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-div-zero-nonneg.md) | 920 | `result-track:c6099fc0007d7fd2f7b708ac4a09cfb4bb372734024995475e1a376affe9338e` |
| 112 | `theorem` | [NeBot.zero_div_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-zero-div-nonneg.md) | 926 | `result-track:f4dc783edfd8e12e3d426af470f59e7e09f7cf5eba237b7bdcb698c6604dbb26` |
| 113 | `def` | [instSMul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instsmul.md) | 945 | `declaration-track:f33c82fa1fc42cf9ef3a22b63136bba0dc8d0b53580e29e4cd192272754f16e6` |
| 114 | `theorem` | [map₂_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-smul.md) | 955 | `result-track:747eee3179d547a6d0772f5663b08ba3e8644010bf357ed70dff374cf2b0dd18` |
| 115 | `theorem` | [mem_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mem-smul.md) | 961 | `result-track:6667c5d2064e53746563053025a31adfef5f4c23dc220ecd158389de5bb7c441` |
| 116 | `theorem` | [smul_mem_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-mem-smul.md) | 967 | `result-track:0881eb564d8c2aa63036fb767a03e87460e572b89247b8b2bf84eb61ec630135` |
| 117 | `theorem` | [bot_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/bot-smul.md) | 973 | `result-track:29313af71c54724ba0e30660a92dddfd60a642d0bbd07c96b1f9baa52d40851a` |
| 118 | `theorem` | [smul_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-bot.md) | 979 | `result-track:7a2b8b9dd70911fdd3439519db19b9f48b523e39eadef7f24bf3ce6822da8627` |
| 119 | `theorem` | [smul_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-eq-bot-iff.md) | 985 | `result-track:db1317a8d176677f87eb4670a01a6de0fae6547e64e514bf25de11aaea34251c` |
| 120 | `theorem` | [smul_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-nebot-iff.md) | 991 | `result-track:eb25f12b3018f2fe480b826c10c4e2d13e6d852916603b5d892725c9c70ebbdd` |
| 121 | `theorem` | [NeBot.smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-smul.md) | 997 | `result-track:f2828f73bbdc5c3c4205707473105350e70f1d602a41f787c833ff65cbec63d5` |
| 122 | `theorem` | [NeBot.of_smul_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-of-smul-left.md) | 1003 | `result-track:d0346f5cbe2edca1603df7af8578cf853640d3c791a0400206724373c11677b8` |
| 123 | `theorem` | [NeBot.of_smul_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-of-smul-right.md) | 1009 | `result-track:34ec8f95fa0a07914b59cd55e6c676f6f120100f46f5773477646cf8d8c0146c` |
| 124 | `theorem` | [pure_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pure-smul.md) | 1015 | `result-track:834f6c4c471e3fde24f896ce64489e7c7ce78622db752c1957434eb0ffebbac5` |
| 125 | `theorem` | [smul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-pure.md) | 1021 | `result-track:068275024afd938764337d81b79e001d33268a7d5c6d06ff5882bdb5482a0603` |
| 126 | `theorem` | [pure_smul_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pure-smul-pure.md) | 1027 | `result-track:4aec8e9418422435c688db125d96761d37c65592bf5f3b1b81c8c8256caf243b` |
| 127 | `theorem` | [smul_le_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-le-smul.md) | 1033 | `result-track:48f3586a706c6570e32058b2f43f3e65d19d668b55567d75947456fa0994ff1e` |
| 128 | `theorem` | [smul_le_smul_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-le-smul-left.md) | 1039 | `result-track:b043213b45afd4820df4bf7a04f5afe194f10f51f5881474be7345e589f44b28` |
| 129 | `theorem` | [smul_le_smul_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-le-smul-right.md) | 1045 | `result-track:a2575e6fe3a4bf66b4b2a271bc3de5cd515baa54edde2f1fd50736bd09254683` |
| 130 | `theorem` | [le_smul_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/le-smul-iff.md) | 1051 | `result-track:e225c84640d85f7038dbdce3746bc694ff802dcdd726a6b7d5eb6a23fc7c5c1d` |
| 131 | `instance` | [covariant_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/covariant-smul.md) | 1057 | `declaration-track:58b07e7a8c84cfe6859ab814c30f9226dfe5f78dc9b1390256804d82dcc37d2b` |
| 132 | `def` | [instVSub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instvsub.md) | 1072 | `declaration-track:e8610404ff299ef3cd9cdece64cc80776a0495de9306c013222dafe8a1f45cd3` |
| 133 | `theorem` | [map₂_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-vsub.md) | 1081 | `result-track:2c57c69e8a1a40cd736d833d871d2d76932bfcb977552a0f80bdb2cae43f0c5f` |
| 134 | `theorem` | [mem_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mem-vsub.md) | 1085 | `result-track:1c2a1c23a481d2f489bcfb1c56c537113a6a2f08aaa4bbd5a10cbff0326f4133` |
| 135 | `theorem` | [vsub_mem_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/vsub-mem-vsub.md) | 1089 | `result-track:e5396ebdce655076aaca054cfb032d218619145f12b0883aa33b0f0c76690781` |
| 136 | `theorem` | [bot_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/bot-vsub.md) | 1094 | `result-track:f1c8abedaeb024c3b9e643716a34e445a3326834484ce8f5776e10a5999b39c2` |
| 137 | `theorem` | [vsub_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/vsub-bot.md) | 1099 | `result-track:8855ecc4e2957adb5628cc7e0c9e153a73719dc839a7c6d807e2676c50227c3c` |
| 138 | `theorem` | [vsub_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/vsub-eq-bot-iff.md) | 1104 | `result-track:5ca4aa74b4e7bab173337750fa5c21760617a34e13f7677c1d4a7c8d41cfcd17` |
| 139 | `theorem` | [vsub_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/vsub-nebot-iff.md) | 1109 | `result-track:e43b727769b5fa9ec6483e6cd0be00bd11fc03deecb9d261f1a87467c483cdf9` |
| 140 | `theorem` | [NeBot.vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-vsub.md) | 1113 | `result-track:112063c87fc8162412ff7eed69dd459be78c9596dffa86f720529f66185cd5f7` |
| 141 | `theorem` | [NeBot.of_vsub_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-of-vsub-left.md) | 1117 | `result-track:a84a127e91165bdc78ac4f986e9937caa478a61e8e5ccbbbb97bfdff2d2b9a42` |
| 142 | `theorem` | [NeBot.of_vsub_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-of-vsub-right.md) | 1121 | `result-track:f758245628eab3d21f906eaf9c9c9555a941a80713863b4a73ef765f01046025` |
| 143 | `theorem` | [pure_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pure-vsub.md) | 1126 | `result-track:2257cf7e4dcdfd8b296b4bc31973463c86d1a83001af8a186f0abc5b31c58fc1` |
| 144 | `theorem` | [vsub_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/vsub-pure.md) | 1131 | `result-track:f2ceabe64dcf609f71f165e202917ca607ff35b91541fea0d6e1ba4fa8ba2e2c` |
| 145 | `theorem` | [pure_vsub_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/pure-vsub-pure.md) | 1136 | `result-track:1e12b6d83f74457bef4ed11fc2ea084a09b97b10730b9302e694c7812232cdfa` |
| 146 | `theorem` | [vsub_le_vsub](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/vsub-le-vsub.md) | 1140 | `result-track:482975e287cefd45321fca0656c6e9d41eee3901729ef70daf3c28624ed60845` |
| 147 | `theorem` | [vsub_le_vsub_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/vsub-le-vsub-left.md) | 1144 | `result-track:a978bb4350d4b6883a73470f57040b279e1d91b56b5320bacbdda4b87c056b12` |
| 148 | `theorem` | [vsub_le_vsub_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/vsub-le-vsub-right.md) | 1148 | `result-track:d29b47626a24199a2eb54db502a5b3593bff974b924f1d90fe54cc97c466ee36` |
| 149 | `theorem` | [le_vsub_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/le-vsub-iff.md) | 1153 | `result-track:faadb249696b096db18a6e5fef44118a0e2b38df6c8962a85fd1ba0d27bb3e6f` |
| 150 | `def` | [instSMulFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/instsmulfilter.md) | 1168 | `declaration-track:e75378690a8a56018e1b5b7137319888a9ce928671f190c3d3044dbad7abacea` |
| 151 | `theorem` | [map_smul](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/map-smul-source-edition-2.md) | 1176 | `result-track:b8cb1e9ce3a037fe161605f4fd5d61930859abe37ccd73f8ba24d56488652960` |
| 152 | `theorem` | [mem_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mem-smul-filter.md) | 1182 | `result-track:f9dc7d56d36ee272f25382acc68d6c636c5150478b1e151b19e0d2440910f27a` |
| 153 | `theorem` | [smul_set_mem_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-set-mem-smul-filter.md) | 1188 | `result-track:754db60e5724e8d164fba909b1c1ef395eebad9b9834882a248f450ffe21f1fa` |
| 154 | `theorem` | [smul_filter_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-filter-bot.md) | 1194 | `result-track:2c7c83f9e46a77128d3c0a1b024b67721d25913ea3dc2f48a989926b97c3c99e` |
| 155 | `theorem` | [smul_filter_eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-filter-eq-bot-iff.md) | 1200 | `result-track:d70ce04dbf1c6cff0b7406776a02e7345501132f91a426c7bb1a5a11f2f360d6` |
| 156 | `theorem` | [smul_filter_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-filter-nebot-iff.md) | 1206 | `result-track:e6e7f28fb810ae7ac31cf177e28d08e98568e69fdf25319f72af89089be39968` |
| 157 | `theorem` | [NeBot.smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-smul-filter.md) | 1212 | `result-track:c26ee80bd729742819c13fdad5d79f6df59dac3e18cc8c8c630a904cd810e966` |
| 158 | `theorem` | [NeBot.of_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-of-smul-filter.md) | 1217 | `result-track:eb5e647bafc7ac36153ac633a43b299ca552c6b597b423a0b7da00eb2d7be91a` |
| 159 | `theorem` | [smul_filter_le_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smul-filter-le-smul-filter.md) | 1223 | `result-track:f095472b7b6466be03a5b911db906226be7ed861d5b4d74a1dbdf4d9efd5d849` |
| 160 | `instance` | [covariant_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/covariant-smul-filter.md) | 1229 | `declaration-track:f9e2e591fa7039c71876c8e0cbf64f4d2bce4a5dd13ed0deebc62a626b9141ad` |
| 161 | `instance` | [smulCommClass_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smulcommclass-filter-source-edition-2.md) | 1239 | `declaration-track:b1dbe7610d9663e8bd59361495a77fef7886040406bb93f4b50998af2753daf6` |
| 162 | `instance` | [smulCommClass_filter'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smulcommclass-filter-source-edition-3.md) | 1246 | `declaration-track:ecd06481efaa51055fa930466ae6dfdac88bb34556138ba1601b470d31af48c5` |
| 163 | `instance` | [smulCommClass_filter''](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smulcommclass-filter.md) | 1253 | `declaration-track:89730a0669b42c52a975f208275cae2ad78f21ff3f05071ac4695cb8feac6029` |
| 164 | `instance` | [smulCommClass](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/smulcommclass.md) | 1261 | `declaration-track:0f59b4129a9ffc1d9cff9febbb3ebeb07001c654b4528f431d4b16d75213cf35` |
| 165 | `instance` | [isScalarTower](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/isscalartower.md) | 1268 | `declaration-track:9d3e577d17694f623599b6214b7243ebff0352a885a9e551475ba4598b8cde1f` |
| 166 | `instance` | [isScalarTower'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/isscalartower-source-edition-2.md) | 1275 | `declaration-track:b721f217ea375d21972432eb25c25f1c64e6dee7c8e708085a8d682ce5c91cb4` |
| 167 | `instance` | [isScalarTower''](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/isscalartower-source-edition-3.md) | 1284 | `declaration-track:efb41892ebbfdaf04fd24d3439e85e973f208352d848b0c8736cec6bb82cd1e6` |
| 168 | `instance` | [isCentralScalar](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/iscentralscalar.md) | 1291 | `declaration-track:fb517980b70a18fe59b40a3b499315fc60dd243c0af53d1a9732e156483a3370` |
| 169 | `def` | [mulAction](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mulaction.md) | 1301 | `declaration-track:1ab6f5d7c4c44434b16dba1e8a070ce785b1362cb0bd67159e3cf4e8a9cf134f` |
| 170 | `def` | [mulActionFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/mulactionfilter.md) | 1311 | `declaration-track:7896af57a3928a6c516ddba9178b9321657ec2ca39eea7120571d323aae55f96` |
| 171 | `def` | [distribMulActionFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/distribmulactionfilter.md) | 1322 | `declaration-track:96ae77a4967cb92fe339c2d903bcf3283442c4c940e3aea4dead0869bea66f78` |
| 172 | `def` | [mulDistribMulActionFilter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/muldistribmulactionfilter.md) | 1329 | `declaration-track:309637c57bfaba51d95393f90d2afdeecf99e33c345cad9077f7a195a32d5d64` |
| 173 | `theorem` | [NeBot.smul_zero_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-smul-zero-nonneg.md) | 1348 | `result-track:45228789b71730c6b45e667ee0de928db313ee57d5740f81abee10b78bf164ad` |
| 174 | `theorem` | [NeBot.zero_smul_nonneg](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/nebot-zero-smul-nonneg.md) | 1354 | `result-track:0e1f95154151a3dcfe4473f21641e1eafd72ceaa943bc02d59f48a16920b8ead` |
| 175 | `theorem` | [zero_smul_filter_nonpos](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/zero-smul-filter-nonpos.md) | 1360 | `result-track:954da155660dda72f4aa21cafe9cb82e06c09d31ff00e3656838282543006c3e` |
| 176 | `theorem` | [zero_smul_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterPointwise.lean/declarations/zero-smul-filter.md) | 1368 | `result-track:4b0a0ba356402f9ffcf841f96e7d400db08c8be686853d8ec986fa3ff0c16716` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6db3ab2dc26a9e97078e15110a224a956beccf1f67df4cbaaaef259451edc320 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Pointwise/Variant0e72abfa12dd455df94464b9a841c4b160cd4d59525f8edccd23f6841c54ba7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
