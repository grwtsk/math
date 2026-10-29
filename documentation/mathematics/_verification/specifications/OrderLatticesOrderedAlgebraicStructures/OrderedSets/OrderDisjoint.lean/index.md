# Verification target: Order Disjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab8ef9a9853f52cbcf34cd2be43cef4aacbd3599",
  "lexical_observation_count": 140,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variantfa7ce270a533e47e390d34fb8ef066e492cc014380a97a1350ba8b644e4b6058.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab8ef9a9853f52cbcf34cd2be43cef4aacbd3599`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variantfa7ce270a533e47e390d34fb8ef066e492cc014380a97a1350ba8b644e4b6058.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variantfa7ce270a533e47e390d34fb8ef066e492cc014380a97a1350ba8b644e4b6058.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BoundedOrder` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint.md) | 41 | `declaration-track:fe2efe6ddb5d2a73a0705efe7e968662478a4c815bab07950650acb09e8d5899` |
| 2 | `theorem` | [disjoint_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-comm.md) | 45 | `result-track:27064b43f8e993ebf59c7308e991aa6db7fb6095dae3e1f55de1a2fd7fe41424` |
| 3 | `theorem` | [Disjoint.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-symm.md) | 50 | `result-track:cf25c4acd9f91a7c42ee022c5f13a568a9d22535361c838a61587a4bfc8dace2` |
| 4 | `theorem` | [symmetric_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/symmetric-disjoint.md) | 54 | `result-track:172d6c43827b2e7d203a9d0c0fef4b67f00b5f540821efb327f6afd9e7c07c0f` |
| 5 | `theorem` | [disjoint_bot_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-bot-left.md) | 59 | `result-track:3a28f8301f324b23cf98207f6a262de5544c8bbcdb9a645b8a3700f61b5afb14` |
| 6 | `theorem` | [disjoint_bot_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-bot-right.md) | 63 | `result-track:2040112539247760acd0a10c3be73e22fcb6a7cfaabcb05d2830c0708fbbb525` |
| 7 | `theorem` | [Disjoint.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-mono.md) | 66 | `result-track:e45108ca459488f198958f15dd92e9a933b50dc1761fa42ebcec3e52c2fc0d6d` |
| 8 | `theorem` | [Disjoint.mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-mono-left.md) | 70 | `result-track:4570689fafe6717a4c75f020a39ce807743bd7dc09f430fb2503620b20e73a06` |
| 9 | `theorem` | [Disjoint.mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-mono-right.md) | 74 | `result-track:698d6cb90c05a5e897ec1a518505a7e782a415be168511139bf7f27ce03223b1` |
| 10 | `theorem` | [disjoint_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-self.md) | 79 | `result-track:e5aed6a5c3d2a60fcae1d1894248cb6b89f4f59dcfc2e5e4f53760fcde00fff7` |
| 11 | `theorem` | [Disjoint.ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-ne.md) | 88 | `result-track:74e14ac6076d4bcdddc065f53465954f4c0a596118a97909a4271358599d42b5` |
| 12 | `theorem` | [Disjoint.eq_bot_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-eq-bot-of-le.md) | 92 | `result-track:f3efa4f98e09159f80ab600720abd70cb2b8794e250a4a2b2fa3d8a2f92cea0a` |
| 13 | `theorem` | [Disjoint.eq_bot_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-eq-bot-of-ge.md) | 96 | `result-track:68d23f6ad3c32afd173a2c19cd6d700ae30e38df88b10b02ee7074c4d0492c52` |
| 14 | `theorem` | [disjoint_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-top.md) | 107 | `result-track:620f405b2e290cb44f23fe1aff0b46604e6b3a9ee5966eab097b22478c88b4d2` |
| 15 | `theorem` | [top_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/top-disjoint.md) | 112 | `result-track:d6d2e2373f040a95125a0aff31aa5384e12c7b5e8ac5897c2f4ee2ff2a446f5e` |
| 16 | `theorem` | [disjoint_iff_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-iff-inf-le.md) | 122 | `result-track:0a50d7109e2c914289d801b9f2fcade90077444a559a1cd92ffbc16ea356173e` |
| 17 | `theorem` | [disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-iff.md) | 126 | `result-track:7eb8015b61113b732e9e058a8d20b311d9f8b7c3e31f9566e8125df7eebdab92` |
| 18 | `theorem` | [Disjoint.le_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-le-bot.md) | 130 | `result-track:35c2ac52fbc717a585a713586393ece589197bcf5575a6fe3432cdfdd03e2527` |
| 19 | `theorem` | [Disjoint.eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-eq-bot.md) | 134 | `result-track:7b91b4e3cb9b3a7825676f6bf39b6415a5991767d8a0212aeada6f8579c5b627` |
| 20 | `theorem` | [disjoint_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-assoc.md) | 138 | `result-track:dae742fa0b827a2fb3d8a2d4f9db49209cdaf8f4e85269e84ba487013e247a34` |
| 21 | `theorem` | [disjoint_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-left-comm.md) | 142 | `result-track:8ed86c278f5fb17ef7fb675bbf20ade06d82e583a5caed0a0c9a160ba6603091` |
| 22 | `theorem` | [disjoint_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-right-comm.md) | 146 | `result-track:fcd34f48d6647e52c57e44489c0fc024d58a03c0f4154f7a512a59818540fbf7` |
| 23 | `theorem` | [Disjoint.inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-inf-left-source-edition-2.md) | 152 | `result-track:a8349ec9630c03387a6b4a39ea7a835b860457f8d1cc81fcfbb64e72eb8d705f` |
| 24 | `theorem` | [Disjoint.inf_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-inf-left.md) | 156 | `result-track:63c70d451584e010102923b648c784bba2349b73e1083044fd767d10b425f22e` |
| 25 | `theorem` | [Disjoint.inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-inf-right.md) | 160 | `result-track:4bd8ed6e4f92aa50f48feb98b8355e10110b8c8058981b1a56b003e42a1b76c8` |
| 26 | `theorem` | [Disjoint.inf_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-inf-right-source-edition-2.md) | 164 | `result-track:7ba4941263192e0319cd245e48554185e86c63c1a915f604277728ae6275524e` |
| 27 | `theorem` | [Disjoint.of_disjoint_inf_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-of-disjoint-inf-of-le-source-edition-2.md) | 170 | `result-track:44a375cd7deefd9b134a276dea30713304cb46e789e1b9685891667e3212d6aa` |
| 28 | `theorem` | [Disjoint.of_disjoint_inf_of_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-of-disjoint-inf-of-le.md) | 174 | `result-track:15ecb771e6b3ba5596634de060384ad347853d7c2a667d9c060a2ff882626bc0` |
| 29 | `theorem` | [disjoint_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-sup-left-source-edition-2.md) | 185 | `result-track:eb92bdd1f276bd4cb96ef86cf091c9a174d0ead7bef02a39db69efaf2c5c3c38` |
| 30 | `theorem` | [disjoint_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-sup-right.md) | 190 | `result-track:06a151b445b78c3247994d338045188f7f6e0770fd68b4fa1d93a5c2df4776cf` |
| 31 | `theorem` | [Disjoint.sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-sup-left.md) | 194 | `result-track:6a6295136838c877b7f941cc789e1b9f8352a44224bf8160bd381aff32c98ae6` |
| 32 | `theorem` | [Disjoint.sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-sup-right-source-edition-2.md) | 198 | `result-track:7fefadc136795b7ddf544040ee50e3ef4c4fba09947448a886e07df2eb383434` |
| 33 | `theorem` | [Disjoint.left_le_of_le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-left-le-of-le-sup-right.md) | 202 | `result-track:4f49d99f990271cfaaa08ae6c8091bb8c0274d6dadb94d8f95baecf302561362` |
| 34 | `theorem` | [Disjoint.left_le_of_le_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-left-le-of-le-sup-left.md) | 206 | `result-track:fc0e51207f410f6fea9166bc600b5e8775abd900595d35799491cba5d73e3ec7` |
| 35 | `def` | [Codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint.md) | 225 | `declaration-track:2f66335422429f67138765348c1e802fc217f81c0dd43db26e19e4cc11c2cb76` |
| 36 | `theorem` | [Codisjoint_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-comm.md) | 229 | `result-track:cf80db330485fd507a1e111385ab9aac412765f91827a811230f555a684b7f9f` |
| 37 | `theorem` | [Codisjoint.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-symm.md) | 234 | `result-track:6b252643a6001fd25ba24811c08e4041aad095379ebab3e14f1b590b4767fcc8` |
| 38 | `theorem` | [symmetric_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/symmetric-codisjoint.md) | 238 | `result-track:db71f4dbc5d49a217b4571afdf8310367bc271c1a08cb3e9276f65035c56c7ae` |
| 39 | `theorem` | [codisjoint_top_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-top-left.md) | 243 | `result-track:5a483004d75e7f748241cabb02da103f7ac35e7c567ea3ccdca59843e3da3883` |
| 40 | `theorem` | [codisjoint_top_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-top-right.md) | 247 | `result-track:81008c712f274f0285b1193cdcd7e9046760d47b38ca325103e82ca6b15a2c6f` |
| 41 | `theorem` | [Codisjoint.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-mono.md) | 250 | `result-track:732afe7fca0e445c9c58bc958b6395c45434ba96503c3eb670a8fbb9a3636172` |
| 42 | `theorem` | [Codisjoint.mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-mono-left.md) | 254 | `result-track:fe4b41ff7ff62abb958aa97461b8564e74427661ea56dad69beeb918ab6f0717` |
| 43 | `theorem` | [Codisjoint.mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-mono-right.md) | 258 | `result-track:79efe6dda291700c4c2879c0b91f02c33421c98cb63575e4d8c45ba2d0e33aaf` |
| 44 | `theorem` | [codisjoint_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-self.md) | 263 | `result-track:f5eae907c780e665a88fc85602ce6f873445de1847e76049a017e166d154d361` |
| 45 | `theorem` | [Codisjoint.ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-ne.md) | 272 | `result-track:bedbd0ffb00ce9494f8e4b911741313dcc37d3d24881e5c2c4952a573de19767` |
| 46 | `theorem` | [Codisjoint.eq_top_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-eq-top-of-le.md) | 276 | `result-track:7e9269e2f6cd48679b41cb5ec32041bf7053c885e649ed198ee365003f52f02c` |
| 47 | `theorem` | [Codisjoint.eq_top_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-eq-top-of-ge.md) | 280 | `result-track:9c4c9a33ff0598c45a603d2f20a37da34d4df85b91a03b10385a3b2d4a327641` |
| 48 | `theorem` | [codisjoint_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-bot.md) | 291 | `result-track:cca4ac03edb1b84b31a530326615a7775c0ca88e16e72e8ab256e70e96d407fb` |
| 49 | `theorem` | [bot_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/bot-codisjoint.md) | 296 | `result-track:82a3a3d1dc6ed030fe22e052ca07126498f3b436f5213b884dcffee1007f6c29` |
| 50 | `theorem` | [codisjoint_iff_le_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-iff-le-sup.md) | 306 | `result-track:bba4445647d02a88519d9a7897192f9223b9599540c373c8501acd79dcac696d` |
| 51 | `theorem` | [codisjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-iff-source-edition-2.md) | 310 | `result-track:ac37225b5727a16ce71bebcc62ed1dfe35b65606da1730aaf80d9150fb6bc1c7` |
| 52 | `theorem` | [Codisjoint.top_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-top-le.md) | 314 | `result-track:7ac14cd0b045328417a523fa2df8e549320daa1ef701a38ef39171577bbca45a` |
| 53 | `theorem` | [Codisjoint.eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-eq-top.md) | 318 | `result-track:a10f262b309f3ece4f48de5227c524273ddda8373cae1ea0103846c0bf6f0954` |
| 54 | `theorem` | [codisjoint_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-assoc.md) | 322 | `result-track:17b21552958a75e4966539589cf9f62f7ccb0c20ff32cbf2250a81e451ae5cf8` |
| 55 | `theorem` | [codisjoint_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-left-comm.md) | 326 | `result-track:037ce90a8c8e097fcb2bd1b6866a6bae85a6867b5e37c729dca0db225b7d693d` |
| 56 | `theorem` | [codisjoint_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-right-comm.md) | 330 | `result-track:bf6b5aa0eccbdd2cbf6d7b3ac29660d4e6f6ac434d8f1b24faa5537ad7a43fee` |
| 57 | `theorem` | [Codisjoint.sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-sup-left-source-edition-2.md) | 336 | `result-track:e9c600c964e6e8e148798d9e0100d19f8336edeb0892d890ee4879466ceb02be` |
| 58 | `theorem` | [Codisjoint.sup_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-sup-left.md) | 340 | `result-track:5d26b73f15ae0803998021015de9e74aeb7890607cf510ab30fcb070aed7bc15` |
| 59 | `theorem` | [Codisjoint.sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-sup-right.md) | 344 | `result-track:64a9e5ca15c9662b4727943cc84e762f0e6c60269e1cdc7e2ad2f8315f8a1c5c` |
| 60 | `theorem` | [Codisjoint.sup_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-sup-right-source-edition-2.md) | 348 | `result-track:7fb51b442a1963e3b7e26afc19f8274b51e016f7bc315b37d0b49f0a9040a9db` |
| 61 | `theorem` | [Codisjoint.of_codisjoint_sup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-of-codisjoint-sup-of-le.md) | 354 | `result-track:3e4cae874bdf7baaf05442e65e0efe9797f96708d9c97c5b56799abd041d10ca` |
| 62 | `theorem` | [Codisjoint.of_codisjoint_sup_of_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-of-codisjoint-sup-of-le-source-edition-2.md) | 359 | `result-track:d25571f9edc086ddddfef4de653a440b116200498f5cf6c42da99ed93447773e` |
| 63 | `theorem` | [codisjoint_inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-inf-left-source-edition-2.md) | 371 | `result-track:813f289b4f441b93f3a5902938260fea5d0505e8a9c00c77b0502ef59951c053` |
| 64 | `theorem` | [codisjoint_inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-inf-right-source-edition-2.md) | 376 | `result-track:8ffbbd3f7ba5b50833822c1358ec2c784f8253b1780466165ae42812325fd68d` |
| 65 | `theorem` | [Codisjoint.inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-inf-left.md) | 380 | `result-track:0841704a45ed6bde804d986b46d034f461422efb8fcd7c9580b3b56981009d46` |
| 66 | `theorem` | [Codisjoint.inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-inf-right.md) | 384 | `result-track:540a593e865f1ee4ae0fc01a57314bea3cf7b690fdd51803f11cfff293088224` |
| 67 | `theorem` | [Codisjoint.left_le_of_le_inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-left-le-of-le-inf-right.md) | 388 | `result-track:2dde78278a9fa4d5361a7f703bacc8fab49d0ebd16c7f31df4c101b77229a25d` |
| 68 | `theorem` | [Codisjoint.left_le_of_le_inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-left-le-of-le-inf-left.md) | 392 | `result-track:420e334ad176fc894a616cc8910b458be3d81a9dfe64fe5df311e52947502d55` |
| 69 | `theorem` | [Disjoint.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-dual.md) | 402 | `result-track:3f1136bc81d272f0595cb284bc52154782cbcaea711298975d5c960bb71810f3` |
| 70 | `theorem` | [Codisjoint.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-dual.md) | 407 | `result-track:0c17249ddad6a7affc67be28840fa3b9dbcfab1a602663e0e0245134b6e7ef84` |
| 71 | `theorem` | [disjoint_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-todual-iff.md) | 413 | `result-track:27965f02ca7fc890499713f9141fae37d01eb95056a393ebcb62340a36d0e290` |
| 72 | `theorem` | [disjoint_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-ofdual-iff.md) | 419 | `result-track:8592e31999ec6f50470ea63979f8a9ca27dc37ee12ebeae8a17a4959902cdd6e` |
| 73 | `theorem` | [codisjoint_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-todual-iff.md) | 425 | `result-track:98a352b6aefef7616690ed620fa95def861ea4128b17a870c5d2a81b89b0f304` |
| 74 | `theorem` | [codisjoint_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-ofdual-iff.md) | 431 | `result-track:46ea365c9334bac6035f91e6a24faa090df750dbe2daf61d518a750e5c97ec7a` |
| 75 | `theorem` | [Disjoint.le_of_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-le-of-codisjoint.md) | 440 | `result-track:0bd67db51ea1d28b2014652ae2216b03ab20f6867cd0a47969df3f56836a39b2` |
| 76 | `structure` | [IsCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscompl.md) | 450 | `declaration-track:9c48015c4f0a71b30e32efa68c54668aeadc76c4f299ad6a8e15e121bf018b45` |
| 77 | `theorem` | [isCompl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscompl-iff.md) | 457 | `result-track:4ae7450d29203a51ce832f5a240ae151d7953af710aa5323c3eab092f2d19116` |
| 78 | `theorem` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/symm.md) | 469 | `result-track:61562d1a3c27928124a2e323d12f7cd5952347579913b2b4e669edc9eaf1b26d` |
| 79 | `theorem` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/dual.md) | 473 | `result-track:5a64db27044d66f5eccdb8b8ace7e85c34f0325768c8ea1e497fbb9c35985f93` |
| 80 | `theorem` | [ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/ofdual.md) | 477 | `result-track:90efd63e607af9ee13eb1c152f5267e018cbf71b4b7198d91b1b119e522ecae9` |
| 81 | `theorem` | [of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/of-le.md) | 487 | `result-track:89bcd83a7e70375c43ec3782c161ab9843c072e7829e5dfc150bf752a2aaa5c7` |
| 82 | `theorem` | [of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/of-eq.md) | 491 | `result-track:bd5a284da85d94554c679d96646612be023f7163408214d41ecd52d484e32780` |
| 83 | `theorem` | [inf_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/inf-eq-bot.md) | 495 | `result-track:f1a5b32dcabb7e6025ce3a63838c142e40165f4dd14d8f2f4f5b8058db89dca8` |
| 84 | `theorem` | [sup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/sup-eq-top.md) | 499 | `result-track:dd5bb1026a84f3db383564bc26de0afd7370113d448e27ca138d58a47929a37d` |
| 85 | `theorem` | [inf_left_le_of_le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/inf-left-le-of-le-sup-right.md) | 507 | `result-track:3698cd1dc98a306766df1cff15181c2f0be3bbb80de6d1ee74045efa306b292b` |
| 86 | `theorem` | [le_sup_right_iff_inf_left_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/le-sup-right-iff-inf-left-le.md) | 515 | `result-track:f4cfab727e6ee66241aff589619cda0f987d95694e131d8724cc48eb33ddc341` |
| 87 | `theorem` | [inf_left_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/inf-left-eq-bot-iff.md) | 519 | `result-track:620e33ac53b484f794c0346481199c5f75597f528ca4f3829cb47bc409695759` |
| 88 | `theorem` | [inf_right_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/inf-right-eq-bot-iff.md) | 523 | `result-track:5fbc9a7929a8693f9571be5c0e6d95feea0b93f4ee8a44809f727ffd02a29450` |
| 89 | `theorem` | [disjoint_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-left-iff.md) | 527 | `result-track:2a93c9db03e192c1ccf60179cfa6594e17b160a37ef657360983a2f4008593b9` |
| 90 | `theorem` | [disjoint_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-right-iff.md) | 532 | `result-track:ff9479bd4df2426ace96e9f7dbb555be14f14939c1b3fda55e2e688b58cb7ae3` |
| 91 | `theorem` | [le_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/le-left-iff.md) | 536 | `result-track:f6dd3b2494b5d49c566690b150f72722b5baa3469943f4438e196826eea4027b` |
| 92 | `theorem` | [le_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/le-right-iff.md) | 540 | `result-track:7dc4e7ceafcd2cfc5b4aa0a9c1c267a01719ca0ab942469c5c12fcb5a99decd4` |
| 93 | `theorem` | [left_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/left-le-iff.md) | 544 | `result-track:17c1158a2b434d0afd78e5ddfb9c4692201e70a281aceb2aebe3422168adb680` |
| 94 | `theorem` | [right_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/right-le-iff.md) | 548 | `result-track:f86b48af9a3f0e59de05fc7d30428d835068c4d66e9c81e2c817eddd2f74eabd` |
| 95 | `theorem` | [Antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/antitone.md) | 552 | `result-track:45ba3a645411bb39d3131cd47a91f411370ac9f272e0a4c7707111c975074dab` |
| 96 | `theorem` | [right_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/right-unique.md) | 556 | `result-track:523a94f1613b6e87710ef244d00f5d64eea450e523bc4d19e5b1b0316d69f510` |
| 97 | `theorem` | [left_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/left-unique.md) | 560 | `result-track:e95fbc770cd3d511e8cdd6a36f77ed441395461466a32e666f52c3a45386d60e` |
| 98 | `theorem` | [sup_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/sup-inf.md) | 564 | `result-track:5224d45bf579f11396578c1bddde107f27063da54f214646a04880f49515edcb` |
| 99 | `theorem` | [inf_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/inf-sup.md) | 572 | `result-track:698580e42d0b2c32be950f5c5caede82b4c9a68e153b7ac32d5b043f50d487d2` |
| 100 | `theorem` | [disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-iff-source-edition-2.md) | 582 | `result-track:7fca9b30d5a948cfb2b6d6b3b501ab04c03c90f73943f56a86b70f5745b3a61f` |
| 101 | `theorem` | [codisjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-iff.md) | 593 | `result-track:2ede4ea841f453ce4fe87fe896e61d27680e1df8e1e10ae651fa771ee4cb2b93` |
| 102 | `theorem` | [isCompl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscompl-iff-source-edition-2.md) | 598 | `result-track:6151124baf647caad7b77e12536e3788e29ea4eee080f189bd1355fe8590189b` |
| 103 | `theorem` | [isCompl_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscompl-todual-iff.md) | 610 | `result-track:f26e9563bd8615ccd704e7029c9c1d019ac8e840537a8b18837c719fa9bd51c8` |
| 104 | `theorem` | [isCompl_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscompl-ofdual-iff.md) | 615 | `result-track:8d7adedb94fa1329d08d7fc790fa6f68960c2f5c6aa33c9284bd5dd1d03a3eb7` |
| 105 | `theorem` | [isCompl_bot_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscompl-bot-top.md) | 619 | `result-track:82b87ce625bab04f671ac7f41dd010fef1e20e3941c389f4bebdfb62669a50bc` |
| 106 | `theorem` | [isCompl_top_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscompl-top-bot.md) | 623 | `result-track:ed7e71d4d23448541844d0f1f71759763e565a55fc7be838b9cd68da8052c417` |
| 107 | `theorem` | [eq_top_of_isCompl_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/eq-top-of-iscompl-bot.md) | 627 | `result-track:5bed636c68f02fe22dbcbcc77358715c298c0f148c1eb091be8b2c113fd99ce8` |
| 108 | `theorem` | [eq_top_of_bot_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/eq-top-of-bot-iscompl.md) | 631 | `result-track:644f3890c4c121bc6544dba0f0c8b0f047a6aaf94569ac7c3272c20e08ea300a` |
| 109 | `theorem` | [eq_bot_of_isCompl_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/eq-bot-of-iscompl-top.md) | 635 | `result-track:e1bc50aecd363a2fbaeea471b8e669750942608f53989388378c10378ab66a14` |
| 110 | `theorem` | [eq_bot_of_top_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/eq-bot-of-top-iscompl.md) | 639 | `result-track:a83ca0f939af522ac4ae75e6c5ed78dfece7686dad397b24dc627df37531cce3` |
| 111 | `def` | [IsComplemented](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscomplemented.md) | 652 | `declaration-track:f20016aaa9ed250487b634bde34de944aa5574bd4dba1c366db294723766e603` |
| 112 | `theorem` | [isComplemented_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscomplemented-bot.md) | 656 | `result-track:b2da8aae26ce3a13290099a638569d7df57c16ddbda58b4270734a1f7571dd9e` |
| 113 | `theorem` | [isComplemented_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscomplemented-top.md) | 660 | `result-track:e91f1576cff0250c4ea94e501ed4398ea0781d383e2e338ebc6047f79ead5569` |
| 114 | `theorem` | [IsComplemented.sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscomplemented-sup.md) | 668 | `result-track:1a0bd5f2bcb7f5977f43ed2d41765c95f26a03ef160517c191517de67afd25ea` |
| 115 | `theorem` | [IsComplemented.inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscomplemented-inf.md) | 672 | `result-track:e69881ebaa47b3cf452a38267ef258bd42973eee13cc3e63441b5e9bb76360d0` |
| 116 | `class` | [ComplementedLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/complementedlattice.md) | 680 | `declaration-track:a39129151bb102904535c4dd1a7bab398d26d3a00a86ebb07ecd4a6c9802b523` |
| 117 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/instance-source-edition-2.md) | 691 | `declaration-track:58d880fa865abbe3cb2f32752a462887e4a3119283510e4add43c00df669c7bc` |
| 118 | `def` | [Complementeds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/complementeds.md) | 701 | `declaration-track:839f8c1ad949e69a0ea523d09cbdc3584e244280e97683d7b174cbcb2684d081` |
| 119 | `instance` | [hasCoeT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/hascoet.md) | 710 | `declaration-track:03b774229c0a636d59217ad5aeaeb88bb7c0b17a92fa3127a8ee4003fe97c7f2` |
| 120 | `theorem` | [coe_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/coe-injective.md) | 713 | `result-track:b84713021dc0311fac3a86c3845d282b48eefa218fd972bedd73d394fd922b0d` |
| 121 | `theorem` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/coe-inj.md) | 717 | `result-track:df855e6cf9cd05b9a12bd99e57598d30ba220b8cb0f042b87506866b61d780cc` |
| 122 | `theorem` | [coe_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/coe-le-coe.md) | 722 | `result-track:194e34c1cf12b9467d01618258a095e95a09b6308383fe2d7f832e7b401f658c` |
| 123 | `theorem` | [coe_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/coe-lt-coe.md) | 727 | `result-track:8a3bbe71ac8cab8d3730b1e80069f6d49a4f6591558bc228f895c670c3b4536d` |
| 124 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/instance-source-edition-7.md) | 730 | `declaration-track:ed6715a5a48efb462f34755b15ecde86580e06f481223ce00fc11b66f7aa296c` |
| 125 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/coe-bot.md) | 734 | `result-track:d14e4cc0388c078da93b1eec98c9cf1163c573efd3e96cfc16356d0249fc3549` |
| 126 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/coe-top.md) | 738 | `result-track:3a70e90f98d59f7ab8e22fb3f04de053be9e07a0e4466a03a06c4af0ec6bec5e` |
| 127 | `theorem` | [mk_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/mk-bot.md) | 742 | `result-track:19b1776793213b5ee01081ff4e914233be1d9531b0fdb30578d5494b3d501fb8` |
| 128 | `theorem` | [mk_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/mk-top.md) | 746 | `result-track:7f5b4f81541052683eb7f1ad18085046fcdb94ae30dfa55dd4a524018edf29ef` |
| 129 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/instance-source-edition-6.md) | 749 | `declaration-track:d4c8693a4315f8efc443778ceef456a55fd1bb216ccfa79e2fa5f3bb5c3ef69b` |
| 130 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/instance.md) | 755 | `declaration-track:4ce0f65bc45ad4f921ccf5cd6a3be4ac6e05fad85505b4859cb435631cdd736b` |
| 131 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/instance-source-edition-3.md) | 758 | `declaration-track:6f58026de7642ad23ee7e61dd880306b29838a32bdd1658ec8cb854a04eb5089` |
| 132 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/coe-sup.md) | 762 | `result-track:9d48cfc41b1d4d910b4ca859a6a88f54374fee1609ca85025ff85e4843e52639` |
| 133 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/coe-inf.md) | 766 | `result-track:019a64b72b9366003f53f0d5fb45026ea7e7b56004a9f63ef35936f2ae6734d4` |
| 134 | `theorem` | [mk_sup_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/mk-sup-mk.md) | 770 | `result-track:b4a67f3448adb0320f09a149ee5b5086c99017ccf3a8ad47e2a8fddf4f23df43` |
| 135 | `theorem` | [mk_inf_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/mk-inf-mk.md) | 775 | `result-track:437057b43154b07642bf5b930117666c13dcffac29a0ca5c45b4031154da4781` |
| 136 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/instance-source-edition-5.md) | 779 | `declaration-track:cc2d8099182c23536c58e58506123bab2e71637ce342a4b637fd17867bd0b5f0` |
| 137 | `theorem` | [disjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/disjoint-coe.md) | 783 | `result-track:e93409c43ceb37170b0f7eb4e68a9b5f00aa6f8eaa6336310772fa7682d26426` |
| 138 | `theorem` | [codisjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/codisjoint-coe.md) | 788 | `result-track:b0e81ef99e6747c6da528f6a0d7b8f0b7dfaf4b0d3e0a246bb28e7b2833deaf6` |
| 139 | `theorem` | [isCompl_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/iscompl-coe.md) | 793 | `result-track:c96bf9de669222eb9885fc28cee733552eca7165c5523daa64e39a9d2556689c` |
| 140 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderDisjoint.lean/declarations/instance-source-edition-4.md) | 797 | `declaration-track:c1f1ca0483ecc20ce40c23ce720652873ef5f17dff3c8a3c63728b785ab74eb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a1cfb8f9ce257f5182bc0b328f7daceb7e4f1c8bc42c19111eaa4726bd4a9f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variantfa7ce270a533e47e390d34fb8ef066e492cc014380a97a1350ba8b644e4b6058.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Disjoint/Variantfa7ce270a533e47e390d34fb8ef066e492cc014380a97a1350ba8b644e4b6058.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
