# Verification target: GRWTSK.Topology.Presheaf.Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "624ac71332f87878b5a09ffb110b5adc6acb864c",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/index.md) · [Full source](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `624ac71332f87878b5a09ffb110b5adc6acb864c`.

Source path: `GRWTSK/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.KanExtension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Opens` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Init` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Presheaf](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/presheaf--908dd01a3bec8471d8a68b38.md) | 53 | `declaration-track:908dd01a3bec8471d8a68b3843179998694eefcf790fa3b2cb57d5097b7e2c2b` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/instance--bb2a864ea809b01a0c0f3457.md) | 58 | `declaration-track:bb2a864ea809b01a0c0f3457d085c1a6ac27e6606665386d39a4453e6eda57bd` |
| 3 | `lemma` | [ext](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/ext--da7a06422117a02f7019620a.md) | 69 | `result-track:da7a06422117a02f7019620a5d35511bb5672f1e716366066830f50a83ff3f0f` |
| 4 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/macro--89fcc644e542542e29689730.md) | 80 | `declaration-track:89fcc644e542542e29689730838abe05113a90457c485aa07fa320b1e48902fc` |
| 5 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/macro--2a251e55f76d6726e06d3131.md) | 87 | `declaration-track:2a251e55f76d6726e06d313158add433e2d20693fee1f5884be3abf716e4876a` |
| 6 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/macro--2b4fe26a5a29d38c52824606.md) | 93 | `declaration-track:2b4fe26a5a29d38c5282460691693a835f48bdcc584b4c1e16e3d7877178dc6c` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/example--1abed9d49f6483eaf7316138.md) | 98 | `declaration-track:1abed9d49f6483eaf73161383bee8ea8cb5ecc62ec25cd8e98f5b2e936ea99ca` |
| 8 | `def` | [restrict](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/restrict--7ec22cb840d8ca7ee983184a.md) | 106 | `declaration-track:7ec22cb840d8ca7ee983184ad7beb352340604b77c876aaa1e5041183b785358` |
| 9 | `abbrev` | [restrictOpen](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/restrictopen--bf4aa151717e9acdb226e65f.md) | 123 | `declaration-track:bf4aa151717e9acdb226e65f886b4f6416330cb07aeae3b801c67a2e81f0ba6e` |
| 10 | `theorem` | [restrict_restrict](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/restrict-restrict--006011bb1d31b27042de8111.md) | 136 | `result-track:006011bb1d31b27042de8111c650bd0afacde53c34466d01288d4f43e862b500` |
| 11 | `theorem` | [map_restrict](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/map-restrict--94215c51cbe4cf20747c0097.md) | 147 | `result-track:94215c51cbe4cf20747c0097899fbbe1c7a053ab39b9300eee580cd524fd987b` |
| 12 | `def` | [pushforwardObj](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardobj--9a7426b65d11a90fc2cac066.md) | 157 | `declaration-track:9a7426b65d11a90fc2cac06659ceb1fe4e85b9ca273bc984bc950807f6a6baad` |
| 13 | `theorem` | [pushforwardObj_obj](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardobj-obj--a312f04d55fdc2d25b43ce67.md) | 166 | `result-track:a312f04d55fdc2d25b43ce67b11c55fc15783582f5760499438c94e0339eae9e` |
| 14 | `theorem` | [pushforwardObj_map](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardobj-map--ef23c59b9ed972362aca13ea.md) | 173 | `result-track:ef23c59b9ed972362aca13eac527b38e85da545398b5f71153f3162b2eeeccba` |
| 15 | `def` | [pushforwardEq](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardeq--efeb3b61ef4dbb1539fff25c.md) | 183 | `declaration-track:efeb3b61ef4dbb1539fff25c9c888d44e2bd1e40a591aa72532b84e8909ea3a8` |
| 16 | `theorem` | [pushforward_eq'](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforward-eq--f17c6b9871c7bca550a248bc.md) | 189 | `result-track:f17c6b9871c7bca550a248bc6585098518cfb7e03e434c2cdc0d3a35243dccc7` |
| 17 | `theorem` | [pushforwardEq_hom_app](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardeq-hom-app--a5d6a59efa5cd551b7d8f845.md) | 195 | `result-track:a5d6a59efa5cd551b7d8f84551698cd6d0cc1ebfb179980f1d1cf63d6c73fca4` |
| 18 | `theorem` | [pushforward_eq'_hom_app](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforward-eq-hom-app--2e333aab2b220b5f0f800d12.md) | 203 | `result-track:2e333aab2b220b5f0f800d12efbe2ce4bec1d49251b1ef1d17b55b0c9037f764` |
| 19 | `theorem` | [pushforwardEq_rfl](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardeq-rfl--4aedd2abe25bd77973d5dec7.md) | 211 | `result-track:4aedd2abe25bd77973d5dec7319df408dbe211eb95ed9609adcc7b70f87ec964` |
| 20 | `theorem` | [pushforwardEq_eq](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardeq-eq--f3f71252ea290faf3c1d44f7.md) | 218 | `result-track:f3f71252ea290faf3c1d44f7bdbf3a8142122523592aa2435ada7e6f5cd4a119` |
| 21 | `def` | [id](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/id--2c82dc31cf953d05301ab0bf.md) | 230 | `declaration-track:2c82dc31cf953d05301ab0bf82aee5d9e710e991bdcf9f62ec0ef8f38569fb8c` |
| 22 | `theorem` | [id_eq](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/id-eq--5dd626dbed4f0cd459487e68.md) | 235 | `result-track:5dd626dbed4f0cd459487e68221887bfb3ed0cc40e3a92e8d9d3bcc141f9dcee` |
| 23 | `theorem` | [id_hom_app'](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/id-hom-app--05a1b6286f5898370f62f0cf.md) | 244 | `result-track:05a1b6286f5898370f62f0cf7d6f83504dc1c04ed8067bdd752f564c90f6c271` |
| 24 | `theorem` | [id_hom_app](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/id-hom-app--762eb4202038be5c1c2db064.md) | 258 | `result-track:762eb4202038be5c1c2db0645f63daa30a953dab9ccf5052657d158e2b58f83d` |
| 25 | `theorem` | [id_inv_app'](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/id-inv-app--4b8c7816cebb1a09eeae021b.md) | 266 | `result-track:4b8c7816cebb1a09eeae021ba3fe1971ff4fe568657dd6647f5422a6e5281896` |
| 26 | `def` | [comp](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/comp--b4d4d62a598e2ab7aafdfcbd.md) | 275 | `declaration-track:b4d4d62a598e2ab7aafdfcbd904e59fc973647d4030aea93ef59e6ed57529166` |
| 27 | `theorem` | [comp_eq](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/comp-eq--e7975eb94e4cd2a3585aadbf.md) | 280 | `result-track:e7975eb94e4cd2a3585aadbf0a2fa31d0d043aff626f3e50c354b35801dab584` |
| 28 | `theorem` | [comp_hom_app](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/comp-hom-app--fe7ad392e59140a3932fb68a.md) | 286 | `result-track:fe7ad392e59140a3932fb68ad81d37481aa025d8b951f95ce2438e52fc8479b2` |
| 29 | `theorem` | [comp_inv_app](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/comp-inv-app--75456382a8a8d0d2ad0301d8.md) | 292 | `result-track:75456382a8a8d0d2ad0301d83f8ea9829d3e36eab0c6205771d1da915ea27300` |
| 30 | `def` | [pushforwardMap](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardmap--07b6f4a2ba0766219ad5af06.md) | 302 | `declaration-track:07b6f4a2ba0766219ad5af06a5198317ca248ddbba5370720ebb1e1cc62ca869` |
| 31 | `def` | [pullbackObj](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pullbackobj--af041c69485114d80f7b0e4a.md) | 321 | `declaration-track:af041c69485114d80f7b0e4ab29cf5ec9f781a152efa4b2e00ce42f785366e8c` |
| 32 | `def` | [pullbackMap](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pullbackmap--befd67c8c95f45837c11c5f0.md) | 327 | `declaration-track:befd67c8c95f45837c11c5f025a728fff650229e754c1cacb0017a3f1e36ac23` |
| 33 | `def` | [pullbackObjObjOfImageOpen](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pullbackobjobjofimageopen--14481fdd44b7ef5e802ac2eb.md) | 335 | `declaration-track:14481fdd44b7ef5e802ac2ebfa75cad129f0231753c9919d44c885972405659b` |
| 34 | `def` | [id](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/id--e5a05956a120640c8bfb91d5.md) | 359 | `declaration-track:e5a05956a120640c8bfb91d5eee1fbe7e10381d283e2d7cd6ce690a0bc6f68df` |
| 35 | `theorem` | [id_inv_app](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/id-inv-app--ba0b6909a3851458572f449e.md) | 377 | `result-track:ba0b6909a3851458572f449eca46d2c9a8a73917e4c98390003b9d9e88429a55` |
| 36 | `def` | [pushforward](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforward--4733d8e58f72334c05c1a347.md) | 397 | `declaration-track:4733d8e58f72334c05c1a347f754c2fd337587d92c378a2ee68592fced627767` |
| 37 | `theorem` | [pushforward_map_app'](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforward-map-app--c7bd59807d33cafce1d257ab.md) | 404 | `result-track:c7bd59807d33cafce1d257ab1905e621b344fc66ea174760ca757fdeed33d8ef` |
| 38 | `theorem` | [id_pushforward](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/id-pushforward--dce413e57c7aab18c2209d2c.md) | 410 | `result-track:dce413e57c7aab18c2209d2c6200271bb4ebf54127dcbc38bfbc03cc626203c1` |
| 39 | `def` | [presheafEquivOfIso](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/presheafequivofiso--1e3de4f16af036bd64c58be5.md) | 425 | `declaration-track:1e3de4f16af036bd64c58be59c70e2710143fa55f741ac109329ccd44d0ba838` |
| 40 | `def` | [toPushforwardOfIso](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/topushforwardofiso--3eb9a517e4895fe3240583ea.md) | 435 | `declaration-track:3eb9a517e4895fe3240583ea42cdb3d69d6ea4003935450ffaa4557a46802c0b` |
| 41 | `theorem` | [toPushforwardOfIso_app](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/topushforwardofiso-app--fab4896de78f12d8a5403ba5.md) | 442 | `result-track:fab4896de78f12d8a5403ba578edf478ea817d1f678295150c2570d3292b062d` |
| 42 | `def` | [pushforwardToOfIso](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardtoofiso--0cf99cd6fcb5cd80bce9513e.md) | 465 | `declaration-track:0cf99cd6fcb5cd80bce9513ebb053b1007ca3b517828187cb8dbaa34997a9cf2` |
| 43 | `theorem` | [pushforwardToOfIso_app](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardtoofiso-app--43a83a827d9100eaadfa691e.md) | 472 | `result-track:43a83a827d9100eaadfa691e79cd370cde323caec2b8359f058dc0e615773597` |
| 44 | `def` | [pullback](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pullback--8c1d1c70c4111b19e4b52fa4.md) | 490 | `declaration-track:8c1d1c70c4111b19e4b52fa4253e5315fae93d2ccaf8d9e019b8a7e7248cbb3c` |
| 45 | `theorem` | [pullbackObj_eq_pullbackObj](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pullbackobj-eq-pullbackobj--305c66fc0dddbd340f59f9d8.md) | 496 | `result-track:305c66fc0dddbd340f59f9d87c10d889e3799271a427db58e6dda49f203f5251` |
| 46 | `def` | [pushforwardPullbackAdjunction](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pushforwardpullbackadjunction--66497a254f3f742a8ed1c20a.md) | 504 | `declaration-track:66497a254f3f742a8ed1c20a495cabe94cdd435aabd3205f07f7800ea0caa38c` |
| 47 | `def` | [pullbackHomIsoPushforwardInv](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pullbackhomisopushforwardinv--5a1c8e455f55271787f5ff8c.md) | 511 | `declaration-track:5a1c8e455f55271787f5ff8c0cce881bc178d955fa45d96ea9f693a079b47bf4` |
| 48 | `def` | [pullbackInvIsoPushforwardHom](../../../../mathematics/Topology/Presheaf/Variant8294d1b9db76e3434d977fa666d76b70fb0ba79cab7a9281a9256bdf5daa5ec3.lean/declarations/pullbackinvisopushforwardhom--519d0e3a8ce05c8065269ee9.md) | 519 | `declaration-track:519d0e3a8ce05c8065269ee94e0b4136d2b99f94c82c05a8d80b25543a388ffc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
