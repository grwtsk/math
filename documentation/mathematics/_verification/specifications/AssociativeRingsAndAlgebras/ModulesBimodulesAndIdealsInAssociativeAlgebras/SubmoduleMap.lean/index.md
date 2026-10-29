# Verification target: Submodule Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ec64724458d6bc9c389f28e00143ae6603a9b24",
  "lexical_observation_count": 111,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Map/Variant5a495daf86f8a03b7d8b75b6541ff9404b7b2a0e7d7b6124c5bcca98d2085114.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ec64724458d6bc9c389f28e00143ae6603a9b24`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Map/Variant5a495daf86f8a03b7d8b75b6541ff9404b7b2a0e7d7b6124c5bcca98d2085114.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Map/Variant5a495daf86f8a03b7d8b75b6541ff9404b7b2a0e7d7b6124c5bcca98d2085114.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Map` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Lattice` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.LinearMap` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map.md) | 49 | `declaration-track:4d32852f6e8ce9cc4395c84e3f9cb873671133940bfb5f68e274ccd5234aa239` |
| 2 | `theorem` | [map_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-coe.md) | 58 | `result-track:616665651c1af11808b4ff83da8fec2d1387995750cb8e08750aa2572b4d6c56` |
| 3 | `theorem` | [map_coe_toLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-coe-tolinearmap.md) | 62 | `result-track:bec50097948f3cf02b84b5e255a8dd50e67967b98ea1a09db8a8a6679726e8a0` |
| 4 | `theorem` | [map_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-toaddsubmonoid-source-edition-2.md) | 64 | `result-track:eb8ffc957b2c2520b5bb8f6b8774d0abaceed1d963f35064c3575f99ce1b156a` |
| 5 | `theorem` | [map_toAddSubmonoid'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-toaddsubmonoid.md) | 68 | `result-track:a5b13889461581e77a506d4829850d451e8256f7010e093050bd850bc17ec3bf` |
| 6 | `theorem` | [_root_.AddMonoidHom.coe_toIntLinearMap_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/root-addmonoidhom-coe-tointlinearmap-map.md) | 73 | `result-track:8c2e3c00c28bbfa3201b615d0fdf0a330f51ab63c460039b54dc4d5103477292` |
| 7 | `theorem` | [_root_.MonoidHom.coe_toAdditive_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/root-monoidhom-coe-toadditive-map.md) | 79 | `result-track:7c23d52e14405bb7bdd3777b02a698d8d2f3348b2d831220bea71f43a49e9652` |
| 8 | `theorem` | [_root_.AddMonoidHom.coe_toMultiplicative_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/root-addmonoidhom-coe-tomultiplicative-map.md) | 84 | `result-track:adf9811852d4fdbf7cb73fb588101a1725430724fc39c8babe8d5787ff2bf95a` |
| 9 | `theorem` | [mem_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/mem-map.md) | 89 | `result-track:0c42e7d766d3f7b2d68038357b0fabdd6d2e779125e6496d54e99af974fb28c0` |
| 10 | `theorem` | [mem_map_of_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/mem-map-of-mem.md) | 92 | `result-track:adc5c4793c21f956488b418b5107808dcae7316baf7a00861c4584927f71f7a2` |
| 11 | `theorem` | [apply_coe_mem_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/apply-coe-mem-map.md) | 95 | `result-track:a7cc1567da8f0cfb7fab1bdb0f493c97cb2f4fc0d2d0a01d00a2576031f7e307` |
| 12 | `theorem` | [map_id](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-id.md) | 99 | `result-track:6bfd0a948475b522e95f2de5495faefc72732c8d3ef41d1cf82c26b30c4824c6` |
| 13 | `theorem` | [map_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-comp.md) | 102 | `result-track:4b8092f91108d6a30d7b25dc4dc2cba0afc41628bad4573bc9d26dfd02b5b02a` |
| 14 | `theorem` | [map_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-mono.md) | 107 | `result-track:82db26863bd00a78d95484511a357c0cb9715f856b786e00ef9a58411af117eb` |
| 15 | `theorem` | [map_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-zero.md) | 111 | `result-track:8538317b55b1297ebb56130e3cb4b0bca9dcb84882a6fa815d4a8564fefbb1e5` |
| 16 | `theorem` | [map_add_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-add-le.md) | 115 | `result-track:9bdc9275f3dfe040761592fa73dfdd4392e74e7bd308120799e8c6dbfff76361` |
| 17 | `theorem` | [map_inf_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-inf-le.md) | 119 | `result-track:a785857677c2e67044b4d79ded6b76d4dcd8a6eb03ab2a6fe9150b37daf4a16c` |
| 18 | `theorem` | [map_inf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-inf.md) | 123 | `result-track:7719dc942202e10ef908ce5c97861d21844aeaeecaa6330137721af90971e1e7` |
| 19 | `lemma` | [map_iInf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-iinf.md) | 127 | `result-track:8772ce843eb5ce0cb4bf8cb86c542cd9f36a5236a13aeedcb088f34206da6429` |
| 20 | `theorem` | [range_map_nonempty](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/range-map-nonempty.md) | 131 | `result-track:cd839c0515f4ac6a859bea2c0cc900ea0357df8e6da852453ff8b0b51408241c` |
| 21 | `def` | [equivMapOfInjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/equivmapofinjective.md) | 145 | `declaration-track:e476ba00cf46a66c0ecd81cb319a73b1410508418c54b243093b281c427f472a` |
| 22 | `theorem` | [coe_equivMapOfInjective_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/coe-equivmapofinjective-apply.md) | 159 | `result-track:6db0bbdc0a2e9e01c01d2b771d62f6e1ae3dd86ad5cea966aa94921a484ca896` |
| 23 | `theorem` | [map_equivMapOfInjective_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-equivmapofinjective-symm-apply.md) | 164 | `result-track:7dcabd67167f03d67a51387ae220557813dffce446af31c07c710d6e85726109` |
| 24 | `def` | [comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap.md) | 170 | `declaration-track:b11c1b38c8f2af1183cb700dfa4d3571f323d2aa1afbeddc5b0a9c578b4cba4d` |
| 25 | `theorem` | [comap_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-coe.md) | 177 | `result-track:9fd2f8741295bbea2c9c2e8784985b754b9c496aed8c4949eece3008b4302963` |
| 26 | `theorem` | [comap_coe_toLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-coe-tolinearmap.md) | 180 | `result-track:825b6ceadacac3d6096ccc4649d2368bf884892b72237b1487d2bb84ef4d535e` |
| 27 | `theorem` | [AddMonoidHom.coe_toIntLinearMap_comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/addmonoidhom-coe-tointlinearmap-comap.md) | 184 | `result-track:509ee6d33d3f74be061096279709cd6ffb9f9199b0bd10ed45dd725193732115` |
| 28 | `theorem` | [mem_comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/mem-comap.md) | 190 | `result-track:289c26bb8851588651ce1f529407765e372fd529d1f05016c96eecfd4a602071` |
| 29 | `theorem` | [comap_id](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-id.md) | 194 | `result-track:e27fb16d4c70735e9e18de490eb9b77f360df937abc50b875248cebd3d1b29bb` |
| 30 | `theorem` | [comap_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-comp.md) | 197 | `result-track:80656203962819fe29f3874c56b4843af40beecded4d774dfd12768bff630024` |
| 31 | `theorem` | [comap_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-mono.md) | 202 | `result-track:44b3fe191b92f9f51eb29fef4bb8baa113953af430f8c409e35efc3be55c577b` |
| 32 | `theorem` | [le_comap_pow_of_le_comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/le-comap-pow-of-le-comap.md) | 205 | `result-track:bd208b728d99fbb2ba84edc8d2a4623117bcf64f7a8b4cd32098737f37f7522e` |
| 33 | `theorem` | [map_le_iff_le_comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-le-iff-le-comap.md) | 215 | `result-track:fbfbce56494782031c6f6d56309f856ca9db2cc620777ce9eea596670c12766c` |
| 34 | `theorem` | [gc_map_comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/gc-map-comap.md) | 219 | `result-track:02b9a7144e8615208a4420c1c3e7c568f3075ed45277546d73f879d6ee669561` |
| 35 | `theorem` | [map_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-bot.md) | 223 | `result-track:4b3f6e22f655dd812419db59baae4d7b45150966f968eaed341804125b55dfa7` |
| 36 | `theorem` | [map_sup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-sup.md) | 227 | `result-track:62b878da485328adb6e2b31b64338a5cbfe5e06eea569181f98b97dcbafc5fd8` |
| 37 | `theorem` | [map_iSup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-isup.md) | 231 | `result-track:e65a473e0089329cd5de51591950e69d8bf65b79d0de1d7fbbcb4d638de22f3b` |
| 38 | `theorem` | [comap_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-top.md) | 238 | `result-track:9febdd9c0f05474f9ec6c9386460c9b9517abef0d05952bfe5b7230307444ff9` |
| 39 | `theorem` | [comap_inf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-inf.md) | 242 | `result-track:96b676f9beaabd1ffc4e0ef6024cf5bc07f0c6850b3e53f58e73d142c398c539` |
| 40 | `theorem` | [comap_iInf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-iinf.md) | 246 | `result-track:1ca8d6ccb634ca3e4c4573b497938d14188a4e81f3c0b246777cbc7344e5dc9e` |
| 41 | `theorem` | [comap_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-zero.md) | 251 | `result-track:e960415c3955544a47a84c538ecd93711b4dcc3182e97f391d5f6fdb6730b8d8` |
| 42 | `theorem` | [map_comap_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-comap-le.md) | 254 | `result-track:0cbbbdef5c55e0b439b1e6045992bdd69c59a764fe3db14aa03894e0ebf58eac` |
| 43 | `theorem` | [le_comap_map](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/le-comap-map.md) | 258 | `result-track:30e2a79fe77387dc0e2455be0fdf505252dec74dde42590c5c996684e0a0937a` |
| 44 | `def` | [submoduleOf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submoduleof.md) | 264 | `declaration-track:3ae29454b5dd14d7e435e5531c9d648a3b5cc42a8b3321424a373a9b8d8c409a` |
| 45 | `def` | [submoduleOfEquivOfLe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submoduleofequivofle.md) | 268 | `declaration-track:af4694797d10d623051e204cafa74d56c9893406e560877d79b230cf328bbf3d` |
| 46 | `def` | [giMapComap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/gimapcomap.md) | 283 | `declaration-track:97352b51b6bbd59ec824fc8a61deb77a0a08cd937035a1ae7f1879813c580539` |
| 47 | `theorem` | [map_comap_eq_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-comap-eq-of-surjective.md) | 292 | `result-track:b1007435f4aeb40b13d6b6622ee422eca07e5477627bb22c75dc6c7862fee154` |
| 48 | `theorem` | [map_surjective_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-surjective-of-surjective.md) | 295 | `result-track:973d4fb3b8f3cd285a7bdcc6cfa5dc1d3eb8edb210530077986113525fd0b2f6` |
| 49 | `theorem` | [comap_injective_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-injective-of-surjective.md) | 298 | `result-track:8dc457dc5d691e5516755552ea3fde34d319051c006d2b0eef39ec5c1c8920ba` |
| 50 | `theorem` | [map_sup_comap_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-sup-comap-of-surjective.md) | 301 | `result-track:46ce0a57414c1ba3bced26cbfc19f74b98ec3f17484ac7c739d3933ed53b57c4` |
| 51 | `theorem` | [map_iSup_comap_of_sujective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-isup-comap-of-sujective.md) | 305 | `result-track:3021721bf79ce61d2e4d79e280cddb865f4989969f9e623c1526cdc29611c57b` |
| 52 | `theorem` | [map_inf_comap_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-inf-comap-of-surjective.md) | 309 | `result-track:2c4567c145fb825234fe848ef740a1625a120fb272b8dc1caa01d4931c1543f7` |
| 53 | `theorem` | [map_iInf_comap_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-iinf-comap-of-surjective.md) | 313 | `result-track:0eeab0e575c8654fe0057ead576cd453293466c0460e4a579a597531f2b3d7e3` |
| 54 | `theorem` | [comap_le_comap_iff_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-le-comap-iff-of-surjective.md) | 317 | `result-track:8cfe509da7132bd80980313a78ab4650ad3158fcc857adaedf68d33db6ecb911` |
| 55 | `lemma` | [comap_lt_comap_iff_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-lt-comap-iff-of-surjective.md) | 320 | `result-track:01f95efdb6e6aeed562df5bff668f9c3893b7d9244724db3c57ca954b80a884e` |
| 56 | `theorem` | [comap_strictMono_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-strictmono-of-surjective.md) | 323 | `result-track:97ebbdc295926a9282cf5f8fe78bd5de0813aa542ffe2ae379928e032a8c17f7` |
| 57 | `theorem` | [le_map_of_comap_le_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/le-map-of-comap-le-of-surjective.md) | 328 | `result-track:495b1ee8d7c10d7cfc77df31ec429ad5cbf0f0fa537326f9e1c87caf6513a493` |
| 58 | `theorem` | [lt_map_of_comap_lt_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/lt-map-of-comap-lt-of-surjective.md) | 331 | `result-track:c54c559d3b21742e407ea404ab2fedb8f5ecf37efc2ff1e0bad3f541c7b09559` |
| 59 | `def` | [gciMapComap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/gcimapcomap.md) | 342 | `declaration-track:6e47bc55068f38c65f0431129013570c9de67b9a125c88d82f1494061101231b` |
| 60 | `theorem` | [comap_map_eq_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-map-eq-of-injective.md) | 352 | `result-track:dee26894dafbf289fa93eee8ecd725ba008c6749851d3e9c34de80c8f4da531e` |
| 61 | `theorem` | [comap_surjective_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-surjective-of-injective.md) | 355 | `result-track:7285bd705a8aa8d69e4d2fe02b2c010f4e3cac60c1acca56b81df33e026b6ebf` |
| 62 | `theorem` | [map_injective_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-injective-of-injective.md) | 358 | `result-track:ea962f9ac8b7d7c36b8f7ed20a3031256735fe89c6fa4e9dd797c46a97b8dcaa` |
| 63 | `theorem` | [comap_inf_map_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-inf-map-of-injective.md) | 361 | `result-track:27958d46b332fbddb438abd88926a34bf2432426e1f0224d1dfb7f6887d4014a` |
| 64 | `theorem` | [comap_iInf_map_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-iinf-map-of-injective.md) | 364 | `result-track:e4c4c830257449ff8a99d50f066f15e69ddba89fe2216ca4a71a0853ae88d826` |
| 65 | `theorem` | [comap_sup_map_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-sup-map-of-injective.md) | 368 | `result-track:24d5ae8a6b0749444a56a52d60ab97aff588146fb3a1394142b77863b6c03be2` |
| 66 | `theorem` | [comap_iSup_map_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-isup-map-of-injective.md) | 371 | `result-track:875239af2b4f7d83d3dcd9da4b0303364998530abf3809c3a5c3eda48f67bf4b` |
| 67 | `theorem` | [map_le_map_iff_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-le-map-iff-of-injective.md) | 375 | `result-track:a86ffea22b23a13583f3be8a753d942a2ee1c0a415d2e597b96b3c24a629eea1` |
| 68 | `theorem` | [map_strictMono_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-strictmono-of-injective.md) | 378 | `result-track:f74db8878d277d91f55c75b356efca383db7eefd6496b0d4c29b593f7a545409` |
| 69 | `lemma` | [map_lt_map_iff_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-lt-map-iff-of-injective.md) | 381 | `result-track:1aa0f046ead58c94e724ce3afeba092b471c02df68f352e6a66186dadb6c0c23` |
| 70 | `lemma` | [comap_lt_of_lt_map_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-lt-of-lt-map-of-injective.md) | 386 | `result-track:e95e8a0311d51e62f1c8d494f6a0eeed924dc60cf0f4b5b6210114e4a5b01d09` |
| 71 | `lemma` | [map_covBy_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-covby-of-injective.md) | 391 | `result-track:4ca9723838275c45382e350a13d5922ec9f0b13baf073abe9936b7d23f50cbed` |
| 72 | `def` | [orderIsoMapComapOfBijective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/orderisomapcomapofbijective.md) | 410 | `declaration-track:5c84f59b4b35b51fa4468b8b123ae1b7b31d706d483c9b2da58cb0444641ade0` |
| 73 | `def` | [orderIsoMapComap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/orderisomapcomap.md) | 420 | `declaration-track:4fccfc1b6649f04efe68be87aa16a007258b0f48890f172b57e6188f1df4e4cd` |
| 74 | `lemma` | [orderIsoMapComap_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/orderisomapcomap-symm-apply-source-edition-2.md) | 424 | `result-track:584cb9f23f9ad0dd15445af3eb8bc9d2a6eb3ad2a75464cc67f9fbf49d2c0ad4` |
| 75 | `lemma` | [map_eq_bot_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-eq-bot-iff.md) | 432 | `result-track:637875669b64b1d02acf11c9e5de4ead6fd9828a9692619b90ba58b878186aec` |
| 76 | `lemma` | [map_eq_top_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-eq-top-iff.md) | 434 | `result-track:202609d46fa66ec2856c40770803bb964139f722722c099b848af8b8ccf52c80` |
| 77 | `lemma` | [map_ne_bot_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-ne-bot-iff.md) | 436 | `result-track:8f2414d298d796b654cf5cfd501cd15db21b099738c8ca85db7b96fa56b78b5e` |
| 78 | `lemma` | [map_ne_top_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-ne-top-iff.md) | 438 | `result-track:10ebdc6e5169fc41de9b73edd63f418466be47abe70209b0535594d787d3736e` |
| 79 | `theorem` | [map_inf_eq_map_inf_comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-inf-eq-map-inf-comap.md) | 445 | `result-track:10f0412e45e474bb89ed87139cba772b963b6a81fa93a73f18986e56cb053b47` |
| 80 | `theorem` | [map_comap_subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-comap-subtype.md) | 451 | `result-track:422ded866d05ca7cb718cc2751050e818d3bf144ab7d27f8557f5b7e823ffe70` |
| 81 | `theorem` | [eq_zero_of_bot_submodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/eq-zero-of-bot-submodule.md) | 454 | `result-track:f4126086edd49a26120c20fb0585ec8e0278d60acfb6d38b04e886f6261c0e08` |
| 82 | `theorem` | [_root_.LinearMap.iInf_invariant](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/iinf-invariant.md) | 459 | `result-track:b0e3e5c62e68d5d768c910e78e558af6e407f60e8dd6cb593c342c22e243262b` |
| 83 | `theorem` | [disjoint_iff_comap_eq_bot](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/disjoint-iff-comap-eq-bot.md) | 468 | `result-track:7f4203dbd6d72fea776d73904f6a9cde32b041242745bd12a1e25b1608f583e0` |
| 84 | `theorem` | [map_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-neg.md) | 480 | `result-track:4ca4d2d7cf4caef43b114343879722bd875e0b8885fd6542411ea5a0be02b014` |
| 85 | `lemma` | [comap_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-neg.md) | 486 | `result-track:e6569d31277936aef5e57363e559fba0445647d41299ae50b58cdab4c8f6e9fd` |
| 86 | `lemma` | [map_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-toaddsubgroup.md) | 490 | `result-track:d793ca145d0f8aeb631d5e507828a88c794673344449d3c3ba3184f571e79440` |
| 87 | `theorem` | [comap_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-smul.md) | 505 | `result-track:6db4ef526b9bf2cba5d74ad0d9e4ad8b495cdd646a9c9d0c598b7e9dd7c3dad4` |
| 88 | `theorem` | [map_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-smul.md) | 509 | `result-track:22691141349405cc7d2790f049b090d991df3e15c4040fe994fcf96502f517fc` |
| 89 | `theorem` | [comap_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-smul-source-edition-2.md) | 514 | `result-track:86b8e5abebdc57604cccdf02256383f9dc53f36edd1a54f4528e76939d61760e` |
| 90 | `theorem` | [map_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-smul-source-edition-2.md) | 518 | `result-track:33233d0b950714f8e6627dacccf7568fa7835f6d948dc99377ae4547f555f2a9` |
| 91 | `def` | [comapSubtypeEquivOfLe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comapsubtypeequivofle.md) | 533 | `declaration-track:a7332e5e05877118d99656eaffbdec4c66e4b48d566bfa628b6c46b8a8a1afc5` |
| 92 | `theorem` | [mem_map_equiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/mem-map-equiv.md) | 554 | `result-track:fccf9e9e01f7d9f0a7f7382e3606676055a7c0251f54ccadcda0e85748a7fc56` |
| 93 | `theorem` | [map_equiv_eq_comap_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-equiv-eq-comap-symm.md) | 562 | `result-track:c27b82b39acb34a4d270c2061746db2e11b7518ceee01a2cf0e9902806a2b1a3` |
| 94 | `theorem` | [comap_equiv_eq_map_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-equiv-eq-map-symm.md) | 566 | `result-track:f3256a33d68ea10776246cab03b667488e741d9c3dfa6ea04b3eb7260afbc890` |
| 95 | `theorem` | [map_symm_eq_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-symm-eq-iff.md) | 572 | `result-track:6cea2786cc0587084410d5a03d98f41e1fddd69b075a576c14042bc102ce73e0` |
| 96 | `theorem` | [orderIsoMapComap_apply'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/orderisomapcomap-apply.md) | 582 | `result-track:cc2aadfd1da103ba84a5e045d1d12b38623b9a3a047e06df8abff07e33a243fd` |
| 97 | `theorem` | [orderIsoMapComap_symm_apply'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/orderisomapcomap-symm-apply.md) | 586 | `result-track:3086f26142571f3376ebe955448ab2fbb0938df89b378b691e12c7d72b89d6ae` |
| 98 | `theorem` | [inf_comap_le_comap_add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/inf-comap-le-comap-add.md) | 590 | `result-track:89364813836017e08233069f6e5bbcc0aabda30a0a7330d678c91a5523ebe7de` |
| 99 | `theorem` | [comap_le_comap_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-le-comap-smul.md) | 611 | `result-track:895633eb1eb9c2e0867b526a21306ec248f4df5aa7ab39f9d875bef29a639e3a` |
| 100 | `def` | [compatibleMaps](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/compatiblemaps.md) | 620 | `declaration-track:0ecfff58e88f0f8a1c50f3b7c161a2607bbfd4081c5c2a1d8ffb6f42312b5a1d` |
| 101 | `def` | [submoduleComap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submodulecomap.md) | 642 | `declaration-track:1025089043ca7a5c700951af004f9dde1a5b1a107a7cd067c5ab25f613b59508` |
| 102 | `theorem` | [submoduleComap_surjective_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submodulecomap-surjective-of-surjective.md) | 645 | `result-track:e8149fa14dc3a3a50058737eb9b54ba538b0b6b4371075cb5f020530de5b4ba1` |
| 103 | `def` | [submoduleMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submodulemap-source-edition-2.md) | 656 | `declaration-track:589613d4b7dd19d1ae3a4a9c441e7455037a151f0c82ef61e86e1a02bd3d7a9b` |
| 104 | `theorem` | [submoduleMap_coe_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submodulemap-coe-apply.md) | 660 | `result-track:87e189532fa78444240b7148717d3ab858c7ac7ef90c283250c8701e8c1eda13` |
| 105 | `theorem` | [submoduleMap_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submodulemap-surjective.md) | 663 | `result-track:38830b5ad248a54aa0936dadb1d9577e78b92a88fd64f32f5660d687653ee307` |
| 106 | `theorem` | [map_codRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-codrestrict.md) | 670 | `result-track:d5e10da5cc311ee237a54e31186112c3a639b16066741722c2bc7862d69d947a` |
| 107 | `theorem` | [comap_codRestrict](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/comap-codrestrict.md) | 674 | `result-track:19afe0c205a7155309953c1ee3e95ccfbc67d1f6282263d30442678f74255b11` |
| 108 | `theorem` | [map_eq_comap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/map-eq-comap.md) | 695 | `result-track:6abaecbb7b32b96e969e0e37fc884dfb344ea3dbf8d7418c1c151463481ffb1e` |
| 109 | `def` | [submoduleMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submodulemap.md) | 705 | `declaration-track:071836889418e879878dce95f93b8eeeab1d39992161cd9628e55f76cb6f509b` |
| 110 | `theorem` | [submoduleMap_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submodulemap-apply.md) | 726 | `result-track:e5f8d33e3c8b454676b2d8d05ae59241795778917e6d448982519ad3de782354` |
| 111 | `theorem` | [submoduleMap_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleMap.lean/declarations/submodulemap-symm-apply.md) | 730 | `result-track:ea99ac120b47aa4506db4221abc2d6888510691ea426528a9d4d35f0994a02a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b8111ac0fbbb693e809201ded6f62cf7ce75a45b73bdbd91b82eed2d53400fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Map/Variant5a495daf86f8a03b7d8b75b6541ff9404b7b2a0e7d7b6124c5bcca98d2085114.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Map/Variant5a495daf86f8a03b7d8b75b6541ff9404b7b2a0e7d7b6124c5bcca98d2085114.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
