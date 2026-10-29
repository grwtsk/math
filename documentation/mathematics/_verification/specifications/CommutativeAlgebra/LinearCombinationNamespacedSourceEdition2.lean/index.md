# Verification target: Linear Combination Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57a8eeb2b0ab085303ad10deb124de0a9662845e",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant05b6e5af4a6a649cf6a701f0be5889d5d6c273d846053bbeb3aed30e98f0fc84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57a8eeb2b0ab085303ad10deb124de0a9662845e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant05b6e5af4a6a649cf6a701f0be5889d5d6c273d846053bbeb3aed30e98f0fc84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant05b6e5af4a6a649cf6a701f0be5889d5d6c273d846053bbeb3aed30e98f0fc84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Abel` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/test-sorry.md) | 18 | `declaration-track:f6033cd216e2ecfeb4475684daacfaf84ac4ecb207cad17128916334015d78c7` |
| 2 | `axiom` | [Real](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/real.md) | 21 | `declaration-track:916bef6f37ac92b2062188094e91b1383288c7a58a5c5e68d24d9ea2c3d9a7e0` |
| 3 | `axiom` | [Real.field](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/real-field.md) | 23 | `declaration-track:30b8da2c893c5723f9b492c00e0466b33e9529606d4b3aacaedf4bfb28b2142b` |
| 4 | `axiom` | [Real.linearOrder](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/real-linearorder.md) | 24 | `declaration-track:7595e1a5689d2273110c002315048ed849b86c56e5f9fd107cc924a3e4c1e98f` |
| 5 | `axiom` | [Real.isStrictOrderedRing](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/real-isstrictorderedring.md) | 25 | `declaration-track:c938f56f961ee3b66768dd6a91b14a21df41e8e5a49467196c8db7a2da6900a4` |
| 6 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-16.md) | 29 | `declaration-track:2629ee001b41f6d7feb05aa7b478a125f85c30445d6e6b36ce0ea926e62e0225` |
| 7 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-39.md) | 32 | `declaration-track:661cd4cf719315e7a2bf9aa16a03548a41eb17443a533939bf84efc0702db71b` |
| 8 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-35.md) | 35 | `declaration-track:5f9d39355e4ae85c8c3119e77bde03c7b5c01ce6d6244fbba46405e6bda61625` |
| 9 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-85.md) | 38 | `declaration-track:c6ea5f84518029b7807c285847e7ec5e12fb35a2d150f9371404c1e048e27436` |
| 10 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-83.md) | 41 | `declaration-track:c6465f1b8ff2d8c451d2fb0948812ac443fba675a4cfedcbe6ee48f63d6e4188` |
| 11 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-68.md) | 44 | `declaration-track:a9eb671a62984df1c5a72b646f373cda004ca73baf2fa2fa295cb3b7ec807e8a` |
| 12 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-37.md) | 47 | `declaration-track:65ada67b59f753580814e98c923b22ffb01a38fa5b4779173afcbfe82d0d2d79` |
| 13 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-52.md) | 50 | `declaration-track:8dc710ee30efdc0ec207fafe9058e46b50930c02c97fcb08e5f69338dbb31cf8` |
| 14 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-81.md) | 53 | `declaration-track:c1aec8398259cd99223512ae9601aabb6f54ed26fbb27e7a79ec57dca2812e6b` |
| 15 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-78.md) | 56 | `declaration-track:bf85231bbe062546ab43c77c1ee21db12c25f2ae865db1f16484e77d5e590625` |
| 16 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-94.md) | 59 | `declaration-track:dbde9cfda049b4986493357609df2805e48a7fb651f5932c17c5356acadcdcfe` |
| 17 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-25.md) | 64 | `declaration-track:484a918f87f27db84f348c513054c9633c0654f2516c212fb5f66f5b0a58e0eb` |
| 18 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-60.md) | 67 | `declaration-track:9d41480f09a5e7ff8383081f21c46a838cc20c01cff3be161733cb8f5d288474` |
| 19 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-43.md) | 70 | `declaration-track:7d067c463645f91187096bd716b2c0553a105d86d94b0cbfa207c54dc1a6276f` |
| 20 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-23.md) | 75 | `declaration-track:44cbaf5ca20cdd65d139dbd11eaf3a072d3211ac02924eefe4e95434cc9f8755` |
| 21 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-67.md) | 78 | `declaration-track:a839a9b30e546888db1da933cb28adc5ae9469df05f0bcbf7f1b4aa1d61245ed` |
| 22 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-21.md) | 81 | `declaration-track:2d909c85f68702858229d501214655afacdc510daf9bf122df7e4a6f6e339df3` |
| 23 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-48.md) | 85 | `declaration-track:81f849e816a4955c48370726a725ebc8812c6d83548cd5b5e10b264c0b7cd137` |
| 24 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-71.md) | 89 | `declaration-track:af92a6007a328849e60619f42f0008c8269a9826ac9199721de191baa0a7ac18` |
| 25 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-42.md) | 93 | `declaration-track:7b5e97c1fd4efa4c04626a91724958d6bf3ab296077a37c8b1eaa337dcefdae1` |
| 26 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-34.md) | 97 | `declaration-track:56eb26176ad3721c8cf50c5b85ea2a8c374089038039fb18cf94e69035f709ec` |
| 27 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-50.md) | 101 | `declaration-track:8a6a80d422a6ecd4cb3598637ceadd74b7d02880b2b6eb8f7f8a1e3b312fadc7` |
| 28 | `axiom` | [qc](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/qc.md) | 107 | `declaration-track:ac8edd8daf55edf569202a257239db98e1f0afcf8be2e755bd46894fb0df4537` |
| 29 | `axiom` | [hqc](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/hqc.md) | 108 | `declaration-track:88a811bf5f506554eb73c16d5c4f1de7907b544a30cb2abdfe10f4d4ffdf2cde` |
| 30 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-80.md) | 110 | `declaration-track:c0eafde7c3fdb534eeb117631cbc285fd054a3ab0aff87369c44261cc309e0ff` |
| 31 | `axiom` | [bad](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/bad.md) | 113 | `declaration-track:7d1e2b92bf42f0d157c881b159e4c06f3b77b7d91090dec02069b0f8829f8296` |
| 32 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-8.md) | 115 | `declaration-track:1069604472b823c175528cd8d52922ff64650769eb6a698786f23fdea2d108ae` |
| 33 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-98.md) | 119 | `declaration-track:f43477aeaa1798894db65101b520136c6d274d1f3a849b06b827c43bc56adfda` |
| 34 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-14.md) | 121 | `declaration-track:1f9b679d535dd99685c020dda2d5a6bceb72278923d5c3f0885593cd3c12eea9` |
| 35 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-59.md) | 123 | `declaration-track:9b14d3145e48d377392c1afe6e45c8b5dd7b73de208ebda58ae4825eb7117054` |
| 36 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-30.md) | 126 | `declaration-track:4d4d7ccb033bd2f4437e4d73ff11d3268adcbd1b5a8c2a44d3ed302b93ad6845` |
| 37 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-77.md) | 130 | `declaration-track:bcabdaaf2f21940fd765b276b0c55ee122e70d0ca9dbc87d5a2ab636bb188b4f` |
| 38 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example.md) | 133 | `declaration-track:0070acfc7076f56426b8c201ec1bae0baaf59d44f51b247808d7d126b3a771d1` |
| 39 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-36.md) | 136 | `declaration-track:611bbdf6eeb92d9fec9b4342132ce69a7679265c00b23e5c53ffbcd943f512d9` |
| 40 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-31.md) | 146 | `declaration-track:4d99215c9194a10155c5a265d797ed0791a4d823c6fa31b1e1fea661a561fa97` |
| 41 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-53.md) | 149 | `declaration-track:8f5feb94a3cfb2f52666125ce8e656ac64c502891e86154aaa62c86310b6b6d2` |
| 42 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-46.md) | 152 | `declaration-track:7f4c1709d2c9170c4384bda37fe884c7b777512c65766817690eceb6e97c46d2` |
| 43 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-64.md) | 155 | `declaration-track:a3ae16f2c3058846767be437bdb12568668de72c5ef8999514a03707330f013a` |
| 44 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-27.md) | 163 | `declaration-track:4b28a494b9eeda70f5ec030baa5bb6311c7c8095e5be15caaa8882540a6f41e2` |
| 45 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-72.md) | 171 | `declaration-track:afdd0d54cba430ca451ae3c60862f43f9ed5a0a0a668d3d16f122c0ee1ae067e` |
| 46 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-55.md) | 179 | `declaration-track:8f9e6bd9f6d6010c27be1cce3019551566b0fa9c38c893f3281566dfcfdc2fc7` |
| 47 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-18.md) | 192 | `declaration-track:2b97ac79bfdc80e2b0b63a7db90c908d844b86a91b006cb2b73231046e5c3e0e` |
| 48 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-79.md) | 195 | `declaration-track:bfa71ac5f40ae8b31ae60a2c1fc6a0fa0916431fd793950e03c3f679e879e08a` |
| 49 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-91.md) | 198 | `declaration-track:d591da5a65db1fc4e8d9137ba5e8882c995e62dfda998f8b673f713da13e4d20` |
| 50 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-47.md) | 200 | `declaration-track:816b67665747129acf13671a8f897c2a3421934a3341f196dc134ce4c8f8a384` |
| 51 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-51.md) | 208 | `declaration-track:8b3832e0305cbdd921409a89532324b9c4634b8cdea61416357e1b0a9a22ff2f` |
| 52 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-92.md) | 218 | `declaration-track:d644c322562ae97bdf0153b83187328039eb3b0a9a36392fdb4c9635e2054a7a` |
| 53 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-84.md) | 221 | `declaration-track:c6a514830840da36cc36b3e5ca106f589404a013d670f824c7615a67a9ae70d3` |
| 54 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-62.md) | 232 | `declaration-track:9f1da10e5c6da087d17bc8359e072f1f0da59d6baf28502f2fe4c318fec8023e` |
| 55 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-15.md) | 237 | `declaration-track:21af49db5e3435c61ec57c28341720b8a4dc459a5c6777111fc84bc2bac37049` |
| 56 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-102.md) | 240 | `declaration-track:f845b6502365f8605b65e5538dc991517ad584eb6a0e62fceb1c04d318668841` |
| 57 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-40.md) | 243 | `declaration-track:6e15c27d362b58bc58fcdf9e8fea435267fb1ece77510f442e515f9be3b4813b` |
| 58 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-66.md) | 246 | `declaration-track:a7cb8bfd20ea7a551f42456b4bb2468092764dc7ff50913bb125844ea4e88386` |
| 59 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-4.md) | 252 | `declaration-track:080d5d383330a7abf8e956efa551e67409a8f1cd6908402168985e744d2cf278` |
| 60 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-3.md) | 256 | `declaration-track:023487aa668a6260675d3bcf7588c4122173a4ae312973a49c4295cb9adca22d` |
| 61 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-89.md) | 263 | `declaration-track:d1c9cb0b63523f1e0c2dcdd473dc674e2d36a323a0f6d391c99f8ba2d9de9c99` |
| 62 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-76.md) | 266 | `declaration-track:bc47777a74216bd87c2e75c5aa44a3a35c797c35dc1f2c31e3a9d64372ca565e` |
| 63 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-63.md) | 269 | `declaration-track:9f6cc7625895bd205cc0fe6d41fbf24202ec7f34bef409b8e00f1d0d7d4651dc` |
| 64 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-13.md) | 274 | `declaration-track:1f7a1892e2e5bbcb2c18118fe07a8de72be7a2803675bc88903212676393c88d` |
| 65 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-44.md) | 279 | `declaration-track:7df3a70dac99c8c11e92aae2f9268d6f793f8dd7c6bba5257f869f5d4de5ef91` |
| 66 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-11.md) | 285 | `declaration-track:18540160dcd477296e103e80107da1e5ca8f6e5033103cbf87779415db893876` |
| 67 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-56.md) | 292 | `declaration-track:906c25462d2962ba1826ff3bc970d7a70e349e172931a4b44b67ac582e0625f4` |
| 68 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-96.md) | 296 | `declaration-track:ea497c3fba9136885cfa308cbba6fd7d401d76faf8d018e1fa4b62a4f26cf023` |
| 69 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-100.md) | 309 | `declaration-track:f5185516e03346ece1e262a72a2068b267e811d141c88b67ee13393375a99b01` |
| 70 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-95.md) | 318 | `declaration-track:e5c6c469ecd2fd426d08b86be4fff316aaf60f014993586514c602a410f3c707` |
| 71 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-57.md) | 335 | `declaration-track:93a5c4658e514ae30de79b7ea0de8859048bd16caf9408790b024dfb47121c89` |
| 72 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-26.md) | 339 | `declaration-track:4a2ecbf9ba2a47c5e777aa1c8a49c5ea836cc6ae4520497fcf9de54f7f7647fb` |
| 73 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-7.md) | 347 | `declaration-track:0ff2035fffcc8b11983d85a7d7ec4161e16ad1ceb55bcd5bd9ddde51c98c7db4` |
| 74 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-87.md) | 354 | `declaration-track:c952917f6cac76864a7572004ba67da84baa0eb2240af4e555d81622984654b4` |
| 75 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-58.md) | 358 | `declaration-track:993b63164b3d1a3d25097d7d282adfac161c3d81ba5f70e151d4517e34dbba23` |
| 76 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-61.md) | 362 | `declaration-track:9e6d4a5408f198f82dc83e3ae3e7658673a3d194fdf33b09e7bad0f752bb745b` |
| 77 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-82.md) | 366 | `declaration-track:c225c8789cbb4d5152df82dda2a6df8dfdbaa1dc78a381ef08b948359fbb8fb6` |
| 78 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-20.md) | 369 | `declaration-track:2d3e37632b316cb37d4a06e63bd9b4a87063f7af9d6c062ab219214b6bf6edf0` |
| 79 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-24.md) | 373 | `declaration-track:44d627057fc350d5a55e2e73adbf1df12ced8cf46be61b12e82fd89fe7ce4489` |
| 80 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-17.md) | 387 | `declaration-track:268339fad5bc626c85df966321c1a5cee494978a6bb562cf30ea580ed150f08e` |
| 81 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-93.md) | 389 | `declaration-track:d6cfcdba61b251ac8ba81a9cebd623b24e6fa30e9edf4bfc6f68be2e8f7309e7` |
| 82 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-9.md) | 390 | `declaration-track:12de04c6f4e74eb2bfac16291225f44e376f7172023612bfd3582f1dd7f96741` |
| 83 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-88.md) | 392 | `declaration-track:cd338df84a8b2cdc20dbbae9de4eef4ea5e681e1235c3ffc7d775b310b0ec11f` |
| 84 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-28.md) | 393 | `declaration-track:4c7fe08d92ab9a0788e836b454bc7987ac3e12a2c1c037a02312161c91b3571a` |
| 85 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-73.md) | 394 | `declaration-track:b59627fcaf6d910599c5e3e65dae94c2a5531d8a11fb404e676c1be8b532cca8` |
| 86 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-70.md) | 396 | `declaration-track:ae323d85ad9d640efc556c89daa487ee61f4eff3d7ca92c1f88af9b2a610de2e` |
| 87 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-38.md) | 398 | `declaration-track:65dc6c24707100666cd655ee0b5405ea7ffbf34d8dd0070a88c5dcf93e09e853` |
| 88 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-10.md) | 399 | `declaration-track:140e2feabc60f08a7a465227a7ccdcffd05fc9a9e69483212c5a98fa7e0932e4` |
| 89 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-19.md) | 401 | `declaration-track:2be815f32b83a2035290114111388fb88e5e3701f509dcead19280520e5bdb5d` |
| 90 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-33.md) | 403 | `declaration-track:51fc62115a35bf632b03eb118a2bd2bf619b16e44364e44c4a8d8a82defe5c0f` |
| 91 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-12.md) | 404 | `declaration-track:18b98e5c022e12b3b57a8b953857a86dd8a99a6710258c911ea643efad93d3f5` |
| 92 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-6.md) | 406 | `declaration-track:0f237f4fcf88f10b20b87d8765e4f7e15ef6dd71c6015a0bbbbe20cc1a71531f` |
| 93 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-90.md) | 408 | `declaration-track:d4b3a7663c27f18332a6f9c4a521c82795f5fd0545ced3e5ed8a23e95c223fa5` |
| 94 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-103.md) | 413 | `declaration-track:fb868c29cb269b80d7d16c896addb649fbd4ed537848c1b46a6dca2ecf0be6c5` |
| 95 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-75.md) | 422 | `declaration-track:bc35603964fb317b515a7481a20cb3a478a5ed52b6395604c05a2b16b86803d1` |
| 96 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-41.md) | 439 | `declaration-track:78a108522946e30b0889d9363c4ea3c5b36b77dbc54a7184ff4e2c30ed585a1d` |
| 97 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-65.md) | 449 | `declaration-track:a76c585139fe83bf29753e7f7649b86e1180998bcddb0148f87636073656155c` |
| 98 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-45.md) | 453 | `declaration-track:7ef970abe54a09947232dcb2c944cd58cdabd0f2703f240a7c366b18818220ea` |
| 99 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-69.md) | 457 | `declaration-track:a9faa9c37f7f136e0a4ffb97ba02cc7d613af791c4821fcab2eb85d57acb92ff` |
| 100 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-2.md) | 458 | `declaration-track:019e1212cac5a8b29e6687e78c7145c4d8bb77e335e0b9b6d42fed4deb5cf024` |
| 101 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-22.md) | 462 | `declaration-track:34fc2fdd452d94fd558ddb4d9df5dedc3251850c94730b257c94f4e8e860bbf0` |
| 102 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-74.md) | 464 | `declaration-track:b963d56c8ccf05ffb0ff755536863d781678ec8d756d71379e41fe2a0be99f8b` |
| 103 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-99.md) | 469 | `declaration-track:f4a6806fe721ef7f68909ba3ffff57eb21a991a15b2317d8b98f0920e07be5a1` |
| 104 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-54.md) | 471 | `declaration-track:8f95e4d52dd1fd83ea6a6fa1fafeeffa5b496f15931ac4134bb82ef3f7b4fb94` |
| 105 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-49.md) | 473 | `declaration-track:881f25feba58c6eaa66812956e357f3d008b87aee9365a9f4be264c64f95743f` |
| 106 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-86.md) | 475 | `declaration-track:c8da8792b812922f21530b97c69853b98ffb10e6f2f403b0f7f2a45fef8d744b` |
| 107 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-5.md) | 480 | `declaration-track:093df003299e332c1225cacc83f73a3d4229c55be621cbccc8f769e4feca6a0e` |
| 108 | `def` | [g](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/g.md) | 485 | `declaration-track:c6f3db121a858dd325a83859f15a1caf1127807f903ab14da8c606921b74891b` |
| 109 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-97.md) | 487 | `declaration-track:f153dbe114fc1f4abcb26f8a9fe78ae7142047b0b749dc54100b0d191d3945ef` |
| 110 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-101.md) | 491 | `declaration-track:f81b7e9fc657e6c8966c8d048ad44ae6894c937e7a08a3f6d2f1079b95d39324` |
| 111 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-29.md) | 498 | `declaration-track:4cf1b4e42a31e5a85b47c3d32368ea502209d346f61c72f894ab83f9e699b1fd` |
| 112 | `example` | [(anonymous)](../../../../CommutativeAlgebra/LinearCombinationNamespacedSourceEdition2.lean/declarations/example-source-edition-32.md) | 538 | `declaration-track:4e8e2af6f56fc9f3c973ed587de261f874db27ad59f8d1e184ef3ccee86f3626` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8d70d9f122718f440469dd5a806e5e609ffe575bcf921b1a69c1eae3788bf95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant05b6e5af4a6a649cf6a701f0be5889d5d6c273d846053bbeb3aed30e98f0fc84.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearCombination/Variant05b6e5af4a6a649cf6a701f0be5889d5d6c273d846053bbeb3aed30e98f0fc84.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
