# Verification target: Map Idx Public Map Fin Idx Nil

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70197e3ea3c3b7d0acadb849de6a797396cb8922",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantf4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70197e3ea3c3b7d0acadb849de6a797396cb8922`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantf4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantf4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Range` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Range` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Prod` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Subtype.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx.md) | 38 | `declaration-track:c3f29ae185aec36f08e331849c042be560425d68cf74d445baf81af5fea646a5` |
| 2 | `def` | [mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx.md) | 55 | `declaration-track:34c8bc335fe5309d8eebedb1b41a2e5fc653b7d2c65bb60ecca99ec344d884be` |
| 3 | `def` | [mapFinIdxM](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidxm.md) | 70 | `declaration-track:f407a3722f13e5088f5ffd0b8c33c7fac205c35ff59899f87ab70eef5b555a42` |
| 4 | `def` | [mapIdxM](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidxm.md) | 87 | `declaration-track:7a4f3ae468b2241b9d5e9774daa326ace0d34503597a2571eb889d22fad7c3a1` |
| 5 | `theorem` | [mapFinIdx_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-congr.md) | 96 | `result-track:72fdc24ff59d2d7cdb3a79f83f4812c5775712c910c5ae3917a8ca16092185f9` |
| 6 | `theorem` | [mapFinIdx_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-nil.md) | 103 | `result-track:08445729ec854f57c35b263009fcf12754bdeb783204cdcc2345263b8fd1c3e1` |
| 7 | `theorem` | [length_mapFinIdx_go](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/length-mapfinidx-go.md) | 106 | `result-track:e098fefcad9fc25182ca125f0ef4f6351761ce709b03b6c15aabaa097f00256e` |
| 8 | `theorem` | [length_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/length-mapfinidx.md) | 112 | `result-track:d7677e6f337e812dc72a53e82c34ef0cf73b2f51452d65c333c84de2c9adca52` |
| 9 | `theorem` | [getElem_mapFinIdx_go](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/getelem-mapfinidx-go.md) | 116 | `result-track:109bd2c68880a0aa3ac8f8877061d840c4685c6bf1cb296eb3877c8fe80996aa` |
| 10 | `theorem` | [getElem_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/getelem-mapfinidx.md) | 140 | `result-track:070e04748a40421f11b63b3b5d59cf7da0d393de08f24662c6e0513a6c0ef51f` |
| 11 | `theorem` | [mapFinIdx_eq_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-offn.md) | 144 | `result-track:a36e2fcdafcaed7d90b87fd83f14c1824949662ae01aaf20365cb626e4bf0cb1` |
| 12 | `theorem` | [getElem?_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/getelem-mapfinidx-source-edition-2.md) | 148 | `result-track:e6a758902d7118d01a9bdd02e35b051b4b4e8de27f314b2de16d463eba494ac4` |
| 13 | `theorem` | [mapFinIdx_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-cons.md) | 154 | `result-track:76d366744c5a5a32a8b7e83508be5aef5310c6d1163d513133c1499140bb997a` |
| 14 | `theorem` | [mapFinIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-append.md) | 161 | `result-track:478cd940d9e576c3f094900fd55dfa8b45228b565c6c9a5da8869e5421ab29cf` |
| 15 | `theorem` | [mapFinIdx_concat](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-concat.md) | 177 | `result-track:0f1b5b0fdffed9f84ffcf722f13fd4433bdbbe6c8b90d27e06478ea662be16b0` |
| 16 | `theorem` | [mapFinIdx_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-singleton.md) | 181 | `result-track:096334602285bd2484a8aebfa1afeaa09f06e4b1ed9c7ad71b70ea0fb0620e29` |
| 17 | `theorem` | [mapFinIdx_eq_zipIdx_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-zipidx-map.md) | 185 | `result-track:3f529a02e231e1cb5c00b1dc8e115bd4bd96efadb71648363470d7bcdb5ce1ca` |
| 18 | `theorem` | [mapFinIdx_eq_nil_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-nil-iff.md) | 194 | `result-track:464cdeac9de84263dc4c787f51fe23c85d77fb07263022ba22574d3a96800b4d` |
| 19 | `theorem` | [mapFinIdx_ne_nil_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-ne-nil-iff.md) | 198 | `result-track:c8528ab849fed3a818eb9ff970ef6c8436cac9215e8e2ac04dfe7478d0c8668f` |
| 20 | `theorem` | [exists_of_mem_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/exists-of-mem-mapfinidx.md) | 202 | `result-track:0e982a05968354cbe018923ad38eddcde9d590bf2edaeef3c550a9b262b9e88c` |
| 21 | `theorem` | [mem_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mem-mapfinidx.md) | 212 | `result-track:1d4a3680754878e4ec9b10831cc4ae77e980a16b09f5007e55bc2f4661526d5c` |
| 22 | `theorem` | [mapFinIdx_eq_cons_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-cons-iff-source-edition-2.md) | 221 | `result-track:bbaa6ded145a423e5acc926a5aa9c9054e976759e0c99f470b8294955f7f4df2` |
| 23 | `theorem` | [mapFinIdx_eq_cons_iff'](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-cons-iff.md) | 236 | `result-track:913a7eb681bee5e596f48f17d1c2e57b98248573cf693d01e6a909e35c00cdba` |
| 24 | `theorem` | [mapFinIdx_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-iff.md) | 242 | `result-track:01cd34e08bab589f940a6f26402ff2aa8ea5ba39ee5ae720927b65628a94abfd` |
| 25 | `theorem` | [mapFinIdx_eq_singleton_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-singleton-iff.md) | 250 | `result-track:96c6e4d12077b223cee100da881f8b1557cdf7e589972eef7c88931dc950746a` |
| 26 | `theorem` | [mapFinIdx_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-append-iff.md) | 254 | `result-track:cbee3da8b561d24ea7e67b9f38716a2605094534a6b3b4c6ceeb29c7a5f26a66` |
| 27 | `theorem` | [mapFinIdx_eq_mapFinIdx_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-mapfinidx-iff.md) | 293 | `result-track:840fe29525fcdfb7467b77b1a3a0d645a0554bae625053ee837457382395bf4b` |
| 28 | `theorem` | [mapFinIdx_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-mapfinidx.md) | 298 | `result-track:d14ce91da93de0f039580b5e13d4a8b13636e631ef1c1f7604ae3a3aab1fa333` |
| 29 | `theorem` | [mapFinIdx_eq_replicate_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-replicate-iff.md) | 304 | `result-track:a567b6930177b9755922d2d6e6446f3cfad65f38b0d362b5d1cc5b273ea15b42` |
| 30 | `theorem` | [mapFinIdx_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-reverse.md) | 314 | `result-track:a6e092f698a4471aceb2f36f97d4c107c285df4644ef59048151e88b10d448bd` |
| 31 | `theorem` | [mapIdx_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-nil.md) | 325 | `result-track:7c26db794888ae588cb00a724f077cc62a3e568bcb0bf6626c59f16c957c2e64` |
| 32 | `theorem` | [mapIdx_go_length](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-go-length.md) | 328 | `result-track:9b82b3438dcf8867589c0943c38cc1655abb32693020e3b7c71f556e79fbf218` |
| 33 | `theorem` | [length_mapIdx_go](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/length-mapidx-go.md) | 335 | `result-track:cc7c2224cc9751f2dc5fdb0f99dd03ceb3b0bc7fdb1d4bc6bd74294bb89394eb` |
| 34 | `theorem` | [length_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/length-mapidx.md) | 344 | `result-track:4e9052df80bc902b745e112e75935e645dd1c16ea2e7a54c8e88997298f63588` |
| 35 | `theorem` | [getElem?_mapIdx_go](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/getelem-mapidx-go.md) | 347 | `result-track:3ac11008f2f43803f7afedc31b4dca51f124663c6d3ca645dc58d2a54de79d3a` |
| 36 | `theorem` | [getElem?_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/getelem-mapidx-source-edition-2.md) | 367 | `result-track:b76f92bb1af24532ea6e6602bfcaeb5fdcdc08f8bdfb43a3ef839d2d3d48ac72` |
| 37 | `theorem` | [getElem_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/getelem-mapidx.md) | 371 | `result-track:1d750f8923276196f45186d5f2ba1d25c12bb2367ff6479b403e1e321915df69` |
| 38 | `theorem` | [mapFinIdx_eq_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapfinidx-eq-mapidx.md) | 377 | `result-track:331669569b05646dc33fd4e63389b924dbd561a2e6ed56c96d56263621c6a94c` |
| 39 | `theorem` | [mapIdx_eq_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-mapfinidx.md) | 382 | `result-track:f5eb40e41e402277cfa26259dd231a785bae586db02be4f463b19372602255e9` |
| 40 | `theorem` | [mapIdx_eq_zipIdx_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-zipidx-map.md) | 386 | `result-track:b89090d6381450b3065bab30d9ebca39e68195b26adfb1e91bf39fc3785a101e` |
| 41 | `theorem` | [mapIdx_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-cons.md) | 395 | `result-track:1b7d6994abfb5708acedbeefa5ad1ec7f3cd27b932633e6923293f73dac184b4` |
| 42 | `theorem` | [mapIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-append.md) | 400 | `result-track:fd0702be4a697bf728d036814007cd098635643aa6eaeb0f72ad543d0dd78669` |
| 43 | `theorem` | [mapIdx_concat](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-concat.md) | 406 | `result-track:42f215da3961f310a8ea5fd87c339c61cddeef8fb266e73b9da0b8bd8060ad51` |
| 44 | `theorem` | [mapIdx_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-singleton.md) | 410 | `result-track:14d651a15f813e4cc0db9740772dbb25fd47bc76d59982e66d48ed373ab870e6` |
| 45 | `theorem` | [mapIdx_eq_nil_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-nil-iff.md) | 414 | `result-track:706b284092e2d06782d884869377de5af187b487128b9ca3779fe2d3a844a643` |
| 46 | `theorem` | [mapIdx_ne_nil_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-ne-nil-iff.md) | 417 | `result-track:8fc0a13dc19eb69ef5bd3d2b6629602ec4a56a3c36f3bf1ab7db65c0f047853e` |
| 47 | `theorem` | [exists_of_mem_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/exists-of-mem-mapidx.md) | 421 | `result-track:b041d765d7ec48fdccc59c864108b93bd57e76a3f2626950ce17dcc482a27f85` |
| 48 | `theorem` | [mem_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mem-mapidx.md) | 426 | `result-track:eb822ce5f02b1ac9adb0c685bd8ccbf0250c771aec8422402ae7de90ad0e3906` |
| 49 | `theorem` | [mapIdx_eq_cons_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-cons-iff.md) | 435 | `result-track:499d1c7a51f62e7ba8a737619b941f06909ab09c1264e75ee117e199b4001daf` |
| 50 | `theorem` | [mapIdx_eq_cons_iff'](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-cons-iff-source-edition-2.md) | 440 | `result-track:896d4a95e12a77138fdecab9ccc9b1f5691c63f009bd6faf6dd3b1176a93de11` |
| 51 | `theorem` | [mapIdx_eq_singleton_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-singleton-iff.md) | 445 | `result-track:7ec132fe196748987ff75fb312a00960b92f727758176c933ac35a34c9cc11f8` |
| 52 | `theorem` | [mapIdx_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-iff.md) | 449 | `result-track:9ff9c381359887bf335c990fa943ef8efedb24b8182da242332007509f86eda5` |
| 53 | `theorem` | [mapIdx_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-append-iff.md) | 457 | `result-track:252d9e36f42cb9ecb78fa1b0d1b86b88148da9ee7725809d2ea89f64a6c60bde` |
| 54 | `theorem` | [mapIdx_eq_mapIdx_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-mapidx-iff.md) | 470 | `result-track:124867338d9e7923d35384b7ab86ed52b13d136b2b9c44985303e165e7bfc3d1` |
| 55 | `theorem` | [mapIdx_set](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-set.md) | 481 | `result-track:67e05e14674ed50d986b898a197006dbec9c42a4e5f36a18e1cc2483b49fa1bf` |
| 56 | `theorem` | [head_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/head-mapidx.md) | 489 | `result-track:16e40b94eeeceb5dd3afb9cc5c11176bccb0e41931b9fb07582f5cc52ee50874` |
| 57 | `theorem` | [head?_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/head-mapidx-source-edition-2.md) | 495 | `result-track:5669236b54b5ee29f728ed70fa619efa55925305b2c3e99adf44b02f4b301283` |
| 58 | `theorem` | [getLast_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/getlast-mapidx-source-edition-2.md) | 498 | `result-track:8e749fd1844728cb672e3db21562be066086c55e2650c1cf50d083bf17a30f36` |
| 59 | `theorem` | [getLast?_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/getlast-mapidx.md) | 509 | `result-track:3d1d57282b1ea139b0332d8cf11af0915c7c7248f12ae2ac341a845cd2065e31` |
| 60 | `theorem` | [mapIdx_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-mapidx.md) | 515 | `result-track:bb152581c8faabda629bbb95c170f3f529b0754f4c1e7a312304cd053fc013aa` |
| 61 | `theorem` | [mapIdx_eq_replicate_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-eq-replicate-iff.md) | 519 | `result-track:c4a32d9ab06f51b4e31bb3ff3a8b83cd37d3da2256f299afc996f531d50a6d12` |
| 62 | `theorem` | [mapIdx_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapFinIdxNil.lean/declarations/mapidx-reverse.md) | 528 | `result-track:c4c0e9a27dd72318bda2355f6b4618a8e744e4100f9d2bd75cb2ccc974900a44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13e4c1649690c6dfdda594e8a7359f0232fd7644fa8f30390c028025f93104d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantf4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variantf4c0fdaf7f4b62f7492a960c814dd0b645ee94c84fd3efaa892feadd36466665.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
