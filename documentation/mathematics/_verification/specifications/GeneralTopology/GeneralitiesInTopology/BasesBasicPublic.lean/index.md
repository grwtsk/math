# Verification target: Bases Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccaf7386eaad0653041c253de0145f1ce7aaf3ce",
  "lexical_observation_count": 133,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant13039a3acfab4b42a5a63c38d43b446818f819f8f388f8cda7144aa4ee48dabb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccaf7386eaad0653041c253de0145f1ce7aaf3ce`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant13039a3acfab4b42a5a63c38d43b446818f819f8f388f8cda7144aa4ee48dabb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant13039a3acfab4b42a5a63c38d43b446818f819f8f388f8cda7144aa4ee48dabb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/filterbasis.md) | 84 | `declaration-track:3daf4fa147605d0ae32f240b870477683331ea14b784361bf968ec185e7c2406` |
| 2 | `instance` | [FilterBasis.nonempty_sets](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/filterbasis-nonempty-sets.md) | 92 | `declaration-track:36b5dc92ed3daf0b381db941d733c43a7bf5775572520c983a50a5529682cb92` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:ebaabac00bf2db8e999a5a61b06105983cf689fa467b9f121dee5a8a1a53bf93` |
| 4 | `theorem` | [FilterBasis.mem_sets](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/filterbasis-mem-sets.md) | 100 | `result-track:caad413c9d276ccf26d1ed3ead11233e3c030db7c228401034674de9b969bd77` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/instance.md) | 103 | `declaration-track:8c1dc63adc58ab4e239bb260d54d905f4451c9ab2bd0e8e063486b9d0d08a5c5` |
| 6 | `def` | [Filter.asBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/filter-asbasis.md) | 111 | `declaration-track:f1bb667a5b9e0d95a72680b85a3d496d7ff58eb170146ede4fa072fc960f739f` |
| 7 | `structure` | [Filter.IsBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/filter-isbasis.md) | 116 | `declaration-track:a6f001e91e2164dcf175d43be72e891508739263a920dc74545e9dfb4230667e` |
| 8 | `def` | [filterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/filterbasis-source-edition-2.md) | 127 | `declaration-track:5744cd128059d1242350f7a5108bc278e3d48db924a4fbf3e525102813ae4030` |
| 9 | `theorem` | [mem_filterBasis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/mem-filterbasis-iff.md) | 139 | `result-track:6dae087333ef64b16052d152ef6c4f5e1399c2d8cb6a3e5c62d728ee0acf34d1` |
| 10 | `def` | [filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/filter-source-edition-2.md) | 149 | `declaration-track:d783519f0cd2f9860f62f2fa5307f65ba3966f76ed8cab489b5dbb85d978a591` |
| 11 | `theorem` | [mem_filter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/mem-filter-iff-source-edition-2.md) | 157 | `result-track:a7d8429acb8e35da307fecf521e20f236119e19847d052c5a219076dea865299` |
| 12 | `theorem` | [mem_filter_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/mem-filter-of-mem.md) | 160 | `result-track:a2cc63b182f1b377eea0b59e4125395195c6abbec5a079f379554ede3948161f` |
| 13 | `theorem` | [eq_iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/eq-iinf-principal.md) | 163 | `result-track:b0dd0946b7c9b8194be8da71168cbba6da5aa314f1064e8c0d35b273dd89f3bb` |
| 14 | `theorem` | [generate](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/generate.md) | 173 | `result-track:754a1fd4c48549e2c3c593a32df092d43e8c5e10a582758fb15f1cea092088e1` |
| 15 | `lemma` | [ker_filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/ker-filter.md) | 181 | `result-track:a1489da9c5c62eb5fdef57af3d8c2ff19103dbc2446fdf7882e4fe1d6fb70424` |
| 16 | `def` | [filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/filter.md) | 193 | `declaration-track:7fdc29b8f9555489db62bb39c081a60a5684e83da9a345ce1caa24519327fb0e` |
| 17 | `theorem` | [mem_filter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/mem-filter-iff.md) | 196 | `result-track:9c6a4cc06c68a219a7db5ba2444e340d803c06e613589ce23bb78a7f4388a83d` |
| 18 | `theorem` | [filter_eq_generate](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/filter-eq-generate.md) | 201 | `result-track:b4814a83dc55f6f07ec41499d1c1dd771941e21a3048ffd24d40e853c5c6df36` |
| 19 | `structure` | [HasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis.md) | 209 | `declaration-track:1703c77916bb135cc71cc67502d67f959ded2a6f263f97339062db5068a46c51` |
| 20 | `theorem` | [HasBasis.mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-mem-iff.md) | 219 | `result-track:bfaf808144776f9e1f1c9037d66272e3e0b6fe84f571683ce71b34e1b0a799de` |
| 21 | `theorem` | [HasBasis.eq_of_same_basis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-eq-of-same-basis.md) | 222 | `result-track:a2afad97c30c98cee8325f439e644db53f96fb6edf3a8e700146dbc54338c003` |
| 22 | `theorem` | [hasBasis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-iff.md) | 226 | `result-track:09ca2f0dcf6ce59a0d237aa58c41652072c4c622a918a82333bb87d56a35cb8b` |
| 23 | `theorem` | [HasBasis.ex_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-ex-mem.md) | 229 | `result-track:221fe45c9dd9572e802d41173d1f1d230f7e64a440a5376f0b2933fffef6d781` |
| 24 | `theorem` | [HasBasis.nonempty](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-nonempty.md) | 232 | `result-track:332de59d6e27ab6c75507a3c37e9f51c2ff4f0d58785b56534dec72c83ab06d9` |
| 25 | `theorem` | [IsBasis.hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/isbasis-hasbasis.md) | 235 | `result-track:9c6c00e9fe1aa7f775288266866492eac7082231b04b382f101d36693164932f` |
| 26 | `theorem` | [HasBasis.mem_of_superset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-mem-of-superset.md) | 238 | `result-track:b75110e5039b1fbc85b12524ea1fe5df8eabeb6167e06613972f1fb6f9f5400b` |
| 27 | `theorem` | [HasBasis.mem_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-mem-of-mem.md) | 242 | `result-track:c49fc897a4d9fa48affc36f9353836c958f12b512a441ed1ad09064bcdb760f1` |
| 28 | `def` | [HasBasis.index](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-index.md) | 246 | `declaration-track:ce9817680debcfdf5b3f2d1374b56b7fd5e3a72fb388ed399bb0fad55a66c63a` |
| 29 | `theorem` | [HasBasis.property_index](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-property-index.md) | 249 | `result-track:de0885a5f4bc6b242dcfe192a3455f947cc45a88e27a2ca928656d3dc3ab865e` |
| 30 | `theorem` | [HasBasis.set_index_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-set-index-mem.md) | 252 | `result-track:76189c187f696cbdc44f1d5c4afb9206ece927ad4f07d921e98cdc0eb4be2bd4` |
| 31 | `theorem` | [HasBasis.set_index_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-set-index-subset.md) | 255 | `result-track:973614f3df4645eab2a2bff0647c651a4417a2ac9ddae9743cd2d45a8b4acc0a` |
| 32 | `theorem` | [HasBasis.isBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-isbasis.md) | 258 | `result-track:3ab65251b2a42f2d119a0aff4046be42d7994298e186a20e2b408d33207f68c8` |
| 33 | `theorem` | [HasBasis.filter_eq](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-filter-eq.md) | 263 | `result-track:b9c3f899ece8b0f866457bdeed2d091f7ce2cf2f210a78fe810bf7a7732e689b` |
| 34 | `theorem` | [HasBasis.eq_generate](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-eq-generate.md) | 267 | `result-track:4db8f7e0996feabad2a08c2ba2f6b9529436dcc09a17a5d7af843262b7944ef9` |
| 35 | `theorem` | [_root_.FilterBasis.hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/root-filterbasis-hasbasis.md) | 270 | `result-track:38a572a29d4403352aba29e1536315bf5a3f9a2c0387e8f80b849488c9458b70` |
| 36 | `theorem` | [HasBasis.to_hasBasis'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-to-hasbasis-source-edition-2.md) | 274 | `result-track:a1d3389aea2a763e4e0bdb8e7d080e681d44b1dfc76cc32fcad85ffab0559b00` |
| 37 | `theorem` | [HasBasis.to_hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-to-hasbasis.md) | 281 | `result-track:04e24e203ca2e82da9c689501d84ed41f93d6b5360d0104fcb11b370fdf3356d` |
| 38 | `lemma` | [HasBasis.congr](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-congr.md) | 287 | `result-track:e0c7dc5c1db246d813378f834f8ba22f01313fdb81acec73e3634f1a65a8236f` |
| 39 | `theorem` | [HasBasis.to_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-to-subset.md) | 292 | `result-track:ac180d287f5c3324f454c800ece53cdd1a0d1ee4b4d6c58b5d92128ebfcf00cd` |
| 40 | `theorem` | [HasBasis.eventually_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-eventually-iff.md) | 296 | `result-track:af75f457c149bd6b857f308d0b2f75a528b2813dc79335330c0b2dc187c175da` |
| 41 | `theorem` | [HasBasis.frequently_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-frequently-iff.md) | 299 | `result-track:b86c09101fb41c076422c08563f20a9b8aa9c017cde178dcd1a98cc4bd87409d` |
| 42 | `theorem` | [HasBasis.exists_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-exists-iff.md) | 303 | `result-track:c6deda03c92c938f43da9ae3113271dda6da313f781df17370b65448410f454e` |
| 43 | `theorem` | [HasBasis.forall_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-forall-iff.md) | 310 | `result-track:2f250c90802f6d48b17df10ff59cd3f542b39d75488a4230e058c1de1e975bcf` |
| 44 | `theorem` | [HasBasis.neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-nebot-iff.md) | 316 | `result-track:392bfec633a1609b0cdd029c43cb3b2c96e29d327902b0b715175534dadd0e40` |
| 45 | `theorem` | [HasBasis.eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-eq-bot-iff.md) | 320 | `result-track:5de6204be10c2eeaf32ba0795908de821a301b22b501a33e621788fa7fc3d5df` |
| 46 | `theorem` | [basis_sets](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/basis-sets.md) | 324 | `result-track:222b3d83abfd77c2fab8df4f88c3bbc99a0bac9aa75ff0f511bad64dfa3964df` |
| 47 | `theorem` | [asBasis_filter](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/asbasis-filter.md) | 327 | `result-track:a2f0022b289743503378a3b1390665c3b2810314c84b09bc8e3c77a45729c97e` |
| 48 | `theorem` | [hasBasis_self](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-self.md) | 330 | `result-track:8cd42121b8233b04ef715fa522452c534dbfd9d6501e5a5fed2ff0a6e14fc054` |
| 49 | `theorem` | [HasBasis.comp_surjective](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-comp-surjective.md) | 336 | `result-track:d88eb0f6898d50683f783fee561a653fc3ec4b9b677436f829982d32632187cb` |
| 50 | `theorem` | [HasBasis.comp_equiv](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-comp-equiv.md) | 340 | `result-track:7a28962e46ac6e3927071a23ded6b3e96d25f5bf24f57a7f5b448be7cd2101e4` |
| 51 | `theorem` | [HasBasis.to_image_id'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-to-image-id.md) | 343 | `result-track:bcb20ee81e916c8b2b248da19000c07e10d26049d721da42b2fdee65da034b69` |
| 52 | `theorem` | [HasBasis.to_image_id](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-to-image-id-source-edition-2.md) | 346 | `result-track:f0d1fd7323559d3a3aaf359931ae16c85d2d1448cc9ef0376c3cbd86762fe767` |
| 53 | `theorem` | [HasBasis.restrict](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-restrict.md) | 352 | `result-track:3a591a76a46cc9aa40c89ceea9c71e3223ebf00cfb97996dcea6a8769541a7a4` |
| 54 | `theorem` | [HasBasis.restrict_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-restrict-subset.md) | 361 | `result-track:3fb4a38273b7839e66e7e47ff4e5a618719d86bf097eba4ef6b045de8e2da349` |
| 55 | `theorem` | [HasBasis.hasBasis_self_subset](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-hasbasis-self-subset.md) | 366 | `result-track:7ee037ff8c84a5ed1ce982e7a53cdfc2668980250b083735b88c62a81f6adc11` |
| 56 | `theorem` | [HasBasis.ge_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-ge-iff.md) | 370 | `result-track:0584ea7f6ed755d32deffcf9fac56abb38a02fe275f7364b299278e98baaeff2` |
| 57 | `theorem` | [HasBasis.le_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-le-iff.md) | 375 | `result-track:94a01e26d7610e6e4d6a699909d42ef97aaf48507ea5ae73d69eca938b531e87` |
| 58 | `theorem` | [HasBasis.le_basis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-le-basis-iff.md) | 378 | `result-track:62966fb50863a45c2c28d1cb924eaabcf32d02b875ac09eb90d919b19f4763ba` |
| 59 | `theorem` | [HasBasis.eq_top_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-eq-top-iff.md) | 382 | `result-track:2123d4397754f972f7d54ac383e5a9ee34425e2534b390e2f2385f0719f648e6` |
| 60 | `theorem` | [HasBasis.ext](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-ext.md) | 385 | `result-track:60e160faeed5c6bff55b997feeeea550aa120ef5068f83b3fce7cfdb6df9db86` |
| 61 | `theorem` | [HasBasis.inf'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-inf.md) | 394 | `result-track:7cfde811f215da3a1b59cb92bb316ebd43554f795666f86ea017401e21c51504` |
| 62 | `theorem` | [HasBasis.inf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-inf-source-edition-2.md) | 405 | `result-track:89c95fac9b78cdae3525d3289434537200d0719b8c80c9c9b4cb10468e2fdaf1` |
| 63 | `theorem` | [hasBasis_iInf_of_directed'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-iinf-of-directed.md) | 410 | `result-track:6bc68ce0228ad3d7f3fde9fa99429f004946d0e714f6ae59fddaba46c953e9ac` |
| 64 | `theorem` | [hasBasis_iInf_of_directed](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-iinf-of-directed-source-edition-2.md) | 418 | `result-track:7f96448abf1401c8e5832967785803ef0cd8e5c588fa0d598ead4f97aeb06d7b` |
| 65 | `theorem` | [hasBasis_biInf_of_directed'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-biinf-of-directed-source-edition-2.md) | 426 | `result-track:9b42a5fe54ad4d7e4c38538896e695f8b6b1c0ad9219689ab993f851ba911a43` |
| 66 | `theorem` | [hasBasis_biInf_of_directed](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-biinf-of-directed.md) | 435 | `result-track:4449eae3f2a9fb31191e63f9bbf8a2374a932ab5eeb23065d95bef9a38996451` |
| 67 | `lemma` | [hasBasis_top](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-top.md) | 444 | `result-track:15e17e7345fe67c7a8d252bd1574e2d026b6920dfaf9b6ae8840326d2a44d5e2` |
| 68 | `theorem` | [hasBasis_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-principal.md) | 448 | `result-track:6fc542aeb40636a2627abbc1f625a919959697515d01753ff68d6bb68ca047ba` |
| 69 | `theorem` | [hasBasis_pure](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-pure.md) | 451 | `result-track:78b821ce4ed43a224eea4b6fda0cb87edb6f40f25ca92fe92cb4c7ae3d9ef280` |
| 70 | `theorem` | [HasBasis.sup'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-sup-source-edition-2.md) | 455 | `result-track:f3136b26f2aff56620597eafc23859c92026ae1c6cd05637c062bbdd7a59bc87` |
| 71 | `theorem` | [HasBasis.sup](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-sup.md) | 463 | `result-track:74e7a86dee967ce2b9b2b7828cb601138d5c580ed1d5dd3459915c4bd3ac43e2` |
| 72 | `theorem` | [hasBasis_iSup](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-isup.md) | 468 | `result-track:0920d9d59208a68bd72cc257308a426a7edc745302cc338d39f7698a81107965` |
| 73 | `theorem` | [HasBasis.sup_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-sup-principal.md) | 475 | `result-track:ef3bdf0c354918abe58179f5001591b08a6ec5cc11896033006e4f2c6348fee3` |
| 74 | `theorem` | [HasBasis.sup_pure](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-sup-pure.md) | 481 | `result-track:b561dfb80551234e4df9a1a67b91ea412506e1d39c9b8d8a4162298c03302e29` |
| 75 | `theorem` | [HasBasis.inf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-inf-principal.md) | 485 | `result-track:e427af9ea1fcfaa38b0a2a44cd93a4484ae8c8710a0af71a3928088440a66248` |
| 76 | `theorem` | [HasBasis.principal_inf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-principal-inf.md) | 490 | `result-track:f46df9dee7de6d21a76ada7ef81652dde80909b93a2db38de40262d1613f765e` |
| 77 | `theorem` | [HasBasis.inf_basis_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-inf-basis-nebot-iff.md) | 494 | `result-track:38b66341f4fe6909ccf2edc9b7ab560d946def98a6c03363b488a8afe073e648` |
| 78 | `theorem` | [HasBasis.inf_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-inf-nebot-iff.md) | 498 | `result-track:1ff08839aaa655aded064e8ac17df7fcb65361a581019898df9b0abd61f4db45` |
| 79 | `theorem` | [HasBasis.inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-inf-principal-nebot-iff.md) | 502 | `result-track:e78f1fd955c90e16e28488bc5da14197e2043e8d493bb5afbd4efc4424750018` |
| 80 | `theorem` | [HasBasis.disjoint_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-disjoint-iff.md) | 506 | `result-track:f273ace49c904a3d8fa719b6e80561e293a0cadcd13b35ab637ab94bef5231c6` |
| 81 | `theorem` | [_root_.Disjoint.exists_mem_filter_basis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/root-disjoint-exists-mem-filter-basis.md) | 511 | `result-track:87a47355f7a1d6cf3adcc9e98bbbea027bea8c89ce631451051b097f9c347960` |
| 82 | `theorem` | [inf_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/inf-nebot-iff.md) | 515 | `result-track:fd33ea7530c9e3eec55933d1ae618d043ce69ca7f7efe9badd6be941b0c545cb` |
| 83 | `theorem` | [inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/inf-principal-nebot-iff.md) | 519 | `result-track:058410e46eada24afbfe5741e866293ac9127ae0f6c0efff3999786fc5a49e11` |
| 84 | `theorem` | [mem_iff_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/mem-iff-inf-principal-compl.md) | 522 | `result-track:5dc187e19546741c4dc7eefc9e1891fc2c607f6c19d57011864b0ef77a69fa13` |
| 85 | `theorem` | [notMem_iff_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/notmem-iff-inf-principal-compl.md) | 528 | `result-track:b8d2be3a598b2ac726b22913e132e7032f0a33ae299a4f2984a92da1f9fcbffa` |
| 86 | `theorem` | [disjoint_principal_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/disjoint-principal-right.md) | 532 | `result-track:24b41c23ce48c76af5422a6d5e372670d933dddd3126c6139fae12f91b9ce2e8` |
| 87 | `theorem` | [disjoint_principal_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/disjoint-principal-left.md) | 536 | `result-track:e10462fb6b2494afc154fe54a1bec8cd9918c9de4e751a77668daeda0156778d` |
| 88 | `theorem` | [disjoint_principal_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/disjoint-principal-principal.md) | 540 | `result-track:20b36d2f0d535869c4ecc369bcbb26bf475e9a5182fe56d80abe58fe8203cbed` |
| 89 | `theorem` | [disjoint_pure_pure](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/disjoint-pure-pure.md) | 546 | `result-track:241483c91a3104e8006fb17b83748c79eb357b90d0268fc58430d30cdb2785e4` |
| 90 | `theorem` | [HasBasis.disjoint_iff_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-disjoint-iff-left.md) | 549 | `result-track:43e26e47240f87e025225f82c144b263dc886e464113b085ed869062a5a87f3d` |
| 91 | `theorem` | [HasBasis.disjoint_iff_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-disjoint-iff-right.md) | 554 | `result-track:97b14bd57030b2a6316e2a1059f857a05b826a1b3c3d057628951f06c234c328` |
| 92 | `theorem` | [le_iff_forall_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/le-iff-forall-inf-principal-compl.md) | 558 | `result-track:35961d736feef0dfae50751bd22f39320028f1166b93fb776b1ab8b41f78dd7b` |
| 93 | `theorem` | [inf_neBot_iff_frequently_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/inf-nebot-iff-frequently-left.md) | 561 | `result-track:93793172c80db79fe4caf8e33458fc60fc47335f1a4d3e908b4ce5722713a137` |
| 94 | `theorem` | [inf_neBot_iff_frequently_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/inf-nebot-iff-frequently-right.md) | 565 | `result-track:c85a84a0a07da1bceec6bb2c2a6e1bd9beb1ab87c307c10ed97cfa51ec7b8f80` |
| 95 | `theorem` | [HasBasis.eq_biInf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-eq-biinf.md) | 570 | `result-track:a0efb43c3717edc754074f4a99725edd4ac8c5f24fb24f1b5bfadf7f3fc1285f` |
| 96 | `theorem` | [HasBasis.eq_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-eq-iinf.md) | 573 | `result-track:14ac19bef49d56bfc3d5781738a0b8ded7558d783e11c4a3383394d53cb942e4` |
| 97 | `theorem` | [hasBasis_iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-iinf-principal.md) | 576 | `result-track:628f9fd91fb29b84ec61e5a752f48f850b35ea316a9cc37d32cbd7bd4b13f544` |
| 98 | `theorem` | [hasBasis_biInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-biinf-principal.md) | 581 | `result-track:73dd180b960c7a8ceaf624c177e56c66ebcb1a2098febee8f0c1a27ae5d3789d` |
| 99 | `theorem` | [hasBasis_biInf_principal'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-biinf-principal-source-edition-2.md) | 589 | `result-track:ab3f0b5e8bfa191d0f5f1df1cb253622b30e2d445561670b4ab5b53fb9ffd113` |
| 100 | `theorem` | [HasBasis.map](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-map.md) | 594 | `result-track:6b1ed57d6f981d1d233c1ab9bb280f6d92565dd3fcd0f515178af9d5a9d145e7` |
| 101 | `theorem` | [HasBasis.comap](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-comap.md) | 597 | `result-track:11e0afa1b952880220723a7e5e3897a6b6dc37c19856ab211d3a813abc86e7b4` |
| 102 | `theorem` | [comap_hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/comap-hasbasis.md) | 604 | `result-track:2cf59666adf41fae7a02e4bc3cf98d30a4e7aaee9b3b12c9693a6a3844d117f3` |
| 103 | `theorem` | [HasBasis.forall_mem_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-forall-mem-mem.md) | 608 | `result-track:efee6b5b722809f9975821128953234c94c8b43ab004434a3b2269d057fd03cc` |
| 104 | `theorem` | [HasBasis.biInf_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-biinf-mem.md) | 613 | `result-track:639e20f34d7d5a35a33172c510364adbafe847d354e56bcf155282a3475c3c5f` |
| 105 | `theorem` | [HasBasis.biInter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-biinter-mem.md) | 620 | `result-track:5f762cc0d3d1437387c9119775ac264b19eff58d0055e5d44a746b497bb00466` |
| 106 | `theorem` | [HasBasis.ker](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-ker.md) | 624 | `result-track:d4000084405d1bc1006e4e0bd73faf7e38d7f906ef2e76568001afd371ea582a` |
| 107 | `structure` | [IsAntitoneBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/isantitonebasis.md) | 630 | `declaration-track:e42cd87b31ec3ae2dd23f3601115fbd95ec715080c0a0275377323908e23271c` |
| 108 | `structure` | [HasAntitoneBasis](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasantitonebasis.md) | 636 | `declaration-track:afe174937fbcac2226b341d5497d34fc7f3f40d444c9f4a7c7b3ad0980b03d5e` |
| 109 | `theorem` | [HasAntitoneBasis.map](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasantitonebasis-map.md) | 641 | `result-track:be4ab30daf159242421bcaed9701180885fbce8bdab7f030ab0db3aec0d8ce3d` |
| 110 | `theorem` | [HasAntitoneBasis.comap](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasantitonebasis-comap.md) | 645 | `result-track:74b625075fa0957fcc09692c3cfc0226ecdd60b10040ad514f58f485d367d590` |
| 111 | `lemma` | [HasAntitoneBasis.iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasantitonebasis-iinf-principal.md) | 649 | `result-track:d93ff2e91808e109be26dd791688f00942269c9cf478788a99ced46751120367` |
| 112 | `theorem` | [HasBasis.tendsto_left_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-tendsto-left-iff.md) | 660 | `result-track:a1225c9da00523b28ba0026160a260c95a31a81d72bdcb8f79522f46819fdb30` |
| 113 | `theorem` | [HasBasis.tendsto_right_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-tendsto-right-iff.md) | 665 | `result-track:a11a212cdeb6be25ea7e415749f7f81557d28191ea671a473535df129bc2cbe6` |
| 114 | `theorem` | [HasBasis.tendsto_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-tendsto-iff.md) | 669 | `result-track:89e97dddba842a11cbbdde6de2dab1934a27e410f651b7787616e0fb0ef141ae` |
| 115 | `theorem` | [Tendsto.basis_left](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/tendsto-basis-left.md) | 673 | `result-track:647c542b32ef9162f7ad4e8ac029adefb29053220fa80bd4777d6beb228bffbf` |
| 116 | `theorem` | [Tendsto.basis_right](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/tendsto-basis-right.md) | 677 | `result-track:de3c0308015cf53a66121b85009f5203e3e6998bc5da8d67d07f88f56dabb713` |
| 117 | `theorem` | [Tendsto.basis_both](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/tendsto-basis-both.md) | 681 | `result-track:adec9551a833ee0d8cefaff0ea3075040626084107607fb367841d3bca117afb` |
| 118 | `theorem` | [HasBasis.prod_pprod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-prod-pprod.md) | 686 | `result-track:4eea07445511f07e83906f8855625d12935c45bf8604fc7785520d44660e5248` |
| 119 | `theorem` | [HasBasis.prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-prod.md) | 690 | `result-track:08ff1607aaa16808beb8ac295be6ffe60e421acffc21928006916dd0f194c6ec` |
| 120 | `theorem` | [HasBasis.principal_prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-principal-prod.md) | 695 | `result-track:8f8ed031a4ca383b670522b4e261d36ffa4bc2bfde54ece5b36064bf439e9067` |
| 121 | `theorem` | [HasBasis.prod_principal](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-prod-principal.md) | 699 | `result-track:a98532741ea7256b109caf1f4f0f3f3eb1f69f38a06486f8e4026f42528a527b` |
| 122 | `theorem` | [HasBasis.top_prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-top-prod.md) | 703 | `result-track:c955960567f5907d77c53118ec11e3e40e1ea3a95c9f4da7da9c7b0450e94428` |
| 123 | `theorem` | [HasBasis.prod_top](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-prod-top.md) | 707 | `result-track:e92fa10fce5f4c703a6bc3a7c3ead867503b9639ecd295dddd2fed908e4f3c4e` |
| 124 | `theorem` | [HasBasis.prod_same_index](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-prod-same-index.md) | 711 | `result-track:ddb9f8dae9ccd6912a9e6d4686d641168d10c8c84eaad9a72cc8ea1ef952b9c0` |
| 125 | `theorem` | [HasBasis.prod_same_index_mono](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-prod-same-index-mono.md) | 722 | `result-track:7b105c5227b39524c210bcbecbb57977ce0ddb266007d894d8502a3762eda13b` |
| 126 | `theorem` | [HasBasis.prod_same_index_anti](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-prod-same-index-anti.md) | 730 | `result-track:3025367af661be71ba7a7a4dffe3d25f23a6e172c6c3738762064868f066daf8` |
| 127 | `theorem` | [HasBasis.prod_self](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-prod-self.md) | 736 | `result-track:6e98b76f61b79a72cae75f052a0f65a489d66baf6225185bf99911ad989f024c` |
| 128 | `theorem` | [mem_prod_self_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/mem-prod-self-iff.md) | 742 | `result-track:6bfec69fec7c9534f36bc87e5a0b2a14695f214f5237a9b96e35a458ed4b7c64` |
| 129 | `lemma` | [eventually_prod_self_iff](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/eventually-prod-self-iff.md) | 745 | `result-track:1d5ad236aa0ac12b149a86ce2d405a03f69d402345507243b5310d212cd14cae` |
| 130 | `lemma` | [eventually_prod_self_iff'](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/eventually-prod-self-iff-source-edition-2.md) | 750 | `result-track:ba52774b3ffc278322170dbe12ad05a282b3139099c8af04942ff160900d4e7a` |
| 131 | `theorem` | [HasAntitoneBasis.prod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasantitonebasis-prod.md) | 754 | `result-track:cadc806f7b32365e86dfaa4e67af9882013b3f1d5eae066e91345ae8e1120c84` |
| 132 | `theorem` | [HasBasis.coprod](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/hasbasis-coprod.md) | 759 | `result-track:1666f696585173478155f4cbc4d230a58aa9aaa9dae5186830803d6721152ab9` |
| 133 | `theorem` | [map_sigma_mk_comap](../../../../../GeneralTopology/GeneralitiesInTopology/BasesBasicPublic.lean/declarations/map-sigma-mk-comap.md) | 767 | `result-track:0410286c71143a9af6a4590c0c109ce976468a57fa2439e29686dc27dac0da40` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63d90d1af9f9a6669bd01088f9a60b9d65e5409c94d02eee36028d1808697bb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant13039a3acfab4b42a5a63c38d43b446818f819f8f388f8cda7144aa4ee48dabb.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant13039a3acfab4b42a5a63c38d43b446818f819f8f388f8cda7144aa4ee48dabb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
