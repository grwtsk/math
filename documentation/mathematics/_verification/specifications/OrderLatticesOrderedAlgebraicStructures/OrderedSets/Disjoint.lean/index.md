# Verification target: Disjoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9de5f19da5beaac8e71204a025fd08943b185aa6",
  "lexical_observation_count": 152,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variante59afd189c9fa4afabb43daf6358e35b2cf4cb9b7d6a835a10208de77c6eefe7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9de5f19da5beaac8e71204a025fd08943b185aa6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variante59afd189c9fa4afabb43daf6358e35b2cf4cb9b7d6a835a10208de77c6eefe7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variante59afd189c9fa4afabb43daf6358e35b2cf4cb9b7d6a835a10208de77c6eefe7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint.md) | 40 | `declaration-track:49d4763793e51a356134078b52038665dd48588d493c6c66fb1a020cffd2f757` |
| 2 | `theorem` | [disjoint_of_subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-of-subsingleton.md) | 44 | `result-track:76a0764fa921bed31ab5353306932c32be5e916ec641e047621022511973fcd6` |
| 3 | `theorem` | [disjoint_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-comm.md) | 47 | `result-track:a3e5d1a53a8e6d0f768f9a0cfca0cbad21dce2c072ec68f26d8676cfe8974fc5` |
| 4 | `theorem` | [Disjoint.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-symm.md) | 51 | `result-track:9b089974b58157068c1a77dc58ad50df6584254c4b82b086b0156bb2e6e45fb8` |
| 5 | `theorem` | [symmetric_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/symmetric-disjoint.md) | 54 | `result-track:98612cdcc40fd23acfe27009e32c6f36a7ec13cc787c54a8824bd4735096787c` |
| 6 | `theorem` | [disjoint_bot_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-bot-left.md) | 58 | `result-track:a3c3a6e2fca1f588ed8c3046d901232bd1cbd131a9b3a263954267a755c48457` |
| 7 | `theorem` | [disjoint_bot_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-bot-right.md) | 61 | `result-track:041f1fcbdfa8adb34541f45fb2b9051bcae564ce73efab199276dd0c2f28a079` |
| 8 | `theorem` | [Disjoint.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-mono.md) | 63 | `result-track:b14d6b86ac7f2d43e34bfaea3c09f5e90e5f2327b1d4a358722c3e9b0f3d28c4` |
| 9 | `theorem` | [Disjoint.mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-mono-left.md) | 66 | `result-track:17a52147862078aabbdc2b788e8caefbcfedc843a8d87416fa61ce413208b77c` |
| 10 | `theorem` | [Disjoint.mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-mono-right.md) | 69 | `result-track:6d8a4e172b2624497d80dec536dcf8846f8686da61659556e1340c50f97b8620` |
| 11 | `theorem` | [disjoint_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-self.md) | 73 | `result-track:2643d83a767f9e7a1001bf88aeec84bac2ddf1a96a945b081ce659db25b94a96` |
| 12 | `theorem` | [Disjoint.ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-ne.md) | 80 | `result-track:4873d90b1c22662a0a43c3d38fde2e8848edf003102de2ae87f8ab62fccde844` |
| 13 | `theorem` | [Disjoint.eq_bot_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-eq-bot-of-le.md) | 83 | `result-track:c0af0060681d9ec733333f8ee2745fae03a44601bfe589cbb4928e3976d52b6b` |
| 14 | `theorem` | [Disjoint.eq_bot_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-eq-bot-of-ge.md) | 86 | `result-track:a2c9172d0759ae5688134e3e46ac90b8c83f3abf9b5cafa2e39bd351cdecd6cb` |
| 15 | `lemma` | [Disjoint.eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-eq-iff.md) | 89 | `result-track:952d80d84a2a97dd56d293a3fe86a5f9af3e2eb79f6952b00b0926380b3aa850` |
| 16 | `lemma` | [Disjoint.ne_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-ne-iff.md) | 90 | `result-track:96f2c862f3759afc00d98189c4f254273e6bb5551925281993268c2924774499` |
| 17 | `theorem` | [disjoint_of_le_iff_left_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-of-le-iff-left-eq-bot.md) | 93 | `result-track:ff9125c9641f44bc991a430745f646999ca5a295389b20db279307f7ed3b77e5` |
| 18 | `theorem` | [disjoint_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-top.md) | 104 | `result-track:a2b088f843c3a63ea91140cd56b78ef284257240583278f72f9efc966272b3d4` |
| 19 | `theorem` | [top_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/top-disjoint.md) | 108 | `result-track:62f5f00230d0accce25dadee0baaaa5f606b32119079f6c4908ae13c8b962bad` |
| 20 | `theorem` | [disjoint_iff_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-iff-inf-le.md) | 117 | `result-track:75415618aa63376d0d2f69a4c59c182dffc941ff0f51e5f3443d3b3d10daa650` |
| 21 | `theorem` | [disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-iff.md) | 120 | `result-track:17e67cf24889622c81d7fe7c0e3a26abf046ebf5e8e2a629ddd6495ed62873e3` |
| 22 | `theorem` | [Disjoint.le_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-le-bot.md) | 123 | `result-track:33b605c52a03504b2b8fbccb1d629c65f6d7603409066f2b44a8d5df6f59e446` |
| 23 | `theorem` | [Disjoint.eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-eq-bot.md) | 126 | `result-track:108bb485581b42a5264d11189cb40761aef7628eddfd89120dbf5d15f1da014f` |
| 24 | `theorem` | [disjoint_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-assoc.md) | 129 | `result-track:68ef4a1424cf85bf702bdb3f36dc6449173efec65aa6fb886722bb33feaec3dc` |
| 25 | `theorem` | [disjoint_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-left-comm.md) | 132 | `result-track:4b18946904251fe08b5b5bfb7a17e7276d41b33f36afc23961e25bec02eef615` |
| 26 | `theorem` | [disjoint_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-right-comm.md) | 135 | `result-track:8186923b3e1d31afde7cb47d67c4179cdd93a14c5f5510e6c25efa891c380f8d` |
| 27 | `theorem` | [Disjoint.inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-inf-left-source-edition-2.md) | 140 | `result-track:e5bc8e014958087c70bac3e885ad5c0e0d4806d194bbbc315522a974aea95c2a` |
| 28 | `theorem` | [Disjoint.inf_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-inf-left.md) | 143 | `result-track:bc33e57414cd18d44862d5fa3cbc51e05741e5dc83f78a398aa66bc87604253f` |
| 29 | `theorem` | [Disjoint.inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-inf-right.md) | 146 | `result-track:63eb04bbcc4ede9f7aa8ec93a758866d346a54408736ccff97022b6445ff48a3` |
| 30 | `theorem` | [Disjoint.inf_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-inf-right-source-edition-2.md) | 149 | `result-track:998b2c6d8abe2686e7be2e0af961ed753174eceeb2981a590d49c71463e0092d` |
| 31 | `theorem` | [Disjoint.of_disjoint_inf_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-of-disjoint-inf-of-le.md) | 154 | `result-track:5aaf7bfbea63095d5bd2fd1d636d806c0a92f731734e3b57c57142f57c2a7340` |
| 32 | `theorem` | [Disjoint.of_disjoint_inf_of_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-of-disjoint-inf-of-le-source-edition-2.md) | 157 | `result-track:b3a81bb5573c69e82c032137a101e81e7e3aed2163544540947e1ff99a74725e` |
| 33 | `theorem` | [Disjoint.right_lt_sup_of_left_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-right-lt-sup-of-left-ne-bot.md) | 162 | `result-track:ed8f4ebdf4ced3ccbc5fd67b5dd893a35662dcffbdb1d2463221567465e53087` |
| 34 | `theorem` | [disjoint_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-sup-left-source-edition-2.md) | 171 | `result-track:fdcd05a3a9c6c985c2605d5e90bb6a889a0c7fa08b0197d30765cc8ab0362625` |
| 35 | `theorem` | [disjoint_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-sup-right.md) | 175 | `result-track:c657ba64263546d46df2d435942344898d8b2202fd2813f576ae6fda9ed2f17b` |
| 36 | `theorem` | [Disjoint.sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-sup-left.md) | 178 | `result-track:0ffa6cdf2d000afd2ac9c5c8b4a7681335701503a7e7ab6d163f50190e2c53a0` |
| 37 | `theorem` | [Disjoint.sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-sup-right-source-edition-2.md) | 181 | `result-track:c857af6f15f1b449341bd29c42d0d9371fca9d318d63b660ec7ea10ac9b7d399` |
| 38 | `theorem` | [Disjoint.left_le_of_le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-left-le-of-le-sup-right.md) | 184 | `result-track:a74d6b2def8bd43461c32786dda4086ad135a582f0ed7d9394ae03f7ff543232` |
| 39 | `theorem` | [Disjoint.left_le_of_le_sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-left-le-of-le-sup-left.md) | 187 | `result-track:dd14f1915d2b1949c53f1e74e9dcffe5d97753d7a7070a8fd1fe84c7d52b9091` |
| 40 | `def` | [Codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint.md) | 205 | `declaration-track:ca2ea7908f3164a58baf1e08b2ae31c8aebd4eed0081bf381d8991004b93ada0` |
| 41 | `theorem` | [codisjoint_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-comm.md) | 208 | `result-track:f3e0a30c5b00f2722ffac41e31a932d7b43189e20aaef7abaeff4438bfc7452e` |
| 42 | `theorem` | [Codisjoint.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-symm.md) | 214 | `result-track:1e2898d9452e773ee40ac3628b0969199a51f2a7b812725fbefc44f05ec27b8b` |
| 43 | `theorem` | [symmetric_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/symmetric-codisjoint.md) | 217 | `result-track:dbcaaa5450438c54201e59fc3f2e1e1ad743357edb44d0217e04ab7516a01ea2` |
| 44 | `theorem` | [codisjoint_top_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-top-left.md) | 221 | `result-track:672e3053a52f5e228935ba40837fb1bbe89c9fc0d274059e76926e7e96224d7e` |
| 45 | `theorem` | [codisjoint_top_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-top-right.md) | 224 | `result-track:754026327aa4a2f8b2f8d5b89f3e30fca7aac27a9f7e397a4c17efb27a414975` |
| 46 | `theorem` | [Codisjoint.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-mono.md) | 226 | `result-track:1d23921a551263e7461815bd83a15c35f46317c92b8637c6f62aec1065d07be6` |
| 47 | `theorem` | [Codisjoint.mono_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-mono-left.md) | 229 | `result-track:24fd52f762dbc8eae67b41a7e3eb64e41868b0f7c6c6f144b7a0ed261600ae35` |
| 48 | `theorem` | [Codisjoint.mono_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-mono-right.md) | 232 | `result-track:525c5e8aedde6867fe7444cc29809ca5fcb256aba97926f460301ae345b40c7f` |
| 49 | `theorem` | [codisjoint_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-self.md) | 236 | `result-track:72c18fdb894bdf7211652e0fb4a1fc4414c903422d49e12c1a97eb772e53c64c` |
| 50 | `theorem` | [Codisjoint.ne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-ne.md) | 243 | `result-track:d1fbece19bf12e35c556d30985c3390932b603367597d7bd452fa2dbcc4081a8` |
| 51 | `theorem` | [Codisjoint.eq_top_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-eq-top-of-le.md) | 246 | `result-track:de332f49473d4e6e61f495858ceff6063dda9028942ba756cf8de8e883e186bd` |
| 52 | `theorem` | [Codisjoint.eq_top_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-eq-top-of-ge.md) | 249 | `result-track:b6dfc18582e4b4a594a6f82323c129fc8772a418c1ebba5560594c7f8c8053ea` |
| 53 | `lemma` | [Codisjoint.eq_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-eq-iff.md) | 252 | `result-track:8117065aa89b77feda486bbd8bfb0f36129a6fb131e01e1c59a86df3f6ce679e` |
| 54 | `lemma` | [Codisjoint.ne_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-ne-iff.md) | 253 | `result-track:c327648c045c8949596cce5783786514d288b07db6c7dc29fe21ecfc0e462a1e` |
| 55 | `theorem` | [codisjoint_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-bot.md) | 263 | `result-track:be1fba965c9a11585f318b7bf4624c45a28f5b34576d3bccd122cccc6f499bdd` |
| 56 | `theorem` | [bot_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/bot-codisjoint.md) | 267 | `result-track:338147e6ae8b1128a51074db0c75a6820696621ed688594745cac5a20e532816` |
| 57 | `lemma` | [Codisjoint.ne_bot_of_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-ne-bot-of-ne-top-source-edition-2.md) | 270 | `result-track:e55a3b2680de3743b0691369412418f4438acb0c0226da0f2f375e1c9a7b443b` |
| 58 | `lemma` | [Codisjoint.ne_bot_of_ne_top'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-ne-bot-of-ne-top.md) | 273 | `result-track:48b28c5c95cb22a5f4240e83fdbe934a0e23e1c916154f5d80c236b5e7ea61d2` |
| 59 | `theorem` | [codisjoint_iff_le_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-iff-le-sup.md) | 282 | `result-track:14af1b725cf5486182a147fab3d6e157bf05f9b6e9ae6d6eefb1b766530d61fb` |
| 60 | `theorem` | [codisjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-iff-source-edition-2.md) | 285 | `result-track:b37dcdebd92145b0096397b41ede5412db0a920b99b148c0b36cc71c2797be7c` |
| 61 | `theorem` | [Codisjoint.top_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-top-le.md) | 288 | `result-track:c4a3e71937670813ea27b35c880badb3320e85445a323ce3d7087552341b397f` |
| 62 | `theorem` | [Codisjoint.eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-eq-top.md) | 291 | `result-track:d09117703a26ba3b626a9f7ec6f2f7309ad7e2a330a735d2cd3f534a27ff7c34` |
| 63 | `theorem` | [codisjoint_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-assoc.md) | 294 | `result-track:df04e03eacfead820cbf82282551550bd5a185c586988247c09b96f02cffb501` |
| 64 | `theorem` | [codisjoint_left_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-left-comm.md) | 297 | `result-track:79b938c2a70fe567ea41e8f106a4caafb6fcdb38ce58c8cefec68d0ddf3d5f10` |
| 65 | `theorem` | [codisjoint_right_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-right-comm.md) | 300 | `result-track:1f88044114ccd8cf76e7986501b80f37625e84e0dd7d00c593683c5bf67ad90f` |
| 66 | `theorem` | [Codisjoint.sup_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-sup-left.md) | 305 | `result-track:a2f42875838e6189c94a89c6c396b9fba7b41950c03f1109ea1ce64ca53bfa5d` |
| 67 | `theorem` | [Codisjoint.sup_left'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-sup-left-source-edition-2.md) | 308 | `result-track:a72ee16782bb8b68bb04691862e5df4aa6977f01723343c17edb99415567356a` |
| 68 | `theorem` | [Codisjoint.sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-sup-right.md) | 311 | `result-track:7790c48d30034088407c565847d85cd52448d88075d102df896d75f5536fb3bf` |
| 69 | `theorem` | [Codisjoint.sup_right'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-sup-right-source-edition-2.md) | 314 | `result-track:84e7fe44b174e8ad089b6e907c88d10b21043f6b1df78a43cbc716fb278b92bc` |
| 70 | `theorem` | [Codisjoint.of_codisjoint_sup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-of-codisjoint-sup-of-le.md) | 319 | `result-track:08edd9c4de889653c76c0163c9b7883c510381ed35e909aec2297039aa921e33` |
| 71 | `theorem` | [Codisjoint.of_codisjoint_sup_of_le'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-of-codisjoint-sup-of-le-source-edition-2.md) | 323 | `result-track:c1b111aefd6ecf991a48a6498c31ceacfd3a929c44e23a567d8404432eadc12d` |
| 72 | `theorem` | [codisjoint_inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-inf-left-source-edition-2.md) | 334 | `result-track:f648c55e3bb7523e4e677bc39c9afd49eee399c1ed9dd21fa63ba16a4f81d2cb` |
| 73 | `theorem` | [codisjoint_inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-inf-right-source-edition-2.md) | 338 | `result-track:b00b3632d58653690343c2aa2dea84a2d7f24c75c4bd56effadc008a969ce9a3` |
| 74 | `theorem` | [Codisjoint.inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-inf-left.md) | 341 | `result-track:4edb8b09a7994a4d52afb928e802a45973a606c30851c0e7c09df94597dc905b` |
| 75 | `theorem` | [Codisjoint.inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-inf-right.md) | 344 | `result-track:a116b11a3f6f56831de290c4476c4b421a71d13d7bc0ba66da0af4b015e9d358` |
| 76 | `theorem` | [Codisjoint.left_le_of_le_inf_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-left-le-of-le-inf-right.md) | 347 | `result-track:6f90a7e1dabc257930365d1b70b9094542679c3a23377b23932862b4e9e3b8ad` |
| 77 | `theorem` | [Codisjoint.left_le_of_le_inf_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-left-le-of-le-inf-left.md) | 350 | `result-track:0508229efa60b145da107cd24850f42e2a8d0c214f02fa9079f6c6a19ece2d57` |
| 78 | `theorem` | [Disjoint.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-dual.md) | 359 | `result-track:167cd177ea09bb33ecdae135840332253aaec8673941356ef7ed5298a2835649` |
| 79 | `theorem` | [Codisjoint.dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-dual.md) | 363 | `result-track:911600df613c71a96f1d9ef1afbe0d3962da9db61f9caad6b2bf00760c491803` |
| 80 | `theorem` | [disjoint_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-todual-iff.md) | 368 | `result-track:c45dc94df0ff29a03a5bb203370c358071a715f337c9695a7b177805c426e536` |
| 81 | `theorem` | [disjoint_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-ofdual-iff.md) | 373 | `result-track:4d62517eaa4180c54e337b3e57593eb9925a1fb0f644df0bcfbf96c097a204be` |
| 82 | `theorem` | [codisjoint_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-todual-iff.md) | 378 | `result-track:19ba4abde63ede6ed635e0d2ca0b2b6ad4ba776fe16497a99a50cc039321a51a` |
| 83 | `theorem` | [codisjoint_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-ofdual-iff.md) | 383 | `result-track:cfc0f3c567e354d9b3f90fceada8991ee2e4fa79b323933d2f06711859cae8bf` |
| 84 | `theorem` | [Disjoint.le_of_codisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-le-of-codisjoint.md) | 391 | `result-track:4b69ee79bfce6e68e4748f9603ae2ffa292fe4fc8ad9aeb569146fb382fa534f` |
| 85 | `structure` | [IsCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscompl.md) | 400 | `declaration-track:cb53a37a417f0f522c246c0c739ce6fc821792ab114d1a9919cb8daca54bf16f` |
| 86 | `theorem` | [isCompl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscompl-iff.md) | 406 | `result-track:185a3798836e9016ddb5e73bfb8575e8dab8838fa34c9ba6ca1d2a3395cffc02` |
| 87 | `theorem` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/symm.md) | 417 | `result-track:81de1d3afd78a62443a3391ba4c55c9da8e47ef0eb7134ee5096c3c2043ae2b8` |
| 88 | `lemma` | [_root_.isCompl_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/root-iscompl-comm.md) | 420 | `result-track:1008f096192287236dd1e8ddc4c40c315e9b8abda12b2f3a2e0a6e0e2d8406dc` |
| 89 | `theorem` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/dual.md) | 422 | `result-track:74797e18fd7c462cb6b55fcceff6020e7a16ef2129520f4ee820a7ca6ee0ad0d` |
| 90 | `theorem` | [ofDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/ofdual.md) | 425 | `result-track:a3cb55874202d154e6f81b0b9ba5710363d9a0bc06466f0fda9ec24a521ee6df` |
| 91 | `theorem` | [of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/of-le.md) | 434 | `result-track:48dc8e65b3c793582122b8846084760b0265f62083aa69cb3bc244441f674e04` |
| 92 | `theorem` | [of_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/of-eq.md) | 437 | `result-track:aec395cc2e49d1e546ded7ada77659eeeff2478accf257865c0f0a75b1f9ec99` |
| 93 | `theorem` | [inf_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/inf-eq-bot.md) | 440 | `result-track:96354ddb39d58f1d6af6295a66c52d1bf35c4e0d082f7640e68d79f99f200c12` |
| 94 | `theorem` | [sup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/sup-eq-top.md) | 443 | `result-track:35b53cdd8f3e68a11d192dc3d3dfc4bbfbb666d50511ea94533766700a980f0b` |
| 95 | `theorem` | [inf_left_le_of_le_sup_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/inf-left-le-of-le-sup-right.md) | 450 | `result-track:05279c392441fd89ff48b4176936ace836af317448221d323e32478e557d9ee5` |
| 96 | `theorem` | [le_sup_right_iff_inf_left_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/le-sup-right-iff-inf-left-le.md) | 457 | `result-track:c15b2b5c6303c49d40cec1b4fe677dffb3e95167a464b9ab0e6c898574202acc` |
| 97 | `theorem` | [inf_left_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/inf-left-eq-bot-iff.md) | 460 | `result-track:771f0615d87d24605733b4e3e35433aaf8fe7ef58e1ba10fb3ab1ade665b38d6` |
| 98 | `theorem` | [inf_right_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/inf-right-eq-bot-iff.md) | 463 | `result-track:965694fcf4ab0f3860c278d9190e768df39bf8d1c718c49d09af9bb8cbcde462` |
| 99 | `theorem` | [disjoint_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-left-iff.md) | 466 | `result-track:77b9d96a8c919053aad3056f89eadf91b7940f6ec3b215e59d40f1b35e3d8620` |
| 100 | `theorem` | [disjoint_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-right-iff.md) | 470 | `result-track:b7eebd8489eb7cdfb78f8a4abcfefc67466476bca4589e19ca83376c74205924` |
| 101 | `theorem` | [le_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/le-left-iff.md) | 473 | `result-track:b1c2e936b547ad6b61e896d3babb21233603889c1e20bed756e3a942d56cbaff` |
| 102 | `theorem` | [le_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/le-right-iff.md) | 476 | `result-track:c9e01e731e4afc2e10e7836c993ca6a3713d8fff79bab8362553324fb4e67018` |
| 103 | `theorem` | [left_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/left-le-iff.md) | 479 | `result-track:6dba83b9a8cc965a6e774b4e1688a5cac1d22c9ed9f2865eb3122d5ee7ef9619` |
| 104 | `theorem` | [right_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/right-le-iff.md) | 482 | `result-track:c382fcad1fc3cd07b14fc3d3eb2bfd692047151c6d1e1902f8c1754dcbfa1042` |
| 105 | `theorem` | [Antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/antitone.md) | 485 | `result-track:01dd449740b16a9ca7f42f8a442348c47a104bf18f6988d43cd6c35520458c29` |
| 106 | `theorem` | [right_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/right-unique.md) | 488 | `result-track:002084e2e8ea2767bc35ccf5dad3e5f3ef34b48bd11532d9e611c0472ad79cc4` |
| 107 | `theorem` | [left_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/left-unique.md) | 491 | `result-track:429d98347dc856b94dda5d86b97ee0c7054dcc07818a9809ce2ad02d7c38e8c9` |
| 108 | `theorem` | [sup_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/sup-inf.md) | 494 | `result-track:188dce5e74e705714e7b17304bc5651df331520dd16cd41fa993f5217582697f` |
| 109 | `theorem` | [inf_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/inf-sup.md) | 501 | `result-track:a5b07ef812aa26b88dff6f0b326c6b20e1b2987913ec9afd6555362bc5f23e3d` |
| 110 | `theorem` | [disjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-iff-source-edition-2.md) | 510 | `result-track:3e09dc4a38d3ae4f34a844acc5710a0541667f605ba8083daa6d4da045ef1897` |
| 111 | `theorem` | [codisjoint_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-iff.md) | 520 | `result-track:7718de50342ea235ba5f1cc36a91be3ee237e7855c1815fae73973f64995a140` |
| 112 | `theorem` | [isCompl_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscompl-iff-source-edition-2.md) | 524 | `result-track:cd163c39e4f199dcd65ecf9b2657fc1fa37509d3afe142b8e9b0fb2c8fa7f5a6` |
| 113 | `theorem` | [isCompl_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscompl-todual-iff.md) | 535 | `result-track:7d140cc6cf678f867401f580a2a8793be96f6a01cae488de9a07f03c1fa51254` |
| 114 | `theorem` | [isCompl_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscompl-ofdual-iff.md) | 539 | `result-track:ba6f3276eb1e2502a9de7b6c274ad87de766b82c070efae20805dc4d08fd4aa1` |
| 115 | `theorem` | [isCompl_bot_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscompl-bot-top.md) | 542 | `result-track:86948f0a8246b3763410a13fdd851f04eb05bc9b98fa308e9ebc935b3f300a64` |
| 116 | `theorem` | [isCompl_top_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscompl-top-bot.md) | 545 | `result-track:7a731408427bbc208e153046ea3b9d9d2f015ca9310c00e28f970f972acb9cd3` |
| 117 | `theorem` | [eq_top_of_isCompl_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/eq-top-of-iscompl-bot.md) | 548 | `result-track:1fdd7ab2585f080772f6927c1c00a1c008b4a76a58ec334c1952f63ba69b864a` |
| 118 | `theorem` | [eq_top_of_bot_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/eq-top-of-bot-iscompl.md) | 550 | `result-track:b0c6b4853b249e5875dcef077b583edb024717f45676e7c4d2145c4f00e6ec48` |
| 119 | `theorem` | [eq_bot_of_isCompl_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/eq-bot-of-iscompl-top.md) | 553 | `result-track:6e1ab08304f05fcaa946f0b07c8dc8c09903f51e7d8754f4bf3be7cd5d6a7451` |
| 120 | `theorem` | [eq_bot_of_top_isCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/eq-bot-of-top-iscompl.md) | 556 | `result-track:fa3030aeaee671839b89c0e9b509462bf9ad72503f4eea5f251c1f5db6c39cf8` |
| 121 | `def` | [IsComplemented](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscomplemented.md) | 568 | `declaration-track:e382d6c8d1e43382a8ce06801fd4dc2dfcd5a6639a9924d3d7b986b0a8131048` |
| 122 | `theorem` | [isComplemented_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscomplemented-bot.md) | 571 | `result-track:e3832e7191eacbcd801f3301e08a67f1e240b112b2a96bf267275c4b51390d22` |
| 123 | `theorem` | [isComplemented_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscomplemented-top.md) | 574 | `result-track:3ac2c8559c0e0a548418b8494692d8b0289692dd87703a8a45fc264cd5973859` |
| 124 | `theorem` | [IsComplemented.sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscomplemented-sup.md) | 581 | `result-track:817b70867f4760967400ce61e57947f43d63c09b717125d5c2d75380fbce051b` |
| 125 | `theorem` | [IsComplemented.inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscomplemented-inf.md) | 584 | `result-track:d7048e4298851d1a6426451ce290f92d00583286a158cc457e8644a094719428` |
| 126 | `class` | [ComplementedLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/complementedlattice.md) | 591 | `declaration-track:23427a5a8ec936fbd0bd98d5ec45fcbb6b8aefc395076573331d5766c919ce0e` |
| 127 | `lemma` | [complementedLattice_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/complementedlattice-iff.md) | 595 | `result-track:314dac1e71ef61d2815bf2e3d7663a1b705bb45fe5053648b0ffedecb51f285e` |
| 128 | `instance` | [Subsingleton.instComplementedLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/subsingleton-instcomplementedlattice.md) | 601 | `declaration-track:8e444555ba15673d95f8c40a6fcc2f163f67a3678e82194e01a0fe1aa5d8b98b` |
| 129 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/instance-source-edition-3.md) | 611 | `declaration-track:908a383a088e8ba45d3b3856ac129548aef2735af248e2b742f8e92b7a57f73f` |
| 130 | `abbrev` | [Complementeds](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/complementeds.md) | 620 | `declaration-track:311a7b821bcee4e5cf51f353a312ba5fed9534af1a9f8b9e0bdda0f69c8ef0b5` |
| 131 | `instance` | [hasCoeT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/hascoet.md) | 629 | `declaration-track:6185614acde59e333eac970c6ca6ea96a89cb0346ecaf0a5b66a403e801a52cb` |
| 132 | `theorem` | [coe_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/coe-injective.md) | 631 | `result-track:6e35b01aa45c9228570b4e403972acb300bb25743f4e9f85f311702d6f08ce72` |
| 133 | `theorem` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/coe-inj.md) | 634 | `result-track:5b586e06465d2347c2edaddeb3298ce25a1468a3b3f695cb1400c542f7428efc` |
| 134 | `theorem` | [coe_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/coe-le-coe.md) | 637 | `result-track:900eeea6a15045967ba769682b23c00771991347d0d838cc9144e04a39455fc6` |
| 135 | `theorem` | [coe_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/coe-lt-coe.md) | 640 | `result-track:0242b2cd6d59e6dd9a1dc0a401429f17c3e55c6390eb78cca16123cc4d94a98f` |
| 136 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/instance-source-edition-4.md) | 642 | `declaration-track:a6266437a44152ba23e06082ffc6770751f0672be65666b74933e5db7e90ee55` |
| 137 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/coe-bot.md) | 646 | `result-track:1394841071a6381e9816949f4d4cb2b1363e9eb401ce2b920484ad2d60f056a9` |
| 138 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/coe-top.md) | 649 | `result-track:dcd6b0902da2a6e401cf332ab1bcae08202036288ba8558d3308635475e99548` |
| 139 | `theorem` | [mk_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/mk-bot.md) | 651 | `result-track:50fea23cfcd1fc75a098ec79c53af04868e245cfffcc73276dade1a4775301cf` |
| 140 | `theorem` | [mk_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/mk-top.md) | 653 | `result-track:7b13221e088d13c770e42cf1e9395f2d9a9174cfca7285a57a066f4fdabedca5` |
| 141 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/instance-source-edition-2.md) | 655 | `declaration-track:3e629660e66f6b39e1a0047b5782c576bc3517c9ad623a8a1e16a3cc99b0dd26` |
| 142 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/instance-source-edition-7.md) | 661 | `declaration-track:f6634593c1bd4d63206e8dd2b2ae8a1c0deb9108bb3b40a6227c191bcd3f1a06` |
| 143 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/instance.md) | 664 | `declaration-track:2b81a05a6025b4af2f178a0d85650177eea306f866ba9e0f0f36bbdb0e5b703d` |
| 144 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/coe-sup.md) | 668 | `result-track:8b631420ce7b12ef78ed1ead2f1b44532adb9ac93704057f586055e65579c34e` |
| 145 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/coe-inf.md) | 671 | `result-track:5a64c96f4ef3b5fca4eae1ef0e5eef1fb2556a599aca667235e6b0d4de623b68` |
| 146 | `theorem` | [mk_sup_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/mk-sup-mk.md) | 674 | `result-track:3f84ee8005f1c543a5f83ed385e5a9c797f8d224205ebabba345b89bc663d4ee` |
| 147 | `theorem` | [mk_inf_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/mk-inf-mk.md) | 678 | `result-track:98bf9bec79cd99b94d6e025948a8adbfcf1b1e39bf9789f58874872be2f490f8` |
| 148 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/instance-source-edition-5.md) | 681 | `declaration-track:adfe4d1d89a1bb908c306cea8bbaedde2d7acfa66fcfd7a08da6f4f301dc810d` |
| 149 | `theorem` | [disjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/disjoint-coe.md) | 685 | `result-track:da864cf653523a1e0d6cd0fa42a4978e79ac526daae43a5cde7298a3f5f9cef4` |
| 150 | `theorem` | [codisjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/codisjoint-coe.md) | 689 | `result-track:98e26e9fa7b84a4a6575a73a8dac5c00eba7405603da20410d72c72cfdc684a1` |
| 151 | `theorem` | [isCompl_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/iscompl-coe.md) | 693 | `result-track:a113839c0e30ebf68eecd9ee0a55dec3217e1bdaf4f013bc46714ea87fb8e36f` |
| 152 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Disjoint.lean/declarations/instance-source-edition-6.md) | 696 | `declaration-track:f0b17e40fd4ba53b35f3cabf5194ec5edb9d7aeb5c1975b9940294b99a84ffa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a8ae30c986a48f32ed095279e216dc895f55b1dd98b23cf19056b23a0225874 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variante59afd189c9fa4afabb43daf6358e35b2cf4cb9b7d6a835a10208de77c6eefe7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Disjoint/Variante59afd189c9fa4afabb43daf6358e35b2cf4cb9b7d6a835a10208de77c6eefe7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
