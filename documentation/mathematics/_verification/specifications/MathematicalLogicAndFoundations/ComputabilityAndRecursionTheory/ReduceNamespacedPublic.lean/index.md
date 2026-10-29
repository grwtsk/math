# Verification target: Reduce Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad09de3c3e9c1f514220a8d51adeb53d2fbd13de",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant2cf003c782260ee60fa97e7cede735cafb9c7b5d362bdc938e90117aacde82b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad09de3c3e9c1f514220a8d51adeb53d2fbd13de`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant2cf003c782260ee60fa97e7cede735cafb9c7b5d362bdc938e90117aacde82b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant2cf003c782260ee60fa97e7cede735cafb9c7b5d362bdc938e90117aacde82b9.lean.json)

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
| 1 | `def` | [ManyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyonereducible.md) | 49 | `declaration-track:8277ac2a8da6ec3fa6cba73bb61832088aa82028e7922d771019633fa3b42260` |
| 2 | `theorem` | [ManyOneReducible.mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyonereducible-mk.md) | 55 | `result-track:2c01e6c7377df2ffc080c47182198159f211ae9b8cf688346671c1db9c5674d8` |
| 3 | `theorem` | [manyOneReducible_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyonereducible-refl.md) | 60 | `result-track:2b206c06fd372d9011f19c7fa3525214de7b661c3b540642a80aa08dd3d3c661` |
| 4 | `theorem` | [ManyOneReducible.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyonereducible-trans.md) | 64 | `result-track:4a8ac49d24b50e6d64e7cdd2443e50a072cac4695c4957e7e92d4f0508ed763e` |
| 5 | `instance` | [stdRefl_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/stdrefl-manyonereducible.md) | 70 | `declaration-track:5bab804652acee1c7df2e2e844d8b3b06f35d0441fab725740b89a2de1da2f94` |
| 6 | `instance` | [isTrans_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/istrans-manyonereducible.md) | 75 | `declaration-track:6a1ec0d05a375d4b94b72fe3aadf11005acef239373fa8354a3314a508e3414f` |
| 7 | `def` | [OneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneonereducible.md) | 82 | `declaration-track:e0161931b233155d129dd867da7f884be9ca66a2b444e20880b3e961c3da8cc0` |
| 8 | `theorem` | [OneOneReducible.mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneonereducible-mk.md) | 88 | `result-track:a7437857a38052e572c9315629a5e4359252ee7089ce64ca15e5897fc25ad812` |
| 9 | `theorem` | [oneOneReducible_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneonereducible-refl.md) | 93 | `result-track:d8b3be8d0f4def6517d069ae4d057a3cc89ad059e9c011f2eeb3b161c60d7868` |
| 10 | `theorem` | [OneOneReducible.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneonereducible-trans.md) | 97 | `result-track:c359677d30afbdd61512b2e8b4b8e5c3907db232c20797a0eb06739abe4595c5` |
| 11 | `theorem` | [OneOneReducible.to_many_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneonereducible-to-many-one.md) | 103 | `result-track:1071e2d3cd761d67376804cb38854125ce2df13191b0d68faa01dbc775420b5f` |
| 12 | `theorem` | [OneOneReducible.of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneonereducible-of-equiv.md) | 107 | `result-track:1c5c831eff693c91276a07fa3457719a7d71157e09fcc3bb9337ec9d7c0e501d` |
| 13 | `theorem` | [OneOneReducible.of_equiv_symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneonereducible-of-equiv-symm.md) | 111 | `result-track:f5a94a8f253c92991a01c64c56ce9b071af6a696c3b4f79b642ec00ac94dd3e3` |
| 14 | `instance` | [stdRefl_oneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/stdrefl-oneonereducible.md) | 115 | `declaration-track:f6febd13639e9887fcd1c071485a180f61921d28a6045a3c72477152fb721113` |
| 15 | `instance` | [isTrans_oneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/istrans-oneonereducible.md) | 120 | `declaration-track:60851947dd0d0e042def957784fb1aa75213432439e8bb714070b5425b346805` |
| 16 | `theorem` | [computable_of_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/computable-of-manyonereducible.md) | 129 | `result-track:4a9af85637e308d20706c49bd80337fbde5a05964bbfdaf1724d02a4785b7a26` |
| 17 | `theorem` | [computable_of_oneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/computable-of-oneonereducible.md) | 136 | `result-track:2942d4c1d9e5a4d7db8164c36d914a0f559cf08d0ae8479c9a63f2bb84901803` |
| 18 | `def` | [ManyOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv.md) | 143 | `declaration-track:bc6369d02e67202e197c284d5083e81b3be48aa1622074b7592ca187e92460f7` |
| 19 | `def` | [OneOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv.md) | 147 | `declaration-track:c0fdc266d57898b58322933edeff936377b11813008489d5dde0b286eb4ab887` |
| 20 | `theorem` | [manyOneEquiv_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-refl.md) | 151 | `result-track:ec9b3243c99db609c63bedc0340e1f4fa5b09d79ed4ebfd77123839df0c08dbd` |
| 21 | `theorem` | [ManyOneEquiv.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-symm.md) | 155 | `result-track:b134f65bfaf461feab4daebd2695883f7f49e31f372ff97ad32b2828d6f58987` |
| 22 | `theorem` | [ManyOneEquiv.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-trans.md) | 160 | `result-track:1176cf40207a1b155a9fcd93cf927df2c60c978e0b6b7ddb47770696a75542b6` |
| 23 | `theorem` | [equivalence_of_manyOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/equivalence-of-manyoneequiv.md) | 164 | `result-track:2ec764b1291e14e3bd613dd5d6cf3656ca1424904de4939f8dd7da5d64b66ac5` |
| 24 | `theorem` | [oneOneEquiv_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv-refl.md) | 168 | `result-track:fa008334ebd567afa5a76e7deb13e2054e8ca898225215df1299949dcb1842da` |
| 25 | `theorem` | [OneOneEquiv.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv-symm.md) | 172 | `result-track:4806a4728de1d656c013bdf4e5d1bdcda424c8e2c745d9c342e4e52a8ae8784a` |
| 26 | `theorem` | [OneOneEquiv.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv-trans.md) | 177 | `result-track:ee88b3de8983ea5a731d9f594e990f4bd2c756eec65d56d97edf8f37de4fa611` |
| 27 | `theorem` | [equivalence_of_oneOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/equivalence-of-oneoneequiv.md) | 181 | `result-track:feb0600f9b5c093470e0f2f0fd472b031d355a974dbdd6c3adc982b6e01c61a6` |
| 28 | `theorem` | [OneOneEquiv.to_many_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv-to-many-one.md) | 184 | `result-track:b59dc8b347030a5a6cc58d1e09882cf0697b9a18330e2b8c122e665d46b02f27` |
| 29 | `def` | [Equiv.Computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/equiv-computable.md) | 189 | `declaration-track:155de5f382cbe6b6bfc4e842f3155193adac93fec05cb7b99ecb6ffa224a94f6` |
| 30 | `theorem` | [Equiv.Computable.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/equiv-computable-symm.md) | 192 | `result-track:8811a49e5ebafb3b88c4068ccc37ed9d0087335fe6ae10362546c07fbac196ea` |
| 31 | `theorem` | [Equiv.Computable.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/equiv-computable-trans.md) | 196 | `result-track:fd3ec6626d55d01332290dc0cd98f1797003de04fe0f5424b4a70c802b1dd5e8` |
| 32 | `theorem` | [Computable.eqv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/computable-eqv.md) | 200 | `result-track:fcd4f9bfd23e82cdc43ab3544ac348dbf08403976b536ccf064468c11589c463` |
| 33 | `theorem` | [Computable.equiv₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/computable-equiv.md) | 203 | `result-track:d5eae49cc0c1beac5c94709e47f44d1aab88dd5e14ee6a3265798f6c6bf0986e` |
| 34 | `theorem` | [OneOneEquiv.of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv-of-equiv.md) | 207 | `result-track:d7604fd5093235c13674b7754500e3477926ec98e4f47b082cce5889d46c73a1` |
| 35 | `theorem` | [ManyOneEquiv.of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-of-equiv.md) | 211 | `result-track:99e414efe84f3f53ad1f04de5c46cb9ade3da4ffb76e4eb9b35fd67d0c392f77` |
| 36 | `theorem` | [ManyOneEquiv.le_congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-le-congr-left.md) | 215 | `result-track:d2397d19d9c541fea629b3a82c14f05a92fe25b4c622801cad2a576ae09dc754` |
| 37 | `theorem` | [ManyOneEquiv.le_congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-le-congr-right.md) | 219 | `result-track:cbafdddbf956a86833a714d168b4ebf6629d7c81b0b33f036b3a7135a9437aa0` |
| 38 | `theorem` | [OneOneEquiv.le_congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv-le-congr-left.md) | 223 | `result-track:94cfd89340c6b994fe8a77bab20f29c9115b115308e2b8b6d6be59243889163e` |
| 39 | `theorem` | [OneOneEquiv.le_congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv-le-congr-right.md) | 227 | `result-track:63f6301dba0c78a23cc3ec7ee04a335a2eed2559949692369998053e57fafff2` |
| 40 | `theorem` | [ManyOneEquiv.congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-congr-left.md) | 231 | `result-track:2cae0ab0d37cd988dbd7697ff6effcb09c627b5e1321e58119b3980706c4f2ce` |
| 41 | `theorem` | [ManyOneEquiv.congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-congr-right.md) | 236 | `result-track:df96d3095fcb4247f887a5e4289b6dc2c062c14f5c66b7d1c8ffa4fb690ab954` |
| 42 | `theorem` | [OneOneEquiv.congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv-congr-left.md) | 241 | `result-track:4fd9acf90d41994ab45801a4c83dddeb184ee803d71019460a10c202deaa67b8` |
| 43 | `theorem` | [OneOneEquiv.congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneoneequiv-congr-right.md) | 246 | `result-track:4ac8947742f6ff44611b853c75f99643c76633bce386aaf789ee2ba0b3ed596d` |
| 44 | `theorem` | [ULower.down_computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/ulower-down-computable.md) | 252 | `result-track:6ccfe77bc30c2cdd5436fbcbe56b507fb483a6990c211546ababf5ae7b0bbb73` |
| 45 | `theorem` | [manyOneEquiv_up](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-up.md) | 255 | `result-track:e9ed82324d578ed4030c9dedcff6b67fa0eafa8fcb01eba38279028e30faf0d7` |
| 46 | `theorem` | [OneOneReducible.disjoin_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneonereducible-disjoin-left.md) | 262 | `result-track:c15bb525bcfa853595d21696edf7f6567b239d9a651bca637d06cb2ee4c16627` |
| 47 | `theorem` | [OneOneReducible.disjoin_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/oneonereducible-disjoin-right.md) | 266 | `result-track:7a0bc44447b3893b86f7199c11015547025e0ccc262776be8531b08e6c5b240d` |
| 48 | `theorem` | [disjoin_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/disjoin-manyonereducible.md) | 270 | `result-track:deb98fabb854d5e44dadc7ce960bfb68db7d075ca21020661fe488fa6eaa40c6` |
| 49 | `theorem` | [disjoin_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/disjoin-le.md) | 277 | `result-track:164d66836ec88ecbf6c775466bb5163e6de069ee745e9b634b5e003ce922ccc5` |
| 50 | `def` | [toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/tonat.md) | 288 | `declaration-track:b2a14580d10573d76f50ec160c671dd6df4d7f3be2320e1a314ac08b7b6eb427` |
| 51 | `theorem` | [toNat_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/tonat-manyonereducible.md) | 292 | `result-track:609772be0dfca8f2db2ba17047ed7009652ccaa63dffa0209da70cd68e8f4881` |
| 52 | `theorem` | [manyOneReducible_toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyonereducible-tonat.md) | 297 | `result-track:d79dfaa4bb10a0723f2db12b79fdee8e8b235c3d26b5470f7015d50c0e90a1ec` |
| 53 | `theorem` | [manyOneReducible_toNat_toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyonereducible-tonat-tonat.md) | 301 | `result-track:1ddc68792804a8189196967cb87dee2391bbff4374d002f44f4652126358a27d` |
| 54 | `theorem` | [toNat_manyOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/tonat-manyoneequiv.md) | 306 | `result-track:d3449cc5162dab2bdca181c089b7d724c6ba3e4560b16bb9d7589a5641a50c63` |
| 55 | `theorem` | [manyOneEquiv_toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyoneequiv-tonat.md) | 309 | `result-track:f90a47883be877c50ed3838e89ab2e74e7e51173d1d4cf3037e3d5eba71c6912` |
| 56 | `def` | [ManyOneDegree](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/manyonedegree.md) | 313 | `declaration-track:b51df19c5fdf13aa5bdff712eb856d4dc0727e60a0e0272be55bcaa9eb87702e` |
| 57 | `def` | [of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/of.md) | 319 | `declaration-track:b9780b5cfd99184fe1f53f5c447f92e0249fbd2e23817361ba15ce6f247e78f7` |
| 58 | `theorem` | [ind_on](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/ind-on.md) | 323 | `result-track:ccc22c80a8472bd7e0b5ca77d1e48c6356db528a98466e2197aed1c7bf4d3563` |
| 59 | `abbrev` | [liftOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/lifton.md) | 328 | `declaration-track:47d287c59c627d469aeaccbd36fe53165d3739a160ce347190ced76b3f0c7f9e` |
| 60 | `theorem` | [liftOn_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/lifton-eq.md) | 333 | `result-track:1954d2d09c2158ef2407fb007e578c3607c09d0d7d8a806678519d955c328961` |
| 61 | `def` | [liftOn₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/lifton-source-edition-2.md) | 339 | `declaration-track:d12eb2966e3ea521bf50c3ec68cbd14aa192f2cccc186fef6202132684e5c54a` |
| 62 | `theorem` | [liftOn₂_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/lifton-eq-source-edition-2.md) | 350 | `result-track:e03182b80ffad4e269d9ec310352eca6e8cef29b24c493711c772bb67b3f6006` |
| 63 | `theorem` | [of_eq_of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/of-eq-of.md) | 357 | `result-track:3e26ba957db5cd3e280311b923cf0c1f9c76859f341135f588bda9ae13410f73` |
| 64 | `instance` | [instInhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/instinhabited.md) | 361 | `declaration-track:82b5ef438ef98bfa20f0c61272818df30d26023c2a4cc2a43d73fe15602e0dcb` |
| 65 | `instance` | [instLE](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/instle.md) | 367 | `declaration-track:9a7da1b4c4c402d354dd2a7e64d966a2a4cc3de28b86ff8b9ea0377a54d093e8` |
| 66 | `theorem` | [of_le_of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/of-le-of.md) | 373 | `result-track:576e1da32a3fe738bb2493e720a562dc97fc876ac1ec212a0b6bae96fed6c5a5` |
| 67 | `theorem` | [le_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/le-refl.md) | 378 | `result-track:88ece63f836740cf9c21090e4dfe541f694b7430a480204f17417eff12c9e17c` |
| 68 | `theorem` | [le_antisymm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/le-antisymm.md) | 383 | `result-track:e92947ceed095333ce0c298f580507863a48452bf8f73e9afe3a83208fa4f683` |
| 69 | `theorem` | [le_trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/le-trans.md) | 390 | `result-track:84b186cedd44d0641a0e4e3692921ee351cd9da9fe1e8fa288953bb55a3aaaaf` |
| 70 | `instance` | [instPartialOrder](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/instpartialorder.md) | 398 | `declaration-track:d649d6a72e1dff0b7db2c7ce4fdfe24ec24fb6f211416f9155a772d0e490a99d` |
| 71 | `instance` | [instAdd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/instadd.md) | 404 | `declaration-track:9ff12c8d971e80ce7eb9fa1bf7c8c9676d3e9d6e66e7fb20654bfde74e2fe9a9` |
| 72 | `theorem` | [add_of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/add-of.md) | 417 | `result-track:bc033ab4d5f8cc3293ceffe29723942d437cd22122c43507b0893a7166c2bfaa` |
| 73 | `theorem` | [add_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/add-le.md) | 428 | `result-track:ef4780631f16278b443c7e567d7a20d37461a532e40fa174fa0c90b8a8342eb6` |
| 74 | `theorem` | [le_add_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/le-add-left.md) | 435 | `result-track:7ef8900a2d9876dda0a0a9cbadf66e21213c0684f6b3a286123043194874e8d4` |
| 75 | `theorem` | [le_add_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/le-add-right.md) | 439 | `result-track:0e4c579208163e759e3c28b41b9eec5f2709e2dc5825d1a6fa44d0195fbe474e` |
| 76 | `instance` | [instSemilatticeSup](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespacedPublic.lean/declarations/instsemilatticesup.md) | 442 | `declaration-track:a4162b4e40beaf9e741fcc824293a6fa1fcfc0617dd15ef976b885dad5a36113` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=969289ae0b12cd046dc7c6877ee4f0ba65f8b44687997d36293b037a9732715f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant2cf003c782260ee60fa97e7cede735cafb9c7b5d362bdc938e90117aacde82b9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/Reduce/Variant2cf003c782260ee60fa97e7cede735cafb9c7b5d362bdc938e90117aacde82b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
