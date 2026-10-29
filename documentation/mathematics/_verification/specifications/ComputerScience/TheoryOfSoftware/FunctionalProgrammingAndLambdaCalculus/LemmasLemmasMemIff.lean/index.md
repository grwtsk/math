# Verification target: Lemmas Lemmas Mem Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8a03187c2109f1670012eecbb712a587703d8f7",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant495ab4fbf9e60a9c21797fb2930a0f73041de8610cab042e556f245c91d2f983.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8a03187c2109f1670012eecbb712a587703d8f7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant495ab4fbf9e60a9c21797fb2930a0f73041de8610cab042e556f245c91d2f983.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant495ab4fbf9e60a9c21797fb2930a0f73041de8610cab042e556f245c91d2f983.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.Option.Init.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Data.Option.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Tactic.Ext.Attr` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Logic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/mem-iff.md) | 13 | `result-track:d694b0e5a0fb4c6f75d63f53790efc6980cff1fa6484d3f60b6489b0a0605bff` |
| 2 | `theorem` | [some_ne_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/some-ne-none.md) | 15 | `result-track:2f34ecdc0e3541eee797e34984e105dba0008c0e23734deab843967154719ee1` |
| 3 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/forall.md) | 17 | `result-track:57fa73fd0248648d14b76e3ce5a26614c897cfea90ed063dd0aab101a5291599` |
| 4 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/exists.md) | 20 | `result-track:9bd5456b54ba41d3ca40025e2e7578aa79793fc9f9deb270f93fdbdc1ded54e8` |
| 5 | `theorem` | [get_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/get-mem.md) | 24 | `result-track:3c14183bb72715691c9f5eb1a2d54712e0b9cf3d9e6628cb7b952fb8e7804120` |
| 6 | `theorem` | [get_of_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/get-of-mem.md) | 27 | `result-track:580edb720a7233d3961b1cfb7428b69165debd99b6d9c1fa885e65623a347384` |
| 7 | `theorem` | [not_mem_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/not-mem-none.md) | 30 | `result-track:c0b071b727f2785d7bfd88e6ba274f7a5dc9bdba2d1377e07be60b193b1150d7` |
| 8 | `theorem` | [some_get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/some-get.md) | 32 | `result-track:2b268d05150e84ec3423d5466d962a663b4be5ff02424abc7ff99a50a430b9de` |
| 9 | `theorem` | [get_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/get-some.md) | 35 | `result-track:6216cb4a2cdbbd1d4be79f09defd9eabe575624be37b55fc625576c62ad4f28c` |
| 10 | `theorem` | [getD_of_ne_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/getd-of-ne-none.md) | 37 | `result-track:2eb3f485302e766b5a1221e531be3b98123fea005f4efaad6ec278ac610d808e` |
| 11 | `theorem` | [getD_eq_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/getd-eq-iff.md) | 40 | `result-track:de1566934d5e6fa23c41429a0b5444d2c8979f3bc549d7abcd7a3b9ef40d976a` |
| 12 | `theorem` | [mem_unique](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/mem-unique.md) | 43 | `result-track:2780ceb876c18a669f9e4263090f8b30076cc0a70cbff66e4e1b9995b7f16333` |
| 13 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/ext.md) | 46 | `result-track:fe2d49bdc14f83818672d43d82ffadf9078b061e719280eaa139f3d3be326bf7` |
| 14 | `theorem` | [eq_none_iff_forall_not_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/eq-none-iff-forall-not-mem.md) | 51 | `result-track:fe2714263d57b7f495bc6ea7d95302eae34f82dcf237042d35ae41abaac65d53` |
| 15 | `theorem` | [isSome_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/issome-none.md) | 54 | `result-track:2a287e83337e3a087707d83a3a6a1e1854bfcbdbe44058654a95d5c7762ac339` |
| 16 | `theorem` | [isSome_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/issome-some.md) | 56 | `result-track:c9f2a0e72b8e527f67531b3367247b4c5fa0512f118f9de3a50a69ce235d050a` |
| 17 | `theorem` | [isSome_iff_exists](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/issome-iff-exists.md) | 58 | `result-track:19bf0f57d53251e7c055c34e700bc86664e584a60c0fcd3e1b07a815307dad3e` |
| 18 | `theorem` | [isNone_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/isnone-none.md) | 60 | `result-track:c21f43a0244564f4829e978b024a911c2f54dc10bec33661ec258deb14e8ba4a` |
| 19 | `theorem` | [isNone_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/isnone-some.md) | 62 | `result-track:a74f1478d4c344ccec93b1cd1242d5d2ae8ab7de93784a65ed37774800b4de23` |
| 20 | `theorem` | [not_isSome](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/not-issome.md) | 64 | `result-track:278530d93b624aa04ded9d651af802d1aefe8ca74ea743598ec099078f0530da` |
| 21 | `theorem` | [eq_some_iff_get_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/eq-some-iff-get-eq.md) | 67 | `result-track:c333879e1e3fd64cc1b62a90a8e2b44274fc1b018721aa6288a759aa0b271c7d` |
| 22 | `theorem` | [eq_some_of_isSome](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/eq-some-of-issome.md) | 70 | `result-track:50d715a0969179d86c96fc766774f0a3276f63617890f5ec0519aa2513136fbf` |
| 23 | `theorem` | [not_isSome_iff_eq_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/not-issome-iff-eq-none.md) | 73 | `result-track:2f2af047aa498c1fa487e8aaeb0ad353f90c3d23f43198c4fd22f2d3f279a1fc` |
| 24 | `theorem` | [ne_none_iff_isSome](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/ne-none-iff-issome.md) | 76 | `result-track:7323ad66084ee71bd50d6932053d623d3e2757207ef612197ec7e9d313d21ade` |
| 25 | `theorem` | [ne_none_iff_exists](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/ne-none-iff-exists-source-edition-2.md) | 78 | `result-track:52c6f18847b41a801388204d0ade0bc1e1df7db4791b58dc2b475caf4b2d65f6` |
| 26 | `theorem` | [ne_none_iff_exists'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/ne-none-iff-exists.md) | 80 | `result-track:3f24099768a694e2999c7db64e16b0ecba817543960d6d3299f22f2a864ed9c4` |
| 27 | `theorem` | [bex_ne_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/bex-ne-none.md) | 83 | `result-track:c2ff2779d4aead959030a0e2dd6b3026e1b882317f99bac9e87f8c325b46e296` |
| 28 | `theorem` | [ball_ne_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/ball-ne-none.md) | 87 | `result-track:0dee0385c7cd9d83db4d665d8803d952e732b781cea534d5d314ae5024dd477d` |
| 29 | `theorem` | [bind_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/bind-some.md) | 94 | `result-track:43731cd40964227a14e6e717ed9b8f93d127b8e49505b05e76336c116d57c4e9` |
| 30 | `theorem` | [bind_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/bind-none.md) | 96 | `result-track:3017c5e42b31b17c7899ed3e151b5436ccf3cf8fbe81bed6e69b3cb8dc6a88a3` |
| 31 | `theorem` | [bind_eq_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/bind-eq-some.md) | 99 | `result-track:6942475d659432a2d3365ed3062804dd9d4946c5a09f8f2559f4a813d35b2ccb` |
| 32 | `theorem` | [bind_eq_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/bind-eq-none.md) | 102 | `result-track:c1ecc37de3ce8a6b3c1a5e7c72ca76680a0c7b001ae4e347086ad2320cf89efd` |
| 33 | `theorem` | [bind_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/bind-comm.md) | 106 | `result-track:abaf7cc91b52089e7c14fcb5ec9cbe5157104fa68427f30078ba1185952ab491` |
| 34 | `theorem` | [bind_assoc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/bind-assoc.md) | 110 | `result-track:18e15b8ea052ae246a455e67c3db2418d61535d9277a07884a0f8dde318b4b4c` |
| 35 | `theorem` | [join_eq_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/join-eq-some.md) | 113 | `result-track:bf46777ed6ad12e44411249f343a2ab736a74ee7800ff93bab5eb51fcc60fd5b` |
| 36 | `theorem` | [join_ne_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/join-ne-none-source-edition-2.md) | 116 | `result-track:89c2ea89234c7d9284ca54c6ed64e60fbd07fd8d1380b828f343a8d431f74463` |
| 37 | `theorem` | [join_ne_none'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/join-ne-none.md) | 119 | `result-track:3f403a12cc17c1176e371264ec2aceb1e3e97c04cf739e87e50488dffd0453be` |
| 38 | `theorem` | [join_eq_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/join-eq-none.md) | 122 | `result-track:5bb7375c9db80ce20f74f331cb56af3c0e07be9a5238a3c78d1681ba1399d3d3` |
| 39 | `theorem` | [bind_id_eq_join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/bind-id-eq-join.md) | 125 | `result-track:511a2faa6def83448311c308c5b33eb4292e24e299a702afce05606d86a29c12` |
| 40 | `theorem` | [map_eq_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-eq-map.md) | 127 | `result-track:9247156c469f48dd3d60e1d8c84ad47952f9c70210b3f7ae582895a2b0fe7c45` |
| 41 | `theorem` | [map_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-none.md) | 129 | `result-track:3f264e4b8b10c5875eabfde33fc59ab601a65339aaccc1fa733db409eecbcbf1` |
| 42 | `theorem` | [map_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-some.md) | 131 | `result-track:71056adbc1374014e44395147d395625266554e579f8bed4298a6e7035f2d19c` |
| 43 | `theorem` | [map_eq_some'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-eq-some-source-edition-2.md) | 133 | `result-track:546df8dcd9de40645b3e70f878c21ca30eb30158e57eab2ddfe2b826e0c3bdff` |
| 44 | `theorem` | [map_eq_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-eq-some.md) | 135 | `result-track:47a71ba750a6eea81dcbab0a29ca965612d1132f50397aee4f19661a47fe8969` |
| 45 | `theorem` | [map_eq_none'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-eq-none.md) | 137 | `result-track:40fb1573ff46372fc090ca4299e9e732110b47bcb163f25535da5cb0e4377761` |
| 46 | `theorem` | [map_eq_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-eq-none-source-edition-2.md) | 140 | `result-track:7950408d7c478611f3f3353acbe247a8250f79590142b13486d9cc75d3636c86` |
| 47 | `theorem` | [map_eq_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-eq-bind.md) | 142 | `result-track:ef6175fa1829d1a383b73303c62e9c666fdf8bdd91cf802bd79dacd97fb5c562` |
| 48 | `theorem` | [map_congr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-congr.md) | 145 | `result-track:78ff228675b2fc6900908ffab6ae7570f947ddbfd14c94d4f2c3adca9406ef3a` |
| 49 | `theorem` | [map_id'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-id.md) | 148 | `result-track:4f739723a0ce272803e66cd18b82818fc92de74c1082e3430374fe85647ef51f` |
| 50 | `theorem` | [map_id''](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-id-source-edition-2.md) | 149 | `result-track:69a50a235286d2624017f121628893bc396bf4fe75e223cb3322480896002479` |
| 51 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-map.md) | 151 | `result-track:22cab5081640f8385f3bab48b84c1c783124211beda88553d5f7b6ca2bfa7a89` |
| 52 | `theorem` | [comp_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/comp-map.md) | 155 | `result-track:4cc33df444f531b1409b9773953c17aebf3e227a8b17a1c073371b599c16e2f8` |
| 53 | `theorem` | [map_comp_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-comp-map.md) | 158 | `result-track:e4d6a16af2ba3569eae2448dc2ab12eaaed96130916c95ecb452df5fab761adf` |
| 54 | `theorem` | [mem_map_of_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/mem-map-of-mem.md) | 161 | `result-track:27067ee8c9d6742d59b9fb4a2f4575bab9a78a8b6240cf72fd9f4a98bafd4f27` |
| 55 | `theorem` | [bind_map_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/bind-map-comm.md) | 163 | `result-track:cdda4cb4372e77646c43c39b445cdccfe726a31c74ad101ffac5f7ef7294cb62` |
| 56 | `theorem` | [join_map_eq_map_join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/join-map-eq-map-join.md) | 166 | `result-track:ac70bfc219492f0f859ce013337c1dcd26bfe6f2a35664dcfb915f396a4b691f` |
| 57 | `theorem` | [join_join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/join-join.md) | 169 | `result-track:1665c6241ce0cc715b207f30d8a8ac9d82a8042f57662ee43132af3c86c4eaa6` |
| 58 | `theorem` | [mem_of_mem_join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/mem-of-mem-join.md) | 172 | `result-track:3dc141c0ff2b173c9198ba693e4d01de1336a94a3756168a7bc3f2aa37460b33` |
| 59 | `theorem` | [some_orElse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/some-orelse.md) | 175 | `result-track:2067703f4e28782863713f73f1e6876cf8f3a33e2ef1754726020864aa255ca9` |
| 60 | `theorem` | [none_orElse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/none-orelse.md) | 177 | `result-track:2ba0df2be2634957b4e267c4d28a115cd65d5178f826a6f132e996cd44911b61` |
| 61 | `theorem` | [orElse_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/orelse-none.md) | 179 | `result-track:3f669b85ead8b91cc78c106f574dc5300b9d16839c269c4a15153e642701621f` |
| 62 | `theorem` | [map_orElse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/map-orelse.md) | 181 | `result-track:f13df8421473b57c7f1a596fa94d6afbf448de00668e5b4b74dbe0da59d4765f` |
| 63 | `theorem` | [guard_eq_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/guard-eq-some.md) | 184 | `result-track:66a3e1696f64e6a76f70be265ddf69681a7f3e0702f43f6b354889342b30c724` |
| 64 | `theorem` | [liftOrGet_eq_or_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/liftorget-eq-or-eq.md) | 187 | `result-track:c0887ee1530f62d76024caa5ae551f17510ab11e9b5939724188b5f971969c5a` |
| 65 | `theorem` | [liftOrGet_none_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/liftorget-none-left.md) | 194 | `result-track:1dc3ee32ba19d4c49a3531c132f8492cbc718b9f9484d1904de9e0f2d1a87f9c` |
| 66 | `theorem` | [liftOrGet_none_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/liftorget-none-right.md) | 197 | `result-track:c36d6221d65f00f8aacaf0081ffdaf1e399500729e2b4f2115c62f8a7841603f` |
| 67 | `theorem` | [liftOrGet_some_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/liftorget-some-some.md) | 200 | `result-track:f942927a581130aa1e09c723ffcadbf2cf55efd3e986c43deecdfc4deca1c3cf` |
| 68 | `theorem` | [elim_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/elim-none.md) | 203 | `result-track:6a842b06bf28f8de64727ef2742fbca491711f7b8dc5c2fab99073ab45ea225d` |
| 69 | `theorem` | [elim_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/elim-some.md) | 205 | `result-track:fbab6702a278fcfcec2bf22de03f78f510c91466519f86d7adcbba5981a17ee5` |
| 70 | `theorem` | [getD_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/getd-map.md) | 207 | `result-track:6cf9207398265c173b28aa3b4773d5908c762a8419cced1d90aa9efb976ce693` |
| 71 | `def` | [choice](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/choice.md) | 215 | `declaration-track:cd9f7d04256ae35c0965155a0c6795a237918fbaec057689ab66d0b17dae5fe9` |
| 72 | `theorem` | [choice_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/choice-eq.md) | 218 | `result-track:e79e447b6933925a0d6ae951e19aa902ec4a1412a78bd3b7e9600e13689c06d1` |
| 73 | `theorem` | [choice_isSome_iff_nonempty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/choice-issome-iff-nonempty.md) | 223 | `result-track:528512edf02f46b6bb17f3770b32ac11a864bf80e05706128fc4a68c1b1a7a75` |
| 74 | `theorem` | [to_list_some](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/to-list-some.md) | 228 | `result-track:c7bd39ac906050ca3376af4e63905aeb85bec8fc67e40607585a07d3f00d8b63` |
| 75 | `theorem` | [to_list_none](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasMemIff.lean/declarations/to-list-none.md) | 230 | `result-track:1579f1567f3378f77f5f9cf0ad9fa037abf0508660aecd1e1c9d4c2969765506` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f1116a24def2907ad0fc75ef247b9f824540802b0e198f138a899de0d478a8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant495ab4fbf9e60a9c21797fb2930a0f73041de8610cab042e556f245c91d2f983.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant495ab4fbf9e60a9c21797fb2930a0f73041de8610cab042e556f245c91d2f983.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
