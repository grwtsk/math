# Verification target: Xgcd Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "584e45353d4cfa77e6e0b1e8dc26ca899f8b6e44",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variante5d92924bdf6842bc5dc687c6d157ee4a6248cfb5ed79520f86bdcf880c6ca1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `584e45353d4cfa77e6e0b1e8dc26ca899f8b6e44`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variante5d92924bdf6842bc5dc687c6d157ee4a6248cfb5ed79520f86bdcf880c6ca1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variante5d92924bdf6842bc5dc687c6d157ee4a6248cfb5ed79520f86bdcf880c6ca1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Prime` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [XgcdType](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/xgcdtype.md) | 52 | `declaration-track:f14a67185bd965cba76876f4a60b96a1e9b4e209815072a0cd17f5bc2243100c` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/instance.md) | 71 | `declaration-track:a8ca5874566698020b18a391b3e8fc918a5bdd03c86a45ac7114827af57a8ef8` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/instance-source-edition-2.md) | 76 | `declaration-track:e8a2afb93aaa8c0325eb28d036d4f3c73134fd1291e4f8d1ee41e55dd0811a69` |
| 4 | `def` | [mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/mk.md) | 83 | `declaration-track:59f0975ca68f14895cfa3093a195a6b37da4fd55eabea56fe930b038a1725cb3` |
| 5 | `def` | [w](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/w.md) | 87 | `declaration-track:ead52ea5a535fa0eed062bb4c1afe885e8516198ce6c92662d1e340c94bdea2b` |
| 6 | `def` | [z](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/z.md) | 91 | `declaration-track:7f91015cd40a5a538481d89a2d181380c79670b7604ebf9893b96ecf75a84c3e` |
| 7 | `def` | [a](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/a.md) | 95 | `declaration-track:77a1fcaa83556a326e892e4e2af2d50df0af1911b38973f52dea89f683d4eebb` |
| 8 | `def` | [b](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/b.md) | 99 | `declaration-track:3e63895cbe4088d76770afe650495ea18b34cf8ddd790e9ef4e29d6a54d8b395` |
| 9 | `def` | [r](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/r.md) | 103 | `declaration-track:8e17c1fc2887e2a87d18e342b4882c364c29dddd44304820fb4ee6475aa35e3f` |
| 10 | `def` | [q](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/q.md) | 107 | `declaration-track:c3a9b0d33ba797f5d62090f65722bd2b5ce83bdac616001ebace42af7bc3441b` |
| 11 | `def` | [qp](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/qp.md) | 111 | `declaration-track:89946e5e0b32ba1510a8b4d823975bcd9941bd28bc9ae0e48868f9f56adc0fa4` |
| 12 | `def` | [vp](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/vp.md) | 119 | `declaration-track:83cdd24bbf4e9ed6567d34a387ba7fb3fde3f3ad00862ecca437f2089571215f` |
| 13 | `def` | [v](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/v.md) | 123 | `declaration-track:6c2a4cacf5ebdc4144b2494df8779bd4ac646a09d62cfdc59d47f91f4df1b8ac` |
| 14 | `def` | [succ₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/succ.md) | 127 | `declaration-track:24cd58f59322a534d07baec73247ac60e6aca51f51ce2e09208a3e060d351316` |
| 15 | `theorem` | [v_eq_succ_vp](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/v-eq-succ-vp.md) | 130 | `result-track:4ca5dc4b6d41a14ea20db2cc53082f8048c5bd48da7f6a635b07eac2e15319f9` |
| 16 | `def` | [IsSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/isspecial-source-edition-2.md) | 134 | `declaration-track:c5be39700193bcd2576cff050224ceb21f5f0d66c55d6cdbd3e5818b4a2337c8` |
| 17 | `def` | [IsSpecial'](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/isspecial.md) | 138 | `declaration-track:1d072eae0967a0f9003e380b17532cdd793b7b782e1f8a950783287556488e02` |
| 18 | `theorem` | [isSpecial_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/isspecial-iff.md) | 141 | `result-track:46d50a2cc75410710d33f698bd7e0e0c00e17834c3c6f29370b9a2e62a7a627c` |
| 19 | `def` | [IsReduced](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/isreduced-source-edition-2.md) | 153 | `declaration-track:e8314ee35be9a1dd3751451b81efcc8135c3828a70e603b26a5a78155ec12946` |
| 20 | `def` | [IsReduced'](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/isreduced.md) | 157 | `declaration-track:87cf13e7a48d6ee97f3dd40dd4c39617194d229f129564d4813dee0f60ea6abb` |
| 21 | `theorem` | [isReduced_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/isreduced-iff.md) | 160 | `result-track:620e543dfb694ba0984801044745dab4fccec696399e479b4e7dff972aab4dbd` |
| 22 | `def` | [flip](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip.md) | 164 | `declaration-track:9ba9599cc4299f8b247010e7084c561850346d5ad5d842ed51e810e05be73838` |
| 23 | `theorem` | [flip_w](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip-w.md) | 173 | `result-track:53c4fae5d6c3f9af2b5cff5a271e4a085123db7541e975e0ffde2969c83079e2` |
| 24 | `theorem` | [flip_x](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip-x.md) | 177 | `result-track:83bfca5462181c8604a1d88b1a02bd68bc477f6e8ff3c6e3b3fcb7829cdb6d7d` |
| 25 | `theorem` | [flip_y](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip-y.md) | 181 | `result-track:af8222ba53a3f6c52ef782ea5c1ec7b9bb3c41c7b1bbcd229410527a127099aa` |
| 26 | `theorem` | [flip_z](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip-z.md) | 185 | `result-track:239949c364c614cd1b17047229940b6f765adf6842e0558946d5b81a64d59a16` |
| 27 | `theorem` | [flip_a](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip-a.md) | 189 | `result-track:5d604c6175d5b96665c774b60b98a671015c984a22cb1f0c51a13b850a5ea3ef` |
| 28 | `theorem` | [flip_b](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip-b.md) | 193 | `result-track:bcb7bf0a830467a8780f8fdd38a2db0693bb378a35fb273ad9fbc374fdb8e750` |
| 29 | `theorem` | [flip_isReduced](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip-isreduced.md) | 196 | `result-track:67bd8c7355c1c765fc08b713180ee5672f117fe26232fb45e582aa4317e835c3` |
| 30 | `theorem` | [flip_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip-isspecial.md) | 200 | `result-track:086721bd43e13ba478a5ed2f4c5510a634388d6064361ac169255def97dcef0b` |
| 31 | `theorem` | [flip_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/flip-v.md) | 204 | `result-track:7b85b1bba00f15481e770b653bb568ccca9be4472736febbc665fd43180d8a9b` |
| 32 | `theorem` | [rq_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/rq-eq.md) | 213 | `result-track:16877a3871a487aa10cf8ca070098137f6397b65a1ef952730dab243c3c27748` |
| 33 | `theorem` | [qp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/qp-eq.md) | 216 | `result-track:3c2c2587d23d2196e63e2e60db641dbdf7da2c43d29d3ea681d1af5606a65259` |
| 34 | `def` | [start](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/start.md) | 228 | `declaration-track:3ca231a7de27c2a097867c47f172541ac3a9da612609afcd4abfa063fe8a6c9d` |
| 35 | `theorem` | [start_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/start-isspecial.md) | 231 | `result-track:aad79859fa26189d14e4a128a31ceae401e876f37ee4912a56dcfce2e0f09b64` |
| 36 | `theorem` | [start_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/start-v.md) | 234 | `result-track:e5b14bdde5ec2c1cc2128b0c56a4b642feb6690fb4dceb70e4c9d721b5c61219` |
| 37 | `def` | [finish](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/finish.md) | 242 | `declaration-track:4ee6dd5651f08ae0159003e7fbd7ac44853137925c3314df10107c015b1cb1ce` |
| 38 | `theorem` | [finish_isReduced](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/finish-isreduced.md) | 245 | `result-track:322d99501d626296b79f067c2a79e5189bb56737e743d726f1c5b11fde18de19` |
| 39 | `theorem` | [finish_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/finish-isspecial.md) | 249 | `result-track:d0f7b918f4169fbac696a4e807a89640fb970226bc6586bf0930dede36f9eec9` |
| 40 | `theorem` | [finish_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/finish-v.md) | 254 | `result-track:71531689d6919ad98035996de0603b912552fd0cbb0f94ea2ca5ea37e6ad9fa6` |
| 41 | `def` | [step](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/step.md) | 268 | `declaration-track:4de5ef184c7c35186c3bd82929851145309185cb0578006a6a3d0f05fe7cf9fc` |
| 42 | `theorem` | [step_wf](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/step-wf.md) | 273 | `result-track:cab5be5a570e1fb7602597b3a5f666ee5b65854eb2991bd2e0e7f075afe80583` |
| 43 | `theorem` | [step_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/step-isspecial.md) | 280 | `result-track:cd00999680d8f3899eaf3df961355a4569fe2a1b450f4c9d261f3693e5e93479` |
| 44 | `theorem` | [step_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/step-v.md) | 286 | `result-track:98afb90a2dd9a4099a0f8318533070a17db6e906a1d8a617656d1a8cb8b34ef4` |
| 45 | `def` | [reduce](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/reduce.md) | 304 | `declaration-track:d38d3c61327a10c6da756beb42fba697835eb469e26d1b534367d7713b6901b2` |
| 46 | `theorem` | [reduce_a](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/reduce-a.md) | 309 | `result-track:5d695125c08ec033f68dd0f8bf8034cd704a1e136c2617f60f886a97331edf04` |
| 47 | `theorem` | [reduce_b](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/reduce-b.md) | 313 | `result-track:ae5ef1f986bafee703ac8eca18081795cf9ac051f22fe798165d9a040d48d704` |
| 48 | `theorem` | [reduce_isReduced](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/reduce-isreduced-source-edition-2.md) | 317 | `result-track:de28a668cd7d9840efb2994de6a3b2a5e02a9ef12babe42e2d481f41ab87e124` |
| 49 | `theorem` | [reduce_isReduced'](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/reduce-isreduced.md) | 328 | `result-track:624ecedf3bdfc6d4998aeced3c5f786dd4addc05c24461b4db5b8ed6e2a2b03b` |
| 50 | `theorem` | [reduce_isSpecial](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/reduce-isspecial-source-edition-2.md) | 331 | `result-track:a121313503391fa4a5397fd997387a010111c44228ec3f7aa80c647229ecedbd` |
| 51 | `theorem` | [reduce_isSpecial'](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/reduce-isspecial.md) | 342 | `result-track:0350d05b743069ee2b74bf310eaed2f9439bbb3aa2e75fab72f6bb39c12e7e70` |
| 52 | `theorem` | [reduce_v](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/reduce-v.md) | 345 | `result-track:f89f2a79680b9e4dccd2245e54f20becbb5b3f3c18b25416a471b518604d933e` |
| 53 | `def` | [xgcd](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/xgcd.md) | 358 | `declaration-track:21cff8f54c3c3f906e493046b2d0014f646b0bf810c00adfe8c9936035a08df2` |
| 54 | `def` | [gcdD](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcdd.md) | 362 | `declaration-track:2a657d757844f7062d996785c5a92c2664804057b66e105b8addefc30e341a7e` |
| 55 | `def` | [gcdW](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcdw.md) | 366 | `declaration-track:f8720366d6262cf1894251c7434e621ec80886699d60d46c5db18bfa5c1bda7b` |
| 56 | `def` | [gcdX](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcdx.md) | 370 | `declaration-track:057929295548113254329e81106fd01413596f909b933ce7919853ff66486c17` |
| 57 | `def` | [gcdY](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcdy.md) | 374 | `declaration-track:a556067ec64d75ab23febb97800fe989d54545e663578a4697259fa2ded70d39` |
| 58 | `def` | [gcdZ](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcdz.md) | 378 | `declaration-track:4eb7dc5817f7ed68ab83cdec770af025f7148a2893d406339314cc03847ba3bd` |
| 59 | `def` | [gcdA'](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcda.md) | 382 | `declaration-track:eb752c24d413edea8cb15e9ec711bbf4affc8f481750294658ebc84607896c12` |
| 60 | `def` | [gcdB'](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcdb.md) | 386 | `declaration-track:0e441ec4e314642660395050ad4ee76d44978eab8da413eb736fd26c3af95c53` |
| 61 | `theorem` | [gcdA'_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcda-coe.md) | 389 | `result-track:b91ccb0f6e2a096e033b110c6c89366be345baf1bc204a5e34301247a7543f04` |
| 62 | `theorem` | [gcdB'_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcdb-coe.md) | 393 | `result-track:c4011a36b5890b3a5f6a9bc050d3b93664a431973922142ea1f994cb12dda5c5` |
| 63 | `theorem` | [gcd_props](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcd-props.md) | 397 | `result-track:c92be3e65e2503e8ce84ebb305ff11ef1609ec657c4ec577fc0098e2ec21eaca` |
| 64 | `theorem` | [gcd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcd-eq.md) | 449 | `result-track:06d18a2228cd631101a929e824484a22b0f035988a54a050ba6d302444287d24` |
| 65 | `theorem` | [gcd_det_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcd-det-eq.md) | 461 | `result-track:f9159c3cd8ca60099857522bd1cd552896dd570b1d8a6733a656952cfff94a00` |
| 66 | `theorem` | [gcd_a_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcd-a-eq.md) | 464 | `result-track:293c0a87eac171d135fa7beaf1de77cdc669094aee1b686671ba2d819d742fa5` |
| 67 | `theorem` | [gcd_b_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcd-b-eq.md) | 467 | `result-track:e8dc3b20d26e00e5aedd3b751ad6f32d3743486fef34bea0b065ddec9d82d797` |
| 68 | `theorem` | [gcd_rel_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcd-rel-left.md) | 470 | `result-track:084966581d6d2a4d1ad59f274c2298253a371f523adbd1f5ec6087ce6bf3c20d` |
| 69 | `theorem` | [gcd_rel_right'](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcd-rel-right.md) | 473 | `result-track:0afa46a19efd53990d7a53100a394a893b368880b52b5bae69c5055798357a59` |
| 70 | `theorem` | [gcd_rel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcd-rel-left-source-edition-2.md) | 476 | `result-track:393dd002b3ff37df5179e039c3552f0dfe17f26a12e3965d51403812146f990a` |
| 71 | `theorem` | [gcd_rel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/XgcdNamespaced.lean/declarations/gcd-rel-right-source-edition-2.md) | 479 | `result-track:c9b35ea3fe71ae91ee7a7f68537c9517ee050fdfe0f2e0c622c897ccd9651d7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3373e772c8e5d8060f22e03fedeb3cb1d3bc1178934ef3fc0f478a3b38f27fd0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variante5d92924bdf6842bc5dc687c6d157ee4a6248cfb5ed79520f86bdcf880c6ca1e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Xgcd/Variante5d92924bdf6842bc5dc687c6d157ee4a6248cfb5ed79520f86bdcf880c6ca1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
