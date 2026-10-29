# Verification target: Fundamental Groupoid Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aeb04d0cb5ca85c96d9ddd8434f442fc2cb328f",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aeb04d0cb5ca85c96d9ddd8434f442fc2cb328f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean.json)

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
| 1 | `def` | [reflTransSymmAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/refltranssymmaux.md) | 42 | `declaration-track:94a009cd7febe05eeb2899023af8f65d0a1a0c6ea0a916597de19df884d4b9ce` |
| 2 | `theorem` | [continuous_reflTransSymmAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/continuous-refltranssymmaux.md) | 46 | `result-track:578def1c5e3b8841da999a7cc985b3ad6ea2f4199d4a9dc2c4a5f133cca230ba` |
| 3 | `theorem` | [reflTransSymmAux_mem_I](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/refltranssymmaux-mem-i.md) | 49 | `result-track:d75dad94c665c2a6c15babbf95dff98d37cf22e2c62740dce13d4dde4b99805c` |
| 4 | `def` | [reflTransSymm](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/refltranssymm.md) | 62 | `declaration-track:8589a786f71508cc341afbc51e17a393e0bea69901e05ab32902d2892330e23f` |
| 5 | `def` | [reflSymmTrans](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/reflsymmtrans.md) | 77 | `declaration-track:ad5c010f8369c5d24932a801389b5e8cf758c843aad039bcb7616b581955d0f9` |
| 6 | `def` | [transReflReparamAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transreflreparamaux.md) | 85 | `declaration-track:9935c1ec2e02d36dadedb329328d924982f3e35e41ca657527611f64d15e062e` |
| 7 | `theorem` | [continuous_transReflReparamAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/continuous-transreflreparamaux.md) | 89 | `result-track:250c947758af77100a2a5b34eafde5c820c0bdfdaaf0108d7514ee7ffe309dc7` |
| 8 | `theorem` | [transReflReparamAux_mem_I](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transreflreparamaux-mem-i.md) | 92 | `result-track:c363c0ea7ba981dc34e0d13422ccb339c35e8f8af8ead4fe35005df8c2992484` |
| 9 | `theorem` | [transReflReparamAux_zero](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transreflreparamaux-zero.md) | 96 | `result-track:84b3fd497ba3f7469b23dd9116fcd09e224d3585b4196badb69c0a9a4c889455` |
| 10 | `theorem` | [transReflReparamAux_one](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transreflreparamaux-one.md) | 99 | `result-track:73d938f6c9bb02082538619bf2607550abeb063250f71ab763da7d5504fdc1e3` |
| 11 | `theorem` | [trans_refl_reparam](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/trans-refl-reparam.md) | 103 | `result-track:1a6decdfb9de22b36588b41b8d1012e4c0a133c0f3d4a69976f38bc32dd2e632` |
| 12 | `def` | [transRefl](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transrefl.md) | 113 | `declaration-track:1cb03d30c2234fdd4df74f408de9fb711c9420baf3f8bafddadefba507a9fa7d` |
| 13 | `def` | [reflTrans](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/refltrans.md) | 120 | `declaration-track:02bdf717d84b62cd1a1aa5410baa5a7f00f7d34c40fcb6bb3e9cad7faa7f6f85` |
| 14 | `def` | [transAssocReparamAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transassocreparamaux.md) | 128 | `declaration-track:8dcd792b7cb1fe889821d3e79604f61ffb0d7ed8a60d4446fdf18f54690f4d6a` |
| 15 | `theorem` | [continuous_transAssocReparamAux](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/continuous-transassocreparamaux.md) | 132 | `result-track:934607e5b6c859ba7c4d0853e2e6774de445ea71d8089ac95e91103c0d436357` |
| 16 | `theorem` | [transAssocReparamAux_mem_I](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transassocreparamaux-mem-i.md) | 137 | `result-track:c0d9b0ba12085ccd9ac4455d759909f6e2449bad01380220dc54987bc3d79d20` |
| 17 | `theorem` | [transAssocReparamAux_zero](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transassocreparamaux-zero.md) | 141 | `result-track:51c731cc15ced0fb2ec542184e1c493516c39a82f89c5f4e3618f070c3783bba` |
| 18 | `theorem` | [transAssocReparamAux_one](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transassocreparamaux-one.md) | 144 | `result-track:2578f92c8ec5095a82abb0b331a26b3605d24bfbf8ceeb09a0b138c1e2c46fe8` |
| 19 | `theorem` | [trans_assoc_reparam](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/trans-assoc-reparam.md) | 147 | `result-track:a2659950d8a8ab14355a81344057d94f27f837b538532b0ebc24acc642b7023f` |
| 20 | `def` | [transAssoc](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/transassoc.md) | 161 | `declaration-track:2b2f6843b0172bd68a0e40d1155224b4eb434d3bc58485a4dad7245438afcb07` |
| 21 | `theorem` | [refl_trans](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/refl-trans.md) | 174 | `result-track:4947baced533fe96fcd7396377baac617673636e773d7359b883effc81d25d42` |
| 22 | `theorem` | [trans_refl](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/trans-refl-source-edition-2.md) | 178 | `result-track:ec18d9ba4d39216face2e2d1e501994d158c9f5263c58dfdac6bb20100b46bbb` |
| 23 | `theorem` | [trans_symm](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/trans-symm-source-edition-2.md) | 182 | `result-track:d5a9e39b2f59edcf3c94c975f95454a604dfe1b576938de9ddeba570adbc6fe8` |
| 24 | `theorem` | [symm_trans](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/symm-trans.md) | 186 | `result-track:a86581d38e80f8264abfc989c29194afdb52510f117cb9aa5a0c016b73c976ec` |
| 25 | `theorem` | [trans_assoc](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/trans-assoc.md) | 190 | `result-track:4afac2e2c369f67b61d3d4d5c887317b7a9345500d5b0033794c1d4b6aa240e5` |
| 26 | `theorem` | [refl_trans](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/refl-trans-source-edition-2.md) | 197 | `result-track:d8f4f8e2122fcb4f1b944ea3d0bde46c2572ef6abdaddae28bec34ced33436dc` |
| 27 | `theorem` | [trans_refl](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/trans-refl.md) | 203 | `result-track:63522c58046c83b4e97df9a5d06dc21a510f2786a43b89c2e3210e0afa24dee9` |
| 28 | `theorem` | [trans_symm](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/trans-symm.md) | 209 | `result-track:a914680a38e61c74e52fa48a3e463cb69f5b9227b11b777a5647808ced7c5be6` |
| 29 | `theorem` | [symm_trans](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/symm-trans-source-edition-2.md) | 215 | `result-track:cc961fa37e03f4efab963c0c3e9cc542cf90d064e131117882a2ba5c4a328b3e` |
| 30 | `theorem` | [trans_assoc](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/trans-assoc-source-edition-2.md) | 221 | `result-track:d798dc6e5e303bf8570172d3c353bcb7f041677a7d1ae02a71417ba72cf13a5f` |
| 31 | `structure` | [FundamentalGroupoid](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/fundamentalgroupoid.md) | 240 | `declaration-track:e6222080d50e629190a6990bdfa8b139c1f958117bd42172c267bf5a3ec16a86` |
| 32 | `def` | [equiv](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/equiv.md) | 250 | `declaration-track:7c30c3ae3c8c743250e15de2d8e95a04daeb0611905f9cb03a0148b08aed9f59` |
| 33 | `lemma` | [isEmpty_iff](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/isempty-iff.md) | 255 | `result-track:b714dc2923da8cb5e42b9195bf6759ab1b18a2ca8f5a1e5c9a074c43689b742a` |
| 34 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/instance-source-edition-5.md) | 259 | `declaration-track:d618135699fd0d27f94a8dfac9ce9e627f5c6944fec1982ac28f4c4c3d720895` |
| 35 | `lemma` | [nonempty_iff](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/nonempty-iff.md) | 264 | `result-track:f9cbb92458ccedd352ad57d0476fba8f24d92cb20912e08e39c007479e96f844` |
| 36 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/instance-source-edition-3.md) | 268 | `declaration-track:3c017a2df35dacbd5d3dee0ba47be090e860489cf6c6d7452c7bdbb4bf57f44f` |
| 37 | `lemma` | [subsingleton_iff](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/subsingleton-iff.md) | 273 | `result-track:d3c727b07079afb7ef87179be5b5af7e1d2a2ee9846f92b9dcaa91a6e294177d` |
| 38 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/instance.md) | 277 | `declaration-track:127f8333c42ace2dbd4d5545d3c4049aeeeeba7a617f30d0fe14c78f7db43e76` |
| 39 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/instance-source-edition-4.md) | 284 | `declaration-track:5b519958e5878cc372cffe8c6986246790fdeaa82198f51e3fe359c2617d41bd` |
| 40 | `instance` | [(anonymous)](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/instance-source-edition-2.md) | 287 | `declaration-track:1b0328a3eae7a85fc4c7c85dce6a3662c9e96315a8c442fd3640618be5fb0e88` |
| 41 | `theorem` | [comp_eq](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/comp-eq.md) | 298 | `result-track:a01dd4746cbb00258b107f8869c82331a1a513d282d6a6d2554055b173f798aa` |
| 42 | `theorem` | [id_eq_path_refl](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/id-eq-path-refl.md) | 300 | `result-track:4da2201aec6bcab9f80bb8badde62c674cdd4bf8d8fe7f7b49842a475c473e01` |
| 43 | `def` | [map](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/map.md) | 303 | `declaration-track:9475ed4bf32d92e720fa196db32b5fb67fe5c73d1ed353e70baf6203a1d153c2` |
| 44 | `theorem` | [map_id](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/map-id.md) | 310 | `result-track:0c8ee84be923ce3877297f88f4dd9621c6f02372414f4d285ef5be1d45ff58ee` |
| 45 | `theorem` | [map_comp](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/map-comp.md) | 314 | `result-track:3c1bc3e713df80c20805206a47e48388697ecda7b25a7cf12b99f42a0286502a` |
| 46 | `def` | [fundamentalGroupoidFunctor](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/fundamentalgroupoidfunctor.md) | 319 | `declaration-track:647b546313a13df632474525068e54c0bfded27dccbff62a0dd79c2b60430794` |
| 47 | `theorem` | [map_eq](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/map-eq.md) | 333 | `result-track:1b252c904d854c3c19eb139accbf5e8439866399dac1bc8d9254a3de3870daba` |
| 48 | `abbrev` | [toTop](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/totop.md) | 338 | `declaration-track:48b5dc3878aaf61d91e02e8b7dc5ca7964526771ee80f15701f256137986068a` |
| 49 | `abbrev` | [fromTop](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/fromtop.md) | 342 | `declaration-track:ff99e1465f1132c40bfdffe31af4644fce20c7f5ae58f88a3256321e392f1241` |
| 50 | `abbrev` | [toPath](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/topath.md) | 346 | `declaration-track:8f655d8f07275d34780402ed4f186490f1851caf9f0804fd6157d3c2348b79fd` |
| 51 | `abbrev` | [fromPath](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/frompath.md) | 352 | `declaration-track:fbc25e869d4786b1de3be1edb3183ba49a8d8ae7a218b278bd9039b2bc87d4bc` |
| 52 | `theorem` | [fromPath_eq_iff_homotopic](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/frompath-eq-iff-homotopic.md) | 356 | `result-track:6aace8aac314764323029ea4cf8c64c202c3fda57905eee88ac555b266a6d479` |
| 53 | `lemma` | [eqToHom_eq](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/eqtohom-eq.md) | 361 | `result-track:0d362624638fe34d13e2f9e37ae036e5f1153b7eee453d7a04dd740b0e183390` |
| 54 | `lemma` | [conj_eqToHom](../../../../AlgebraicTopology/FundamentalGroupoidBasicPublic.lean/declarations/conj-eqtohom.md) | 365 | `result-track:2d638af48f644211f75fd9ad88f33aeffb3324e75b9cdb5ac91f9bfaebbf1535` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=659d53d0ccb8253f72973b3cb155a337393be4710df13b3a3df6585cfdbb54c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant8cfce24311c16e1e624e01e6bd2ace37fe6be4647340c901681235129acf41b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
