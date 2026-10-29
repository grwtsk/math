# Verification target: Max Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ea0848ef8bc9051f774b74388badee3f10160e4",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ea0848ef8bc9051f774b74388badee3f10160e4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Synonym` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NoBotOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nobotorder.md) | 49 | `declaration-track:9bb59eb2a45e85481cdb253e80adc04cdbe804f9b9473c39c418674158c56f25` |
| 2 | `class` | [NoTopOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/notoporder.md) | 55 | `declaration-track:e61684accad6f876babf24ad198e6740d3837b4babde6c7f9c18d51f34d6ba5b` |
| 3 | `class` | [NoMinOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nominorder.md) | 61 | `declaration-track:b7104d98da37115e78ce47a4bc80217e7b50068693e7e98c0cfbb740dbe18c95` |
| 4 | `class` | [NoMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nomaxorder.md) | 67 | `declaration-track:a07c3123c0fb542285db0206f551bfedbfdd271aae5be42cd0a2672d62789f09` |
| 5 | `instance` | [nonempty_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nonempty-lt.md) | 80 | `declaration-track:7356fb542e2cca414dabdc69469290f24dee4c05324f9d78451e6b61b9a49eaf` |
| 6 | `instance` | [nonempty_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nonempty-gt.md) | 83 | `declaration-track:414db76646265f4e45a0abf177fd9d7ab2f39042271a86777458bafefbc7836e` |
| 7 | `instance` | [OrderDual.noBotOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/orderdual-nobotorder.md) | 86 | `declaration-track:e802f10cb5f0af87ad4cb8cf2bdf9799a867b64c7e1e54ad41bce2d8f65633cd` |
| 8 | `instance` | [OrderDual.noTopOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/orderdual-notoporder.md) | 90 | `declaration-track:6ff07bdf343c94b88e8e41088f875f629c0101383db6f36698ef68cbf4b71a50` |
| 9 | `instance` | [OrderDual.noMinOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/orderdual-nominorder.md) | 94 | `declaration-track:1a9c54e4801dbc665e481efca957f88d0b058f5124bc64276020b939095354af` |
| 10 | `instance` | [OrderDual.noMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/orderdual-nomaxorder.md) | 98 | `declaration-track:48c7f42904da47b620e6c88a5f29e4d7084c4b20a9afdcf21695316826fa515c` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:3d8f9653db2f8c99ec8398bbfa79e27b82e669bac152eb1896f2868192f20036` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/instance-source-edition-4.md) | 107 | `declaration-track:9f466802e64165bedcc0d07f8c55db253487fd065ab24ddfbe4920ea4e8cf450` |
| 13 | `instance` | [noMaxOrder_of_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nomaxorder-of-left.md) | 110 | `declaration-track:aebfb94d7610d5c4812b734695eaf3e3ea08148c54249e75835c7a4970509477` |
| 14 | `instance` | [noMaxOrder_of_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nomaxorder-of-right.md) | 116 | `declaration-track:8e3a8b161ebe5bd7c229bcf4dc74959b38ef3a6f58c4564834154fd9eeb3e96e` |
| 15 | `instance` | [noMinOrder_of_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nominorder-of-left.md) | 122 | `declaration-track:1a3fb98b8017817b80684b938ffb359c5ae4a7ff274551f8a148f158e25d9387` |
| 16 | `instance` | [noMinOrder_of_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nominorder-of-right.md) | 128 | `declaration-track:685c2c354a7c6574970111852399c8bc176c778b47707f89239fb6dfd9a2d8ef` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 134 | `declaration-track:8dc8d256a184b8aabf7ed3aaec9cba3bde120b2273431f643e7f1e317fd89b35` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/instance.md) | 141 | `declaration-track:34910f7a898c252ad0b466a18e6f41563e65680548a30a31b62282dc7732fba8` |
| 19 | `theorem` | [NoBotOrder.to_noMinOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nobotorder-to-nominorder.md) | 149 | `result-track:dfb124bd97dad3817500117d3d9f206273adf1745bca1ef9f16183d6a0fafeca` |
| 20 | `theorem` | [NoTopOrder.to_noMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/notoporder-to-nomaxorder.md) | 154 | `result-track:a82d6cce69f4b744be9f4be98d580cfdc81690502154c79d244bff6747921428` |
| 21 | `theorem` | [noBotOrder_iff_noMinOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nobotorder-iff-nominorder.md) | 158 | `result-track:656bb068f95db417116e0c26006cacb632d159071d4417b4ac2ea8d6f5ed7686` |
| 22 | `theorem` | [noTopOrder_iff_noMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/notoporder-iff-nomaxorder.md) | 167 | `result-track:9496d13223433f17cdb4ab01d728e4cffd0c20429674970517e17391fcde1f73` |
| 23 | `theorem` | [NoMinOrder.not_acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nominorder-not-acc.md) | 176 | `result-track:1791afb9a6d5a1db2fae49df7fb381fd474e4a7f13e13da3b4ff515c9765bce5` |
| 24 | `theorem` | [NoMaxOrder.not_acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/nomaxorder-not-acc.md) | 180 | `result-track:c62d53765af1d44ebd98a22e50e0064c978af3e51eb63cf661be5976fcf82b18` |
| 25 | `def` | [IsBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/isbot-source-edition-2.md) | 192 | `declaration-track:e409c46f4fad6879a61855996dcf8cd9e586357a9e3a0d72b9d019f425de6d22` |
| 26 | `def` | [IsTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/istop.md) | 200 | `declaration-track:23e9771c89bc39315cc335f7af8f97755a8a10d7fc089b59765098fd366bba3e` |
| 27 | `def` | [IsMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin.md) | 207 | `declaration-track:953b1678e89f9c13227cee8e14a194cd20b2f23bfe3f1fd2e1160ea79ff95576` |
| 28 | `def` | [IsMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax.md) | 214 | `declaration-track:219a5e613774a341ef401c85700603f012dc5f82647e90da3133a35c792ff9e7` |
| 29 | `theorem` | [not_isBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/not-isbot.md) | 219 | `result-track:dad1226a477aacc51875e3cb2ca0a29a331dc417273de3b200259b811d7c3c1e` |
| 30 | `theorem` | [not_isTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/not-istop.md) | 225 | `result-track:6afa3547a9b960b717bd45f1aa68935e443911b48f49830510d5f4bdd294e0d8` |
| 31 | `theorem` | [IsBot.isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/isbot-ismin.md) | 230 | `result-track:3be978398268c90d7ab3dd868a71f0a4fb88df799bde03fa2362ddf8c7981851` |
| 32 | `theorem` | [IsTop.isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/istop-ismax.md) | 233 | `result-track:be897ab5190e9a848ad95f8d8f3fb46bdcb480917083e72c42a4e7afd939465e` |
| 33 | `theorem` | [isBot_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/isbot-todual-iff.md) | 237 | `result-track:3022a4afd0ad2a68754ec4ac705dbff22355130e5a84f4120542b9d799847e8a` |
| 34 | `theorem` | [isTop_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/istop-todual-iff.md) | 242 | `result-track:1075402c43ce81268257992ecd727ec7e38d77f2fe3245b61e50f9aa82578674` |
| 35 | `theorem` | [isMin_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-todual-iff.md) | 247 | `result-track:ddfae4a2c3179329f8de4769f972fba4d3704081583f6f9aa7eae39c11b9e9e5` |
| 36 | `theorem` | [isMax_toDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-todual-iff.md) | 252 | `result-track:33ea86c3373f5cb6ef5b45abe25afc2966f80a3e10ca6bd948b4f91767f001b6` |
| 37 | `theorem` | [isBot_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/isbot-ofdual-iff.md) | 257 | `result-track:a12d6467138ff755dcec6455348cda75f52de5b6384f710bb5c0c3a726f20565` |
| 38 | `theorem` | [isTop_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/istop-ofdual-iff.md) | 262 | `result-track:d9cb3b13a658805aa7112dd99b0919fb89c35d7d926184682c475cc5d8fc923e` |
| 39 | `theorem` | [isMin_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-ofdual-iff.md) | 267 | `result-track:ff330429d98590932f0e25df38c84718828693168cff5ca4791142bc89645b30` |
| 40 | `theorem` | [isMax_ofDual_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-ofdual-iff.md) | 272 | `result-track:3a98ce7c9daab133c3970f258101f152bc554fd7a62896fb737eaac61abbd3a7` |
| 41 | `theorem` | [IsBot.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/isbot-mono.md) | 306 | `result-track:2d3f36804529e81cc7bb0296fbd7ca304e75dcd18d0d6fea594606cf40c9c161` |
| 42 | `theorem` | [IsTop.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/istop-mono.md) | 309 | `result-track:807ccc9986d78ae5b50e4b92ea2ec1b74d0559309d705e3181c95c54238c6508` |
| 43 | `theorem` | [IsMin.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-mono.md) | 312 | `result-track:52594d3f1da6bfa6cb759df8ec79dd621a0c455c22d5a3167d77ddc480e64ed0` |
| 44 | `theorem` | [IsMax.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-mono.md) | 315 | `result-track:55245d18574c29adac77ff53d721f0204cedb04f8d5b4c0b960ba4b11b100b20` |
| 45 | `theorem` | [IsMin.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-not-lt.md) | 318 | `result-track:581a1605354102064611402ae044dfe81b8de062b05d7a9e18d8f3b4d459623f` |
| 46 | `theorem` | [IsMax.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-not-lt.md) | 321 | `result-track:a1c032fdc743c80285c254462914bc6c6fc97287acad98a80e4213b467625305` |
| 47 | `theorem` | [not_isMin_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/not-ismin-of-lt.md) | 325 | `result-track:4baca53b693521515ac00606262cc986c9152e9573b4379d2f68fe2007179edd` |
| 48 | `theorem` | [not_isMax_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/not-ismax-of-lt.md) | 329 | `result-track:a540824fd9ab4bbeab3934d10c8ba2879906c50856b0d44427f4b424b96c2a06` |
| 49 | `theorem` | [isMin_iff_forall_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-iff-forall-not-lt.md) | 336 | `result-track:680dbeebf89d633d3dd49ce2eba1848f64df767e1e9e41307357dc40d6bbaf9b` |
| 50 | `theorem` | [isMax_iff_forall_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-iff-forall-not-lt.md) | 340 | `result-track:2430b38599085ad49aa0b3770d43425ea1be61182c807742de8ad54bc5c7d88b` |
| 51 | `theorem` | [not_isMin_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/not-ismin-iff.md) | 345 | `result-track:f2815c33ed7a68eb2a3124ec84cbd388ce4f5c511cd73e7611534562041884f6` |
| 52 | `theorem` | [not_isMax_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/not-ismax-iff.md) | 350 | `result-track:412ca7848a55a6800a4ceb41f88417c9af88093c4e65650664951dfafc8f9087` |
| 53 | `theorem` | [not_isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/not-ismin.md) | 355 | `result-track:f997c74559c07317063cca63968f6fbe060f82b68162f5b5d4113279ba72444e` |
| 54 | `theorem` | [not_isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/not-ismax.md) | 360 | `result-track:44b997ae0b712a5fd790acb47cdf3748cae8e11fc39fec610c226fc2e656af42` |
| 55 | `theorem` | [isBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/isbot.md) | 368 | `result-track:c8a17aa48c58af06dd235618e35c9df9f7900817e64cc4414a1243bd32410dcb` |
| 56 | `theorem` | [isTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/istop-source-edition-2.md) | 371 | `result-track:f17e0ec12fe3aa807b48c53cdc72853abee21b112efb675ea3700e85d92629b5` |
| 57 | `theorem` | [isMin](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-source-edition-2.md) | 374 | `result-track:c9d9a2de09dafd7dc566a88b8ac646c88dde28b21393a46fd31e73926e461006` |
| 58 | `theorem` | [isMax](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-source-edition-2.md) | 378 | `result-track:db8604249e614e61d4d6727bd87a221ebc3e6a93d2d56343483e27f6b441506b` |
| 59 | `theorem` | [IsMin.eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-eq-of-le.md) | 390 | `result-track:40a5b11104ade6a95362c6f28a80fbd48b7117c0ce9fd609356eeca72f38d857` |
| 60 | `theorem` | [IsMin.eq_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-eq-of-ge.md) | 394 | `result-track:db2bf54fff3aeda9c7122fd226488fd8ce747eff3d05143a800bb75ec96a84d3` |
| 61 | `theorem` | [IsMax.eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-eq-of-le.md) | 398 | `result-track:281aaeccb34e4d411de3f6536541fd09470dfd08d77f2bb5786937bf581bfb4a` |
| 62 | `theorem` | [IsMax.eq_of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-eq-of-ge.md) | 402 | `result-track:cf9840e4b63957278c94d06bb517dafd983d8d1bace24844540454df53152a98` |
| 63 | `theorem` | [IsBot.prod_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/isbot-prod-mk.md) | 412 | `result-track:f1277ef574c9a94fa571227564794a35498d922d4f5d3a03089ed16c072eb402` |
| 64 | `theorem` | [IsTop.prod_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/istop-prod-mk.md) | 415 | `result-track:a0ec62d0692c5fe3e2ebcf1e419a19535ad38df1e2deb7d0d143bd1e6b92371a` |
| 65 | `theorem` | [IsMin.prod_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-prod-mk.md) | 418 | `result-track:77edec529dd63f7b8dd8fd55962c4c61fadd2b8fc32282e37437fd17b06edc7b` |
| 66 | `theorem` | [IsMax.prod_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-prod-mk.md) | 421 | `result-track:dd356500bd39217a9d982b509bf4c48cdf28e20e556dedb2ccdb6fd25e895ee8` |
| 67 | `theorem` | [IsBot.fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/isbot-fst.md) | 424 | `result-track:5b7f167f51fe159e4c1c9ab5020e3ffe0cd4d2beaebe73349676cc0638f5e5b6` |
| 68 | `theorem` | [IsBot.snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/isbot-snd.md) | 427 | `result-track:9bf75ab66054963fcf7214675678f5b07882707ffedcd2d456e3ca913ab8cdd4` |
| 69 | `theorem` | [IsTop.fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/istop-fst.md) | 430 | `result-track:27781037a6e5679f533e2b89506ad3dc1794034fe174875015dd8da20cc703fd` |
| 70 | `theorem` | [IsTop.snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/istop-snd.md) | 433 | `result-track:f8846025d5bcee31426159bc1e15d07b443d805ad39fcca9bca22ccf6fe916bb` |
| 71 | `theorem` | [IsMin.fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-fst.md) | 436 | `result-track:8a1af357abf9ce028eeb7e6b6e63015feee0d102f2f11eb23c644360cf5b5876` |
| 72 | `theorem` | [IsMin.snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismin-snd.md) | 440 | `result-track:f834633d3eee1eafbcc347d9ad16db2d698114e03da0818cddc6d6f886e79448` |
| 73 | `theorem` | [IsMax.fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-fst.md) | 444 | `result-track:78cb077a376758795d9bf78a27a38b37feb805f9536ed0054ca5785edb60a6e9` |
| 74 | `theorem` | [IsMax.snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/ismax-snd.md) | 448 | `result-track:8afffb29fa22adda2ef54700396662ac8335e90f4d7c95c1d84cf8f2e0f57039` |
| 75 | `theorem` | [Prod.isBot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/prod-isbot-iff.md) | 452 | `result-track:6e926d02b4a536bfc6cadf69865c37ef420e6a43c590cdc89b3122bee532de79` |
| 76 | `theorem` | [Prod.isTop_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/prod-istop-iff.md) | 456 | `result-track:83131c9143c1f5af12b8153183e62d3491dd438b32c7550c2fe3cb4526b1a2b4` |
| 77 | `theorem` | [Prod.isMin_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/prod-ismin-iff.md) | 460 | `result-track:7df1367af48ef31c731e3af52d5f6bcfe085e9e4dda68cd06f9a127cdba4fee8` |
| 78 | `theorem` | [Prod.isMax_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/MaxNamespacedAligned.lean/declarations/prod-ismax-iff.md) | 464 | `result-track:94b5904e01a58b62b0abfb328cdca03b0b05701f6dd65e58c7e42327301e01b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=111b50259c4da30ad989d289c26a4b1be22a6cbda2e34c7438aa829d7e641962 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Max/Variantd383980f89b4d6ded217a62dcbc1d2c284b162aad0af141d8cec534d7c52028f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
