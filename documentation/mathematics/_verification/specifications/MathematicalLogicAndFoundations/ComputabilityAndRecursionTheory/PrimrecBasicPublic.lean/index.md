# Verification target: Primrec Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9110d826d1fb40ed5f4b187ea47afb758314131e",
  "lexical_observation_count": 156,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5344925eaac8f4986fcddd987ba85da3489b2daad2041d4d43ed15b1075f02e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9110d826d1fb40ed5f4b187ea47afb758314131e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5344925eaac8f4986fcddd987ba85da3489b2daad2041d4d43ed15b1075f02e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5344925eaac8f4986fcddd987ba85da3489b2daad2041d4d43ed15b1075f02e3.lean.json)

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
| 1 | `def` | [unpaired](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/unpaired-source-edition-2.md) | 54 | `declaration-track:dbfad161734075ad56e686a8dff8d6e29bed766d678227c0f11818960e2dd339` |
| 2 | `inductive` | [Primrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrec-source-edition-2.md) | 58 | `declaration-track:cc9eabce60e5d0c7747be2a035de727a5b0dddc53d5f8be1fedc81560811e0a8` |
| 3 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/of-eq-source-edition-3.md) | 72 | `result-track:7f82e1c94427c3bc6815bfd32f00b10bc56a28544bd12798407d07cfde9c4624` |
| 4 | `theorem` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/const.md) | 75 | `result-track:1b8fce2bb7c904582fbdb28c939923cd6ae95b9b62b1eb4ba04bc9034d0fda3c` |
| 5 | `theorem` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/id.md) | 79 | `result-track:24653d5e7dfbdf0a7a1150447a1ad026ad33bb840e486f5765f8601b0721353c` |
| 6 | `theorem` | [prec1](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/prec1.md) | 82 | `result-track:f9b2510fbbf40d51142baee55ecffdb0ba3df7a804e3a1e83a485ac7ab41aca5` |
| 7 | `theorem` | [casesOn1](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/caseson1.md) | 86 | `result-track:9f5af82b99c6c10ef892146e8f34b639320ea0c8b949d9332a9b591955af4f76` |
| 8 | `theorem` | [casesOn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/caseson.md) | 89 | `result-track:3abaa43475bf88726069d682565b0c7031ab77af7f58d3aa88698c6e4463394a` |
| 9 | `theorem` | [swap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/swap.md) | 93 | `result-track:301a023e8d885b311f2ade44d05b503fe388ba4a3d6a3ad6373c89cb306c4037` |
| 10 | `theorem` | [swap'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/swap-source-edition-2.md) | 96 | `result-track:75363e3094c250e06740f2c38a9e69c398b3ad43da9c43135105a183ee9d6beb` |
| 11 | `theorem` | [pred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/pred-source-edition-2.md) | 99 | `result-track:c0104779182f57262ebfbcf241c3e62913a5b9d2d8c4460fa12410efa0ed07bf` |
| 12 | `theorem` | [add](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/add.md) | 102 | `result-track:a4a66b6f311f783c895c2c1aec3d45dda1447f39c412dc1f71b47fcae8cc7f87` |
| 13 | `theorem` | [sub](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/sub.md) | 106 | `result-track:6156c890a6b313cac49a3af41c2ed90c91a5d6a45acd9d2e9b4315b97cf50b4d` |
| 14 | `theorem` | [mul](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/mul.md) | 110 | `result-track:7a9c26c185d561ba5e527b374ac4258a3e070e43b58772926d32777a5687678e` |
| 15 | `theorem` | [pow](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/pow.md) | 114 | `result-track:a244b3874393a892fcffeef05dc42f0cecec8290a75c6b7e3e99abce525dba5e` |
| 16 | `class` | [Primcodable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primcodable.md) | 132 | `declaration-track:ab9488648671613c58ab227672aec7a5da0a916ecc6a8304e58f19735cb0210b` |
| 17 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/instance.md) | 139 | `declaration-track:d56406e0e9e5dd56b6976a05fcdd36f098c51141b3860f9b87a1b946787b274b` |
| 18 | `def` | [ofEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/ofequiv.md) | 144 | `declaration-track:6078b6f4ea45f3685ffb7bfc00d62b5e0afbab99bc254f7159ec3fe8d09855e3` |
| 19 | `instance` | [empty](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/empty.md) | 151 | `declaration-track:3506b59de60b70e83a4d95a869cc84ad7d1439065a6ee154f37ea244fa04de7f` |
| 20 | `instance` | [unit](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/unit.md) | 154 | `declaration-track:62a69dfffb44a905b07dabefda3af534b1e1405748699d1a1d31a05a0a722836` |
| 21 | `instance` | [option](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option.md) | 157 | `declaration-track:b59744e54b11841f4fdf964611ce79a7cba6ab43bcef19c9f42fbdbe5a14b415` |
| 22 | `instance` | [bool](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/bool.md) | 165 | `declaration-track:e943dae162452ff6b5aeb13d77080fa617031c8b5a42608c92426197b61872dd` |
| 23 | `def` | [Primrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrec-source-edition-3.md) | 175 | `declaration-track:ebb3d53fa6f5ee630c4fbca326de1765dda218102658e698d8b4243c16dbd529` |
| 24 | `theorem` | [encode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/encode.md) | 185 | `result-track:b01c4dab1888e90d7edfec65cf1e1b1a4ba6388d23f3410be55368b187e538ef` |
| 25 | `theorem` | [decode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/decode.md) | 188 | `result-track:4ab9a086161d501e7d93de697599de670c7fe290cb3d93f54a25f7b63d7b058c` |
| 26 | `theorem` | [dom_denumerable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/dom-denumerable.md) | 191 | `result-track:f56385b6f662f32aea9d8151d915da1d2866789a7cfd99c524ecb9683a7588d5` |
| 27 | `theorem` | [nat_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-iff-source-edition-2.md) | 196 | `result-track:80ee885711113d8a9fec8b8139bbf47b7f52dd9bf52ce28836f80f43ad347209` |
| 28 | `theorem` | [encdec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/encdec.md) | 199 | `result-track:6acf124e85b2056d87b77c4394613d4cd63a40799ae7b1a33fb6b9ee20d26d68` |
| 29 | `theorem` | [option_some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-some.md) | 202 | `result-track:60c70ba719dbef2c52bf76b6dba728b82f7e89312524126fdbd0c700fed73845` |
| 30 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/of-eq-source-edition-2.md) | 206 | `result-track:6987b9b868324ca7d5c726578b3f5585b806ec35e65b5476b23fb65210c2995d` |
| 31 | `theorem` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/const-source-edition-2.md) | 209 | `result-track:ceccadb6b7f3bc1e58035b52183f1ff091a6a18e1ac016c07f9f4ee38606087f` |
| 32 | `theorem` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/id-source-edition-2.md) | 213 | `result-track:66dd905109dd2c712d9de30179a1120fc78e14f50a942567ed4a0722ccbef602` |
| 33 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/comp.md) | 216 | `result-track:d8131e475df8eb2eb00a21dce942e376cc563b4da7f3cbf4d3abefdc438ebe51` |
| 34 | `theorem` | [succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/succ.md) | 220 | `result-track:663ba695c5fbe45bbee7275408687e8fb8d4ec377e1d22c776f2c867179a9e3c` |
| 35 | `theorem` | [pred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/pred.md) | 223 | `result-track:74bf5c3d2ce426280c98b84ae9e19e11f2bfc5c99a1666678a7b80e00c4cad23` |
| 36 | `theorem` | [encode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/encode-iff.md) | 226 | `result-track:5c1cac233a74158f21c9abba2461409f61c697b685d914d1faa94b5bc9c4ce73` |
| 37 | `theorem` | [ofNat_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/ofnat-iff.md) | 229 | `result-track:136d6ded2d181c7ada687458230798f9ac019a3f46d5734fed7de7bdb888c1c8` |
| 38 | `theorem` | [ofNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/ofnat.md) | 233 | `result-track:2655918a2840fa3450a23630d90df4ed37c1508122953afdb46266689af62f2c` |
| 39 | `theorem` | [option_some_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-some-iff.md) | 236 | `result-track:32141232a437fd6ab68653a86b96eba357dc1decea55e27c5e9b393ecfd39eed` |
| 40 | `theorem` | [of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/of-equiv.md) | 239 | `result-track:5920085069ea99deaf59a8c888d892cd1483e072360b7ebb3edc1aad6ad55ca9` |
| 41 | `theorem` | [of_equiv_symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/of-equiv-symm.md) | 245 | `result-track:432fb5881108b4137547f2c176ec09f01e14308996eb085a6861a365c769d7df` |
| 42 | `theorem` | [of_equiv_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/of-equiv-iff.md) | 251 | `result-track:8eeab0aa478152fb84b56b9f810afbfa44a72b6daa9cc905e4372a75dce72542` |
| 43 | `theorem` | [of_equiv_symm_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/of-equiv-symm-iff.md) | 257 | `result-track:8210e54e4e10692189b2146ea1198d1e02437f0728da6d46dbcbddacbc27afef` |
| 44 | `instance` | [prod](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/prod.md) | 269 | `declaration-track:72923e07776704188c5a3d95104bf3cd2cb164a80d983cc9f21654fa41079954` |
| 45 | `theorem` | [fst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/fst.md) | 285 | `result-track:c2390f32133cac83c4d02cbde80bb72f52104444a37bc7d9d32cb3e40a9dc564` |
| 46 | `theorem` | [snd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/snd.md) | 295 | `result-track:1a92fb048daa5b2ccbd0a45c468c73b1b84441952f90bfb32ae58c71cfdeb5b3` |
| 47 | `theorem` | [pair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/pair.md) | 305 | `result-track:8b2562666f4d6e4be55c72cc922b663038056a76f73d35594f72c5f85a5c4f85` |
| 48 | `theorem` | [unpair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/unpair.md) | 313 | `result-track:f30425b346e98422dfd414a99b2fccf769b5a4d8d7bb9e93b59cab5cde7da57f` |
| 49 | `theorem` | [list_getElem?₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/list-getelem.md) | 316 | `result-track:f7ade6494098c9bf8154d889710b960792b73968b105cbc7dc09846251dfaa0b` |
| 50 | `def` | [Primrec₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrec.md) | 329 | `declaration-track:3457888a65e19868924c5de8091785a430a9f5e7fbfdd68e85de07c8fea33004` |
| 51 | `def` | [PrimrecPred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecpred.md) | 335 | `declaration-track:7a2ddf02b53214f0bb1680750b6142055a433b3fd5f8897aa00951b1a7246603` |
| 52 | `def` | [PrimrecRel](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecrel.md) | 341 | `declaration-track:285895484384c70694d643a5c58a4cfaebea28a02eb4816f53ee096e90b44ea7` |
| 53 | `theorem` | [mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/mk.md) | 349 | `result-track:810f2fe8b098fa3b0dc73c28521a535d8559d137ac54ddc5741916a20f2f975b` |
| 54 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/of-eq.md) | 351 | `result-track:093bfc8a37ea4c8b593ac1e82f296f9bd83adc94f4c917ee2fd2a279a90eeb09` |
| 55 | `theorem` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/const-source-edition-3.md) | 354 | `result-track:dc873a03626d80a5e6de4bbc8817edcf4a7f91c99c1eb82c9c60281a042a0628` |
| 56 | `theorem` | [pair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/pair-source-edition-2.md) | 357 | `result-track:d2d9f15079912ee5ff0ae3936ed76a76846f4f7f7aa32ad068b4e46baa946231` |
| 57 | `theorem` | [left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/left.md) | 360 | `result-track:4346f70073f38a0f34cdaeffa64b948213bd1e1fca0b4b2daaa35a4b4c40a5f9` |
| 58 | `theorem` | [right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/right.md) | 363 | `result-track:374cf807d6e32d9870f77bfa9e60b816fa25e85c4356803d09a65f5c16a9be1a` |
| 59 | `theorem` | [natPair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/natpair.md) | 366 | `result-track:abe27f1ec9351c80b0d41a5bdc5f52b7b03c64e564d521656b3e28f061bb3f4f` |
| 60 | `theorem` | [unpaired](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/unpaired-source-edition-3.md) | 368 | `result-track:f1faba8c5ce12f8fd8c7a1bb8a7f2ae6c74095eaa7f554620e2ffed86fc33afa` |
| 61 | `theorem` | [unpaired'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/unpaired.md) | 371 | `result-track:070250fee3f27b14f16a4cf8799dae87c36b25b454417e0ec286ea239d730b20` |
| 62 | `theorem` | [encode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/encode-iff-source-edition-2.md) | 374 | `result-track:cecdeba60998ea15b04e8af33f50b17f7f2d9b24710c8cb81c80c27b93f37612` |
| 63 | `theorem` | [option_some_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-some-iff-source-edition-2.md) | 377 | `result-track:373bf0493fc5b0d761d5a6acf73534877971fdde796f7474c45fdd2b7387f9b1` |
| 64 | `theorem` | [ofNat_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/ofnat-iff-source-edition-2.md) | 380 | `result-track:332bcee8ffd5f8705511200430d25e2a5070cf9c47bfb8523af46d49febdca72` |
| 65 | `theorem` | [uncurry](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/uncurry.md) | 384 | `result-track:115c6270ad58423bcecaa29083c0c9a739be54953e2e20857b33229a6f5b5a7b` |
| 66 | `theorem` | [curry](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/curry.md) | 387 | `result-track:b955610192d42320c50e92a6aff48c61100865939ec2906dd0257ca7ce4cd806` |
| 67 | `theorem` | [Primrec.comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrec-comp.md) | 397 | `result-track:0b60ea8958456d4926370036c1424e0e3dc16b95166481d66970f1b39107fd08` |
| 68 | `theorem` | [Primrec₂.comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrec-comp-source-edition-2.md) | 401 | `result-track:46cbae8b3c828480b84a7273a33f9f3498462bf885480a7bf35c9c86186d141d` |
| 69 | `theorem` | [Primrec₂.comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrec-comp-source-edition-3.md) | 405 | `result-track:ccb0d4628f89f543c95e8a7d18d73234c64db3217592ef6916d27f9678601f86` |
| 70 | `lemma` | [PrimrecPred.decide](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecpred-decide.md) | 409 | `result-track:5ded4e1e3cd405ee7ad3190ee44cc7f688f9400fad85775dc52a7a0ea9f515cd` |
| 71 | `lemma` | [Primrec.primrecPred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrec-primrecpred.md) | 413 | `result-track:f3a46517ae6b1851ef81c0c4365cfab6f45459a74ae71845c28fbbaedd46af20` |
| 72 | `lemma` | [primrecPred_iff_primrec_decide](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecpred-iff-primrec-decide.md) | 417 | `result-track:f2b43e58859d36c6e31393c393b4157dff447be91a7848b91b920ca1695516c4` |
| 73 | `theorem` | [PrimrecPred.comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecpred-comp.md) | 422 | `result-track:050eb9b69dca8fbdc990054bd0f3ae4c870747cda8ec913fca829fa02fc13f4b` |
| 74 | `lemma` | [PrimrecRel.decide](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecrel-decide.md) | 426 | `result-track:73d95f60e2afaee11801a80eec6f9c88f88bb31398b618e4c656da5398d551aa` |
| 75 | `lemma` | [Primrec₂.primrecRel](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrec-primrecrel.md) | 430 | `result-track:7ead42fad70680caa64c55284a189c4622cff7b69ad72ef2e9006537e52803a4` |
| 76 | `lemma` | [primrecRel_iff_primrec_decide](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecrel-iff-primrec-decide.md) | 434 | `result-track:d70aa5d31823ea913cba7165bb1d611e0a9c599f81808d5f2514cb6c64276410` |
| 77 | `theorem` | [PrimrecRel.comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecrel-comp.md) | 439 | `result-track:140db48ccf558307e3a0ef470f99ed6f25235b2b9f9812f5aeef640aaac0de34` |
| 78 | `theorem` | [PrimrecRel.comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecrel-comp-source-edition-2.md) | 443 | `result-track:64d781a9651c9b7461a3533385af3d3e205d089be204ab9af6e6bc54cf91779a` |
| 79 | `theorem` | [PrimrecPred.of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecpred-of-eq.md) | 449 | `result-track:3d3593144bd13ed311e40ee63c72ccb99e24b2337f9bb63856d0bff834280ad0` |
| 80 | `theorem` | [PrimrecRel.of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecrel-of-eq.md) | 453 | `result-track:99382007f7885d2e660a033159c2a1c909ad88c964ebaf1a5114ba7287164dcd` |
| 81 | `theorem` | [swap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/swap-source-edition-3.md) | 464 | `result-track:9a7fd58fafca6503125ffc41f669c1d19088c5181ed4adeed644a9b8261061d6` |
| 82 | `theorem` | [_root_.PrimrecRel.swap](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/root-primrecrel-swap.md) | 467 | `result-track:74a1e5539b9faa106770cdd49cfc293f4067c3b3238c873fec482a2dc905f8d2` |
| 83 | `theorem` | [nat_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-iff.md) | 471 | `result-track:0d9d7285d203520c0036ef3198554a5eae7c88778b3119d759adc46b1a0d4e80` |
| 84 | `theorem` | [nat_iff'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-iff-source-edition-3.md) | 481 | `result-track:f88bce56de18c82058f9eef4f4cd317e391095a41047b2fb718f378b8988baa4` |
| 85 | `theorem` | [to₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/to.md) | 493 | `result-track:5b8bf3d02dc1c8db7bb377779468a067840707ec7ef16dbdbfbd0801efa958a2` |
| 86 | `lemma` | [_root_.PrimrecPred.primrecRel](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/root-primrecpred-primrecrel.md) | 496 | `result-track:f6dd1aaa7d32fa8365cc4f40097d028338eaf9091628658811f6c97e2c0450d8` |
| 87 | `theorem` | [nat_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-rec-source-edition-2.md) | 500 | `result-track:8fa33985936e5b7c4d64570dd0a0fc84f8a4427f30f377e6b7e257da1759316e` |
| 88 | `theorem` | [nat_rec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-rec.md) | 519 | `result-track:8a1747130e2e04bd616121b08acc8f4128fe4f5a2c29053327efafb22e010943` |
| 89 | `theorem` | [nat_rec₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-rec-source-edition-3.md) | 524 | `result-track:b164925a7bb3392d560af3c1ba35ba7471cd2bb95e436d61b979c521067c247c` |
| 90 | `theorem` | [nat_casesOn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-caseson-source-edition-2.md) | 527 | `result-track:94a2a65f03e9b19dccd5dc53d98b28c8ff479f79032b6df969a818aacafc7608` |
| 91 | `theorem` | [nat_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-caseson-source-edition-3.md) | 531 | `result-track:b041078c168c67f4ccb651c434bf75d0711ef41b24787caf55336f7b82a40c44` |
| 92 | `theorem` | [nat_casesOn₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-caseson.md) | 535 | `result-track:5224664b5f4bc105a2d708256a09335cc921be1546fd50355d9268b31d6e016e` |
| 93 | `theorem` | [nat_iterate](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-iterate.md) | 539 | `result-track:003d5138fd84f2cb6e812ff4b4e49b3f510e16e73cb13e1c5fdcf9504e7cee35` |
| 94 | `theorem` | [option_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-caseson.md) | 544 | `result-track:738f38eb35d200f9ce71383bcb92a86ab5e84bbd966cad3238d748a86c2ad076` |
| 95 | `theorem` | [option_bind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-bind.md) | 555 | `result-track:1db5c66112af2b38330caf6aae077ac8bcf3055d2b23c1eb60b5f71d4d2c3f83` |
| 96 | `theorem` | [option_bind₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-bind-source-edition-2.md) | 559 | `result-track:d68e9cdf9ec90d1434c31185d67f1822efd11008ba67183070b492c347c4ca3e` |
| 97 | `theorem` | [option_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-map.md) | 562 | `result-track:648bdc7886d0f4b3b0e6bfe38c34455082aba0784096da482689f27d8a7b7d65` |
| 98 | `theorem` | [option_map₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-map-source-edition-2.md) | 566 | `result-track:861a44af331fdac76c04ef856f2252d8da8c9bf23509fdaa9f7106829e3da296` |
| 99 | `theorem` | [option_getD](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-getd.md) | 569 | `result-track:91268a0db3dc45a46d036de0f6dffeb7ae02dd25a4a54b24840d7e5b4f87f6c2` |
| 100 | `theorem` | [option_getD_default](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-getd-default.md) | 573 | `result-track:a6c90c800989652d53a7d85fc8f6eaeaf8d5f8679f31835a1e1e7bb0099dc267` |
| 101 | `theorem` | [option_isSome](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-issome.md) | 576 | `result-track:973e695ab136f0b97d2fe140e6e2c0ca3e184e2f078ce7f6be192e7d0e0dafed` |
| 102 | `theorem` | [bind_decode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/bind-decode-iff.md) | 579 | `result-track:768a3adb4777b3a83f96880beadb3db557bcdabd061bef9e036aa4f01e1d8ae8` |
| 103 | `theorem` | [map_decode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/map-decode-iff.md) | 584 | `result-track:4f4d469cf08e103e6a1ce7842e43d86d881f5fc9f617b8e1389abc458515ae6f` |
| 104 | `theorem` | [nat_add](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-add.md) | 589 | `result-track:f4c79797bfa7ff613a07ed2c341f82197cb93ad7a438f726ef06560f208e1e8a` |
| 105 | `theorem` | [nat_sub](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-sub.md) | 592 | `result-track:b4db6ee5c149fa4ca00e614599b13715ea70e084014fcb8a5278336e4923cfdd` |
| 106 | `theorem` | [nat_mul](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-mul.md) | 595 | `result-track:65ff0cdf522a5d49b994bd1a0cd5f0f57fd1a11760ee8f9e74d856ff21bcfe60` |
| 107 | `theorem` | [cond](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/cond.md) | 598 | `result-track:c5696c60cc4ccec2d3c0f0470169e10e5371c5b7f4e3275f6d4e5415c6211573` |
| 108 | `theorem` | [ite](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/ite.md) | 602 | `result-track:004715510387420af780a8872325a3018531eac8d7dc9bd7e5237c9ea8af7ff0` |
| 109 | `theorem` | [nat_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-le.md) | 606 | `result-track:2de74947a7ac588662fe8b9e472070c7162bd3f9abf482621f3489fa2f24d8da` |
| 110 | `theorem` | [nat_min](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-min.md) | 613 | `result-track:9bd13a573be151ae5fa6431876c72a745ec34e03cec4f7d91532bcdab56944cf` |
| 111 | `theorem` | [nat_max](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-max.md) | 616 | `result-track:4e49dacc0ad1c12537aad7fee1667a8d188ab39aedb14036909837742649d008` |
| 112 | `theorem` | [dom_bool](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/dom-bool.md) | 619 | `result-track:66fe77b1df50af2e7251de5911a94f9681078f1df4288dde44978b2025079dbd` |
| 113 | `theorem` | [dom_bool₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/dom-bool-source-edition-2.md) | 622 | `result-track:f8dbb86e9f72145650864a552246f7da2f89f124411cedb4e6a00ca8bab758cd` |
| 114 | `theorem` | [not](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/not-source-edition-2.md) | 626 | `result-track:d49daed2d81ae536e22371888516cec237407ee1691c2515c1e69dd4299966a1` |
| 115 | `theorem` | [and](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/and.md) | 629 | `result-track:378ccd0a022eb13fd3b4b73d2e5f295919184693addff6393b62e44ae7b8a17a` |
| 116 | `theorem` | [or](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/or.md) | 632 | `result-track:8aa521a1c332f451b3e29f1db95bd79ca01bd0ce6219d2613ccc5ac602f9f4c0` |
| 117 | `theorem` | [_root_.PrimrecPred.not](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/root-primrecpred-not.md) | 635 | `result-track:833c8b66dc097c1302e1093df254c1c2671e1fa47a6fcf7afa739317eec4368e` |
| 118 | `theorem` | [_root_.PrimrecPred.and](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/root-primrecpred-and.md) | 639 | `result-track:ac337ba666fff013c1dfc8da9da88aa010eca38614c0e11bd8a8d1fcd38556db` |
| 119 | `theorem` | [_root_.PrimrecPred.or](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/root-primrecpred-or.md) | 643 | `result-track:6d1efb9f12ae6419ed88fb39d9d3a83ca662e0bf9395187e427d3b2c5748497e` |
| 120 | `theorem` | [eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/eq.md) | 647 | `result-track:caec5d5edd2221d546615da1211dd0696dc976c56a1d92a36f1b26ca22493cd1` |
| 121 | `theorem` | [beq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/beq.md) | 654 | `result-track:c86a2a029ee5672c522ef42ee56a5c1b23c7df56edfb4c24bc0885ac75579bdd` |
| 122 | `theorem` | [nat_lt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-lt.md) | 656 | `result-track:d3fbd50ebcdb40be5937acb8174e4167bc0ee077190f5123ac010d88558747a0` |
| 123 | `theorem` | [option_guard](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-guard.md) | 659 | `result-track:b8bab10e27576964bc6e94b6eedc4a06e27904b1201a9723ad9d3ad653f1c722` |
| 124 | `theorem` | [option_orElse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-orelse.md) | 663 | `result-track:ce19007466c288cadb559002330411bbabb3e8eaa9f091d31d2c8c4df17aebe3` |
| 125 | `theorem` | [decode₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/decode-source-edition-2.md) | 666 | `result-track:5d7a01bb3e273878c8c678efe62029152bc5e8ea2b7c435faa7e861c242c77a9` |
| 126 | `theorem` | [list_findIdx₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/list-findidx.md) | 670 | `result-track:24b4c020cbbf80d9cf387997d2889bc48d3c80837d3a029f731deb02e8d360b2` |
| 127 | `theorem` | [list_idxOf₁](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/list-idxof.md) | 676 | `result-track:31a31645886bdeeccb20bfd41a796bea637c0eb67f6dfaeb92df9468e4ee10c9` |
| 128 | `theorem` | [dom_finite](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/dom-finite.md) | 679 | `result-track:94d772f842653c59f1003c552a5ea47f7130cf1773abcb8de87baae14e6907ab` |
| 129 | `def` | [PrimrecBounded](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/primrecbounded.md) | 687 | `declaration-track:46868b616277b6e530cb39f9cca76bb9dae4acf2c35a2b5c64372cc694abbc71` |
| 130 | `theorem` | [nat_findGreatest](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-findgreatest.md) | 690 | `result-track:5076a9fb21a821b678dd33e867948b1dbf2fd2ea416e44b58a6d06948b22d222` |
| 131 | `theorem` | [of_graph](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/of-graph.md) | 699 | `result-track:dbebce4f2180fd764b53fd76e2f4eebd465227d037e3d7c5a343016574a0802f` |
| 132 | `theorem` | [nat_div](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-div.md) | 706 | `result-track:1080b27e9edf173471dde9c29cb8b75e1ed11b10f352556a622677154a0a4b1a` |
| 133 | `theorem` | [nat_mod](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-mod.md) | 724 | `result-track:55c26eb7156a6279030e07eade0eef1ed701938a4bb945375a0a4bd478dea7b9` |
| 134 | `theorem` | [nat_bodd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-bodd.md) | 729 | `result-track:6f7208ef3b092af93cd6382a83b871b802cdd75143ee720d87823c2eb860c4b2` |
| 135 | `theorem` | [nat_div2](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-div2.md) | 733 | `result-track:18e883fd16f578e94d54031a5af0f36b756712739213e655f55e239ff772c9a6` |
| 136 | `theorem` | [nat_double](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-double.md) | 736 | `result-track:d74f7703876641538d2c6ebb65f15be6a61548e84ef3b3bba661b08f44fb19b1` |
| 137 | `theorem` | [nat_double_succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/nat-double-succ.md) | 739 | `result-track:6a5d17d799ab90cb497ef4f8413c5d53e57a139bd4345c0f10449d197f001292` |
| 138 | `instance` | [sum](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/sum.md) | 751 | `declaration-track:c5eb1c83ccd112efe2bd15cf684fdcbf44eebd630d01a0af299f4d1743922d09` |
| 139 | `theorem` | [sumInl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/suminl.md) | 774 | `result-track:7d6bcf688f8338f9f4a15e92829bb16809a812eb4e2caa8393d90560d8348650` |
| 140 | `theorem` | [sumInr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/suminr.md) | 777 | `result-track:b1a0ed4d659cf10e7845068368bed0a15cc2e440f8605c4f4546166663e06a9c` |
| 141 | `theorem` | [sumCasesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/sumcaseson.md) | 780 | `result-track:b2f2ea3c691463b93c5797de99e1f6eab681a9b22975b65c7f1b310e9b414eab` |
| 142 | `theorem` | [not](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/not.md) | 798 | `result-track:48f0f5c0ba40023e39bac114839e4d91cca7535332bc30919e78c6f09c1721f7` |
| 143 | `def` | [subtype](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/subtype.md) | 810 | `declaration-track:2c947067b1940bb40b90668bf1e67e29b0609043b50154a3c24bfb1e494d6343` |
| 144 | `instance` | [fin](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/fin.md) | 819 | `declaration-track:156416ab31f441c6b8b9ee254f54926e8626df5cf83587907bb168b70a049ea6` |
| 145 | `example` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/example.md) | 823 | `declaration-track:630a2b0420d931d2fd191945dc47fda605a8e8535221c9e96bf927b77ced570a` |
| 146 | `theorem` | [mem_range_encode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/mem-range-encode.md) | 830 | `result-track:7856c8646b6ff87f80300ef91f049b9499dcd912e1be70209703fd5ec640d085` |
| 147 | `instance` | [ulower](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/ulower.md) | 840 | `declaration-track:9c0ec258ab000521bec1c116d08b53ad53e92fb8e0e1dfab997c00c11709a44c` |
| 148 | `theorem` | [subtype_val](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/subtype-val.md) | 853 | `result-track:d36bd2e7048b74996308061ea03e0a74edcaf17d328a9d8ef22886cbf44ff8cf` |
| 149 | `theorem` | [subtype_val_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/subtype-val-iff.md) | 860 | `result-track:56fdb25b015f3c373af6b3f70996a5fbfbeea8a52cdce2c98cc077aa7bbfdd5b` |
| 150 | `theorem` | [subtype_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/subtype-mk.md) | 869 | `result-track:a19f57b67bd10c1acd769caf8b91a507fef954aa595ffc08fb5471403d3ed1fb` |
| 151 | `theorem` | [option_get](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/option-get.md) | 875 | `result-track:20310c8aeaf4b85c72edc677998d076d3c484c632575b08fec302bcd6374ecc2` |
| 152 | `theorem` | [ulower_down](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/ulower-down.md) | 882 | `result-track:b9996872ffe5ec6bccd4a70160383d7ecd93bead9d30bece025d67e1f2c6052e` |
| 153 | `theorem` | [ulower_up](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/ulower-up.md) | 886 | `result-track:586b10f7cc1832e08a08b7277b027fe889c1b279931a4ef14460cf65e83b19f2` |
| 154 | `theorem` | [fin_val_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/fin-val-iff.md) | 890 | `result-track:d189edbae0a407e86c83088c7f830e93fda79dca59959d769229d2bef44569ec` |
| 155 | `theorem` | [fin_val](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/fin-val.md) | 894 | `result-track:4ce5202a9226cbb96f96f0ec224fedbf8395f4ed4647ce2fb344e5b708106669` |
| 156 | `theorem` | [fin_succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PrimrecBasicPublic.lean/declarations/fin-succ.md) | 897 | `result-track:ed179a6ce974a2e4fc7b1a0e41706dede26cb6561f95196e44ffa935011022b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64bdcbc551a8c0db9a287d4bcc313da9064732a6360f0f954f18686456756af6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5344925eaac8f4986fcddd987ba85da3489b2daad2041d4d43ed15b1075f02e3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5344925eaac8f4986fcddd987ba85da3489b2daad2041d4d43ed15b1075f02e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
