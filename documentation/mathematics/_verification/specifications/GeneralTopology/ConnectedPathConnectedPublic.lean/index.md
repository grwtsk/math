# Verification target: Connected Path Connected Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "063522ce3ac7a6b2b9113ff2bea3bb3021155b3c",
  "lexical_observation_count": 123,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variant089d52b7461fc685181d570d69744dd9c5bf06ea2fc30372a0c54aec6abe1687.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `063522ce3ac7a6b2b9113ff2bea3bb3021155b3c`.

Source path: `GRWTSK/Topology/GeneralTopology/PathConnected/Variant089d52b7461fc685181d570d69744dd9c5bf06ea2fc30372a0c54aec6abe1687.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PathConnected/Variant089d52b7461fc685181d570d69744dd9c5bf06ea2fc30372a0c54aec6abe1687.lean.json)

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
| 1 | `def` | [Joined](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined.md) | 62 | `declaration-track:a89d46943e6015577e1ea2849a90f2419c31b4e6da93069d51072b54f84ee05d` |
| 2 | `theorem` | [Joined.refl](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-refl.md) | 66 | `result-track:8ad8a6a115bd0fbcd336b101ff54b7c8d7fb85075614f39edcb8ae1f562b8d90` |
| 3 | `def` | [Joined.somePath](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-somepath.md) | 70 | `declaration-track:7a7a62101ef1d1ee7633239eca2c8046155a6c63f4c8b40599867bc8fd34c56b` |
| 4 | `theorem` | [Joined.symm](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-symm.md) | 74 | `result-track:af4ad27bcf91871580d69ac83bb7bac5b84a6830ca09a3aaee4960a57f168822` |
| 5 | `theorem` | [Joined.trans](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-trans.md) | 78 | `result-track:373a0151e283ae5e3701e3f5a5441913548d54a198bb5cdbe7150be9f2ed958c` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/instance-source-edition-8.md) | 81 | `declaration-track:faf8e10be462650f2a6a83d83ca6ac61e2854e39019ea6e248baf5c3850cf81d` |
| 7 | `theorem` | [Joined.map](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-map.md) | 86 | `result-track:397e56261d7c0127d067468d7192d56113207362892f5b59de90e1cf2ac6addc` |
| 8 | `theorem` | [Joined.mul](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-mul.md) | 91 | `result-track:bf1cf11843a64e18e148c3dc4ef8cec4133207ea7c1437306436aecfdc961817` |
| 9 | `theorem` | [Joined.listProd](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-listprod.md) | 96 | `result-track:361d987713c00df83340d8ed2dc597b8f5bba934a47bc785d4609656c8177581` |
| 10 | `theorem` | [Joined.inv](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-inv.md) | 104 | `result-track:0cb3ab5fb0810434de73f69cb16095e17ea8307ca77907740ed57a09f6ed1e0e` |
| 11 | `def` | [pathSetoid](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathsetoid.md) | 112 | `declaration-track:38ed80cdb94f42138f5406ba289b74025f74b7a0933a32d13aa645d28e7f9107` |
| 12 | `def` | [ZerothHomotopy](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/zerothhomotopy.md) | 117 | `declaration-track:10c7808bc0618a1d1abec15f2198b8f5fc5d63176a41a707a9772babd624d3a2` |
| 13 | `def` | [mk](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/mk.md) | 125 | `declaration-track:1946db4ec978a3027e568bd0bed8974754a2cd159f7434f59a1110eb6e5c96ec` |
| 14 | `lemma` | [mk_surjective](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/mk-surjective.md) | 127 | `result-track:864b41b3c8732886b6c32c947fc9989b5433d1cda9252413121ad3031f7e95a4` |
| 15 | `lemma` | [rec](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/rec.md) | 132 | `result-track:9f8add385159b39d947e8b1d1c6a337438306b0c257a5fd6000ea82fd2966c4c` |
| 16 | `lemma` | [sound](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/sound.md) | 138 | `result-track:10dac205c235b6dfa10d2409635ae2f9f5424fe22a1b04c6a1afce84dcfd4132` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/instance-source-edition-4.md) | 142 | `declaration-track:b2385871307e963d7f417bce5748750128fb858b7230134233394a46bc6e9ee7` |
| 18 | `lemma` | [isQuotientMap_mk](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/isquotientmap-mk.md) | 145 | `result-track:365edfbcc5f1e6229cce2f05a0a4b85b074f9f1052cc9df9b4a1e7c3d6bd4e1b` |
| 19 | `instance` | [inhabited](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/inhabited.md) | 148 | `declaration-track:a545f200d3f9a0be0231470ee7441e63c9fb718ccbabcf2411fb8cc5a63306c3` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/instance.md) | 151 | `declaration-track:201c59421cb6b06a47555e0d168f50f850408763472ce19ac16e3322b9c29aba` |
| 21 | `def` | [lift](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/lift.md) | 158 | `declaration-track:52e1eeed5896ffff583882db40cb5a064ca3042294bebdaf434ef28b03b666e5` |
| 22 | `lemma` | [lift_mk](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/lift-mk.md) | 162 | `result-track:1d3a8d80cd44f3552fec7c566e45c5fa0aa1ddd5b54ce507250600b651f4be2f` |
| 23 | `def` | [JoinedIn](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin.md) | 175 | `declaration-track:0e8838d9d456bfe70fb0477bff69e44f2edbeea20771afb067c3060b6144e6c5` |
| 24 | `theorem` | [JoinedIn.mem](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-mem.md) | 180 | `result-track:d84350e1e9d69ec4e467c4d27ac4cdef28cc03b26a67992a1f2d26edf2d3f5d8` |
| 25 | `theorem` | [JoinedIn.source_mem](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-source-mem.md) | 185 | `result-track:e4744a970195ba32c33e323172cc441e00749d8580b7db3e52a64fb607beb3df` |
| 26 | `theorem` | [JoinedIn.target_mem](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-target-mem.md) | 188 | `result-track:28c539bca97626bccaa57d44633858cfd9e0b16029aaaba3579da07e9e5c3231` |
| 27 | `def` | [JoinedIn.somePath](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-somepath.md) | 192 | `declaration-track:79add4bf968207220d0196cf1905a8e7a2b1d3c951d2531e1a30a7734d5b8ce7` |
| 28 | `theorem` | [JoinedIn.somePath_mem](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-somepath-mem.md) | 196 | `result-track:600401e68e58e5e67188d2aa25916290a90e81d39cdba3e948b2e6a1731779bf` |
| 29 | `theorem` | [JoinedIn.joined_subtype](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-joined-subtype.md) | 200 | `result-track:16ed1661fd4062dd8475bbd74c091aee3940b577aa9d6855ef4940cae0ba65df` |
| 30 | `theorem` | [JoinedIn.ofLine](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-ofline.md) | 207 | `result-track:700ebbd6c42f22db259526209b7e4b4a109e321477367bb1d286f0ed6fd73e07` |
| 31 | `theorem` | [JoinedIn.joined](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-joined.md) | 211 | `result-track:53c1db1fd4f35ec522c3b52cb406d2bc35d52e4f60f25f432a8d062c4edb29ad` |
| 32 | `theorem` | [joinedIn_iff_joined](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-iff-joined.md) | 214 | `result-track:47c96d8ff4949fca35f080a2b329f09c88750e221d325c91642d4730d8834055` |
| 33 | `theorem` | [joinedIn_univ](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-univ.md) | 219 | `result-track:98794540c61fd12b4fe665f9fcb22e115915a2c29c7c8758281d580ef1cc52af` |
| 34 | `theorem` | [JoinedIn.mono](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-mono.md) | 222 | `result-track:aeaf31fdeaee65e208c23b970d84b4cf222a46665e811f647be3ed61ce752af0` |
| 35 | `theorem` | [JoinedIn.refl](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-refl.md) | 225 | `result-track:0acc348976e116333b799d27f760ae47ca81487d7130a014e6b3411fe87923ca` |
| 36 | `theorem` | [JoinedIn.symm](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-symm.md) | 229 | `result-track:94c84dab72398e2162c0b9d19aafe8f4d782941e9c7e1725054b98cab9700a16` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/instance-source-edition-5.md) | 234 | `declaration-track:b8023ddf5b6fbc4e28c9f9a843c6058ff3caef0cdf659f51c8cf809fab537ce0` |
| 38 | `theorem` | [JoinedIn.trans](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-trans.md) | 237 | `result-track:424908ab0feb488587418448043ce317a7c54e848f5d4e876ba8888d6c59aafb` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/instance-source-edition-2.md) | 243 | `declaration-track:5d8a54ea879eeb0e22dd2ced8e97088367e1ac7fff125467acb97bf046cfe270` |
| 40 | `theorem` | [Specializes.joinedIn](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/specializes-joinedin.md) | 246 | `result-track:2ac2a110176953a28232e9987ae4d1fb4f909046412023171f0247ab486b2af2` |
| 41 | `theorem` | [Inseparable.joinedIn](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/inseparable-joinedin.md) | 253 | `result-track:dc51d4af51cc2ff10404a7f73976d803f3bef64ee4cbddf90cd0f8ff7f940929` |
| 42 | `theorem` | [JoinedIn.map](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-map.md) | 256 | `result-track:569a6bb8594bbd4e5c4d5067dceb764cd7cdec226abcef1b639f282bdf2ac4ac` |
| 43 | `theorem` | [Topology.IsInducing.joinedIn_image](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/topology-isinducing-joinedin-image.md) | 264 | `result-track:e6fb662bb5ab1de3943a2e1174fba40c8f342e58fe2669a11c4d5345a7cafd6f` |
| 44 | `theorem` | [JoinedIn.mul](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-mul.md) | 277 | `result-track:956fd81a9251f9c5d3f4d8285d338ed9ee794ceceeebf0a123143063b980d1b8` |
| 45 | `theorem` | [JoinedIn.inv](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-inv.md) | 283 | `result-track:f76326c53b5c2edd73348fac702ab143716117de463e7ca7364f98301284b8a2` |
| 46 | `def` | [pathComponent](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponent.md) | 291 | `declaration-track:345765a39365923f931a962d81fa5509133f4673a018944e15d256be47a0c26e` |
| 47 | `theorem` | [mem_pathComponent_iff](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/mem-pathcomponent-iff.md) | 294 | `result-track:3fbda398e925b7e3cd1cac2c33b4f69df89eb54383a2c7a9f38da2d801d331af` |
| 48 | `theorem` | [mem_pathComponent_self](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/mem-pathcomponent-self.md) | 297 | `result-track:fc5bbffe64f40005a7a18bd4a0c38def6069da773eb7366ad6c0ac273ac441a7` |
| 49 | `theorem` | [pathComponent.nonempty](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponent-nonempty.md) | 301 | `result-track:75b0db099b9fc5f346d342268abb2815977fe627bd4f4414d94033adf50aa388` |
| 50 | `theorem` | [mem_pathComponent_of_mem](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/mem-pathcomponent-of-mem.md) | 304 | `result-track:6e12a12b37ac7a7b8dfdb556bd9444e6c089868b10f171d667ba74f0e7a3db69` |
| 51 | `theorem` | [pathComponent_symm](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponent-symm.md) | 307 | `result-track:fc4205fa4fbc08e60d96500d7128fc5538fb51d1868171da76e1432f638d3a90` |
| 52 | `theorem` | [Continuous.mapsTo_pathComponent](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/continuous-mapsto-pathcomponent.md) | 310 | `result-track:7420bb46aee31afeaf3d0915e55eacb68240c6f88f098e09bc3028606bd218e0` |
| 53 | `theorem` | [Continuous.image_pathComponent_subset](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/continuous-image-pathcomponent-subset.md) | 314 | `result-track:8b64e141d792d2f784154c9b3a4dd13663ca581e34d1a05674cc381704acc8fc` |
| 54 | `theorem` | [pathComponent_congr](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponent-congr.md) | 318 | `result-track:59280bffe1f89b506835b9a18a6d5253d80d2faa6ef6bb5000b03a62b347b821` |
| 55 | `theorem` | [pathComponent_subset_component](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponent-subset-component.md) | 328 | `result-track:4cb897bb84d58a40d3fa63edc7fc5b539dd91e920fd294bbd18ae181ea4f5f7d` |
| 56 | `theorem` | [biUnion_connectedComponent_pathComponent_eq](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/biunion-connectedcomponent-pathcomponent-eq.md) | 333 | `result-track:058e1b745509abad4985cdca08159af9ec040f3db484e1828eb9c39678400278` |
| 57 | `def` | [ZerothHomotopy.toConnectedComponents](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/zerothhomotopy-toconnectedcomponents.md) | 341 | `declaration-track:eda292887c1fc947b5bf2af8f1e2c4fcec0a5f529588193106a99d3b64e2f942` |
| 58 | `theorem` | [ZerothHomotopy.toConnectedComponents_apply](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/zerothhomotopy-toconnectedcomponents-apply.md) | 345 | `result-track:3e6a6ad614284a28448605dbf522148ce9d45532dcd8a3c8d007737c63e6f13c` |
| 59 | `theorem` | [ZerothHomotopy.toConnectedComponents_surjective](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/zerothhomotopy-toconnectedcomponents-surjective.md) | 349 | `result-track:ecfda3467b0af3f140d7bec39ce9ed3446531d6f1576d972b6cdc0386134fee9` |
| 60 | `def` | [pathComponentIn](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponentin.md) | 354 | `declaration-track:b36b93a8e4a1ed9ac9aa4418761c75f94b49fd43b5155092d78e36f56d5e0d13` |
| 61 | `theorem` | [pathComponentIn_univ](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponentin-univ.md) | 358 | `result-track:fe647414a934c749af1015689a077afe97561adb982e55048ad561b74a23185c` |
| 62 | `theorem` | [Joined.mem_pathComponent](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-mem-pathcomponent.md) | 361 | `result-track:728b5460f2cc4e4be446c9d1895a44b63e52d47e88194a01bb2617a557c9a645` |
| 63 | `theorem` | [mem_pathComponentIn_self](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/mem-pathcomponentin-self.md) | 365 | `result-track:c03d1567b2bbe90cdc025e9f6179b09bd2815ac8f4937ef72edbef5612fcf9a7` |
| 64 | `theorem` | [pathComponentIn_subset](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponentin-subset.md) | 368 | `result-track:437be2469aabb5df6cf3d6fc1e524fa8f547a11e7604e18c357e77dbb8f40c33` |
| 65 | `theorem` | [pathComponentIn_nonempty_iff](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponentin-nonempty-iff.md) | 371 | `result-track:437705a239e2b0db59ce726f941c49cad1672c37da78c2b7ab32d938daf377b4` |
| 66 | `theorem` | [pathComponentIn_congr](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponentin-congr.md) | 374 | `result-track:81af9cb5ce344e32c69f48b70ab3c49cd230ba2fff2d44bf7ed3e0a3e34f8c91` |
| 67 | `theorem` | [pathComponentIn_mono](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponentin-mono.md) | 379 | `result-track:2531e8bedb1933bf5fee8b82acb091f502434afb82f2ca4b5a7e54df906f4ce9` |
| 68 | `def` | [Submonoid.pathComponentOne](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/submonoid-pathcomponentone.md) | 388 | `declaration-track:5bf36a49203ce87434a535af2358685606adc7e42be7eb9508a7fe26c5365f7a` |
| 69 | `def` | [Subgroup.pathComponentOne](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/subgroup-pathcomponentone.md) | 397 | `declaration-track:b1bafb1f63331422e9d7da3d6730146b9e1419f26204f11573e5e05fe5217fef` |
| 70 | `instance` | [Subgroup.Normal.pathComponentOne](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/subgroup-normal-pathcomponentone.md) | 404 | `declaration-track:ffe9626ac772655dc37f85c84000d06cc9e1e56d8bcacbee96ea7c203f4a1ba8` |
| 71 | `def` | [IsPathConnected](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected.md) | 412 | `declaration-track:27604b0bab44d996d9ea2e7284f69ee4d4c547acf38587a114db796144e1588f` |
| 72 | `theorem` | [isPathConnected_iff_eq](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-iff-eq.md) | 415 | `result-track:e49a3c58e11edadb58b5b7ea7a09f5dbd8780148ced9fc6eb3e6dd1eca4c8afe` |
| 73 | `theorem` | [IsPathConnected.joinedIn](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-joinedin.md) | 422 | `result-track:660e9d4d86b1980f099a7458bf933e3196104414de6938bb064e4e7ed306af17` |
| 74 | `theorem` | [isPathConnected_iff](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-iff.md) | 427 | `result-track:4f470f60bc09b1f9e3c67634b1da7030e57df2d32661ed1fa443faa16fb36937` |
| 75 | `theorem` | [IsPathConnected.nonempty](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-nonempty.md) | 433 | `result-track:710c2f82e57c4c2e6b03b72f0bb6fdad199c21ae7ec0f4af3f85aac234495548` |
| 76 | `theorem` | [IsPathConnected.image'](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-image-source-edition-2.md) | 437 | `result-track:a57bd06920ef4acd1b9d6ef7f625dd1a8cf965282882e695e38fb1a5aca75073` |
| 77 | `theorem` | [IsPathConnected.image](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-image.md) | 446 | `result-track:5fcea3012b90288dd9203c1c33748f44b94505f1ee4398da1ea2b276c2fa1154` |
| 78 | `theorem` | [IsPathConnected.mul](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-mul.md) | 451 | `result-track:ed1e11bbdc2fb33d765c1e11620a15e09b08597c39f99b557ba5658fc8da70e4` |
| 79 | `theorem` | [IsPathConnected.inv](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-inv.md) | 458 | `result-track:ec15feb7931e6995b1dc6424810b3c4dffba38e5aa5e03b30527df0daf35e5e3` |
| 80 | `theorem` | [Topology.IsInducing.isPathConnected_iff](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/topology-isinducing-ispathconnected-iff.md) | 466 | `result-track:12c46ec79b770206e9ec30cee040c408ad94641fe1a4bc0be06e7c3831945d33` |
| 81 | `theorem` | [Homeomorph.isPathConnected_image](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/homeomorph-ispathconnected-image.md) | 474 | `result-track:f857ce34e2603bb134fa51dcc820aaa86c23509dd77b24c93b26515a8310e36b` |
| 82 | `theorem` | [Homeomorph.isPathConnected_preimage](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/homeomorph-ispathconnected-preimage.md) | 480 | `result-track:3d4e804939f500446522100478319802caa3c47f19107db98caa9b73cc034c35` |
| 83 | `theorem` | [Homeomorph.image_pathComponent](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/homeomorph-image-pathcomponent.md) | 485 | `result-track:c4cbaec59f3eefa1a88cea893fd487bdc04ba08d9c1676b4d9aa9f4d0e19d68e` |
| 84 | `theorem` | [Homeomorph.preimage_pathComponent](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/homeomorph-preimage-pathcomponent.md) | 491 | `result-track:35293350db4fe2ae6886ae1ad61f3549b75a0be8b5c0747c895e20c2e0f951d6` |
| 85 | `theorem` | [IsPathConnected.mem_pathComponent](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-mem-pathcomponent.md) | 495 | `result-track:c94d982d6b4f64c03c0e5f7c8886e44846ef2ae4c5854e36314e6e56c182adef` |
| 86 | `theorem` | [IsPathConnected.subset_pathComponent](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-subset-pathcomponent.md) | 499 | `result-track:882dca986e0b5548558caa5e20b908df2856356a353db6dbf9ea2451fc51f848` |
| 87 | `theorem` | [IsPathConnected.subset_pathComponentIn](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-subset-pathcomponentin.md) | 502 | `result-track:6444130baf8ea6fdc249e9f4ad78bbb5d266f4653ea2b29bdf20d5025f2a3800` |
| 88 | `theorem` | [isPathConnected_singleton](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-singleton.md) | 506 | `result-track:e454520542a89480a259fd523a8a1e41eb91a3bbee9d4a6651a07d68e2466540` |
| 89 | `theorem` | [isPathConnected_pathComponentIn](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-pathcomponentin.md) | 511 | `result-track:e2ebadb397e5a059469a4494bfedf9460bd3fc79ba325f33664c59b47b983a3c` |
| 90 | `theorem` | [isPathConnected_pathComponent](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-pathcomponent.md) | 518 | `result-track:95444a7e4a895b57c0885433041bd54cf0fad5fa18f2fa2dddfb7aee7aa5bdac` |
| 91 | `theorem` | [IsPathConnected.union](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-union.md) | 522 | `result-track:66c95e9667505392ff18ee54250de9e05baf4f6fc45ab91d017ebb0700fb26cd` |
| 92 | `theorem` | [IsPathConnected.preimage_coe](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-preimage-coe.md) | 532 | `result-track:dada188bba6e2d664950a983851931bdbdf9cf9ecb1593ebce060f28cd60d790` |
| 93 | `theorem` | [IsPathConnected.exists_path_through_family](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-exists-path-through-family-source-edition-2.md) | 537 | `result-track:b7af9cba2244159ba86ffc48ee2356c0649423d28cf34feb4f41bb8c92aa41b5` |
| 94 | `theorem` | [IsPathConnected.exists_path_through_family'](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-exists-path-through-family.md) | 561 | `result-track:0b5b166ca76a53bc689fe39abfeca5b2f63bce246201e6cb96dd9195a4668dd5` |
| 95 | `class` | [PathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathconnectedspace.md) | 577 | `declaration-track:446fd627aed674b45c8f6954a528a9ef5d7f5d0102093b5ef5d7c8fa559991a2` |
| 96 | `theorem` | [pathConnectedSpace_iff_zerothHomotopy](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathconnectedspace-iff-zerothhomotopy.md) | 583 | `result-track:c62dd80998cb51ae83444f0b9f356d0b8ef9bec6ea0ac597b0aa4e6743070373` |
| 97 | `def` | [somePath](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/somepath.md) | 600 | `declaration-track:fe9673ed4bb7847210a18b238569e161b833d4c6683fae76bc9b560edcb8b90a` |
| 98 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/instance-source-edition-7.md) | 603 | `declaration-track:d988f78d6f53afafab4355d00cf7f3928f3bb49df25c204a42de2e9017be2d2b` |
| 99 | `theorem` | [pathConnectedSpace_iff_univ](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathconnectedspace-iff-univ.md) | 608 | `result-track:6881b8719f0a4eac913008a5b124f5ec4c24eff476a6ed72512afbf4fb77d709` |
| 100 | `theorem` | [isPathConnected_iff_pathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-iff-pathconnectedspace.md) | 611 | `result-track:359d6bedce958ba80d6cb6f638ee40b87cd9ca44b6eaf3d747c7599cb81cabb3` |
| 101 | `theorem` | [isPathConnected_univ](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-univ.md) | 615 | `result-track:d03d52013789362a56893c7206feeff4fa133e0781d46231a46dae06f79786e1` |
| 102 | `theorem` | [isPathConnected_range](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-range.md) | 618 | `result-track:0591cee5cb4e0297a01be0f9d34ad9312e318f74449f682bd37ce6c9bfdee6be` |
| 103 | `theorem` | [Function.Surjective.pathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/function-surjective-pathconnectedspace.md) | 623 | `result-track:f98b70b4e51503f4d26f0a33ef97f83e848794bf064c9848ae295021a42a1b30` |
| 104 | `theorem` | [Homeomorph.pathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/homeomorph-pathconnectedspace.md) | 628 | `result-track:7e89dd838555f12eacc5c997b3dc34d870af11f05e90073612f3d2a9f967ebd5` |
| 105 | `instance` | [Quotient.instPathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/quotient-instpathconnectedspace.md) | 632 | `declaration-track:499c5e550a3763bb5503f6613877153f929d5125e47e0588488b54f572e99d6f` |
| 106 | `instance` | [Real.instPathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/real-instpathconnectedspace.md) | 638 | `declaration-track:b8401d4f41a7c427d52bcac19f2ff002ccbc859a461b19411f87fc1e57371531` |
| 107 | `theorem` | [Joined.prod](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-prod.md) | 650 | `result-track:108776c3057f43da740fc31726743cb537f70c984e2f533228c73ca890802723` |
| 108 | `theorem` | [JoinedIn.prod](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-prod.md) | 656 | `result-track:305ee4fe8617b8c6664bd02175c8b98fb979414ceacd8c330ffbcc1d45c0cd71` |
| 109 | `theorem` | [pathComponent_prod](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponent-prod.md) | 662 | `result-track:f3786d30cd893a4483362b69b826d58675e569d47a4db3e8027a0b948d2059f8` |
| 110 | `theorem` | [IsPathConnected.prod](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-prod.md) | 669 | `result-track:0b858885984316b0ae9d85947c5872eef98cea85d4dec8db371053fa68f4f89c` |
| 111 | `instance` | [Prod.instPathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/prod-instpathconnectedspace.md) | 675 | `declaration-track:a8fae4078d89222c1a9692c56e366d77203eebe8c71b815652da7213198a79e1` |
| 112 | `theorem` | [Joined.pi](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joined-pi.md) | 687 | `result-track:bc8d2fe5eb697f9e5c85067125e5599b747078f50f69f792d136e2362c66ca83` |
| 113 | `theorem` | [JoinedIn.pi](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/joinedin-pi.md) | 692 | `result-track:1ebdc0327c65924e1b430677c9b59dcbc2da7345dfde3c286c1c37dc6388a738` |
| 114 | `theorem` | [pathComponent_pi](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathcomponent-pi.md) | 698 | `result-track:f95a1250b7ea255ef8c7a359ad9968bc1cdf6a55fb59638763f38863aef4f96a` |
| 115 | `theorem` | [IsPathConnected.pi](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-pi.md) | 705 | `result-track:2fc1f5964c01a59722133efcb5e41ab71704417f0a924098f153670cd0e81d65` |
| 116 | `instance` | [Pi.instPathConnectedSpace](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pi-instpathconnectedspace.md) | 710 | `declaration-track:77e9b2f4fc4311743a53d652d45afa59e3a6308e907c8fa310d9fe4853180fbe` |
| 117 | `theorem` | [pathConnectedSpace_iff_eq](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/pathconnectedspace-iff-eq.md) | 717 | `result-track:636e3e035ab5c3fe088a1e5dacc25f9eeca49024142285c23a757b5bce9ec1aa` |
| 118 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/instance-source-edition-3.md) | 721 | `declaration-track:8fa676e23bd68ff67154c8dc1497b2e13cc06638d7c7c6c172a6a61f213a735c` |
| 119 | `theorem` | [IsPathConnected.isConnected](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/ispathconnected-isconnected.md) | 733 | `result-track:356f44e884ea691cef1bb782523cdcf5250e93b1be5504475cd9347f8b4b2d68` |
| 120 | `theorem` | [exists_path_through_family](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/exists-path-through-family-source-edition-2.md) | 742 | `result-track:bd4e5d68e5f030fbef8315b28762f08045b95262e5385fe17a9a2df7fce840c1` |
| 121 | `theorem` | [exists_path_through_family'](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/exists-path-through-family.md) | 748 | `result-track:b7de70ade475f8193b9838de9faf1e2d41886475f2fd8317334a8076e196b28f` |
| 122 | `theorem` | [ZerothHomotopy.preimage_singleton_eq_pathComponent](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/zerothhomotopy-preimage-singleton-eq-pathcomponent.md) | 758 | `result-track:328da0a50dd3b7cb221a1774237d9393cabef7dbb3f4e71f5d21d0df5efd6695` |
| 123 | `instance` | [(anonymous)](../../../../GeneralTopology/ConnectedPathConnectedPublic.lean/declarations/instance-source-edition-6.md) | 764 | `declaration-track:cf8cd26fb6d3e9aaba99264aee4aac309d8b4a4077a7ea1947bd74e5075b62ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6162dbb6c5a556dcf52eea6d5b16e5a2fd82c4908814333d07f32a5d16de4209 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PathConnected/Variant089d52b7461fc685181d570d69744dd9c5bf06ea2fc30372a0c54aec6abe1687.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PathConnected/Variant089d52b7461fc685181d570d69744dd9c5bf06ea2fc30372a0c54aec6abe1687.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
