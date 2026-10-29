# Verification target: Data PFun PFun Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c45c5bbe2548b32d92ed119fc05397273cf7ee73",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c45c5bbe2548b32d92ed119fc05397273cf7ee73`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.WF` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Part` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rel` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GeneralizeProofs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/pfun.md) | 66 | `declaration-track:f3a6dadfb059e20c11fc3e88e9ce027b1e20e61625dac0be610a741a0c5eeb6e` |
| 2 | `instance` | [inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/inhabited.md) | 76 | `declaration-track:b12ec4f26df07793f826d7c4ee0f5593e14eee4a76f7a7eac77ded665ea11a5e` |
| 3 | `def` | [Dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom.md) | 80 | `declaration-track:7ae86f2c19dd380440469432302558ca5ace452d98c83c1d165e32571a0594b9` |
| 4 | `theorem` | [mem_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-dom.md) | 84 | `result-track:bd5714e319e881ceaa91bd366fde79e690052c304762bfebee66639c4cb624e6` |
| 5 | `theorem` | [dom_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-mk.md) | 87 | `result-track:22c3c2f88acef1f67da3ce12691df5af1afff315ffbd25a72c826914dc1a6d51` |
| 6 | `theorem` | [dom_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-eq.md) | 90 | `result-track:448af7358cf59f87bca52158defca55a0fc20edee18943095b1cfc1c1c9202de` |
| 7 | `def` | [fn](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fn.md) | 94 | `declaration-track:3e1fc281a69416f49fe94af8d15446404109fa5fc256dd16603b4a25742092a3` |
| 8 | `theorem` | [fn_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fn-apply.md) | 98 | `result-track:7a3995c5cc52cadb793e3efdd590a1bd5c5a02e433e9e32b7acb4329dff1a383` |
| 9 | `def` | [evalOpt](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/evalopt.md) | 102 | `declaration-track:99edd63d20ab901aab1c5b25de7af9b83a9709f0acf40ac51da9febffb41d334` |
| 10 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/ext.md) | 106 | `result-track:22f82a7c49c0424b0890fab481bce827811e7e88af537a9b2a849d81a34673c9` |
| 11 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/ext-source-edition-2.md) | 111 | `result-track:aa1a62b356c99808c5180ab68dc875da293480e8d070260baa04e91e2a4e670c` |
| 12 | `def` | [asSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/assubtype.md) | 115 | `declaration-track:869f8fe02c5c3246b9fc870a1bd3de49b5d84d5d6fbd46c5016e19a8ef4d36ca` |
| 13 | `def` | [equivSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/equivsubtype.md) | 120 | `declaration-track:5927af5888e5c99e4162e9a2abdca28cbcfbc7fd23e1272381fdd202b3bbd39e` |
| 14 | `theorem` | [asSubtype_eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/assubtype-eq-of-mem.md) | 124 | `result-track:becc9469e3272105994545e50eadb0f1fe48cc92cbd0960e39aead9b8cb15004` |
| 15 | `def` | [lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/lift.md) | 130 | `declaration-track:1928012745ed85876c79103f42dbfb9d7ada13ba8b190e5d10db58f87b4e122e` |
| 16 | `instance` | [coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/coe.md) | 132 | `declaration-track:0f48df2ac776ccb9c4d5f9705536db87ee2f17777732e699bde963c721c03ca4` |
| 17 | `theorem` | [coe_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/coe-val.md) | 136 | `result-track:791f5ccdcaaf8508b50b12a4aefa8e3bed95eae94626b0885a90d75cfbc473f5` |
| 18 | `theorem` | [dom_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-coe.md) | 140 | `result-track:c92143065348d9c8b696088f9cc6cb899ac4b4b388c62e89ed9ee3a10d6f2d9b` |
| 19 | `theorem` | [lift_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/lift-injective.md) | 143 | `result-track:a1ebbba0b725ebdad70056b76fc25af2583e233e367a6df86cacab560fefd02a` |
| 20 | `def` | [graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/graph.md) | 148 | `declaration-track:4a23e7cfd6e14c85f25c4d1596c0380e7f233457c9039065371b190c229aed19` |
| 21 | `def` | [graph'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/graph-source-edition-2.md) | 153 | `declaration-track:614bb258d81f57fff728763b04f4c950df175c1c4f70069e4bd052c56e614bc7` |
| 22 | `def` | [ran](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/ran.md) | 157 | `declaration-track:7b6f3a21472358554f12113d413df1ca415bbf1e14d1fb5e44e699eb1d79c066` |
| 23 | `def` | [restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/restrict.md) | 161 | `declaration-track:b388fa66c0bc5adbbedede79025597fcd3a940072cdad128ecc5f1277a1cd639` |
| 24 | `theorem` | [mem_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-restrict.md) | 165 | `result-track:27f98dfcc1e4718a4282efd798843d30ac3ce357ee4c4717647f8ba97b62520a` |
| 25 | `def` | [res](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/res.md) | 169 | `declaration-track:f219ed212f346e95251bc3cae5add55b0d1eb0939c09857ad40eca2a63314b5b` |
| 26 | `theorem` | [mem_res](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-res.md) | 172 | `result-track:dcaff6163efd8dbf8a957d5ee373c278ce1fd2571aa66178b5ccf3e645b26ca2` |
| 27 | `theorem` | [res_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/res-univ.md) | 175 | `result-track:8406c159ca408416a09f936da0fd525bc4c128213b9ef7193a8546b88159fec3` |
| 28 | `theorem` | [dom_iff_graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-iff-graph.md) | 178 | `result-track:a9356bc261eda6b7038b5f7c0940a61bf27d34c85ef3a8a93db29b021c0b5cd2` |
| 29 | `theorem` | [lift_graph](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/lift-graph.md) | 181 | `result-track:33a0fee8ed98f82d63e7a0852822a11bcd225b4a12ca1ac41eaeebdbba468620` |
| 30 | `def` | [pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/pure.md) | 185 | `declaration-track:41677cfed6af3f155d5af087a977153fb0ef9b7f64f936b3002293b1fdb4c8dd` |
| 31 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/bind.md) | 188 | `declaration-track:a03648152e83d964d9e9da4db9ed35471caab78939e78209d59bf3eda4f39e51` |
| 32 | `theorem` | [bind_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/bind-apply.md) | 191 | `result-track:dbd8119b681794f9fd241a2a220def35438986c0855734fc7bd2973917464bf0` |
| 33 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/map.md) | 195 | `declaration-track:829c91eed2abd22cb650d529cbfd6fd66bc313504b8854935d0a25fb853a7249` |
| 34 | `instance` | [monad](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/monad.md) | 197 | `declaration-track:bd388f25980e5f152d397a4cf76015b1ccf8a19c9245a6190c78b21a080e9ee7` |
| 35 | `instance` | [lawfulMonad](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/lawfulmonad.md) | 202 | `declaration-track:fc363c992e648055fe6dd42af041f989f36179e8fd4545e0a6a38c35238ee428` |
| 36 | `theorem` | [pure_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/pure-defined.md) | 208 | `result-track:bf93e59a322657dcfd4ccc00f91e746706249193365643d774b31e8f124e5ee3` |
| 37 | `theorem` | [bind_defined](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/bind-defined.md) | 211 | `result-track:6eb46e4feca6c7bf011607a233c2b11d8531dd4b63a112fd2f1891d4f51b368a` |
| 38 | `def` | [fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fix.md) | 221 | `declaration-track:c460e528a3d53afdd162e9367ea7bff505e970bf05e953650f792ac65871e9b9` |
| 39 | `theorem` | [dom_of_mem_fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-of-mem-fix.md) | 231 | `result-track:047ff040e3bed65d3f1b481272d4d85f1c9ff86fc386248cceefd8ebabbb96ce` |
| 40 | `theorem` | [mem_fix_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-fix-iff.md) | 235 | `result-track:65150452a1395c9d33d8f221c1d887dc4c2b235baffbef5471d165a96ecc559b` |
| 41 | `theorem` | [fix_stop](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fix-stop.md) | 274 | `result-track:c3736c08b61be5e116ff6209c027d9f519ed31645ebfe3ad8f962b1c8c9575a4` |
| 42 | `theorem` | [fix_fwd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fix-fwd-eq.md) | 279 | `result-track:c23fbce13baa79e915e7ea1d879d23579ff5c1b6c35f3a29c20d4cd191f717b7` |
| 43 | `theorem` | [fix_fwd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fix-fwd.md) | 288 | `result-track:7b6afddc21fba5508b28f1b81abbbbe6de71958d14c4e62e0a1d9f36287e5175` |
| 44 | `def` | [fixInduction](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fixinduction-source-edition-2.md) | 293 | `declaration-track:415119d5dae7b85aaf0958c6da67689f775e6393d2605989c1f00d466a16ffbd` |
| 45 | `theorem` | [fixInduction_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fixinduction-spec.md) | 302 | `result-track:3ff491b522ea7ad91306cca807dfb26b50e9033092222e19a5d32cfff1a2c400` |
| 46 | `def` | [fixInduction'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fixinduction.md) | 314 | `declaration-track:04afae3e640eeb2098332b60c270eec96a4e5d0404b95dad44a30b27578d3e75` |
| 47 | `theorem` | [fixInduction'_stop](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fixinduction-stop.md) | 324 | `result-track:ad3caa373bbe1aa6d5faacbc725f2b7648b8de52ab460bdee942c04a67d5f8cf` |
| 48 | `theorem` | [fixInduction'_fwd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/fixinduction-fwd.md) | 336 | `result-track:885108bfa28cb8d1c50e51dad1f3874bf39b8e7b4e290fa2cb0a3c3357d0baac` |
| 49 | `def` | [image](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/image.md) | 353 | `declaration-track:01a56c90b1f03acef7be12cc5b93e3a65f57db432aa9bb167a27b30b75ae994c` |
| 50 | `theorem` | [image_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/image-def.md) | 356 | `result-track:6e19bfc06f6a14d56737896b7dbaa66cde767f66a99c06e47a00e19bc347c442` |
| 51 | `theorem` | [mem_image](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-image.md) | 359 | `result-track:032b4af053eb4141e853ec394c08181485e8d5577f1ed9c1e37a8ae68d6f3040` |
| 52 | `theorem` | [image_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/image-mono.md) | 362 | `result-track:18af5b5bb3a5fee98f928dd335158f845cef783152709dff4b9cd4a0a22c0cbf` |
| 53 | `theorem` | [image_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/image-inter.md) | 365 | `result-track:74b84345075e5b49b1b4eeaae54e29f6f9e1dadf9a82fa3aed231852192527f8` |
| 54 | `theorem` | [image_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/image-union.md) | 368 | `result-track:77e38103ec530f660a58f121a71a9c44c10c312df6473a3aca2bd577dc361466` |
| 55 | `def` | [preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage.md) | 372 | `declaration-track:60c468936b098d5bdaa937513f323f37e15275e84dd438e2c4b9f45a5fc4e9d3` |
| 56 | `theorem` | [Preimage_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-def.md) | 375 | `result-track:26e7e15921ece5423b83d807a80340c8c1739e8391b27b7ccccdae27a6f809c8` |
| 57 | `theorem` | [mem_preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-preimage.md) | 379 | `result-track:b52331f60a4ceb988b5cf4b08b13220536fbd9b6738748509668b45a3c8f7389` |
| 58 | `theorem` | [preimage_subset_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-subset-dom.md) | 382 | `result-track:0112a6836669c4f0e2f62e3fbf3a3edabcf922e01b9bf862138cb92ddcd8fe8f` |
| 59 | `theorem` | [preimage_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-mono.md) | 385 | `result-track:c581bc3f59cd49cab1f6fcd6046176cd6a0eda75d4f0dd6390ef237621365146` |
| 60 | `theorem` | [preimage_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-inter.md) | 388 | `result-track:71a9c922d7371f20bc1befe6cd520eb3910de87aeda17909f1d8ebf3b3005d67` |
| 61 | `theorem` | [preimage_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-union.md) | 391 | `result-track:e4ce5626d996452be780492b778213b36b1a2cd829e370509158bc24080b23e8` |
| 62 | `theorem` | [preimage_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-univ.md) | 394 | `result-track:704e2f9bab5887c40867f360e8279be611d8814df40a6d22802f95197b857d2a` |
| 63 | `theorem` | [coe_preimage](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/coe-preimage.md) | 396 | `result-track:ec1de320f096196c763a4fa63ab45ab5f6a14b51ff77f0e6e66d52ce2b5f6be4` |
| 64 | `def` | [core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/core.md) | 400 | `declaration-track:438f20baec4685cbbfab89b7c3521a71cbca547dba8d2703905cb0747d7ac8ac` |
| 65 | `theorem` | [core_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/core-def.md) | 403 | `result-track:e84768a4cfb3d1564e3ceaf947d285d054faea99e9eeaed87a07583b9baf41a9` |
| 66 | `theorem` | [mem_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-core.md) | 407 | `result-track:91f155a1bf9ed21a716b20ff2940ae0af29db7340ee77d6396fba36ddf81d2df` |
| 67 | `theorem` | [compl_dom_subset_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/compl-dom-subset-core.md) | 410 | `result-track:54c6bf8f92112992e5830c44479734ef30381ee3f1852d91a41eaa8edb0b2e13` |
| 68 | `theorem` | [core_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/core-mono.md) | 413 | `result-track:6a0aaf4173fa9df064dade160248cf3635242f98011ba93a91e0054893d181fd` |
| 69 | `theorem` | [core_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/core-inter.md) | 416 | `result-track:e541c478ca91b85204c0b267418a42847d272b71c016a24d82aff067d1b43dc2` |
| 70 | `theorem` | [mem_core_res](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-core-res.md) | 419 | `result-track:cbad967c590a7f571eb89c2a7b651bfc30d791de88efa72a2a03f96bf320d7f9` |
| 71 | `theorem` | [core_res](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/core-res.md) | 422 | `result-track:2d874dfc6df9407ad75ee5bb3dc873e50f55c7fa009f7e9aaf2916d7fb091f86` |
| 72 | `theorem` | [core_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/core-restrict.md) | 427 | `result-track:c54b9bcd87d34abbab9c960efedba544164ef2f3a79608695881fed7d828e133` |
| 73 | `theorem` | [preimage_subset_core](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-subset-core.md) | 430 | `result-track:206d159cc4165170301136c47f1f7e8ebf531975571587f06d614885e32edb10` |
| 74 | `theorem` | [preimage_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-eq.md) | 435 | `result-track:a7f17e7d61b539fff085fbea594a07baf0e208a30b4870f82d044029ec644f3d` |
| 75 | `theorem` | [core_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/core-eq.md) | 442 | `result-track:61d2627d895cea226f0f849649ea1910292a704307406f8562474e4f18d90fca` |
| 76 | `theorem` | [preimage_asSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-assubtype.md) | 446 | `result-track:c9d70321fbf587db6de9cbead43ab8c93bf537ded356b2bc37ebbeeaea42f89c` |
| 77 | `def` | [toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/tosubtype.md) | 457 | `declaration-track:48c14917ef755b1bd0671ea00730cea637ad686d1ee64f2ded2dbd21305db304` |
| 78 | `theorem` | [dom_toSubtype](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-tosubtype.md) | 460 | `result-track:bdad7f668466be0429aa5557df05b41bba07e18018f1be3b84d6713042ec257a` |
| 79 | `theorem` | [toSubtype_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/tosubtype-apply.md) | 464 | `result-track:01f602553ebd918bd70099ede7fcda507f442bad829f6620c90a4dfbfb28a8b7` |
| 80 | `theorem` | [dom_toSubtype_apply_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-tosubtype-apply-iff.md) | 468 | `result-track:4c7b4aff6ab6bcbb1c6dc520bafece88645384afc0ccc0df988d0a524b040181` |
| 81 | `theorem` | [mem_toSubtype_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-tosubtype-iff.md) | 472 | `result-track:7ffbd9af97761dc6acc7434dcbfb8e3cb297c984da7f38f69ca1ddb5f1225093` |
| 82 | `def` | [id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/id.md) | 477 | `declaration-track:e4f77c9b2b90f9edb9f7d25f321ec5bbe355819144e9395030cd0df929885dee` |
| 83 | `theorem` | [coe_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/coe-id.md) | 481 | `result-track:21449f48b697b87aa06dfd8095ceb715cf28fa6a64c269c586505ea0035eff65` |
| 84 | `theorem` | [id_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/id-apply.md) | 485 | `result-track:e805e1437a5b1afd1999973ad904beab360d2941d989545a2717456fd2b2c72c` |
| 85 | `def` | [comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/comp.md) | 489 | `declaration-track:0aa40f346969ebc57ced5187927cd07b3a85b00389a46d0b2107bad96248fa2f` |
| 86 | `theorem` | [comp_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/comp-apply.md) | 492 | `result-track:03f5745516017fb386ce9eedb9e2317d2d3e10d862d7120c6202a8698be90bbf` |
| 87 | `theorem` | [id_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/id-comp.md) | 496 | `result-track:6a98c111389b37b8e620be684596aac6ff2b1680d73c338258daca8fe455603f` |
| 88 | `theorem` | [comp_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/comp-id.md) | 500 | `result-track:baf175f40266b57c4ae0186301fa14b668d16ebb0a81070e52b72b35c214752c` |
| 89 | `theorem` | [dom_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-comp.md) | 504 | `result-track:d178a7a27add6018e97c68deeebd9bc202886c50e6ac1251b3f2b5c3339290d8` |
| 90 | `theorem` | [preimage_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/preimage-comp.md) | 511 | `result-track:a874532b3f226d5645467c315bfd3216ac52ec8bfe189530983f9ac1ca9750c8` |
| 91 | `theorem` | [Part.bind_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/part-bind-comp.md) | 519 | `result-track:b62c0bbddf4aeb09dbe6409967b3dce323b30f82a4dd846d8729b96d14d43684` |
| 92 | `theorem` | [comp_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/comp-assoc.md) | 527 | `result-track:f1a90fa9b005c037c42a1b2bbbb9e861c102bd642c815eb4d508d49c64f37691` |
| 93 | `theorem` | [coe_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/coe-comp.md) | 531 | `result-track:ff98fc3200485e3756017698ad284fdbb75179b9a48320ea873a7a1a4919c344` |
| 94 | `def` | [prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/prodlift.md) | 535 | `declaration-track:35d56f3b3b1d775b6e1e9400fec51807595f3c7f3d7eb627bcf1090fb80ec7a4` |
| 95 | `theorem` | [dom_prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-prodlift.md) | 539 | `result-track:19c1cd004fd638bc33dd957bbfe319188bb575c08e9039ab7cc216f166cf28a8` |
| 96 | `theorem` | [get_prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/get-prodlift.md) | 543 | `result-track:642377ab0472de33f2df2992e271384b73e48d1441aeb8b562def91bdcaa7514` |
| 97 | `theorem` | [prodLift_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/prodlift-apply.md) | 548 | `result-track:b3071b0c4859e34c146c160c01fe632b3316a3ad442d68cc90fc1168ae18dae4` |
| 98 | `theorem` | [mem_prodLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-prodlift.md) | 552 | `result-track:586048e894abd073f11488d039fcb8234185b689813a5b28c8f64de54b6e6c29` |
| 99 | `def` | [prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/prodmap.md) | 559 | `declaration-track:e32ff1da0c713efa8ed5530928cf91e7c01bf862bf72964cf57c404ad3b40735` |
| 100 | `theorem` | [dom_prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/dom-prodmap.md) | 563 | `result-track:b7772a9794aced86ab1508e039da4225d08fbd9ae7c4f69b326be99fc3f83fd1` |
| 101 | `theorem` | [get_prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/get-prodmap.md) | 567 | `result-track:536fb4f648010f54f84e84d2d7c2fadbcca22e9e3cf50750529a1abe057ad5c8` |
| 102 | `theorem` | [prodMap_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/prodmap-apply.md) | 572 | `result-track:fd623830ecce264e0b073c902aff0750ac34197d15022c81fc2322b9f7de4d6c` |
| 103 | `theorem` | [mem_prodMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/mem-prodmap.md) | 576 | `result-track:da4566c85142b378fd8d528c63ca6eff2e8b23859ef7d22b7c4f69dcd73cd37b` |
| 104 | `theorem` | [prodLift_fst_comp_snd_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/prodlift-fst-comp-snd-comp.md) | 583 | `result-track:99204b3d53f40b6b3fae90dda41b49d8bfa6074f3a2b05758cd3095aa3d66158` |
| 105 | `theorem` | [prodMap_id_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/prodmap-id-id.md) | 590 | `result-track:52676d2646082f3cfb1fcaedbf321bdb3b30c491a5dd0fa6beb3dcd4cdd4f882` |
| 106 | `theorem` | [prodMap_comp_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataPFunPFunNamespacedSourceEdition1.lean/declarations/prodmap-comp-comp.md) | 594 | `result-track:6ac10502ed230cfada6426600ecd0de81ff4960836f434d3576c44a0e069ecba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef0bcc5e6e65c0607f66ab425d96faf8dd6ef53df832ebb9d1f6674bc0319dc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PFun/Variant8363f513256c2c244578232e909409a315f1401ffe449e9e745067ab2302e4df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
