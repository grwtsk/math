# Verification target: Model Theory Basic Sequence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c474f9efb5993f0b4315e89703476db29a24b445",
  "lexical_observation_count": 149,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantccb9b14e28177d42d07c6096601e9b0059f0ef0e2c76478c8246070d71dca32f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c474f9efb5993f0b4315e89703476db29a24b445`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantccb9b14e28177d42d07c6096601e9b0059f0ef0e2c76478c8246070d71dca32f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantccb9b14e28177d42d07c6096601e9b0059f0ef0e2c76478c8246070d71dca32f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.VecNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Cardinal.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Language](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/language.md) | 60 | `declaration-track:ff299745c71060bc479d189d93a26c3766539b5498ae460567659926e6127e0b` |
| 2 | `def` | [Sequence₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/sequence.md) | 69 | `declaration-track:e5a81b5d6638590a101f3dcd692525c5dba97b4bde2bca2362de88f1e689a6a6` |
| 3 | `instance` | [inhabited₀](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/inhabited-source-edition-2.md) | 80 | `declaration-track:4a9118e76d3b3b816b7eeeb758a3387d5bc5fc357794bcc460a1ff34a04ab61c` |
| 4 | `instance` | [inhabited₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/inhabited.md) | 84 | `declaration-track:0403f68f75dcd7d350b13965ff305bfea0abdb3ff252fe5aee527e1fb0a7738f` |
| 5 | `instance` | [inhabited₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/inhabited-source-edition-3.md) | 88 | `declaration-track:675f573c624c4c6ae41b81cd7573d9eb863fdc760be1f195a5653b9194affcca` |
| 6 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-8.md) | 92 | `declaration-track:7c724ed256579fa584c0edc95cd59de1709121c2e57e149b68c0b8cbbd0ff699` |
| 7 | `theorem` | [lift_mk](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/lift-mk.md) | 95 | `result-track:d8f5f7195e37ef4f8237765e0b0dee8b36790e68e3083ac6b5b3ba445ec17ff5` |
| 8 | `theorem` | [sum_card](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/sum-card.md) | 103 | `result-track:a6d7e626d4d270aa7c6aa03909c0f60be82dee796308855f62ff0b46ee11b26c` |
| 9 | `def` | [mk₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/mk.md) | 115 | `declaration-track:f8006a7156c28cf0be171f63ef56e80b49d59f241b024c0c77a6eafb27542e3a` |
| 10 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/empty.md) | 120 | `declaration-track:132a94d02a62aa508355c641986ef178a4d4f997d605dfc2d1675d184007755d` |
| 11 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-12.md) | 124 | `declaration-track:e7d44bf1a9e5d563029a5c55b188269c6cefa0f095923b4dfadad44eabb23c3c` |
| 12 | `def` | [sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/sum.md) | 128 | `declaration-track:9f2ba8ab151d20bfd0928d8a4096200e16c114cd45d9ce5547cbe420d884216b` |
| 13 | `def` | [Constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/constants.md) | 137 | `declaration-track:ee225e82e47274ce69847f0376bbdd4b3fcc333a1e0c5c76902c5cce16ae7eba` |
| 14 | `theorem` | [constants_mk₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/constants-mk.md) | 142 | `result-track:350e99035e5ff9668b6caa06f22300f6e750ecd3e6dee759a4ee7cb0f78213cc` |
| 15 | `def` | [Symbols](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/symbols.md) | 150 | `declaration-track:62dd3cc6543d975f0fd6ae0a3cba62c2ff74c0a00245282244a0a0b01cdf7909` |
| 16 | `def` | [card](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/card.md) | 155 | `declaration-track:51031aacd8e476fc0afb4a83555ade1847b052e69d2c4e1e7a13a284343efe24` |
| 17 | `class` | [IsRelational](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isrelational.md) | 160 | `declaration-track:328e43675c35ecb1f8eba630441b4726aa53c631766e920bb683aaa424a5c815` |
| 18 | `class` | [IsAlgebraic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isalgebraic.md) | 166 | `declaration-track:d43460bbd82bf7214ebd9d14c0f0381758a9906df398a544bd5d0a4d9d2153c2` |
| 19 | `theorem` | [card_eq_card_functions_add_card_relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/card-eq-card-functions-add-card-relations.md) | 173 | `result-track:2c88595a23d0996d11263d487dfc44bb54d1877483409c2b82ceb1dafaf5714a` |
| 20 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-6.md) | 180 | `declaration-track:61fe73f99e9fc45c117fc001a1d95fafb42d3aa3888fc7bae2a5446a156f06b2` |
| 21 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-11.md) | 183 | `declaration-track:e5364475d5f6e24c141304d547ba34ac709a8b82f546610ea2fa7434abd82c0f` |
| 22 | `instance` | [isRelational_of_empty_functions](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isrelational-of-empty-functions.md) | 186 | `declaration-track:924200f95573bc087932b8d7d3db696af548ca3b9c7d0f6434d8824fd66e9be2` |
| 23 | `instance` | [isAlgebraic_of_empty_relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isalgebraic-of-empty-relations.md) | 191 | `declaration-track:602c36f38fd8ee3df1580284679121f536a75173184a0b93c634578946b0f756` |
| 24 | `instance` | [isRelational_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isrelational-empty.md) | 195 | `declaration-track:3a840192b1559ac35778f4812c7ac13821ad454e0a8f60ad511fe7a10ead186f` |
| 25 | `instance` | [isAlgebraic_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isalgebraic-empty.md) | 199 | `declaration-track:afd8c31511879c3d2c0c6ac6f088a04c858f14c51c9ce7bb9e698b3ce557f0bc` |
| 26 | `instance` | [isRelational_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isrelational-sum.md) | 203 | `declaration-track:d6665a9aaf1c331965f8bfe1c792103ef11b2c62ad9b3a3235afdfc5d7a6b924` |
| 27 | `instance` | [isAlgebraic_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isalgebraic-sum.md) | 207 | `declaration-track:e20a3869a343fc72e9579a832ccce1d2dfda7074e64a17dca2b568186b52a906` |
| 28 | `instance` | [isRelational_mk₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isrelational-mk.md) | 211 | `declaration-track:578808c175acac4bb14f36595ba98e58e46c5a34e037cc4eeef806e3aec78561` |
| 29 | `instance` | [isAlgebraic_mk₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isalgebraic-mk.md) | 218 | `declaration-track:96e1f57a3a12dd60be775af840e6eae4acf676732d3c61ba697f93899e43983b` |
| 30 | `instance` | [subsingleton_mk₂_functions](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/subsingleton-mk-functions.md) | 225 | `declaration-track:5b318c28922a929a70efb386aaa51782a48a447a45c0c35e26d1654b8ffe3d01` |
| 31 | `instance` | [subsingleton_mk₂_relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/subsingleton-mk-relations.md) | 232 | `declaration-track:4281bc03e877fa10638c24fb036a32a74e7a1ded04d3777750e79dc320d28442` |
| 32 | `theorem` | [empty_card](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/empty-card.md) | 239 | `result-track:b940107c48b3598c7032adaf419aafa0f6069c61fedda5eb9f60ffc69cdb9194` |
| 33 | `instance` | [isEmpty_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/isempty-empty.md) | 242 | `declaration-track:bfbfb37da3f695b1e0e084aa5f617b20e333b3a95f1bd1f61c30683eaed5dc62` |
| 34 | `instance` | [Countable.countable_functions](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/countable-countable-functions.md) | 247 | `declaration-track:99db72071d733e466dcbf3960f01fd3e0a820d6db850cce9fd3a07915aad7e0b` |
| 35 | `theorem` | [card_functions_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/card-functions-sum.md) | 252 | `result-track:b26c14e5647aee6ea9ad767682d0946f7aee10b97ef4b9ee0a56621f62440eab` |
| 36 | `theorem` | [card_relations_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/card-relations-sum.md) | 259 | `result-track:c1ee67fcc5e74437ce7724d99d66fc814b3074952dd8da6bb9837f450e4b2c1b` |
| 37 | `theorem` | [card_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/card-sum.md) | 266 | `result-track:382c9a9c41f6d8869d0f4a825cc173e3926780aaa132d6e3ec16c7ea962a8693` |
| 38 | `theorem` | [card_mk₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/card-mk.md) | 274 | `result-track:88aae6b26375cee26302380bcb5ce97a03e21d021e4658244c7c0e3d7e01416c` |
| 39 | `class` | [Structure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/structure.md) | 288 | `declaration-track:5cfadff0364cc5047d2fe2f55c2cb384ac1b311b5e65e763a857c2e397a39154` |
| 40 | `def` | [Inhabited.trivialStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/inhabited-trivialstructure.md) | 305 | `declaration-track:d3410dbc29e590184d6b1e11333505c578402a0af5c3380958cd48d6729f8791` |
| 41 | `structure` | [Hom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/hom.md) | 315 | `declaration-track:8a4ef6702784958419ddb4467a849c26fbaca04621a67dcb02239a41b8f16d97` |
| 42 | `structure` | [Embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/embedding.md) | 337 | `declaration-track:50cca67bb27bce4cbaf5543b5203f2ed8fae1aaa561062cec54ef2511c5acf57` |
| 43 | `structure` | [Equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/equiv.md) | 351 | `declaration-track:fdaf55f59f353281273765643fe1eb50f9fbe5d666039d7c2a001241117f9496` |
| 44 | `def` | [constantMap](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/constantmap.md) | 370 | `declaration-track:09f04c07a83c29d800ef86794a6b61fca35c2efa12dd74057578cb678ee543b6` |
| 45 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-2.md) | 372 | `declaration-track:243e1187755af3b675a8511dade649c43b9f8e8708e72a9b4fd79d23bc3613b3` |
| 46 | `theorem` | [funMap_eq_coe_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/funmap-eq-coe-constants.md) | 375 | `result-track:bbb0712d18a70ba9959331aaeb7470f928f794f30907a8b565a40c6709038823` |
| 47 | `theorem` | [nonempty_of_nonempty_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/nonempty-of-nonempty-constants.md) | 381 | `result-track:793107d8dae4b7c60ab7947a31af2d3d9cf8b38c223f829ac0e4b1f8fc084508` |
| 48 | `def` | [funMap₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/funmap.md) | 386 | `declaration-track:22abfcd09d483dd56637e540edb5d919f08816717fe0ee74461c7c8db4970b12` |
| 49 | `def` | [RelMap₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/relmap.md) | 395 | `declaration-track:a2bc4dd3f42b17ce5b89bc7c60daac9718c1b841cc75ebb48150cf6a6185debe` |
| 50 | `def` | [Structure.mk₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/structure-mk.md) | 404 | `declaration-track:ba37536ca091dd1862e7cbc82181a7bc55c5fcbc35c81e563d73d73f93908730` |
| 51 | `theorem` | [funMap_apply₀](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/funmap-apply.md) | 420 | `result-track:1621034b2d916391f3a68bd71bc3bbb9f62ef577c4582828f02234cc9ddab338` |
| 52 | `theorem` | [funMap_apply₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/funmap-apply-source-edition-3.md) | 427 | `result-track:f1dd1344f274d4cbb5fe70fd618ec48dbcfbc69b449aea6f7fbd23b42e02f32a` |
| 53 | `theorem` | [funMap_apply₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/funmap-apply-source-edition-2.md) | 434 | `result-track:9a3252915d22e0ea22dd0950b6bf0597e1702274336fda277b9d1a8c4d4bc958` |
| 54 | `theorem` | [relMap_apply₁](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/relmap-apply.md) | 441 | `result-track:8be1cbb1474ca4ffdff33a839913ba36b9d5fd4cc6b874cb07e533d71d92b85c` |
| 55 | `theorem` | [relMap_apply₂](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/relmap-apply-source-edition-2.md) | 448 | `result-track:ba284cde496cd482c66521a815a7a2c50137bb9fa9a148d3ff0b138f86dd4d9e` |
| 56 | `class` | [HomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/homclass.md) | 458 | `declaration-track:4e1c637f94cded3c87263fbb4030332493a58092a874d4ea48588cbf90838159` |
| 57 | `class` | [StrongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/stronghomclass.md) | 466 | `declaration-track:89ea8484b715d8939e0666915fefd69c82f8bf74ff12322ba8a64e75639679fd` |
| 58 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-10.md) | 473 | `declaration-track:d15b383d3e82911ba9f217a11392c1aeab183c592a1904452858ef29250c09ac` |
| 59 | `theorem` | [HomClass.strongHomClassOfIsAlgebraic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/homclass-stronghomclassofisalgebraic.md) | 480 | `result-track:51419500fd23425ac065ea865c08da0e3f3fc0df9e445f252cc84e0a2d86019f` |
| 60 | `theorem` | [HomClass.map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/homclass-map-constants.md) | 486 | `result-track:9bbb970366f9f4c9be913ada0f7194d947c7e48a8928c79bb732b89c1deafd98` |
| 61 | `instance` | [funLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/funlike.md) | 501 | `declaration-track:8631b621b4175513d1d1debec8914e7a2ac118485cd26cc4cd9a48c37cf67ba4` |
| 62 | `instance` | [homClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/homclass-source-edition-2.md) | 506 | `declaration-track:ac424824dec92738f3ee72ac3f118722a9d3b264b680780e70887b55766c1572` |
| 63 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-7.md) | 511 | `declaration-track:78bd9a4312bceb4e6164abaad602a3b76ab97a09283c30f8725a94709688f834` |
| 64 | `instance` | [hasCoeToFun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/hascoetofun.md) | 514 | `declaration-track:037e7c392cf790a10b8ac986dbdd8696d7fc6ba62340faae9675bcad914bce1d` |
| 65 | `theorem` | [toFun_eq_coe](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/tofun-eq-coe.md) | 519 | `result-track:103e66f1e2a427d2a480885ae05cceb15f39533519f49c15c4537aa02a483268` |
| 66 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/ext-source-edition-3.md) | 524 | `result-track:dee7b53531f6ff776230864c9f1eded8ed661e8595421014ae129b2664786ec7` |
| 67 | `theorem` | [ext_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/ext-iff-source-edition-2.md) | 528 | `result-track:9061c02425839280763c99c645580e3cf723e6d4409f2d6d2b977fd32864f365` |
| 68 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/map-fun-source-edition-2.md) | 533 | `result-track:9b74d7f091fa98e7ca33c1007c6cc62e768499c116e1c25893e850aee6b8630f` |
| 69 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/map-constants.md) | 539 | `result-track:4a14fe2cbcb279bb350ccdd9ba078f444a6e0739b38d52a1b286973307d5c701` |
| 70 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/map-rel.md) | 544 | `result-track:4d7660d3a825e36797a8aaf99559ae8929ee3a82c92b687120ef71630df59d7c` |
| 71 | `def` | [id](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/id.md) | 553 | `declaration-track:25f6f652b98df07ab6ec473440ee0af3403647eb069287ee57092d678388648b` |
| 72 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-5.md) | 559 | `declaration-track:4fe4f73899bc8e2eb2eab91904801a9328c7244202b833ff2d8ba3d33bed7231` |
| 73 | `theorem` | [id_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/id-apply.md) | 563 | `result-track:6fa6170682f437f71863b8111799852534b111aa5cda2245741c0e100e676b15` |
| 74 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp-source-edition-2.md) | 569 | `declaration-track:dd21c9d9ceb7451d54a2a49c741b10a22cdbf4104c1c490bcb629a47cb09090a` |
| 75 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp-apply.md) | 578 | `result-track:43fc0fcc90b3d969d9fdb5b38c434423b738eb9bd8c0ab007ce87a10604378de` |
| 76 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp-assoc-source-edition-3.md) | 583 | `result-track:81f78c036c1f0b32dfa4779c6c55c5aed1ecd1385cbdf99d6c2a39f0a324abc5` |
| 77 | `def` | [HomClass.toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/homclass-tohom.md) | 591 | `declaration-track:ea84a677d612888c558024b2a40e763478387fba07626e822ee3be61dcef7c03` |
| 78 | `instance` | [embeddingLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/embeddinglike.md) | 598 | `declaration-track:93a81e07a00abd565a4cd0c4c2e31d413e66b92898fe62b281dd12a0222b2f4b` |
| 79 | `instance` | [strongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/stronghomclass-source-edition-2.md) | 609 | `declaration-track:8b83b5f7839c572f031c1e8a7da89fbf2496444d3b09836df923de61d48fbf27` |
| 80 | `instance` | [hasCoeToFun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/hascoetofun-source-edition-3.md) | 614 | `declaration-track:ddddd69736ad62a884a16396dd0a1906930984c0a4dac005ba922119c1b1627d` |
| 81 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/map-fun-source-edition-3.md) | 619 | `result-track:ef5240a204ff284a01ae3e6a9cd1afb2ff7ad0bb4c74c67523309ccb1f67fc5c` |
| 82 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/map-constants-source-edition-3.md) | 625 | `result-track:e6dbb7add02e923cd539c79408c57fb52e1c4a92058b6183633172b36ab3377d` |
| 83 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/map-rel-source-edition-3.md) | 630 | `result-track:ffeddf6d22a2c2073c063e25e05f549905d6b6b53755086f64a9a8a946cc4387` |
| 84 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/tohom-source-edition-2.md) | 636 | `declaration-track:82411545d9b0c3627709f879b03c088e063dc5be29b89a8ce04d586b0dc797d9` |
| 85 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/coe-tohom-source-edition-2.md) | 641 | `result-track:ba5b0ed587c3f3c2e374f550bf035e517f440d323c19d9baaf68af4aee651198` |
| 86 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/coe-injective-source-edition-2.md) | 645 | `result-track:630ca18d9236dae41c6caf987aa38e783c7e0d17f426a8344f0bdf03f81feed3` |
| 87 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/ext.md) | 655 | `result-track:ab2326402c2ace79568cee9a4d41450904c06a3c010f58a16a0e251ca466a6d5` |
| 88 | `theorem` | [ext_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/ext-iff.md) | 659 | `result-track:09e2ddf56370c4c2a68ce8a545f3441877715287d0d9ab54437fde84e9170413` |
| 89 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/injective-source-edition-2.md) | 663 | `result-track:ce4d606e63c356b16d16394a43e19c410f21b2b5933a86a4add2efa28e50539e` |
| 90 | `def` | [ofInjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/ofinjective.md) | 669 | `declaration-track:b14f5ef3a2c343cd90932333737ed66fee31801c91085f9891f321cb049ba869` |
| 91 | `theorem` | [coeFn_ofInjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/coefn-ofinjective.md) | 676 | `result-track:d135f4b6d84acee82c13ac2653caff7aca75bb161cc240954b746f2be960639b` |
| 92 | `theorem` | [ofInjective_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/ofinjective-tohom.md) | 682 | `result-track:b0dea2f5eb06d8d5b268cc7a0828688815ad1835466a6f798db637dd7e879493` |
| 93 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/refl-source-edition-2.md) | 691 | `declaration-track:e09190a090f74c5a48a3ab98fc1ebc9521a8d57e44bc12ca9e8ef01ec5a7d55c` |
| 94 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-14.md) | 696 | `declaration-track:fdf0e9924da26cb5c1df153cd40fe6185cf2a62ba6148c7cf4f984694d0716fe` |
| 95 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/refl-apply.md) | 700 | `result-track:5e8fa43d5fd98617e5d06e4d4319d822534004c4ecd59568503e8b03bf9863b3` |
| 96 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp.md) | 706 | `declaration-track:06145edb82f1f8ba66ff3d89723e2565141e7d7e7718136bcf80fb32957474d4` |
| 97 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp-apply-source-edition-3.md) | 716 | `result-track:96aa830385ce3be8e0de0d9cf989c878fd3f41cb25c4e641cc64e6803decc45e` |
| 98 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp-assoc.md) | 721 | `result-track:3d4f7d34fdfc62b52feb69683d383cffd3a2fd3042642dde126cd935e5915b6b` |
| 99 | `theorem` | [comp_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp-tohom.md) | 727 | `result-track:6a0e325b99e882488459e15db680f4f3bc12db487339bbc98d06f50b66d310ec` |
| 100 | `def` | [StrongHomClass.toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/stronghomclass-toembedding.md) | 736 | `declaration-track:e94b7c60196e4c31a213d50957fed657021df2331f6061febef6fe9226dce359` |
| 101 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-3.md) | 743 | `declaration-track:25a6dd671fa6fb801d72ac3619adcf4dbc4dc895d81a9e7ca3f2c27c07986b32` |
| 102 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance.md) | 755 | `declaration-track:12b889f07d64d28ae4b67e774dc7109a4ec2a80928564b11c080ea5284e0895a` |
| 103 | `def` | [symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/symm.md) | 761 | `declaration-track:77bd28efa7bc3f8b14c7e6bda8bb939eb913c44e16b67ddb2a3286547be241e3` |
| 104 | `instance` | [hasCoeToFun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/hascoetofun-source-edition-2.md) | 774 | `declaration-track:8b76e4f2b02f8a4a18546edff580b627f9907ddaf1f9e1dcdd4ea8c7ef34829e` |
| 105 | `theorem` | [apply_symm_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/apply-symm-apply.md) | 779 | `result-track:20945c7d9c088df6402ff74bb44f588b821f857c4858b4e3cde641ed60bf2742` |
| 106 | `theorem` | [symm_apply_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/symm-apply-apply.md) | 784 | `result-track:b2e24b3f027ec2206bed9ff54a99d36b884f979fa975231d71163ba211a1fa91` |
| 107 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/map-fun.md) | 789 | `result-track:01638f1148f2851b2fdde0032f447eec7294cf4f9af23e139414aec146fdebe9` |
| 108 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/map-constants-source-edition-2.md) | 795 | `result-track:cd3a9caf6c47e8d4f8a662107c1db8bbf95b31924e2b62ab527f9185c61299db` |
| 109 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/map-rel-source-edition-2.md) | 800 | `result-track:7922acb18cc1d4bac000e75828d3d914bb6057f9d54824ffbfacd3246262c9da` |
| 110 | `def` | [toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/toembedding.md) | 806 | `declaration-track:54be543bb575f1f7a3435710dc8e88e49cf3ed16763bb20586a595f34f55c7db` |
| 111 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/tohom.md) | 811 | `declaration-track:6acbc1b83f804ae1a01c28d43b18e58f184152bfeabe4fada0d51ff63044d90a` |
| 112 | `theorem` | [toEmbedding_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/toembedding-tohom.md) | 816 | `result-track:e77c8a721eaddc7d508bf75b24a73058ba71df838f97b1eaccac3e659323e3ea` |
| 113 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/coe-tohom.md) | 821 | `result-track:12775cbe9b57063c846abbccb8872bf45345db3f48910b47c0cb445be1a9a385` |
| 114 | `theorem` | [coe_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/coe-toembedding.md) | 826 | `result-track:d575c4b5a353401101a018b047497d299eee4f3ee4928da70267e3bd2eb9ea9a` |
| 115 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/coe-injective.md) | 830 | `result-track:4949bb087804cea3e7bbd1eb94c2fc800c5660908317eb2ee472d8c654bdd744` |
| 116 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/ext-source-edition-2.md) | 835 | `result-track:bf8020f542dca1997e517858ff48f91b60d50e3fe50a790e8ccd94d56d7834f1` |
| 117 | `theorem` | [ext_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/ext-iff-source-edition-3.md) | 839 | `result-track:f28fec63b6a3c4d3fb2e798a286d45c28612fff3ec463569733577e97ccd94c0` |
| 118 | `theorem` | [bijective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/bijective.md) | 843 | `result-track:006a036bff22deb5527716b185312ab261bdd09d3f281a3366189da048aba0a9` |
| 119 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/injective.md) | 847 | `result-track:0ccc2b5af9a1f81a1185073beff4db8590c947b235b997f20057a724c3d9400b` |
| 120 | `theorem` | [surjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/surjective.md) | 851 | `result-track:16d99e3148e95da4861cdbd7df7df23837191335d43213e51cd5b3ff2988f70c` |
| 121 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/refl.md) | 859 | `declaration-track:3bbd4a72f667a492cf9269b041e3befaa69a30637c7857d73201c15bc9c559c3` |
| 122 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-4.md) | 864 | `declaration-track:326f14c1664c354103b48cd14c42627bfb8de3e245b555e0e3a22d3243508240` |
| 123 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/refl-apply-source-edition-2.md) | 868 | `result-track:91cf453a81779bff596d07fd99f41cfcf97562a48fae4929192e329d0a99e2dd` |
| 124 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp-source-edition-3.md) | 873 | `declaration-track:f07fc53ef8e39d0c1d4869fe97d5bb02e20efefb8b2095637bb2ba0fd5028121` |
| 125 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp-apply-source-edition-2.md) | 883 | `result-track:8b88218344edce5315704f7d59dae6bcd52012088e490b61d9031bff9c44d977` |
| 126 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/comp-assoc-source-edition-2.md) | 888 | `result-track:71085dbd54eb1175dac1e85f759a0458aca67b4e534b387273cc039fabd3c40f` |
| 127 | `def` | [StrongHomClass.toEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/stronghomclass-toequiv.md) | 896 | `declaration-track:db2b7610fdb781aae95ec6b05f7efbc4f55e55cd1264f0fc05421374790e45bd` |
| 128 | `instance` | [sumStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/sumstructure.md) | 906 | `declaration-track:175d769309a94bb157dfbc1ef872e47939c0f15fe1aaa69101f1e01a0b74edb9` |
| 129 | `theorem` | [funMap_sum_inl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/funmap-sum-inl.md) | 915 | `result-track:780168b29a553712b6c23b8df22dc28bc7440e4f6e51d28b34aabecaf34d7ec9` |
| 130 | `theorem` | [funMap_sum_inr](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/funmap-sum-inr.md) | 921 | `result-track:5bf6fdffb7772902ae610eebe4563a6fbc0442a536154603fbd092985d9c74ea` |
| 131 | `theorem` | [relMap_sum_inl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/relmap-sum-inl.md) | 927 | `result-track:964931a8aae4b3589b0fb7e656f9ba581bf3549ac827f18c75ca18af456f0c61` |
| 132 | `theorem` | [relMap_sum_inr](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/relmap-sum-inr.md) | 933 | `result-track:9d6b5e3a774a52892d525874ffbc945752950848315da0616b352c8286347753` |
| 133 | `theorem` | [empty.nonempty_embedding_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/empty-nonempty-embedding-iff.md) | 947 | `result-track:dadc624bac8099d10fc621496761f201337cadaf5b59043048f7843011527ff1` |
| 134 | `theorem` | [empty.nonempty_equiv_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/empty-nonempty-equiv-iff.md) | 954 | `result-track:430c65ef611678709a4c821fa6fe81a1edd67907f310ca8e4945ade3ccacfbfd` |
| 135 | `instance` | [emptyStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/emptystructure.md) | 962 | `declaration-track:a760833a65f95ca8a2ec2a6d6091b87a3cbce969f5d6291bd8c046dc6f6344da` |
| 136 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-13.md) | 967 | `declaration-track:e9555d93c1d91cbef164eff56c533519ae41cede1c24b9bf0975b770b99697a9` |
| 137 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/instance-source-edition-9.md) | 971 | `declaration-track:b2f85603c70c802c4c0f29eb6f4dd82076dbc8796ce22ceff4494264c85e6667` |
| 138 | `def` | [_root_.Function.emptyHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/root-function-emptyhom.md) | 978 | `declaration-track:b18fbd99ab5c936fb6879b0519a8686a749f68d28e9f64adf9d561005aeac762` |
| 139 | `def` | [_root_.Embedding.empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/root-embedding-empty.md) | 983 | `declaration-track:ee41a6a71350b4a24185aa1881a91d5fd2dfba12cf533115a93f6da84acd072f` |
| 140 | `theorem` | [toFun_embedding_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/tofun-embedding-empty.md) | 987 | `result-track:b39fc3b4c7726c85c7df15bfa1fdae83d94684309d6a5e9f2664dd2baf98c451` |
| 141 | `theorem` | [toEmbedding_embedding_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/toembedding-embedding-empty.md) | 991 | `result-track:3fccc622c9066a73aeb9d3b26a6ec959133847bb7894a2222548094ac01e58cf` |
| 142 | `def` | [_root_.Equiv.empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/root-equiv-empty.md) | 996 | `declaration-track:1d489b76122150e83b9a862bb7b577bd4959e6c6e3f93e3bf3087c9ea3afea86` |
| 143 | `theorem` | [toFun_equiv_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/tofun-equiv-empty.md) | 1000 | `result-track:de1e1535e21ba0a12919478afc4dc522c756d17eece4b254df2901dbf8b9aa8e` |
| 144 | `theorem` | [toEquiv_equiv_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/toequiv-equiv-empty.md) | 1004 | `result-track:cc83be496b9ad26880a8d5bff7a934d58c335f039c07a5d53f107fdb8e84c486` |
| 145 | `def` | [inducedStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/inducedstructure.md) | 1023 | `declaration-track:c2173a0f257b85ae0e363e1104c86faf199cabf13e785fccd315d51d831af7ee` |
| 146 | `def` | [inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/inducedstructureequiv.md) | 1030 | `declaration-track:477d97e661fc5f7d9c63ae6dffbfff97ff74fa53b4de2ef7f197b6a22dafdc83` |
| 147 | `theorem` | [toEquiv_inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/toequiv-inducedstructureequiv.md) | 1040 | `result-track:d04a81b15ec93621b1f1a4a0eca1c371097035915c1a9e2770dc7e69b62a720c` |
| 148 | `theorem` | [toFun_inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/tofun-inducedstructureequiv.md) | 1045 | `result-track:252e8ae3e4b19a276048343b8c2e28a3498a5779fcbdb3be1b589f9080c78f98` |
| 149 | `theorem` | [toFun_inducedStructureEquiv_Symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicSequence.lean/declarations/tofun-inducedstructureequiv-symm.md) | 1050 | `result-track:5da529f22806ad4a8a1d2e501c54e373d9b7c0c601cc3550078af13c9d3038f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a23cd4f488e6a5e87ee1f08f12644ce590b308f890573a62488d0f942f6971f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantccb9b14e28177d42d07c6096601e9b0059f0ef0e2c76478c8246070d71dca32f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantccb9b14e28177d42d07c6096601e9b0059f0ef0e2c76478c8246070d71dca32f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
