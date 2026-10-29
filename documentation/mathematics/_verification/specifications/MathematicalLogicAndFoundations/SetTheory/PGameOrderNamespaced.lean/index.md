# Verification target: PGame Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d42f9ef2c98893c853896bc87f608cbb790df2c7",
  "lexical_observation_count": 139,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d42f9ef2c98893c853896bc87f608cbb790df2c7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GameAdd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.PGame.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le.md) | 49 | `declaration-track:cfd0deaab37b45f60aa22c33de93759b390c067bb8c6301d546059cdc868fa71` |
| 2 | `def` | [LF](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf.md) | 58 | `declaration-track:2e1575bb111d357bd8fc72d2e2ca27a6f5a771f9235b0de99c2b39345afd36a0` |
| 3 | `theorem` | [not_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/not-le.md) | 65 | `result-track:240bde0ebbc4647f76bcd15acf617d0e0a721a333fef29c86e956c7230701223` |
| 4 | `theorem` | [not_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/not-lf.md) | 69 | `result-track:1839ebcca76a390e9c13ced51240bd74eef2f5e6488ec8177964ae475890dda1` |
| 5 | `theorem` | [PGame Order Namespaced](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/not-gf.md) | 72 | `result-track:1f4926b4d24eee6a1307c7dbdf7f9e3c8b4b769a08991cc1fa1011d0554a8ebc` |
| 6 | `theorem` | [LF.not_ge](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-not-ge.md) | 75 | `result-track:1ce864dc592034e48d83be0123535e9199a0ec83efdd2aad62ab19f9983ef3dc` |
| 7 | `theorem` | [le_iff_forall_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-iff-forall-lf.md) | 82 | `result-track:5f6464b4e6ba0c028850a9e576746acf45a8acd8eeee7f394ac346d521e7c777` |
| 8 | `theorem` | [mk_le_mk](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/mk-le-mk.md) | 91 | `result-track:fe93c85d36f68cc03195e913839d35c003542dd82dc085e9a27d6bdadd783a48` |
| 9 | `theorem` | [le_of_forall_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-of-forall-lf.md) | 95 | `result-track:a011b67e70a130486b21a0840d2fe0048cd6a2511d9ed335ba53a68214a54b46` |
| 10 | `theorem` | [lf_iff_exists_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-iff-exists-le.md) | 103 | `result-track:9ff09bb469cca7ddd3432460d18a48f8ccb2993ef0b31a6909e5dd258330f92c` |
| 11 | `theorem` | [mk_lf_mk](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/mk-lf-mk.md) | 110 | `result-track:3666f8c07e97da28f8eceaf3c6eb88f5b6cf0947d513854ddd5c4fddf63fd5ca` |
| 12 | `theorem` | [le_or_gf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-or-gf.md) | 114 | `result-track:1ddf8b0f0219cd75bd4009c05b392ab15e4ac226e18b92481dab3467924e79bf` |
| 13 | `theorem` | [moveLeft_lf_of_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/moveleft-lf-of-le.md) | 118 | `result-track:737ca9e522d982e3b8eab3e6c322d65bd5edc13503c142a98b39275f1541dec0` |
| 14 | `theorem` | [lf_moveRight_of_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-moveright-of-le.md) | 123 | `result-track:15f5969dccb5106925001ab91c007caecffb3b3c63b97022b9d14b5378c41da5` |
| 15 | `theorem` | [lf_of_moveRight_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-moveright-le.md) | 128 | `result-track:349409acc76f32e6f1f1b33adf36afa60ace9e8e8b93ebfb31e606928edc47f5` |
| 16 | `theorem` | [lf_of_le_moveLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-le-moveleft.md) | 131 | `result-track:8f9336fbbccfc29c332d1110e51254c36844d1939ef232467f58ab8bb668eb9a` |
| 17 | `theorem` | [lf_of_le_mk](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-le-mk.md) | 134 | `result-track:754e275d0ea47a78a293364c22e245a05119ce7f0e29a8d800927d907412d439` |
| 18 | `theorem` | [lf_of_mk_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-mk-le.md) | 137 | `result-track:ef95d3faf1547959049a69c996da3573262a645897d674e411e404e612dc4992` |
| 19 | `theorem` | [mk_lf_of_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/mk-lf-of-le.md) | 140 | `result-track:cc7c420f19788d724aca69c07e0d9ef8261e88ffc3fe1a291e384bf184b1a0a5` |
| 20 | `theorem` | [lf_mk_of_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-mk-of-le.md) | 143 | `result-track:3a3f5fb84c752d93a91ad463d03f2493b69446d7c248e9b083e02744acaccb21` |
| 21 | `theorem` | [le_trans_aux](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-trans-aux.md) | 148 | `result-track:2393c7a68acfc4eed172f2d5b20d19d874d45fe594cc2bedaaeb76b943a3d2f1` |
| 22 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-3.md) | 155 | `declaration-track:19e46b2d7d41832134669e8d2a1eaa3fea2477dcfbffee8e48d9786e758dc235` |
| 23 | `lemma` | [Identical.le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/identical-le.md) | 176 | `result-track:33bc9fbae4785ec281ad9b6beef5d9fd7ee34a31c71aa5cfca4ff03948ba7a0e` |
| 24 | `lemma` | [Identical.ge](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/identical-ge.md) | 181 | `result-track:c0376aae556754a97c0130309c62e212bec032ee735a6b07793498b233128b7b` |
| 25 | `theorem` | [lt_iff_le_and_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-iff-le-and-lf.md) | 183 | `result-track:60091328cabf56ce52e4b6c1e9f30ea0d2ccbbd936435e2282cc968e9afa451e` |
| 26 | `theorem` | [lt_of_le_of_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-of-le-of-lf.md) | 186 | `result-track:e83f3b95d6b74dbfbfead330b76444a52f7cda84a725049d119c3c3cdeb435cd` |
| 27 | `theorem` | [lf_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-lt.md) | 189 | `result-track:e489ab2cf91b17cb61a74754973b549d0bf8d1cbfcabb87177c613d55716f0f6` |
| 28 | `theorem` | [lf_irrefl](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-irrefl.md) | 194 | `result-track:c62cf78a1217d7f4ecea5ef910a3eb40431d037a6c1aaae6d79306b60d55dca0` |
| 29 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-10.md) | 197 | `declaration-track:ae6537413eb88c3aee7c4a748dbdd201b98fe28be88dd3930d44b4b05d9d4510` |
| 30 | `theorem` | [not_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/not-lt.md) | 200 | `result-track:49441182b6ff24d9a57908dc952579cd56b9e04ca09197dc853bbef91bc9687a` |
| 31 | `theorem` | [lf_of_le_of_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-le-of-lf.md) | 203 | `result-track:22232061de7cea2a120aee892a16ce14ef75cc6e6c862fb0af6f3093908d6aa3` |
| 32 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-7.md) | 207 | `declaration-track:558e8ba318234e321c384710e107c221c78f48dae7efb518f1c7330776bd9906` |
| 33 | `theorem` | [lf_of_lf_of_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-lf-of-le.md) | 210 | `result-track:1cd56572f3ada3cd3f1df95c5ed892eccae1ce7f1aa0dbc95499ebdbf61cc430` |
| 34 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-2.md) | 214 | `declaration-track:1198d88d73607405b1c06d87693f00ed65677c26414263402ec0cdfd99efbfb8` |
| 35 | `theorem` | [lf_of_lt_of_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-lt-of-lf.md) | 221 | `result-track:8f4865d6ba54b73ec5e72a1691bb59f32243345d45838e3060931bfafc2aea51` |
| 36 | `theorem` | [lf_of_lf_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-lf-of-lt.md) | 225 | `result-track:0a4c05bd6129ab675bdc4ad657c2d0ac19c5a4d5cf6266fc798951188168079b` |
| 37 | `theorem` | [moveLeft_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/moveleft-lf.md) | 232 | `result-track:28d5d2811770536157086adf50faf8b1460bcaeea2cb9942122bcf6359ebe12f` |
| 38 | `theorem` | [lf_moveRight](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-moveright.md) | 235 | `result-track:a4eddc0dd9c69a7f6f0660972b84d13a70090444a1c6078b9aff0099c124e4f6` |
| 39 | `theorem` | [lf_mk](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-mk.md) | 238 | `result-track:68cdaf37d82393508ca3d03e3251cff80a16d44ae79d771d062489ffa5578317` |
| 40 | `theorem` | [mk_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/mk-lf.md) | 241 | `result-track:f09b7728afbbc65612a7f7e1d98e103c8240a40f7714bc236a33e38a04c2b5fd` |
| 41 | `theorem` | [le_of_forall_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-of-forall-lt.md) | 246 | `result-track:5bab002c0fec21afebdab461a7c16b829f3995b744aa519cdc0760bb1b7517c6` |
| 42 | `theorem` | [le_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-def.md) | 254 | `result-track:f7542ffa09e43c7df65ffee8ff22cf6ba3108569782d55d9e0e054e463dacf30` |
| 43 | `theorem` | [lf_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-def.md) | 267 | `result-track:a19ca8da39b648c3e9fc9f6adf69b02641f02a894532f6bbfde13151bdf84aeb` |
| 44 | `theorem` | [zero_le_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/zero-le-lf.md) | 277 | `result-track:f8abd988aa146a02641ece3e6c3f556fc6e6eaeb1a74acf540e843a1bc2168c7` |
| 45 | `theorem` | [le_zero_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-zero-lf.md) | 282 | `result-track:3ac57e6c0280047967b2b5645d946da0dc1e09a10edc2ecde1a85f0b0bdc3b6f` |
| 46 | `theorem` | [zero_lf_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/zero-lf-le.md) | 287 | `result-track:c045dd80dcbf6584514467658291c35b85a40a2f88b6852cbf5c32ba06e2b6f6` |
| 47 | `theorem` | [lf_zero_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-zero-le.md) | 292 | `result-track:2b4e0fd058bff9be56ab17ec6bddba69b187736fd393e210387c2df17df4c34c` |
| 48 | `theorem` | [zero_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/zero-le.md) | 297 | `result-track:47a98068af1e584542bf1be4fe2a45c812ce9ccf7faf77ca7e44eeabe9d19124` |
| 49 | `theorem` | [le_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-zero.md) | 302 | `result-track:0b33c0f53772f04012fd2c567bf2c4f0d715b7b5a6e4ca8596aeed2847c6136f` |
| 50 | `theorem` | [zero_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/zero-lf.md) | 307 | `result-track:615685a9bb49c39056f85fd4c1ce71cc53d3f224af39752acf49747d2ce32787` |
| 51 | `theorem` | [lf_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-zero.md) | 312 | `result-track:a1296c54901376e6272200e165968fef4bbbcf501ccb5092abbecd279968fb80` |
| 52 | `theorem` | [zero_le_of_isEmpty_rightMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/zero-le-of-isempty-rightmoves.md) | 317 | `result-track:f9d985bca28449081a5e761888911919094a661b880b983eae15e43dff19d5e3` |
| 53 | `theorem` | [le_zero_of_isEmpty_leftMoves](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-zero-of-isempty-leftmoves.md) | 321 | `result-track:669df28f6f1f59b601de3f76f85d56a3e37c2415c672af30c44e566a59b45d3d` |
| 54 | `def` | [rightResponse](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/rightresponse.md) | 326 | `declaration-track:7237aff01b7351f9d60fe22a8bde5c6dabd698b2112bd688889ab52a55106574` |
| 55 | `theorem` | [rightResponse_spec](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/rightresponse-spec.md) | 332 | `result-track:ce7bc43fff1215182617550a257a952afeaeb069a0758e5ca515ebd078f9302b` |
| 56 | `def` | [leftResponse](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/leftresponse.md) | 338 | `declaration-track:898f9e58e86dafdee87e2dda5fd2e3a2dd03f5728c5b983c2549aa36fa09ce0e` |
| 57 | `theorem` | [leftResponse_spec](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/leftresponse-spec.md) | 344 | `result-track:378e522cfd2fcf09edb58d8a1bc64b007f09066c29446bb31205abecf41e363f` |
| 58 | `lemma` | [bddAbove_range_of_small](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/bddabove-range-of-small.md) | 349 | `result-track:4f1c241bd8a64f3d3cdf28b0b722d39eced044efc2ddb3e2f01146d60a837fc5` |
| 59 | `lemma` | [bddAbove_of_small](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/bddabove-of-small.md) | 358 | `result-track:208b6a9ebe74f65e988077a85e0476dd0a083778908934c6b33e4ce175a2ea94` |
| 60 | `lemma` | [bddBelow_range_of_small](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/bddbelow-range-of-small.md) | 362 | `result-track:2adef928faccc091c4000b176b7a85b830b538a3dd3c58998f6966444cf676f6` |
| 61 | `lemma` | [bddBelow_of_small](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/bddbelow-of-small.md) | 371 | `result-track:a658c95979076379bea757b931c0478a0836f22a754caa3f45df39b31ef7c28c` |
| 62 | `def` | [Equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv.md) | 378 | `declaration-track:8131620db9b4cde4583db6fc8832851a8542c1d4c1501ffc2f7b3962b30b2b27` |
| 63 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-13.md) | 384 | `declaration-track:ead1866770d26a49e121dbc5cf592923ecc9a19e6b6c062d3c9475bb56228c30` |
| 64 | `instance` | [setoid](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/setoid.md) | 391 | `declaration-track:3177387f0be01bf583fb8d418e1c2fda7fb8ccb4a31650903206d12ac060dc3a` |
| 65 | `theorem` | [equiv_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-def.md) | 394 | `result-track:ea18a5d37edd51ac57bdc0df38c204269d0cce4a41032e9a9e15e51a0e1330e2` |
| 66 | `theorem` | [Equiv.le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-le.md) | 396 | `result-track:021f3e2a6b55935787618a413c988be413a20fbe8efa4c380fc243b3ee307643` |
| 67 | `theorem` | [Equiv.ge](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-ge.md) | 399 | `result-track:6b01b7c3467b89a438c7378a4d6f0530b58e1a7a8fcb767f2b21e6026fdd7ed5` |
| 68 | `theorem` | [equiv_rfl](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-rfl.md) | 402 | `result-track:cb0cf2fff5b8f3572de0d9f886d8ae7af86bb96d34866ce3971c3505992c1dd6` |
| 69 | `theorem` | [equiv_refl](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-refl.md) | 405 | `result-track:a1705fda2dee9f248965e1ea602eada4f7029283e613c87ced5f08f8a00bee40` |
| 70 | `theorem` | [Equiv.symm](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-symm.md) | 409 | `result-track:693330eff95d5705e02f7a16b4efec553314912b4d7b257d9b5f6a3085b722be` |
| 71 | `theorem` | [Equiv.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-trans.md) | 413 | `result-track:80dbb7e4790fb4524f41d1aced7f50204243f36b69db1e4738a66e6fb5cb016b` |
| 72 | `theorem` | [equiv_comm](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-comm.md) | 416 | `result-track:07f548d7396b7fa99040aad820092ed6201cdd88b610306203ba028587306f3d` |
| 73 | `theorem` | [equiv_of_eq](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-of-eq.md) | 419 | `result-track:0bcf1ab815e1a0f134a1ca451dedb08149ff99b4f31b9a41b35560dd2f0cc028` |
| 74 | `lemma` | [Identical.equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/identical-equiv.md) | 421 | `result-track:78b42072c6976927babdf8efd401bc26e1d802ec9e57a06f9ffb90e9f6a5ab89` |
| 75 | `theorem` | [le_of_le_of_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-of-le-of-equiv.md) | 424 | `result-track:67f64d28c54b9c9d551c97a53ef61e278372081da750b1204a74472b412bc920` |
| 76 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-14.md) | 427 | `declaration-track:ec807e10fa3a20a19ad3a27a5c1c8617acb5fd03fbec56d5d9f09a3bf7f90c7f` |
| 77 | `theorem` | [le_of_equiv_of_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-of-equiv-of-le.md) | 434 | `result-track:f8961ffed1937f5e9a54f2c869fc703f2ad63423668c8edfe20e845c996e0c91` |
| 78 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-4.md) | 437 | `declaration-track:2819b5d95a444ce92ece6c71e3fac1aede193c8ea8fd852bf76bde7a5e253893` |
| 79 | `theorem` | [LF.not_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-not-equiv.md) | 443 | `result-track:49767d556c5ed6ed7f7d01b9599876c3f3ad92e813cc11ef9fd7c9e0040b56ae` |
| 80 | `theorem` | [LF.not_equiv'](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-not-equiv-source-edition-2.md) | 445 | `result-track:4f7bbe99844166fdeda8211f746b66e0d8082acadcc5e68db66ec9b366c4d309` |
| 81 | `theorem` | [LF.not_gt](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-not-gt.md) | 447 | `result-track:95a5220a7551c890c97eeac5c2aecae2eab7260a529dacbb952e24ace96df7b6` |
| 82 | `theorem` | [le_congr_imp](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-congr-imp.md) | 449 | `result-track:c6ddba2359bfaaff304d82219474055ee47782e69f6dcc852ed9fbe83217bba8` |
| 83 | `theorem` | [le_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-congr.md) | 452 | `result-track:6172e66928dd6a220195826d5b464b478cf8702b0355612aabd17e9945889676` |
| 84 | `theorem` | [le_congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-congr-left.md) | 455 | `result-track:c7b1114be51e8cfd4eaa1fcc87cd9ff18937e65eb2a076b7e77e767f41bd3088` |
| 85 | `theorem` | [le_congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-congr-right.md) | 458 | `result-track:72c07b71ebdcb4a926917b61ea718ac4dc161368a0e44e23bc115498c2ad3c2b` |
| 86 | `theorem` | [lf_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-congr.md) | 461 | `result-track:cc8d167add3480890a302fcc58ccab75b6b712a0a16d388e2829269a3ef63f5f` |
| 87 | `theorem` | [lf_congr_imp](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-congr-imp.md) | 464 | `result-track:e45a2ce26112844f930b16e98bf7e68a1c17560edcbf6e75e384d8a7c6da5d7d` |
| 88 | `theorem` | [lf_congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-congr-left.md) | 467 | `result-track:0cb04e35ff2158651c681e69e1f6da36695a66bcc05eff563d144bdb790bc9ec` |
| 89 | `theorem` | [lf_congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-congr-right.md) | 470 | `result-track:9863cb6314d74d1da8b8cebab70d0f9b15c20ba12413cdf499c06c1e5d8c275f` |
| 90 | `theorem` | [lf_of_lf_of_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-lf-of-equiv.md) | 474 | `result-track:c879bc08f9308e352d9e7158d0dd2558345f9f45578288d9108c4ac3286e3260` |
| 91 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-12.md) | 477 | `declaration-track:cf891c19a9acae23e7728234b12a4b6e5962e938643e7b7faf9e52fa9708d631` |
| 92 | `theorem` | [lf_of_equiv_of_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-equiv-of-lf.md) | 480 | `result-track:ac2825511d7289bf7be359ff5303278df7c2799269f84229f6acdc985b44d85e` |
| 93 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-5.md) | 483 | `declaration-track:3786ac40cd1b4a9085d025f234d8545137e188e9643670524de26628db86bb48` |
| 94 | `theorem` | [lt_of_lt_of_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-of-lt-of-equiv.md) | 486 | `result-track:61089807f2899b461048b88ec975dc74a1223c9341a994a3853030413a2b8c34` |
| 95 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance.md) | 489 | `declaration-track:06edc0137c37fa2e97ea2cd2db89a12b7b5a975a4e4948c5a5e74e27d850459d` |
| 96 | `theorem` | [lt_of_equiv_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-of-equiv-of-lt.md) | 496 | `result-track:f80a3b115ca30e249a837b0865ec4968e0d17c4ff22a85f25f06f3009d11e422` |
| 97 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-6.md) | 499 | `declaration-track:415e5a45257e5789881e800df7ae807e00abfcee28ec07c28f5e1358249e67cc` |
| 98 | `theorem` | [lt_congr_imp](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-congr-imp.md) | 505 | `result-track:040624d5e0b12e784b2befa96efc43bab0c73b1d2db20f94a6da357545bf22c9` |
| 99 | `theorem` | [lt_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-congr.md) | 508 | `result-track:4b0b3c091ab82193fa0ca8eb3ee902cd0c80d6ceb7dc2e0fb4f395c68cfcf6b1` |
| 100 | `theorem` | [lt_congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-congr-left.md) | 511 | `result-track:7d4223cb3c4620ef676b4365650f6bd6c4937736659e181647afcff1cca233de` |
| 101 | `theorem` | [lt_congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-congr-right.md) | 514 | `result-track:c77150fee25d8182df64b753da1f4e7fce6b1e0b4b64e5b471581c52772faa03` |
| 102 | `theorem` | [lt_or_equiv_of_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-or-equiv-of-le.md) | 517 | `result-track:1a51ff67d2afb238b08af99dbdee5550f812c05fba4d6739b4deb2d992c52523` |
| 103 | `theorem` | [lf_or_equiv_or_gf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-or-equiv-or-gf.md) | 520 | `result-track:559695ae7dc4ae424aa784e1b99db0ee26df19d82e22139ba32c1450d1d68498` |
| 104 | `theorem` | [equiv_congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-congr-left.md) | 528 | `result-track:0559fa944d34521708d6352865ca38e89ecb6ef1309a4793d411fa08c508691c` |
| 105 | `theorem` | [equiv_congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-congr-right.md) | 532 | `result-track:d03533082b20ea1659384b7ba94a9d040ca3075dad3451a084d01adc71ebd79d` |
| 106 | `theorem` | [Equiv.of_exists](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-of-exists.md) | 536 | `result-track:029987b69c91daa5f545624f6676de1a6eeb865f659f21c35008afa75bd5afb1` |
| 107 | `theorem` | [Equiv.of_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-of-equiv.md) | 550 | `result-track:f8124204922799a282f34a3245fb7f58f89dea611ff3fa2c77d2cbae01f5fa1a` |
| 108 | `def` | [Fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy.md) | 560 | `declaration-track:b3973f91c21fed4660d6a9705af9490ee01d3c48d669147a350952998dd2ac87` |
| 109 | `theorem` | [Fuzzy.swap](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-swap.md) | 567 | `result-track:ee9a7375541063bd366b35b2ac4ea5c772328bdb613ef6cd9175512fbf8f39ea` |
| 110 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-9.md) | 570 | `declaration-track:ab174a5ab4cc150c5a82a490dceb6ec200d93938acd8da84e482053a4e5c1a00` |
| 111 | `theorem` | [Fuzzy.swap_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-swap-iff.md) | 573 | `result-track:325a141e401973a0921c066675e30e5b666a30daa2049a7403e5949eccde2f17` |
| 112 | `theorem` | [fuzzy_irrefl](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-irrefl.md) | 576 | `result-track:52199a66513f1e7f32da9ba6008dff57fd092a893444b7598c4d1a2c1e88a645` |
| 113 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-8.md) | 578 | `declaration-track:95d48228792ced2524cb5e283af1245de0f13219f645c838769898abf2766704` |
| 114 | `theorem` | [lf_iff_lt_or_fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-iff-lt-or-fuzzy.md) | 581 | `result-track:9ed75ed515af012e80bd9719453b693ac75a778e3ff76d02d396f6c71db64775` |
| 115 | `theorem` | [lf_of_fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lf-of-fuzzy.md) | 585 | `result-track:dc2a798c3575a6d4974987cb6501c799a29f543136d99249bc961067e06ae06b` |
| 116 | `theorem` | [lt_or_fuzzy_of_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-or-fuzzy-of-lf.md) | 590 | `result-track:9ef438dd8e412e6c0d741b44cbecef7d65777497345e6a5f3412f431bcad3600` |
| 117 | `theorem` | [Fuzzy.not_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-not-equiv-source-edition-2.md) | 593 | `result-track:e024d770fabfbb81538e2f078e8376a6daee4dcb5ba8fea184fd57d6954b728d` |
| 118 | `theorem` | [Fuzzy.not_equiv'](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-not-equiv.md) | 595 | `result-track:150ba0ca77fda121c512b52a440f007a97889f757a5aa81ae03700c7c16c69ca` |
| 119 | `theorem` | [not_fuzzy_of_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/not-fuzzy-of-le.md) | 597 | `result-track:a56dc7171a33304968b3872db37ba51547bfa7a39a9c134c24788a4122e5d7b6` |
| 120 | `theorem` | [not_fuzzy_of_ge](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/not-fuzzy-of-ge.md) | 599 | `result-track:1cb9c3ac86366860bc2cf5a652d983d8e57291f881adefa1c349cdcad563f20f` |
| 121 | `theorem` | [Equiv.not_fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-not-fuzzy-source-edition-2.md) | 601 | `result-track:fb5a5a36c4058523c5491be84e7b9e606f38f624ac7c7b60389da1733894e7ce` |
| 122 | `theorem` | [Equiv.not_fuzzy'](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-not-fuzzy.md) | 604 | `result-track:baef5c14d339f19652241990f7ecb91924da2251b5be3641a3eaba24346895c6` |
| 123 | `theorem` | [fuzzy_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-congr.md) | 607 | `result-track:d59de2a9384070c28ef2e96b52f87b9f0adfa634ec2f087daa919cdc345efa58` |
| 124 | `theorem` | [fuzzy_congr_imp](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-congr-imp.md) | 610 | `result-track:f12b56c5d16a929ee0a70e793107ff6762f1f16182ad05f79cdeb2a5a85a620b` |
| 125 | `theorem` | [fuzzy_congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-congr-left.md) | 613 | `result-track:35b6638c89b4ab4f7d97e9f076dc5e31a1d16a0a6e2c81cdbb378e4bc84bbdf3` |
| 126 | `theorem` | [fuzzy_congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-congr-right.md) | 616 | `result-track:dd0fe054b1f60074c5592a635b63beb6265d1ed50433245ac361a444e68ad6d5` |
| 127 | `theorem` | [fuzzy_of_fuzzy_of_equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-of-fuzzy-of-equiv.md) | 620 | `result-track:4a82fd7abefddfb426eb3cea3a34ca965d9e1ea64cee8cecf6117b22b7cc1b66` |
| 128 | `theorem` | [fuzzy_of_equiv_of_fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/fuzzy-of-equiv-of-fuzzy.md) | 624 | `result-track:eee23f71036d65e755e3432ded5b91ff03b4fd351dab0b1a4bd18ca695c2efc4` |
| 129 | `theorem` | [lt_or_equiv_or_gt_or_fuzzy](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-or-equiv-or-gt-or-fuzzy.md) | 628 | `result-track:5102b1e4562af1d10f0fccf106ae3f175ea9c1748ac88060044217b0309900fb` |
| 130 | `theorem` | [lt_or_equiv_or_gf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/lt-or-equiv-or-gf.md) | 644 | `result-track:501145c9b8cfdaa590ada9babec944b903805caf003a1ba22817f474a25a5faf` |
| 131 | `theorem` | [Relabelling.le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/relabelling-le.md) | 650 | `result-track:65189d92ec34148ad25995596294dc277f70c667e9fd2190357485ac57a1d24d` |
| 132 | `theorem` | [Relabelling.ge](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/relabelling-ge.md) | 656 | `result-track:539278be321bbadd58dbef27feddef8f53a32e37a68dd19d7391a3d7f20743f7` |
| 133 | `theorem` | [Relabelling.equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/relabelling-equiv.md) | 660 | `result-track:9000a22bfafd1719d148db520a803758f0a88414ff5a47c7e8861789b60048e6` |
| 134 | `theorem` | [Equiv.isEmpty](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/equiv-isempty.md) | 663 | `result-track:fbb1b6c9fac2dcf212d853290eb78957ee81055ceab2d08d8e23412845c7567a` |
| 135 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/instance-source-edition-11.md) | 666 | `declaration-track:c051d86700106342f00e091633005ef84796ff03288bdceb3f2c61a8c96c99dc` |
| 136 | `lemma` | [le_insertLeft](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/le-insertleft.md) | 672 | `result-track:f7f20136bdb18ab36ebe818d1d55ec3dbdc3a79e863148c7e23082a8921cb166` |
| 137 | `lemma` | [insertRight_le](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/insertright-le.md) | 688 | `result-track:f6fb0ad3a0b2a9364f221e36b5d02d88788ae95ba22a2652392f22572fda112e` |
| 138 | `lemma` | [insertLeft_equiv_of_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/insertleft-equiv-of-lf.md) | 706 | `result-track:076dad37a3f7a318c28140ef6dec2558a2ccc83ee093a7146ad9a7b5eae84613` |
| 139 | `lemma` | [insertRight_equiv_of_lf](../../../../../MathematicalLogicAndFoundations/SetTheory/PGameOrderNamespaced.lean/declarations/insertright-equiv-of-lf.md) | 730 | `result-track:c4183f1274efcd5ce1c2571f442931dd3700552c8cab8f0ae930cf13b8d522c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa8143474cddca96d82b4b701e972168e31377cb132aba0a53ac27221d27b426 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Order/Variant00e62f36daceb204aea5145fe76645c270c6d7f165dc73d965f1354dd7809958.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
