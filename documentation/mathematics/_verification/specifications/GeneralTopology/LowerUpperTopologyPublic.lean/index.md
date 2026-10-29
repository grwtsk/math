# Verification target: Lower Upper Topology Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7db07cb4b8c52a3078efa07865a741108310081c",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7db07cb4b8c52a3078efa07865a741108310081c`.

Source path: `GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean.json)

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
| 1 | `def` | [lower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/lower.md) | 65 | `declaration-track:571555b72c82c77a3db08f479ccee4c1841dc54be3b255a8427b32f78bced537` |
| 2 | `def` | [upper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/upper.md) | 72 | `declaration-track:4c8952072a74a8e7a41ac498fc34f94ffd2ea669e5436a36a5570e0506cf574a` |
| 3 | `def` | [WithLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/withlower.md) | 75 | `declaration-track:fb02de8f85bbf8a6a28735a8484d79b33de1e1c8a37a9772baa948ca293e3091` |
| 4 | `def` | [toLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tolower.md) | 82 | `declaration-track:154ecf22731ac054671f30c4bb3fd159894efb9eff12e0ec3631c76837430bcf` |
| 5 | `def` | [ofLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/oflower.md) | 85 | `declaration-track:ab94849b6e68c6edd5b8e9853268c7ba6bab6ad33b95bda421d583d7bff25727` |
| 6 | `lemma` | [toLower_symm](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tolower-symm.md) | 87 | `result-track:62934e2343cd114358bdcb10455223675b19a422769635d91b7c922da2f9b423` |
| 7 | `lemma` | [ofLower_symm](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/oflower-symm.md) | 88 | `result-track:931b7519bc90ed1cd762fbdff8e2b28507248897e7b1d0d94cdce9da1b8cd1d8` |
| 8 | `lemma` | [toLower_ofLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tolower-oflower.md) | 89 | `result-track:4c721986b168b105766bccfd8404a8bf21d3ea38cc2c0a0fb2d03c6408c6ab0f` |
| 9 | `lemma` | [ofLower_toLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/oflower-tolower.md) | 91 | `result-track:ff370f4ca9b558903a9976de85137f238409ec9205d4032c1515b058bfb73275` |
| 10 | `lemma` | [toLower_inj](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tolower-inj.md) | 93 | `result-track:a615e173a8923025a3d99ddc1838580c1a18a579dfeacbb8df96fc884c5eaeaf` |
| 11 | `theorem` | [ofLower_inj](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/oflower-inj.md) | 95 | `result-track:726319e3cb2dd1a6f5ff5e72bd48ef379de2bb1ed8ec5f99934920d6d19f5ae3` |
| 12 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/rec-source-edition-2.md) | 100 | `declaration-track:d2aaaf180a16b7aba5e433e01b8f35484875b4c38c43b9aa5218811495238ada` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-17.md) | 104 | `declaration-track:ec70af1adb6d0bbbd2b00273927fdfd1017a23c850ab77509f2ce9635f0d0248` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-12.md) | 105 | `declaration-track:c5e5ef0edb78ac9a83c898cccbb4f76e083fffcc3a021241d1f6b1d998ec5b24` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-6.md) | 111 | `declaration-track:75468795d4e0c52ba55b8d92ce0dc72e39c5846b2e4f966d9f6e1857869de6c9` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-11.md) | 112 | `declaration-track:b9950499da4bfdd56fd927a112d8642a0840ba982d6fee481651bec790f78b8b` |
| 17 | `lemma` | [toLower_le_toLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tolower-le-tolower.md) | 114 | `result-track:bf5a92f814e54a1d641eaf4ac836dcdc97327a66b357982d5a5d91c302fd8e38` |
| 18 | `lemma` | [toLower_lt_toLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tolower-lt-tolower.md) | 115 | `result-track:7f956922e9155d95481907db9278d9c23adcb574553bf2113465d43afbe6591a` |
| 19 | `lemma` | [ofLower_le_ofLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/oflower-le-oflower.md) | 116 | `result-track:2037eed05781eaeccea37d01d135232a5c16409489c905f64d4ea4a1b407266a` |
| 20 | `lemma` | [ofLower_lt_ofLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/oflower-lt-oflower.md) | 117 | `result-track:02100f026422c8ffbeb0d6c7005013e54c9df239fccb5c40822740adf7da76bd` |
| 21 | `lemma` | [isOpen_preimage_ofLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isopen-preimage-oflower.md) | 119 | `result-track:c88eba277b1c15a3ce867ebc0d1a20cd558ee6c7850c8a74f13a575c115b778d` |
| 22 | `lemma` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isopen-def-source-edition-2.md) | 121 | `result-track:cefc5a2051c4dbffdcac5d821f53afeb95bd9d07587f4a73146989590ad20aa7` |
| 23 | `theorem` | [continuous_toLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/continuous-tolower.md) | 124 | `result-track:9823c48b1f7186dc2e7cd3bcf52d3a98d5e999af0da31374f3f3df28c2377908` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-4.md) | 130 | `declaration-track:4c81dc290ea952c62ca0dfb04fa141ea5db47f4eb28edb4933624246fc77870c` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-15.md) | 131 | `declaration-track:e4375a3aad838eaedd0c62da7cc7bc763e418e3f27ca5a6c7c4f8ae399f03b63` |
| 26 | `def` | [WithUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/withupper.md) | 136 | `declaration-track:d76692a850a6be9e429ece1417ef65873c8eaee6789a2befd46a94ae35279f1d` |
| 27 | `def` | [toUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/toupper.md) | 140 | `declaration-track:56d9f290064eb390fc7e410c09e09842092f0964392bbf12f5d6464a962ff1b2` |
| 28 | `def` | [ofUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/ofupper.md) | 143 | `declaration-track:7c345802cca6cfdcb35230aeaa85230c149bd4c2b543c9ba55d905bfddbb5c6a` |
| 29 | `lemma` | [toUpper_symm](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/toupper-symm.md) | 145 | `result-track:265e8831e723a5db8ac13b3b8c8edbc17f8d8ff1d2dc42c999abc5d8066452b3` |
| 30 | `lemma` | [ofUpper_symm](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/ofupper-symm.md) | 146 | `result-track:1ba7ceea70fa974db446d02a68029d8adc2295a7ae992d90f516cece86942568` |
| 31 | `lemma` | [toUpper_ofUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/toupper-ofupper.md) | 147 | `result-track:5ce9b5830ff00bc1fac7039a64cc44419384187d592a8269099f3521ab1aabb4` |
| 32 | `lemma` | [ofUpper_toUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/ofupper-toupper.md) | 148 | `result-track:6931f7abf88ea022b5b0d01f0429e2e233de21261b9041170534332fa256f4e0` |
| 33 | `lemma` | [toUpper_inj](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/toupper-inj.md) | 149 | `result-track:c8030827786e97908b23cf3f272c0e22c76be908a902b89d7908347730368f13` |
| 34 | `lemma` | [ofUpper_inj](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/ofupper-inj.md) | 150 | `result-track:95f2211ca2fcf661db561d991f33f4c42eb92dcd84c3e21d3d6dd07cc841d28f` |
| 35 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/rec.md) | 154 | `declaration-track:5845b3b133a00aad6e27a2315b52ed4fac96aae62db25624a15d9637f71800c0` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-7.md) | 158 | `declaration-track:75d52d20b0c3c17d7a9c2f78cca275b026921278c526f239c70af6ce3dac6931` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-16.md) | 159 | `declaration-track:e99b168841c27be78a26145c0e67fcb25da70247c53523d1e82de76f2f508261` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-20.md) | 165 | `declaration-track:fd0f47c0429212f72d5133b1a2d51fe58c2c9c2877f448d3ec2fcfc6bc75594c` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-2.md) | 166 | `declaration-track:247aeaeaf84f667e11dfab5842391337fa3ef93d7465300a370ca4ad6587aab1` |
| 40 | `lemma` | [toUpper_le_toUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/toupper-le-toupper.md) | 168 | `result-track:a046283259429d921df9db1a39f284027ac7e90b796e30b514da431928c3234a` |
| 41 | `lemma` | [toUpper_lt_toUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/toupper-lt-toupper.md) | 169 | `result-track:af368b3daa6c9dc712ee28e5a1ba1b90eb55528e928f8078a9b30672279576e2` |
| 42 | `lemma` | [ofUpper_le_ofUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/ofupper-le-ofupper.md) | 170 | `result-track:847dcab954ad8893c4d5292075cb49ffc93cd9833ffec9a3a0d812b5a91291a5` |
| 43 | `lemma` | [ofUpper_lt_ofUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/ofupper-lt-ofupper.md) | 171 | `result-track:ed9f44000086dc0d305f7a36a65291244eb28f55424ebc3c70ecebd6bbada962` |
| 44 | `lemma` | [isOpen_preimage_ofUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isopen-preimage-ofupper.md) | 173 | `result-track:ab4ab213d9a1e96d33cdb65835be6c86251f561d933185abdc98c58d415c7d0c` |
| 45 | `lemma` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isopen-def.md) | 175 | `result-track:187f0e0c56d041baf9786d9a7da36ad021bbb88a4222cff7d0523d529da60afd` |
| 46 | `theorem` | [continuous_toUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/continuous-toupper.md) | 177 | `result-track:6b603d1d408c0e949793de4ced3dfa4a6ed7714c5dcb8831ac9734032c9d12b1` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-5.md) | 183 | `declaration-track:682942a41216f7922cee6cd761017091ab4cb21fc15e50d3cc2de18ce75db023` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-8.md) | 184 | `declaration-track:8828fc4f48cf2166ddc42e724af8c928b1d235910072f298cdbeed0e5669fb88` |
| 49 | `class` | [IsLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/islower.md) | 192 | `declaration-track:62f84c528a61c25204ef26fb3d1f6594d62aa0a4df9d902c629ebe1e237a19d4` |
| 50 | `class` | [IsUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isupper.md) | 201 | `declaration-track:81f4672e3be40fde38cbd3bf79ef47ba6219230e0fbe390c9aea47542e1c826c` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance.md) | 205 | `declaration-track:124903a0c77734451e381de48aa41d7390e5a921a348c1d3238ed79de07f3cc4` |
| 52 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-19.md) | 206 | `declaration-track:f5d762d1c442e899bb811a2048ba258d51bedfca582c37cae9570d1e4b4387d5` |
| 53 | `def` | [WithLower.toDualHomeomorph](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/withlower-todualhomeomorph.md) | 211 | `declaration-track:f019e9d8e4508b0a4df168e02834d793809355512ea7648aff6a5d2a2bd9ddaa` |
| 54 | `def` | [lowerBasis](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/lowerbasis.md) | 223 | `declaration-track:18c99e832a9a0230d94f776f95444953e3bdc24c07a33189c4155e0f376252c5` |
| 55 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/topology-eq-source-edition-2.md) | 231 | `result-track:d480003fc0d643932cda7ecf47ed42b6439fd733d63a704ac8ce842e910567df` |
| 56 | `def` | [withLowerHomeomorph](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/withlowerhomeomorph.md) | 237 | `declaration-track:b4fa3a4dfdad3afc40708054f625be26e5fdc2d17ca3919e08e82a3393d9cea9` |
| 57 | `theorem` | [isOpen_iff_generate_Ici_compl](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isopen-iff-generate-ici-compl.md) | 240 | `result-track:ff7e7094abb1b06ffa55aea045f5ec7a9fa497bb82f43b2a285f2ff404cc19e4` |
| 58 | `instance` | [_root_.OrderDual.instIsUpper](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/root-orderdual-instisupper.md) | 243 | `declaration-track:ea31207849b9176a5979680bb995f3936df4aa454ff706f118259d8afb845574` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-13.md) | 247 | `declaration-track:d15f3d673dd12f3f066f9d57963b3dcca82ddb5cbc0f75d3b3bde7700b8aa913` |
| 60 | `theorem` | [isClosed_upperClosure](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isclosed-upperclosure.md) | 251 | `result-track:1389d29f69d1533ee8365487adf546f528e96fe0013b718e42ed4f0098a1d417` |
| 61 | `theorem` | [isLowerSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/islowerset-of-isopen.md) | 256 | `result-track:6a0f34381cba2865257fac41ce706dbfb5410bdfc98ed0c5251f6acecaa8f432` |
| 62 | `theorem` | [isUpperSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isupperset-of-isclosed.md) | 264 | `result-track:d5153b3abb19066252120a631ba3cc2ac52b43e342e3ec3853287bfa419f2ff9` |
| 63 | `theorem` | [tendsto_nhds_iff_not_le](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tendsto-nhds-iff-not-le.md) | 267 | `result-track:85dbbd7c8bde86f140453e352e3666c275e347f37ef0f3bba7d4d491d3b9261e` |
| 64 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/closure-singleton.md) | 277 | `result-track:6f821585a3ee1651a36f0524e27e2e418104551909b8699762dc1cc7e5b263aa` |
| 65 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/istopologicalbasis.md) | 281 | `result-track:abe4f9d000e0756dd49a7180b8a80cf581d17d4af92521e7b5d0b339f95c149e` |
| 66 | `lemma` | [continuous_iff_Ici](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/continuous-iff-ici.md) | 298 | `result-track:30eeac934d36cfca6db13208efdd690c98f08a40e95e637c6e14e6078e95d2df` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-21.md) | 311 | `declaration-track:fd3ac27976824a7f7c3dc9cf821c2301c157965e6575330151d3de9e541d3f55` |
| 68 | `lemma` | [isTopologicalBasis_insert_univ_subbasis](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/istopologicalbasis-insert-univ-subbasis.md) | 321 | `result-track:3aef0d28343bfe1e333692191b2d007707103584c5ef4478f19a117ccfd33642` |
| 69 | `theorem` | [tendsto_nhds_iff_lt](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tendsto-nhds-iff-lt.md) | 328 | `result-track:53baad8866d4de63f45a62d3610148c7222323139f490f853964b80b64fdd0cc` |
| 70 | `lemma` | [isTopologicalSpace_basis](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/istopologicalspace-basis.md) | 338 | `result-track:2614bf02a7ce7a206bb749884f0aeaad85fa0d69c7804ea3ef3604c9c923017f` |
| 71 | `def` | [upperBasis](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/upperbasis.md) | 383 | `declaration-track:8b2dc7a9ca7a0fbbb82027d384046a37ff6d831dcef2ef1ee90b9fd62f911c98` |
| 72 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/topology-eq.md) | 391 | `result-track:4c21984922ddfefc70fcd6d8903db97c89db4429a7ba616ae7293322bf9cc375` |
| 73 | `def` | [withUpperHomeomorph](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/withupperhomeomorph.md) | 397 | `declaration-track:1a326b88fcc5263ad6dab6561f91ec65cbc8a39982760eefae1626d08ae3d232` |
| 74 | `theorem` | [isOpen_iff_generate_Iic_compl](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isopen-iff-generate-iic-compl.md) | 400 | `result-track:85fa6ba9b6c04cdfdff258c7242c4babdc42e1d2349d057c32463299909b7cfa` |
| 75 | `instance` | [_root_.OrderDual.instIsLower](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/root-orderdual-instislower.md) | 403 | `declaration-track:154d7ed6c644315b6cdfa816880bee10a5bcd3999dd9fa3040bdfa5e0e22c671` |
| 76 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-10.md) | 407 | `declaration-track:b31142a139a88ec06256600e7688e5424c51c305092051f384fc6e36fef81445` |
| 77 | `theorem` | [isClosed_lowerClosure](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isclosed-lowerclosure.md) | 411 | `result-track:5309da17c8d875a454be261d47d6b3fbd2143773d98258d8e29622fa0f4095bf` |
| 78 | `theorem` | [isUpperSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isupperset-of-isopen.md) | 415 | `result-track:a881431e83c36be44304fcc2b5e60fc6883eb67497c93f3d8f76ce23ae9682cd` |
| 79 | `theorem` | [isLowerSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/islowerset-of-isclosed.md) | 418 | `result-track:ba618190c8fd5050a3cb24b1b1e9fbb9b7ce7b1c08b182864046d7b36aa5b930` |
| 80 | `theorem` | [tendsto_nhds_iff_not_le](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tendsto-nhds-iff-not-le-source-edition-2.md) | 421 | `result-track:fba3f203d155822c901d2335caed103195706f36f9bb7b2957c4592a3bf6dec1` |
| 81 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/closure-singleton-source-edition-2.md) | 430 | `result-track:b5656b0ecc69dfd53e87edede7e1acbb153adbb2408c801e3c64d61e6ecab1f7` |
| 82 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/istopologicalbasis-source-edition-2.md) | 433 | `result-track:b93010d577423a2cf7e3dc3329a9458404ae12e657e384718ae2e455d0114039` |
| 83 | `lemma` | [continuous_iff_Iic](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/continuous-iff-iic.md) | 438 | `result-track:08e6df46b485081ade2dceb3fcf90ba02360ab35e785cc6c5a54daf4e4d5a4be` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-18.md) | 451 | `declaration-track:eff33627d5465f423b8ecbb2d842cb54d0e15888ae3649691e48c55211018aed` |
| 85 | `lemma` | [isTopologicalBasis_insert_univ_subbasis](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/istopologicalbasis-insert-univ-subbasis-source-edition-2.md) | 460 | `result-track:62ffc681750c879c4dbd09104d0ec6de06e25d039ef4502f50c714042f9e83b1` |
| 86 | `theorem` | [tendsto_nhds_iff_lt](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/tendsto-nhds-iff-lt-source-edition-2.md) | 464 | `result-track:9dff8a6e9c17734a771d31945d0fa7532dfb2631fb1ab74f8b9bf76f06429271` |
| 87 | `lemma` | [isTopologicalSpace_basis](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/istopologicalspace-basis-source-edition-2.md) | 474 | `result-track:395f540862e3453a23637b222b249b7b468b1cc4cc20f89276d4cf8dc6fdf876` |
| 88 | `theorem` | [preorderTopology_le_lower_of_linearOrder](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/preordertopology-le-lower-of-linearorder.md) | 485 | `result-track:ad1f95844e3c69de36c10a80a4c18112360f1cc5206b08bc49b07bd4367e68ef` |
| 89 | `theorem` | [preorderTopology_le_upper_of_linearOrder](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/preordertopology-le-upper-of-linearorder.md) | 488 | `result-track:431100a41c88814c35a266fac3368a3d65a3144116a59f7442fba24c7b698f40` |
| 90 | `theorem` | [lower_inf_upper_eq_preorderTopology](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/lower-inf-upper-eq-preordertopology.md) | 491 | `result-track:e5884ffb332aebe55dd2178cbd82a345bda2687248e047e7a9a6e0a358a37569` |
| 91 | `instance` | [instIsLowerProd](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instislowerprod.md) | 498 | `declaration-track:9c33a91566753de7678773988db9111c643c0e98e83ceeca94b5866adf39a021` |
| 92 | `instance` | [instIsUpperProd](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instisupperprod.md) | 517 | `declaration-track:f5966b15a369de15ea9ff63a4b0210a79f665f399d290c60e1af55e502c9f016` |
| 93 | `lemma` | [_root_.sInfHom.continuous](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/root-sinfhom-continuous.md) | 529 | `result-track:40b885dd31ad26d1dbba1ce7bf795893d72965daaf24089f4506c85f254efea0` |
| 94 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-9.md) | 538 | `declaration-track:95e4d7c1183852180f840bbd629fd86cb9a288f4241ef2b5de8d150a786eadad` |
| 95 | `lemma` | [_root_.sSupHom.continuous](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/root-ssuphom-continuous.md) | 548 | `result-track:60054705ba11dbd50fe7975c48bae2e513e60043351342327479219508e2da19` |
| 96 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-3.md) | 552 | `declaration-track:3240c9cf6e0e7b8254c5659f1c03262cba00d11c68dc36fff5646c809484977e` |
| 97 | `lemma` | [isUpper_orderDual](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/isupper-orderdual.md) | 557 | `result-track:54014a86a5acd91c6a4b0c94f0378510ec245e7447197da10e2d8639e2fc7a8e` |
| 98 | `lemma` | [isLower_orderDual](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/islower-orderdual.md) | 562 | `result-track:b9d8ede5400f205e99fe5e4838f6764625dbd9878bc62a884cb1231bbece2d22` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyPublic.lean/declarations/instance-source-edition-14.md) | 568 | `declaration-track:e201ea4a562a699aaeacf2b971c6e316135a7d7acfab2d0e839e4bef7650e8e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4d46339d66926da7c3572e5d81e80f989d3f8e9f9701241b4a43f783e2f4962 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
