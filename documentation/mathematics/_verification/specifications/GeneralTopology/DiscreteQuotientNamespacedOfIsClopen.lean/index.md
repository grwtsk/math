# Verification target: Discrete Quotient Namespaced Of Is Clopen

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ffbc45dfbd9f3c914c99feb2158033f3825d5ca",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variant934325875755a397ab4978748f85f8a872fc01a11edcdd32b3039cfd09905e33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/index.md) · [Full source](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ffbc45dfbd9f3c914c99feb2158033f3825d5ca`.

Source path: `GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variant934325875755a397ab4978748f85f8a872fc01a11edcdd32b3039cfd09905e33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DiscreteQuotient/Variant934325875755a397ab4978748f85f8a872fc01a11edcdd32b3039cfd09905e33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Setoid.Partition` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiscreteQuotient](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/discretequotient-source-edition-2.md) | 79 | `declaration-track:ed60cdf86f3e06f96c2b6b5e2f933efc38d5977190d9528a39a2b30b5045cb46` |
| 2 | `lemma` | [toSetoid_injective](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/tosetoid-injective.md) | 87 | `result-track:4fc44b3092a6b5e6fe017eaa8a252e5a928c85124fa437729e51c22e787e075c` |
| 3 | `def` | [ofIsClopen](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofisclopen.md) | 91 | `declaration-track:d405a3c92f3cc83e789ae7a67c855d52d7e4c39284900ab8a1fd8606e312a889` |
| 4 | `theorem` | [refl](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/refl.md) | 95 | `result-track:c7336cfd349a4db9e7a13782844f51418c6ac04c49cf573195818dcd8af16f78` |
| 5 | `theorem` | [symm](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/symm.md) | 97 | `result-track:49087a2726a581e7348dc91bf7a1998f5a1946e49e0038c6dd7dc072156a2fdf` |
| 6 | `theorem` | [trans](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/trans.md) | 99 | `result-track:29b532fc3860c2b19410ae5dd04d355f7e7bfbc01584c3755cb0a91ac877f88e` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-10.md) | 104 | `declaration-track:d5b95581b1da947e0416b3a245164352397ea77f63770412b2d1200610fb8a22` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-3.md) | 107 | `declaration-track:563e911896dcf10151bade60aff436ed7398289e62dae93bdb93102955c4320d` |
| 9 | `def` | [proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/proj.md) | 111 | `declaration-track:689ce212e443eadd14321efcc828a08a24ab86b3268bfba8780b4180e4a434f9` |
| 10 | `theorem` | [fiber_eq](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/fiber-eq.md) | 113 | `result-track:5a2a6f540db83981736de6e111b705bc9defd126fb3c5716b587bdd9aa0ca569` |
| 11 | `theorem` | [proj_surjective](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/proj-surjective.md) | 116 | `result-track:ba7ffb405bfb144d8a33af4767d3076f236d2cf2c6b3be33a6b6ee045bade6dd` |
| 12 | `theorem` | [proj_isQuotientMap](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/proj-isquotientmap.md) | 119 | `result-track:1db5f8ffbcd91782752d5d7e16078f0bcea2fbd23541af1cd3a43b8fd5f8b45e` |
| 13 | `theorem` | [proj_continuous](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/proj-continuous.md) | 125 | `result-track:04d9e5e247f38f518224d0844cfaf57c870974bbcc0f1ac85390cc4e63639304` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance.md) | 128 | `declaration-track:0c2a32d1ae248d4439336f47c93369774b079390f6e789da1ccc3d316692755e` |
| 15 | `theorem` | [proj_isLocallyConstant](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/proj-islocallyconstant.md) | 133 | `result-track:62ccb3be35cafa8e3378913d32a293c0803c57d8d79ff5c12b489e5ab4998776` |
| 16 | `theorem` | [isClopen_preimage](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/isclopen-preimage.md) | 136 | `result-track:d200d94805d80a9fee07dc23189a2a6dc7efc9bb61227a4ecc6b42e288d39b1a` |
| 17 | `theorem` | [isOpen_preimage](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/isopen-preimage.md) | 139 | `result-track:3f8f5578579c169d838104f46ba6c90a7aba1133c1fa45afc2b60b3574e58480` |
| 18 | `theorem` | [isClosed_preimage](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/isclosed-preimage.md) | 142 | `result-track:6b2f5a454aafa5d57de20d2347ae8f3ad06fb8e66454a12fd36175f6085a8353` |
| 19 | `theorem` | [isClopen_setOf_rel](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/isclopen-setof-rel.md) | 145 | `result-track:b9f288c8ce0b1979558c5c11d5c67c8827004b0fa45614f431ee7e3854e64c42` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-7.md) | 149 | `declaration-track:9c542b89b1ffb9489f026c5dca511908ab04a003f1a93ed6906a83aa086ac152` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-5.md) | 152 | `declaration-track:82107d7ce7d16359240cbf8af3899137b8a970032aaa06ff4bc331fa76aa671e` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-2.md) | 155 | `declaration-track:35cf2b906176b4dbcff703025b8e527af53d24f683bc9f500ff2f270e47f5dfd` |
| 23 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-4.md) | 159 | `declaration-track:70e0e900d406b9aea5baef58d54bb17594c1d69f36bf2aea840cd5108151776e` |
| 24 | `instance` | [inhabitedQuotient](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/inhabitedquotient.md) | 161 | `declaration-track:1ca249adb1c55ed820b5299db9bd29c6bc8f947170b24ba3a7983da7d0abf944` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-9.md) | 164 | `declaration-track:adf037ed1c0b07889d9a3ff9c25a93959b04a8e08973bdb9cde8ccfc226ae808` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-11.md) | 167 | `declaration-track:ec924e7d3ab5dab4783af70b55a2d9564988c01a9203cfe6aed3a3b7ae13091b` |
| 27 | `def` | [comap](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/comap.md) | 175 | `declaration-track:bc7d3e7396d29a4452399379a368e0d63da28e8721b858baf33b5f6833717bb6` |
| 28 | `theorem` | [comap_id](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/comap-id.md) | 180 | `result-track:fd504aaf6e28a5a02c3841c276a662882d35be8cb59dbfd864d6653900406220` |
| 29 | `theorem` | [comap_comp](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/comap-comp.md) | 183 | `result-track:60d9a87434d0655836b809f6702be2601549f8b3fee9500d4100f18740f601a7` |
| 30 | `theorem` | [comap_mono](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/comap-mono.md) | 187 | `result-track:5f0f476a18af4c99e0ad45d253208a059636a627c2255d739fb73fcb5535f507` |
| 31 | `def` | [ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle.md) | 196 | `declaration-track:3884783a2c5f5c418e1066cd536f78051f69e4b8d92dbe94b18fd067e9f503d5` |
| 32 | `theorem` | [ofLE_refl](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle-refl.md) | 200 | `result-track:f1c1c7dc60f4dea5fcafc66b85c849a7a3310d0af02cc3f9baab9412d855f7a5` |
| 33 | `theorem` | [ofLE_refl_apply](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle-refl-apply.md) | 204 | `result-track:da1b9250e0e86010da1c6be4574a034a290be33cf375a1bc65cc649d1e4128bc` |
| 34 | `theorem` | [ofLE_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle-ofle.md) | 207 | `result-track:d3b28739abd88b64b4886b30c4be0a5557ad666e69339b4cf679d379d5de1afc` |
| 35 | `theorem` | [ofLE_comp_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle-comp-ofle.md) | 213 | `result-track:2b6b260d04753ba493419c4b87715258c2ea25cf0b6d93c63a69708fb553f9f0` |
| 36 | `theorem` | [ofLE_continuous](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle-continuous.md) | 216 | `result-track:26be91ea2adbf1ce449c06896cc850724197ba6f75c228c4b0e0385fddddbfe1` |
| 37 | `theorem` | [ofLE_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle-proj.md) | 220 | `result-track:95e31fba79e4cb419b097abf4261e652aad1ac65062569e439ba323467590e9e` |
| 38 | `theorem` | [ofLE_comp_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle-comp-proj.md) | 224 | `result-track:e6fac2936c80f558496c2e23a0da667783cf6cf4862b4b80c3bf7be84440c938` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-8.md) | 232 | `declaration-track:a2c94ef0626e69ba5d9e4cab9890f36cd5ff63b5fdad1a08981492a75019131e` |
| 40 | `theorem` | [proj_bot_eq](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/proj-bot-eq.md) | 243 | `result-track:cae785e99e19acf74ce0082f97d25782b0340d511bd3c31a4875273139973a67` |
| 41 | `theorem` | [proj_bot_inj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/proj-bot-inj.md) | 247 | `result-track:2355f79cc6dbcbb5d626becffa610d98dbd6e4fc8b690525755377aae78bce00` |
| 42 | `theorem` | [proj_bot_injective](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/proj-bot-injective.md) | 249 | `result-track:860d0ed64d4346e2cd89f0831f6d1875f3564fb148ea9c09a74edddeb1e54920` |
| 43 | `theorem` | [proj_bot_bijective](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/proj-bot-bijective.md) | 252 | `result-track:0dcd7cd8b5c035a7ada8da618cf77fe073fe2e64397dadf98403c34b3ff7dec4` |
| 44 | `def` | [LEComap](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/lecomap.md) | 261 | `declaration-track:305bb80af8b893d704bfbf6e6c5f7814d14cb053101714979b8bb829b0175e70` |
| 45 | `theorem` | [leComap_id](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/lecomap-id.md) | 264 | `result-track:7c6bbda0c28d5c23581f57bdf69c464d84e24d36743f287a4f7a82105f061132` |
| 46 | `theorem` | [leComap_id_iff](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/lecomap-id-iff.md) | 269 | `result-track:f675bf225a4d107273b2839446a9d1f18187510e6aa3fe22ac15cb151b585eb5` |
| 47 | `theorem` | [LEComap.comp](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/lecomap-comp.md) | 272 | `result-track:99628816ea0b31b5a161b80b4968561a689fd6ad87e0282c5f4ac39f39f832a6` |
| 48 | `theorem` | [LEComap.mono](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/lecomap-mono.md) | 275 | `result-track:31e74318ba4e8a480b821b41b307b952b6c72ee14c164bc107b4791c236612c1` |
| 49 | `def` | [map](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/map.md) | 279 | `declaration-track:87e76d636ee1bcb3abec016c0179900c8fd0e3301200d2a587f4ea8fc206e69c` |
| 50 | `theorem` | [map_continuous](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/map-continuous.md) | 281 | `result-track:13ab9e2de463e6e8667e7e542e9a746d72d90be55766ce2c09b6c7e93ec2fb7d` |
| 51 | `theorem` | [map_comp_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/map-comp-proj.md) | 285 | `result-track:be281a873360b54db207661ed8432817a58a596c932bf0508551428ebcf12b29` |
| 52 | `theorem` | [map_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/map-proj.md) | 289 | `result-track:31d58d34e247cc8cd9044b14c3d47be4781d4f7144456074508e39d5a108b140` |
| 53 | `theorem` | [map_id](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/map-id.md) | 293 | `result-track:2b120c706193c0759f3506553977394e8e0aff37f35be8ea75c70a73e40d1bcf` |
| 54 | `theorem` | [map_comp](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/map-comp.md) | 297 | `result-track:e6595cec3ab02ae7f9bf619a17702a889c59e9ed438c0b32e2922288a2bccf9a` |
| 55 | `theorem` | [ofLE_map](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle-map.md) | 303 | `result-track:6393844c5571056aa1e3728304aec2735241b22fc48460902c9e1f4e9ba338a0` |
| 56 | `theorem` | [ofLE_comp_map](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/ofle-comp-map.md) | 309 | `result-track:3d425127fb731a8ba725eafc465db31bd97a52203b44f80836649c97e7f46d77` |
| 57 | `theorem` | [map_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/map-ofle.md) | 314 | `result-track:5fb0b7f4f4a3214b6254a94aaebea791c1a7f81866ea98058a22db04bf720524` |
| 58 | `theorem` | [map_comp_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/map-comp-ofle.md) | 320 | `result-track:dd2d67e84870f6a27c233990f25c65fe92446ad4b29675a6b94421ec5019b69f` |
| 59 | `theorem` | [eq_of_forall_proj_eq](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/eq-of-forall-proj-eq.md) | 326 | `result-track:92b84c4d96b4598c605d36d437901c9f0d7d9ac27f54614f39e8013ba7feb2b2` |
| 60 | `theorem` | [fiber_subset_ofLE](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/fiber-subset-ofle.md) | 333 | `result-track:d213ad0abd044f8bc14bef508ae6e39d22fcc13910e8554866c6f400e4baa25e` |
| 61 | `theorem` | [exists_of_compat](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/exists-of-compat.md) | 339 | `result-track:26c04e94bb6e7d6dafe92eff48933a4148b08d11fa204a16a92dfbb22610aa5d` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/instance-source-edition-6.md) | 353 | `declaration-track:940fb8ba6fcfad3ede573f192aa61888468ae536f8f2d3fe22a40b1d0914968d` |
| 63 | `def` | [finsetClopens](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/finsetclopens.md) | 366 | `declaration-track:41ba1caa5333d811b0c2828e3df0f3bd70ca7f6e7d34b73eb5c86f6af344ec67` |
| 64 | `lemma` | [comp_finsetClopens](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/comp-finsetclopens.md) | 371 | `result-track:bf78344215fa8ad7aabb5ecce11bb1b1a3fc40bec770583ca98ac7a3257a09ab` |
| 65 | `theorem` | [finsetClopens_inj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/finsetclopens-inj.md) | 385 | `result-track:36e876e3829d50b62e14f1f7a76227292c81027217a3e2cf2f2d5da52a3bbe91` |
| 66 | `def` | [equivFinsetClopens](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/equivfinsetclopens.md) | 401 | `declaration-track:4fe4228b8d4a045dd1d59b79368fa10aadba7ca524902aa019a47dff899efef9` |
| 67 | `def` | [discreteQuotient](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/discretequotient.md) | 412 | `declaration-track:534d665fa924a1a905a9e8e82ce5ed530d863d4ad8b8e9fe2dcaf312b6b793ae` |
| 68 | `def` | [lift](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/lift.md) | 418 | `declaration-track:a08a0ed817fd533a1f41e385a7ecbfd4b11f376094b12e43514854a601fb505a` |
| 69 | `theorem` | [lift_comp_proj](../../../../GeneralTopology/DiscreteQuotientNamespacedOfIsClopen.lean/declarations/lift-comp-proj.md) | 422 | `result-track:58c64e0f94561526e5f8b55ebdcbb503a62f932ce0626e79bd5141449b45476e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=134bb806a5101593aac3a7b8b1d834ed3164628b1071891c5835d888d75e0e70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DiscreteQuotient/Variant934325875755a397ab4978748f85f8a872fc01a11edcdd32b3039cfd09905e33.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DiscreteQuotient/Variant934325875755a397ab4978748f85f8a872fc01a11edcdd32b3039cfd09905e33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
