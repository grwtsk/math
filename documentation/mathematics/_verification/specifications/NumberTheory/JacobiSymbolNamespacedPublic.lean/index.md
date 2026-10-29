# Verification target: Jacobi Symbol Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b55fee28424cf6eec4d2ef2414683aea2ecfa3c9",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b55fee28424cf6eec4d2ef2414683aea2ecfa3c9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean.json)

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
| 1 | `def` | [jacobiSym](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/jacobisym.md) | 94 | `declaration-track:ce0af60160a1b57d41dc149050f249679a4670c9e16c32db5d774217a831a622` |
| 2 | `theorem` | [zero_right](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/zero-right.md) | 113 | `result-track:66831f00e364c1118f992a1616c89c792fe56d86dd7cfdfa756a5a353c174938` |
| 3 | `theorem` | [one_right](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/one-right.md) | 118 | `result-track:30443221a74a139d0cf83f17be0bde8d0962ed7ce1af45686348d71bc3f8bf3a` |
| 4 | `theorem` | [legendreSym.to_jacobiSym](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/legendresym-to-jacobisym.md) | 123 | `result-track:dac0ece0f011974b81e9e0e1ea9af646f4e3354fb10ab47e9d6bdfb288121af0` |
| 5 | `theorem` | [mul_right'](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/mul-right-source-edition-3.md) | 129 | `result-track:9aecf63d1f9566e2007c646d1b2a3e7bc6d2adf5415d325a14348053c99b9d09` |
| 6 | `theorem` | [mul_right](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/mul-right-source-edition-2.md) | 139 | `result-track:5ece11de1e4cb87796c5278a71ebc8f8a92ffe70663e7e624b7713dc66c11e97` |
| 7 | `theorem` | [trichotomy](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/trichotomy.md) | 144 | `result-track:e2c9c73328c52d5e970f6bdb5be069fb236e3e3f9796565eb619628fa1a46238` |
| 8 | `theorem` | [one_left](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/one-left.md) | 156 | `result-track:19a311c0fa674ead0b5a00899ba01893c36f6aa8a9f2d59923ea9b300c51233f` |
| 9 | `theorem` | [mul_left](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/mul-left-source-edition-2.md) | 162 | `result-track:bcc56819612da301049dc925aa743680d20e89dc15606de300032333b4c14d2f` |
| 10 | `theorem` | [eq_zero_iff_not_coprime](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/eq-zero-iff-not-coprime.md) | 169 | `result-track:ce068f37db6043919982d3569665c9912e1caec2cf2b6424427bb616b71a90f4` |
| 11 | `theorem` | [ne_zero](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/ne-zero.md) | 178 | `result-track:53f4c052f2a19dd9b2cd6edd7749ec74d97f6f61f56af3735d8ddf72fec322c6` |
| 12 | `theorem` | [eq_zero_iff](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/eq-zero-iff.md) | 185 | `result-track:9b6188f3a694b9ec29ac63a290315b8ad9531fd26009534781934483c88f40ac` |
| 13 | `theorem` | [zero_left](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/zero-left.md) | 193 | `result-track:7ef0b00a65f9c1bc7eaee09052873c0f4459d0ab6c0a666657e13efa6fda1e25` |
| 14 | `theorem` | [eq_one_or_neg_one](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/eq-one-or-neg-one.md) | 198 | `result-track:8eb3bd8770ea91eb03bd5644c1ac21697d6ea5ba8bd11fac6e06783cd79e4386` |
| 15 | `theorem` | [pow_left](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/pow-left.md) | 202 | `result-track:e6d4cbedb0d441dc363b12a6ba56773b8538a36f1aa004c2368c01b7955ddfb8` |
| 16 | `theorem` | [pow_right](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/pow-right.md) | 207 | `result-track:ad9124138a241b6e909953851acbca4ddba04711f1ba760c009cd03c2e87c2eb` |
| 17 | `theorem` | [sq_one](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/sq-one-source-edition-2.md) | 216 | `result-track:f5ab9157941b0f1637a0e84cd1b641a7481ff4f4bd2620eba2c0d00949e041f6` |
| 18 | `theorem` | [sq_one'](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/sq-one.md) | 220 | `result-track:91d966be3f0988a73be84dcc12bb0916829cecedaa12dacaf8a0de8443764bfd` |
| 19 | `theorem` | [mod_left](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/mod-left-source-edition-2.md) | 223 | `result-track:f3c61a2acbe6c1a0bd271415dab4806b839606c7c1bf79134d2963c8fcece58d` |
| 20 | `theorem` | [mod_left'](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/mod-left.md) | 233 | `result-track:5317bcaac1c04de24fd6d9ce9b3ac57842162aba9dabf7e7bc0b3c3d6822c4a1` |
| 21 | `theorem` | [prime_dvd_of_eq_neg_one](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/prime-dvd-of-eq-neg-one.md) | 238 | `result-track:971fc0dbe25fb64e587c5b3df91444e2964229369db0112405d177707d614a08` |
| 22 | `theorem` | [list_prod_left](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/list-prod-left.md) | 244 | `result-track:506e02863bf204602406c190c13b236c220c4e26b27c2bee7e54ef2811e56354` |
| 23 | `theorem` | [list_prod_right](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/list-prod-right.md) | 250 | `result-track:656ebe6919b3b6f443e44d65f021e5f2cd3dc81476d0f00fbbf8e75a3b539751` |
| 24 | `theorem` | [eq_neg_one_at_prime_divisor_of_eq_neg_one](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/eq-neg-one-at-prime-divisor-of-eq-neg-one.md) | 264 | `result-track:a30ed8e5ff5b39209f4177ceb6da4abb4d1ab70be2599380e2874ac3f1cc25b3` |
| 25 | `theorem` | [nonsquare_of_jacobiSym_eq_neg_one](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/nonsquare-of-jacobisym-eq-neg-one.md) | 282 | `result-track:7d2906e6eda2ca3816836c9a4e56e5ea4876a9504e256ff1b38d8ab0f8f68701` |
| 26 | `theorem` | [nonsquare_iff_jacobiSym_eq_neg_one](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/nonsquare-iff-jacobisym-eq-neg-one.md) | 290 | `result-track:ef02e56a9425afaaae2913e8e1f1750d23462ee064de8b4e1cb4cae08057d09a` |
| 27 | `theorem` | [isSquare_of_jacobiSym_eq_one](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/issquare-of-jacobisym-eq-one.md) | 296 | `result-track:dff61d3acff95ad82f4756456d920ee49d3a6d10d24e0d5d9d4e515aa5003d87` |
| 28 | `theorem` | [value_at](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/value-at.md) | 311 | `result-track:5b62f2248826b9a699f49bc0c25519b363b73a64cd99ea2e7e7a3ad323be5ebd` |
| 29 | `theorem` | [at_neg_one](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/at-neg-one.md) | 321 | `result-track:f13ac535f5ad062f99a597b65aa87e9e765f3667f0cbe8bdbdb13f521f05566e` |
| 30 | `theorem` | [neg](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/neg.md) | 327 | `result-track:befc34031c822fdc86526e36f6c0fcf7ba9211803eb79c792f6e98f7c2091454` |
| 31 | `theorem` | [at_two](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/at-two.md) | 331 | `result-track:0e7e0ba93b80f45a94dfc59de5bcadd79d67b0a0cd2100810f254d0e2c1009dc` |
| 32 | `theorem` | [at_neg_two](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/at-neg-two.md) | 335 | `result-track:5b1bf4a81ea585fba393eea645be0e87bb0daac64e8489a992c19592e69c9cbf` |
| 33 | `theorem` | [div_four_left](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/div-four-left.md) | 338 | `result-track:24f4e79f60f8085b0dd9703c7bd5a86d54fa4831badee5987d7471a3302b4956` |
| 34 | `theorem` | [at_four](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/at-four.md) | 348 | `result-track:0cb5895b98136c8e8aaaea9d1dd27a2c5a4bb94dcadf9765563b5feed0a765e9` |
| 35 | `theorem` | [even_odd](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/even-odd.md) | 353 | `result-track:c15596d9b9bb116a689d3cce27c2c8999a6820e0ea3533ebdc7d345f4a93c9b7` |
| 36 | `def` | [qrSign](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/qrsign.md) | 369 | `declaration-track:90fd776b40d9f8e7fa5d11e84a8c2578df56de50d7b5a725f901191cd99f7f47` |
| 37 | `theorem` | [neg_one_pow](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/neg-one-pow.md) | 375 | `result-track:10ae84da2f65d6af0b63df7fbb6b90d3ed19b50b15bd2e974a56b1ca9a621367` |
| 38 | `theorem` | [sq_eq_one](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/sq-eq-one.md) | 383 | `result-track:5423bf2eb6e8f01d2e4c7559481fbed9bb6726cad69f940961cbabf1ec0b6970` |
| 39 | `theorem` | [mul_left](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/mul-left.md) | 387 | `result-track:160e201eaace950b98d99643ab69c09ab9bd4b2d6302f85f1890b2d730bdeca6` |
| 40 | `theorem` | [mul_right](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/mul-right.md) | 391 | `result-track:24f505cb1d1128e03f1b99dfa8b1e6f103d1593c63eadeb6a40d83a00d361189` |
| 41 | `theorem` | [symm](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/symm.md) | 396 | `result-track:69a90acf7fa369cbb903873a93bf212bddd459c266bbaf6833ba98548e9b6e2c` |
| 42 | `theorem` | [eq_iff_eq](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/eq-iff-eq.md) | 400 | `result-track:c410efae361099d02dc1686279d9717636bab4a6af296f324849238b731c5fa5` |
| 43 | `theorem` | [quadratic_reciprocity'](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/quadratic-reciprocity.md) | 414 | `result-track:934623990954b4a13522c6d8fa703763e391e8971e00a13b644b3757ab241e8c` |
| 44 | `theorem` | [quadratic_reciprocity](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/quadratic-reciprocity-source-edition-2.md) | 433 | `result-track:b9d26f716f2668a983dfd03c6543916aba21e1a34bb95446e081f446dc15182a` |
| 45 | `theorem` | [quadratic_reciprocity_one_mod_four](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/quadratic-reciprocity-one-mod-four.md) | 439 | `result-track:5d06d8e20ad331b5c2da2ac43b5882fd4a58b23fd5a70521c7ace170be417005` |
| 46 | `theorem` | [quadratic_reciprocity_one_mod_four'](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/quadratic-reciprocity-one-mod-four-source-edition-2.md) | 446 | `result-track:bf6e34836eb2c6ab2c2ec1abb436c49301d3be5104a20557a0e2fa8ceedf38fd` |
| 47 | `theorem` | [quadratic_reciprocity_three_mod_four](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/quadratic-reciprocity-three-mod-four.md) | 452 | `result-track:fcaaf80b149463a160e5b9db6b5cc673e3004670319f0f47d5217f31d722fa72` |
| 48 | `theorem` | [quadratic_reciprocity_if](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/quadratic-reciprocity-if.md) | 458 | `result-track:b5ca5a78cd3e042ed5e73fe865d3b9187bc3f8f37d3fd14996e322e701901dab` |
| 49 | `theorem` | [mod_right'](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/mod-right-source-edition-2.md) | 467 | `result-track:254e1c6abd23a0dc13c913ea8d4ab7f270eca0eef75a3cc0b49f7f7b5215c3b6` |
| 50 | `theorem` | [mod_right](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/mod-right.md) | 489 | `result-track:2222dc0d232f27a353f4e117323a7fc212de2f4d2d6f2a5eca4f5ec8b8b448d4` |
| 51 | `def` | [fastJacobiSymAux](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/fastjacobisymaux.md) | 518 | `declaration-track:0a1e63084a8348c5ddea62c45cbee8ed655daa5fc10c055295669d0448a34401` |
| 52 | `theorem` | [fastJacobiSymAux.eq_jacobiSym](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/fastjacobisymaux-eq-jacobisym.md) | 537 | `result-track:ebcb14c4f312b75ca9b09b1131e18b5cef11efacf1fda1e16d4595491820a7e1` |
| 53 | `def` | [fastJacobiSym](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/fastjacobisym.md) | 562 | `declaration-track:ba53aafd16a99938d3eb932497cd80377906ef1f17b24d538b6cbca67d3c2375` |
| 54 | `theorem` | [fastJacobiSym.eq](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/fastjacobisym-eq.md) | 579 | `result-track:74b155dfbee88f7e0c7c9b625e3c8687ab1c21455830d69595e0509abdfe2841` |
| 55 | `def` | [fastLegendreSym](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/fastlegendresym.md) | 604 | `declaration-track:0f1d7875f3a6b503366d835b38e1fcf4b195681ddfcff8bde971bc40aec93c0b` |
| 56 | `theorem` | [fastLegendreSym.eq](../../../../NumberTheory/JacobiSymbolNamespacedPublic.lean/declarations/fastlegendresym-eq.md) | 607 | `result-track:0e107013be82ea8569e1f69f27620436e6dcbcbed989dd9ebbf49d001322cd3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0348e584dcf27ba16be3ef80f81e4eebfa4ade3339a28808e1f32cb01279d865 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant01e7c67a59cc467c3e6c7978ee3619fc4e87707aabc6381979d13c0b09e8de0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
