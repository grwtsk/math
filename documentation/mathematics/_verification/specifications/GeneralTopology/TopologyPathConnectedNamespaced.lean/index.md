# Verification target: Topology Path Connected Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdc88775fd9bd3124ee2c1c112e2aea03f8071c7",
  "lexical_observation_count": 147,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdc88775fd9bd3124ee2c1c112e2aea03f8071c7`.

Source path: `GRWTSK/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Order.ProjIcc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Path](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/path.md) | 83 | `declaration-track:6750b5f21d4f5eca3ffff4e1b91bf62393b42d41dbc76406c7e77dfcd12f3b90` |
| 2 | `instance` | [Path.continuousMapClass](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/path-continuousmapclass.md) | 92 | `declaration-track:b5e67964712a61f7d91a347a7729401ae712fb8ba1b41c3d572e07778b3c34cf` |
| 3 | `theorem` | [Path.ext](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/path-ext.md) | 106 | `result-track:3d7ea630105c9f73cfc720a062066ed84c2d6c1b0de5b907c74a97f1b00ae311` |
| 4 | `theorem` | [coe_mk_mk](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/coe-mk-mk.md) | 114 | `result-track:00d1510a9e96dac8cebd6b3e18fb5e332487944decd4c6340deaa981b2d6ea47` |
| 5 | `theorem` | [continuous](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/continuous.md) | 123 | `result-track:b3ec575acab11a9f3678dc836e0a1b5576ab8ecf8610fddba4710184c9c09bfd` |
| 6 | `theorem` | [source](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/source.md) | 128 | `result-track:ac91a2c12d64abe7f5d18d40bd716b27098ca4f91446a37eb2525de96f1fa2ca` |
| 7 | `theorem` | [target](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/target.md) | 133 | `result-track:9463624c94fe9b3d6f93eac90c84f4046d0a6ffc0afe09a827805b6c340106df` |
| 8 | `def` | [simps.apply](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/simps-apply.md) | 139 | `declaration-track:e7be0e2f17ba14ada42b301334471be08e852d4ea5c9479e5e7edf5bcb664a9e` |
| 9 | `theorem` | [coe_toContinuousMap](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/coe-tocontinuousmap.md) | 146 | `result-track:e7e7fa1580fa85d45e54a09bc4c764bfcd6d4eeadb0f7c4f34f22370b9bc1397` |
| 10 | `theorem` | [coe_mk](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/coe-mk.md) | 152 | `result-track:1536c8aeaf750c0603d1d1231d2e647b31405012afac86c2d46a8bd65f319f2a` |
| 11 | `instance` | [hasUncurryPath](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/hasuncurrypath.md) | 156 | `declaration-track:a4023b26cf011355c14e46018f558347e81fbb10d57b745f1d1ffe300f2c10eb` |
| 12 | `def` | [refl](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/refl.md) | 163 | `declaration-track:68b6a77c9ea8995645726b3ef93e4272b74cb4a0d3ccc4efd40e41ec77467c97` |
| 13 | `theorem` | [refl_range](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/refl-range.md) | 171 | `result-track:f7e503d0b4f30d103039b66e3a6dc06739a7cf0942f5b267998a08723f11efde` |
| 14 | `def` | [symm](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/symm.md) | 176 | `declaration-track:e0d8b3960e85c748c944612d0c131133e6ac6fd234500eb0df1569dc42140599` |
| 15 | `theorem` | [symm_symm](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/symm-symm.md) | 184 | `result-track:2ef44c10a6b3967bd6e76a5b3372d7bfbb04794dcf1c5e03c881a3b8b815a3b1` |
| 16 | `theorem` | [refl_symm](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/refl-symm.md) | 191 | `result-track:e9d35fac2748a4b5d60a9e4d50d36a53ba0a00bb8623326799b717b4119bd0f6` |
| 17 | `theorem` | [symm_range](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/symm-range.md) | 197 | `result-track:5bb5040690cb60790712ed29d26cfe1bc1958c80db53cfa1bf5e0b6c55dc682f` |
| 18 | `instance` | [topologicalSpace](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/topologicalspace.md) | 220 | `declaration-track:35b11a1b8b83b366cf7bd875d6635b4af18b513a6c2689eb7816d1a2dc8986c7` |
| 19 | `theorem` | [continuous_eval](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/continuous-eval.md) | 223 | `result-track:db1c6703eb6c8566aa6d47184ddcf2e2b9b02ecbf5bfec4f55029479ee5c3691` |
| 20 | `theorem` | [Topology Path Connected Namespaced](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/path-eval.md) | 228 | `result-track:23a2c9bb1e123dd97ff06cb29fba8d7ac01a81845386bd367cacb1b9aeb9ef58` |
| 21 | `theorem` | [continuous_uncurry_iff](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/continuous-uncurry-iff.md) | 233 | `result-track:b891f8905bd235fdf0213a36d0f48def732fb0dc649cc87d309889602e4772f3` |
| 22 | `def` | [extend](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/extend.md) | 241 | `declaration-track:866f4c34550bf85144ac821997a8ca1365bb07aafef51ad32f344978853d6d7f` |
| 23 | `theorem` | [Topology Path Connected Namespaced](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/path-extend.md) | 246 | `result-track:297f7fa7cad1b576b0aea2b091822e9372460179b956fa7e1ef83a7c73443c45` |
| 24 | `theorem` | [continuous_extend](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/continuous-extend.md) | 253 | `result-track:f0543c489037e545f5428210bfa4560e35cf9104b5aab64ffce361ef4a9b7d30` |
| 25 | `theorem` | [Topology Path Connected Namespaced](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/path-extend-source-line-257-occurrence-2.md) | 257 | `result-track:dd1edc013152f313cb04eb99f8760002902e9e7f1d83fb7f8d6909393f992a8a` |
| 26 | `theorem` | [Topology Path Connected Namespaced](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/path-extend-source-line-264-occurrence-2.md) | 264 | `result-track:6065915ae115ed077c6971036d25851b1f089be6252e7c26c6e545e733055f1c` |
| 27 | `theorem` | [extend_extends](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/extend-extends.md) | 271 | `result-track:55daf2c3f5c4b8d340d2a29e53c6ee81a3bb9a7bbfbc6ceed64da48084514cef` |
| 28 | `theorem` | [extend_zero](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/extend-zero.md) | 276 | `result-track:c7a73ac29089e39707571a8fb78c151a4a3829623a3bc0582ce1d16b4e18b76b` |
| 29 | `theorem` | [extend_one](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/extend-one.md) | 279 | `result-track:95d2be9d04f8ccecc1601e308ffa3c26b96e9592c9000504778f5b89b828e84a` |
| 30 | `theorem` | [extend_extends'](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/extend-extends-source-edition-2.md) | 283 | `result-track:b2b55e68305f028ad29eb1e656bb87cb17f1bcea1f6e0392e626c557699316fd` |
| 31 | `theorem` | [extend_range](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/extend-range.md) | 289 | `result-track:5e9ef9bb7278c29f08f13e5d5ad7ac7ddefaec59b48bd52c3f4db2cff4df0acf` |
| 32 | `theorem` | [extend_of_le_zero](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/extend-of-le-zero.md) | 294 | `result-track:50f72b1e767903cc728373c8718711a633e9917ec7ebc8d5044edb4b3e1e8dcf` |
| 33 | `theorem` | [extend_of_one_le](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/extend-of-one-le.md) | 299 | `result-track:f8adf3061f795adff0b7aa2f2904aeee9f76a4c489b01b1be8d74413fff8b7de` |
| 34 | `theorem` | [refl_extend](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/refl-extend.md) | 305 | `result-track:7393a4b2e1928fcf09ca0aba90e60b37ce0a49fbba37515aff2c9d31b3fd5fd4` |
| 35 | `def` | [ofLine](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ofline.md) | 310 | `declaration-track:f831956e3317e1cf025bfeefde4fd3b6eb516f0eb1e09af533873d73996c0a87` |
| 36 | `theorem` | [ofLine_mem](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ofline-mem.md) | 317 | `result-track:82114cfe0a92fc5977f85c95a278ddbd519f4e7d469a30bf7463271facc59c78` |
| 37 | `def` | [trans](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/trans.md) | 326 | `declaration-track:bb17ff7bd0542d1508416e6d92b0cd24a1e05535062f8c522a05b96da81f1f23` |
| 38 | `theorem` | [trans_apply](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/trans-apply.md) | 337 | `result-track:08e2063c3f3c3f1fc1d9bce4d175fe188767c7238b08e89d24ebeff267f2dcb3` |
| 39 | `theorem` | [trans_symm](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/trans-symm.md) | 345 | `result-track:4f90309d1352ad3b10354faa222f40460d6aaaffee9b69cae988c8160aae2a1b` |
| 40 | `theorem` | [refl_trans_refl](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/refl-trans-refl.md) | 361 | `result-track:e5624f97e0eac4bbc21aae746d14bd56d1b4e45a5b87acf277041374676f1a97` |
| 41 | `theorem` | [trans_range](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/trans-range.md) | 368 | `result-track:cda9550eb11da8f230b7895338000cee9d9645ce03638266ad38969480f43b39` |
| 42 | `def` | [map'](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/map.md) | 406 | `declaration-track:38a62622e67972e4a557d557343a662b842f087e08611a2662afd98beaa81294` |
| 43 | `def` | [map](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/map-source-edition-2.md) | 414 | `declaration-track:475cd1e2159c71caddde4fb92ce4f4fa0b52fe77dfa1522340ce8399bb46057f` |
| 44 | `theorem` | [map_coe](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/map-coe.md) | 419 | `result-track:352fe1fd3078a1c7653738b8919046cb2729a8f6a5c2cac028c6525122f4290d` |
| 45 | `theorem` | [map_symm](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/map-symm.md) | 426 | `result-track:3c42e83e414ef0c14d7b01ca5dcee8134293b075ab09a5d240008d1dfa641884` |
| 46 | `theorem` | [map_trans](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/map-trans.md) | 432 | `result-track:9eb7828d8adf8197a6777383519e08c5f247bbc5c36e4d2a54948f7eff66b8f5` |
| 47 | `theorem` | [map_id](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/map-id.md) | 440 | `result-track:802162c7d7dc6b28caa8b026924c9e509a74c9c250280e7499195d5fe5bf0c0c` |
| 48 | `theorem` | [map_map](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/map-map.md) | 446 | `result-track:1f909902fe4be06aca2c50228f87460718b50bb5f77716d3ce8e73e43c0ec4ec` |
| 49 | `def` | [cast](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/cast.md) | 454 | `declaration-track:72fb8a749e4acab1e1b763e2607bfa451efb06041d1843c0ca7a0bc4208b01ed` |
| 50 | `theorem` | [symm_cast](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/symm-cast.md) | 462 | `result-track:509c31d7ccb4d2f0bf11c5c2e5e27066bf327a120d39b148099f64066b96ad5d` |
| 51 | `theorem` | [trans_cast](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/trans-cast.md) | 468 | `result-track:798e86a225a2e35985dba39f32dcd80a0f6d052aac537387b579ad3a899e1507` |
| 52 | `theorem` | [cast_coe](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/cast-coe.md) | 475 | `result-track:210da9ea8e55513c434cf88dc18d99df010c131e0d90b71f4d19941caaacd4ab` |
| 53 | `theorem` | [symm_continuous_family](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/symm-continuous-family.md) | 480 | `result-track:964d05531da069c5b5c94ce298358d5a1c50e529062d713ce9745afed1b271b4` |
| 54 | `theorem` | [continuous_symm](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/continuous-symm.md) | 487 | `result-track:a433ca3bed1b99625d3baafe9368260877c834a4447fae1ee7f5ec3163698aad` |
| 55 | `theorem` | [continuous_uncurry_extend_of_continuous_family](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/continuous-uncurry-extend-of-continuous-family.md) | 492 | `result-track:ac24fab1226d061d9f4b304e5918d5e838b5b11f32dd17d89c87b59e0c64a014` |
| 56 | `theorem` | [trans_continuous_family](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/trans-continuous-family.md) | 500 | `result-track:bec13d101779cb4021b4f98ad399aa24686ac54bb3d4a2d1256f699b7daf33e3` |
| 57 | `theorem` | [Topology Path Connected Namespaced](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/path-trans.md) | 522 | `result-track:8d280f78b57a029bf255bd2579da4eaa1447405d8da96755f03b5bd5c649e160` |
| 58 | `theorem` | [continuous_trans](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/continuous-trans.md) | 530 | `result-track:021529cfd4b6156d3be6bd02dd44a2310f491d4088e5851a0de8fe363770be7c` |
| 59 | `def` | [prod](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/prod.md) | 543 | `declaration-track:52c651f3b81b103ac34830bd6510561bb5e41dd9a3447575816d0070237b8896` |
| 60 | `theorem` | [prod_coe](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/prod-coe.md) | 550 | `result-track:210e270e38d2661df0e8bb7b77b73ef10a94eb1be6ee5049e70b50ca9897b583` |
| 61 | `theorem` | [trans_prod_eq_prod_trans](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/trans-prod-eq-prod-trans.md) | 556 | `result-track:a13831e23161b5a507dc1f748ef7f105b711eb0ce5246fb1c4bf08e5e4cebfb5` |
| 62 | `def` | [pi](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pi.md) | 573 | `declaration-track:1b6ce96b837df84092f30f6b017494c511face20133ac879242dfead9482624a` |
| 63 | `theorem` | [pi_coe](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pi-coe.md) | 580 | `result-track:fe2e381fbf068f06c41a9368fdb2176f23f4db066d2923eed6edbaa8f213a7e3` |
| 64 | `theorem` | [trans_pi_eq_pi_trans](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/trans-pi-eq-pi-trans.md) | 585 | `result-track:a922f8fd98e4bd5a5dc64dbcaa1a5e943fa4dd0acd722e4a477c80a9a2e51d14` |
| 65 | `def` | [mul](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/mul.md) | 601 | `declaration-track:002d94d17b90fbdd78ce730dc2a61558a1d255f67c60125fcf3350b201feb2b7` |
| 66 | `theorem` | [mul_apply](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/mul-apply.md) | 608 | `result-track:29316aea2c3cbcb4a9038e8bf4fef346c08fb818d65bb9b0f25c31b3627c96d4` |
| 67 | `def` | [truncate](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/truncate.md) | 619 | `declaration-track:6d5165b5743843bce6ab5ea94378379da60441ccd91d6b3eb944754512163d8c` |
| 68 | `def` | [truncateOfLE](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/truncateofle.md) | 647 | `declaration-track:6acd3fdd877a2b428226c54112dc637ed1e114986e035acd89ba0985629e7c94` |
| 69 | `theorem` | [truncate_range](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/truncate-range.md) | 652 | `result-track:e2a6e04d7e6727dd722066f169c505ea80fc405bf924b48cd62c1907a05bb507` |
| 70 | `theorem` | [truncate_continuous_family](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/truncate-continuous-family.md) | 663 | `result-track:d738180ce2ee9ea6f78c3b413403212bbd3c13f866fed6c8e5db145ce4a7a722` |
| 71 | `theorem` | [truncate_const_continuous_family](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/truncate-const-continuous-family.md) | 671 | `result-track:0d087fd2d02690a3ae0efcbb9dd2ebb802eb8f74b1de5e9bf9d1298690f2814d` |
| 72 | `theorem` | [truncate_self](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/truncate-self.md) | 678 | `result-track:839960fef839700b3dd577b205ea961afec9aaf9ea0412e93e4b5eea5f8ce401` |
| 73 | `theorem` | [truncate_zero_zero](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/truncate-zero-zero.md) | 687 | `result-track:6b98f3786da89efecab92950c319d0bdc363e2a660470539d995b564b199ed81` |
| 74 | `theorem` | [truncate_one_one](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/truncate-one-one.md) | 693 | `result-track:0674722fd2178d8c694acbe6f159edd37771236271af50997f38c3fe3f3a15a0` |
| 75 | `theorem` | [truncate_zero_one](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/truncate-zero-one.md) | 699 | `result-track:a5c6c7607b0463f2a884f1464dab4d62957dc4c3dce5345ef7e3e0ab268b2824` |
| 76 | `def` | [reparam](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/reparam.md) | 713 | `declaration-track:153df20bc42bb64e19a409a68be275748afb41a4ab698c0bdcd326282c7438ae` |
| 77 | `theorem` | [coe_reparam](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/coe-reparam.md) | 722 | `result-track:4c968a2df069effffde64dd283981f93e8221951cd07469fbd09c63549910654` |
| 78 | `theorem` | [reparam_id](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/reparam-id.md) | 729 | `result-track:b3263a270a5acd5ac9f83bc1988fcef5d61d51db1b6ec8cddff7489393bd559f` |
| 79 | `theorem` | [range_reparam](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/range-reparam.md) | 734 | `result-track:eb959231d7c4c5285593b303dbb5c237c4d1d8bf9a362a0b8f0c6439a501abb5` |
| 80 | `theorem` | [refl_reparam](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/refl-reparam.md) | 749 | `result-track:3cc05cc7642992a4c4d2e312397ea14e2c315a0684d4b575fb1959cbdf4aee2f` |
| 81 | `def` | [Joined](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joined.md) | 761 | `declaration-track:d6967d37a6288bac9e63365441cb20be5a27891e3cc2d64d3f21428f9458bf87` |
| 82 | `theorem` | [Joined.refl](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joined-refl.md) | 766 | `result-track:94e1220dc339bf4aae176e39c318f15ca1dcd1178e72b627117ba2025a7b4025` |
| 83 | `def` | [Joined.somePath](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joined-somepath.md) | 771 | `declaration-track:687d663fa749902bba78939b43e09ee56dd0b5af15646effb1eced88ef979e30` |
| 84 | `theorem` | [Joined.symm](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joined-symm.md) | 776 | `result-track:dc4e51f858ed31cdf370fb5c9702d3c5f2358e77eb1e13cd56a643e9dcc06d20` |
| 85 | `theorem` | [Joined.trans](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joined-trans.md) | 781 | `result-track:1621e52886de5cd3c0accd86b220677cdc36a0af4d6ac22a44719e5db23fbe27` |
| 86 | `def` | [pathSetoid](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathsetoid.md) | 788 | `declaration-track:39e86e0a36708b9512effc92aafb243f1c4f0c1552a8a765b15f42d82ea4e34b` |
| 87 | `def` | [ZerothHomotopy](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/zerothhomotopy.md) | 794 | `declaration-track:de2706b5871760f937f577e289f49708ece393562bb2446d4c80f1b64497ab3f` |
| 88 | `instance` | [ZerothHomotopy.inhabited](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/zerothhomotopy-inhabited.md) | 798 | `declaration-track:7fd76bf831baccd03db679806b81af947ff7794bf3111c49e71f0e0084869109` |
| 89 | `def` | [JoinedIn](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin.md) | 808 | `declaration-track:073029f46a48dce052040197424a40c06a7f36c56bb976f044645a1d4c3fca3d` |
| 90 | `theorem` | [JoinedIn.mem](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-mem.md) | 814 | `result-track:738dd2914facf7b0efe6bf9d412660edca87fe42c3a9abc7610158a8819c9c0e` |
| 91 | `theorem` | [JoinedIn.source_mem](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-source-mem.md) | 820 | `result-track:4bb52c456b0d754c1d681b370132cc02c139712ef2049f773067417233d62a09` |
| 92 | `theorem` | [JoinedIn.target_mem](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-target-mem.md) | 824 | `result-track:3e2d014f588ccb8a7e153c8f13feb5a152f1ac34f00644bfb70c4f8d46c0b0d8` |
| 93 | `def` | [JoinedIn.somePath](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-somepath.md) | 829 | `declaration-track:f2c5d258a0a3ebec24f765835e6996c6af1eb688b4d784c5736ce07da003ff39` |
| 94 | `theorem` | [JoinedIn.somePath_mem](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-somepath-mem.md) | 833 | `result-track:83f1bd09201c55f6905a770f5ce40c43d69b0deee36b1db7ba70b106db50c7c6` |
| 95 | `theorem` | [JoinedIn.joined_subtype](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-joined-subtype.md) | 838 | `result-track:5079bff9378155c8460441753cccf606f3c9dcd56d176f43b3326b4e3a447fc1` |
| 96 | `theorem` | [JoinedIn.ofLine](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-ofline.md) | 846 | `result-track:3dd6983700b2e768280faae0a9c80dcf46c72f4a3bb5a5d359bd02744f2ee185` |
| 97 | `theorem` | [JoinedIn.joined](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-joined.md) | 851 | `result-track:8dfdab410b5f7dc9ec9206e895e48e4ca398c8dbd76a8298f4f72e0b2ce50dfa` |
| 98 | `theorem` | [joinedIn_iff_joined](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-iff-joined.md) | 855 | `result-track:b6d42a2705de38a034bf5cb66fb2c6e9b9b9a228c6348d0861e03a45b0ae1824` |
| 99 | `theorem` | [joinedIn_univ](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-univ.md) | 861 | `result-track:19f1f3bb54149c1b25475093a4279d4665bcac12aef75492e1158f5fcc6280b9` |
| 100 | `theorem` | [JoinedIn.mono](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-mono.md) | 865 | `result-track:91ec7781de16bad91e5b8db0f56bbf83e1a685a89145330e83a8cd559bc88b3f` |
| 101 | `theorem` | [JoinedIn.refl](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-refl.md) | 869 | `result-track:9242cbd0136eb13010f82853cffa4a1f96f7a47b49f20c6ca04ca9910fddfd2f` |
| 102 | `theorem` | [JoinedIn.symm](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-symm.md) | 874 | `result-track:cdfc95080c9be3ba260144194098dcdd5a92a9b9d23533b1624495c5cb3182e2` |
| 103 | `theorem` | [JoinedIn.trans](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joinedin-trans.md) | 880 | `result-track:1c08ece32b6d293df20ee2008b4c647685a839118700e9ed36ee59ed55dfaf42` |
| 104 | `def` | [pathComponent](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathcomponent.md) | 891 | `declaration-track:551439aa2080e65add1720bd745f3e5d68df6ea610b9597dbbea3b21341a7231` |
| 105 | `theorem` | [mem_pathComponent_self](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/mem-pathcomponent-self.md) | 896 | `result-track:1e2069653513ce362f943ea92e862953cf0de8849e97fc1f03cc57db7e73d632` |
| 106 | `theorem` | [pathComponent.nonempty](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathcomponent-nonempty.md) | 901 | `result-track:3d129d308d7abc8de8c77721d3578ed514dbdb569a71fcc0c7f3b8968ed96649` |
| 107 | `theorem` | [mem_pathComponent_of_mem](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/mem-pathcomponent-of-mem.md) | 905 | `result-track:5c5cdf2950f4f77d5cec0c782748fc7c9b6e4a309b9ffae5ccbcbd196d809fab` |
| 108 | `theorem` | [pathComponent_symm](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathcomponent-symm.md) | 909 | `result-track:b142e3d2a20d324ee6a3d7480fc225eb87559b9320cf0e88be63e632c8db890f` |
| 109 | `theorem` | [pathComponent_congr](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathcomponent-congr.md) | 913 | `result-track:89481b1b1802d28a01f843bcccbfa305d749ec4529f3e6efcdadef280f31319c` |
| 110 | `theorem` | [pathComponent_subset_component](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathcomponent-subset-component.md) | 924 | `result-track:76468d331351e1d4cfd218cf2b910f0828f4ffbeb8fac77c00df3263195bd010` |
| 111 | `def` | [pathComponentIn](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathcomponentin.md) | 930 | `declaration-track:bb6f530aebc650dea37ba65e1a24248ad0cbaa6bcc0a4c9185e52c340e35f644` |
| 112 | `theorem` | [pathComponentIn_univ](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathcomponentin-univ.md) | 935 | `result-track:8fa02b869ebebe37c8d2f83df630f75792d7faf39c4257a208a9752c4c718a0d` |
| 113 | `theorem` | [Joined.mem_pathComponent](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/joined-mem-pathcomponent.md) | 939 | `result-track:e9aa8ef21e648e185d915daaded80385e2d0a6e9d3de6790a13e635d8ae7ca7b` |
| 114 | `def` | [IsPathConnected](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected.md) | 948 | `declaration-track:21011235558a4c3cfde3bf99845e80059ce2e27a2e664a88ff6542afafa6822b` |
| 115 | `theorem` | [isPathConnected_iff_eq](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-iff-eq.md) | 952 | `result-track:f04754bf8f2b7c74ef893904396e7e50985d5d5b3695a2618f3fdf4170b52a5b` |
| 116 | `theorem` | [IsPathConnected.joinedIn](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-joinedin.md) | 960 | `result-track:36c790390a841f873258d33b7713e77424c91bf78b2bdf67fec1e3214a333fd1` |
| 117 | `theorem` | [isPathConnected_iff](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-iff.md) | 966 | `result-track:8ca3102010de99f6fbec4d2148358310b01f1770ff5eaabe01543a46e4ea3df4` |
| 118 | `theorem` | [IsPathConnected.image'](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-image.md) | 973 | `result-track:17950143dbe0a9f7676d535b0ae2eeacdf904883d884e4292badba3a0dc89227` |
| 119 | `theorem` | [IsPathConnected.image](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-image-source-edition-2.md) | 981 | `result-track:c6e485d49bcbe3dd65aa854cbcd3dc870a66b9b95e29d0492989f843b8ea066a` |
| 120 | `theorem` | [IsPathConnected.mem_pathComponent](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-mem-pathcomponent.md) | 985 | `result-track:379c209586ebdb98f212a389a0a4d2cff3f1ac5b6363cee6b520f8c07922abbb` |
| 121 | `theorem` | [IsPathConnected.subset_pathComponent](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-subset-pathcomponent.md) | 990 | `result-track:720a6adc0d281399a941fcee50bfbd6196e1050c55183318e4f1a7879fac1176` |
| 122 | `theorem` | [isPathConnected_singleton](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-singleton.md) | 994 | `result-track:13434185d8cfdd78bdbd9c349d44934e94884b3f8934b87588e148e63b13a256` |
| 123 | `theorem` | [IsPathConnected.union](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-union.md) | 999 | `result-track:98cddc504b8ec3a51c9c056590be5f1a34fe8f15a9a2d5740ed321d289a8aec6` |
| 124 | `theorem` | [IsPathConnected.preimage_coe](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-preimage-coe.md) | 1010 | `result-track:a3d8b3baba9ad541e4c1b806c2dd70b744dc5ad2e438797f7966b0095dd4489d` |
| 125 | `theorem` | [IsPathConnected.exists_path_through_family](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-exists-path-through-family-source-edition-2.md) | 1018 | `result-track:c7df0df05da3f70a3b771b3d17b6546b93394c31b5302b455761592f4d9cbd9e` |
| 126 | `theorem` | [IsPathConnected.exists_path_through_family'](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-exists-path-through-family.md) | 1074 | `result-track:8fc63f3ba29d2fab5ac3cf2315c48271d4faecd412f789a5909a113f54b4e488` |
| 127 | `class` | [PathConnectedSpace](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathconnectedspace.md) | 1090 | `declaration-track:a837e3b516fe066ed6706d6b48e17e3d6c56b89c3a8c87fc3555e95e42c54aed` |
| 128 | `theorem` | [pathConnectedSpace_iff_zerothHomotopy](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathconnectedspace-iff-zerothhomotopy.md) | 1097 | `result-track:fe5e39a5cf3c8fcf2b70c66cb3554e15a1773fab0e2971073e692a1bd898199d` |
| 129 | `def` | [somePath](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/somepath.md) | 1116 | `declaration-track:a6faa57ca518d7c564486d2d88dd4da5402a8306a9b186585ba0199b4a1d4077` |
| 130 | `theorem` | [isPathConnected_iff_pathConnectedSpace](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-iff-pathconnectedspace.md) | 1122 | `result-track:0f8f2b78b1743f07dc79b06c60f1ab00829cae3516a95d172ee31c612ba191a2` |
| 131 | `theorem` | [pathConnectedSpace_iff_univ](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathconnectedspace-iff-univ.md) | 1136 | `result-track:9ad9119b4a5ec64106f81a28d2ada2e44a18b6d8c699089a5428adea1f73307d` |
| 132 | `theorem` | [isPathConnected_univ](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-univ.md) | 1150 | `result-track:d919df4da23271a513b8a8bddc1edc59a3628408a19ff262e445461db0340534` |
| 133 | `theorem` | [isPathConnected_range](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-range.md) | 1153 | `result-track:116b8709098847a47790a8ab0bb5d2088d3a99314161f3a5c806feb268dc78e3` |
| 134 | `theorem` | [Function.Surjective.pathConnectedSpace](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/function-surjective-pathconnectedspace.md) | 1158 | `result-track:190c105a49c4c7b06bd0d9aaba83c090eab02abcff788a9885e5800f0882f162` |
| 135 | `instance` | [Quotient.instPathConnectedSpace](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/quotient-instpathconnectedspace.md) | 1163 | `declaration-track:9624fdfeeaf0bddce04ec96ce98ede2e870af1b1ad91d1900f5f7390801504ae` |
| 136 | `instance` | [Real.instPathConnectedSpace](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/real-instpathconnectedspace.md) | 1169 | `declaration-track:24fd9a76778b09fccbb9ae5de25294bc9a1d68cbb33f7e7f6250dc909d983e62` |
| 137 | `theorem` | [pathConnectedSpace_iff_eq](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathconnectedspace-iff-eq.md) | 1173 | `result-track:fa44e0e6f2727a81997dda4105e9c02ece55c5a7db0710e149cf19d9fa4e3c36` |
| 138 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/instance.md) | 1178 | `declaration-track:8c624fc7affeb8baea397551f9c54ba0b02ab39a45e9544d890b150c17262d01` |
| 139 | `theorem` | [IsPathConnected.isConnected](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/ispathconnected-isconnected.md) | 1187 | `result-track:1dd2b41d2cb82c436237777f00a7414e7069dd80836da5b38bf985199a4c6a7e` |
| 140 | `theorem` | [exists_path_through_family](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/exists-path-through-family.md) | 1197 | `result-track:337f531881f50b608fe6188ad7366fa690f8ec3cc7353ab787eceacc658a73f0` |
| 141 | `theorem` | [exists_path_through_family'](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/exists-path-through-family-source-edition-2.md) | 1204 | `result-track:6efd484a46fe1435a5a0e0ebcc533d96cbf07eb6c36a1a23ba896a6d16d6d692` |
| 142 | `class` | [LocPathConnectedSpace](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/locpathconnectedspace.md) | 1218 | `declaration-track:9b6c634269270bc780f7921b47bdcc07ab5fcda4fde9c9d3bc428b2cd8779a71` |
| 143 | `theorem` | [locPathConnected_of_bases](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/locpathconnected-of-bases.md) | 1225 | `result-track:e664822e4507a91c7c398cdd5ac556d47bd47ea4b61e66c0d7d9ec680d0a0a73` |
| 144 | `theorem` | [pathConnectedSpace_iff_connectedSpace](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathconnectedspace-iff-connectedspace.md) | 1238 | `result-track:99d89152aad764f39a5b639ff66f8e4f88e09af8eb6a070e11ca9e191301cb7f` |
| 145 | `theorem` | [pathConnected_subset_basis](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/pathconnected-subset-basis.md) | 1260 | `result-track:98dd1eb5fd21f1f4c58f0f659f56fffa444ee8b7763ef0a74cf4c8a9b7b08e4d` |
| 146 | `theorem` | [locPathConnected_of_isOpen](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/locpathconnected-of-isopen.md) | 1265 | `result-track:793737f3300fdc2023298eb71350128c96e10ee2658ee0c8df625a9d76ae78e2` |
| 147 | `theorem` | [IsOpen.isConnected_iff_isPathConnected](../../../../GeneralTopology/TopologyPathConnectedNamespaced.lean/declarations/isopen-isconnected-iff-ispathconnected.md) | 1287 | `result-track:17db65330cf0efe1c3457370f9a298601fd08cb594c6b558cb0be4746ff7f869` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33a4b8f7796e8b4a91f33bc6d0dc77c15faf16385cf768249a154aacbec2d2a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
