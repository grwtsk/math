# Verification target: Indexes Namespaced Old Map Idx Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68ff6df863d0de4c8f5ee9b5f6c16c2b54511316",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68ff6df863d0de4c8f5ee9b5f6c16c2b54511316`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.OfFn` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oldMapIdxCore](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/oldmapidxcore.md) | 39 | `declaration-track:4184f26fb80f26927d90be29a6c16b1fcc797dc738e36f3176c54a54c0edaa7e` |
| 2 | `def` | [oldMapIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/oldmapidx.md) | 45 | `declaration-track:494e1ccb6155a9746bf9ac4946d0c0ab194e423591bf2a8223c83bd7d1c947a6` |
| 3 | `theorem` | [mapIdx_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidx-nil.md) | 49 | `result-track:af098def3f5bf69bced2d957b0c41e58f809fc9065ec36efb0e4043bfee9fd8d` |
| 4 | `theorem` | [oldMapIdxCore_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/oldmapidxcore-eq.md) | 54 | `result-track:3765b21671d8ff5253e3cdae3f3684901de46f1ea8624d1173907524ffa286ef` |
| 5 | `theorem` | [list_reverse_induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/list-reverse-induction.md) | 68 | `result-track:a660a403577fed05245aa31467320d2335752fea6f03b10f16080d6257f48105` |
| 6 | `theorem` | [oldMapIdxCore_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/oldmapidxcore-append.md) | 81 | `result-track:b0462f30adfa9ba1ec9cefb7008cf2b91406b09701a2f88ebca9cde5bb997683` |
| 7 | `theorem` | [oldMapIdx_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/oldmapidx-append.md) | 102 | `result-track:2e0e855c151e8c63667aca62e6a86a4ce472e8f4de780e71db26485d8e6f3575` |
| 8 | `theorem` | [mapIdxGo_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidxgo-append.md) | 110 | `result-track:0b2dc8b17e093a038b432b65145b2de154f431735e8e35084ea1b8d28e2f6a23` |
| 9 | `theorem` | [mapIdxGo_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidxgo-length.md) | 127 | `result-track:3d223895c98ceecbae60408abcd0df745bfda7e6eea1d6201e5d5c7e75a9bd24` |
| 10 | `theorem` | [mapIdx_append_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidx-append-one.md) | 136 | `result-track:c3311be7d758a4870af3f75147fb2d850b7dd7855983c9db0f246a05f0d9f417` |
| 11 | `theorem` | [new_def_eq_old_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/new-def-eq-old-def.md) | 145 | `result-track:bd8844aa332d09f1ea37cecab670f302c59fa4d0406ecd2a4023ccd6b3e09dd9` |
| 12 | `theorem` | [map_enumFrom_eq_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/map-enumfrom-eq-zipwith.md) | 154 | `result-track:1c17988194a04a29e640f11e6ff84fda35ea0a56d9f312b061a46bf2973dd6d2` |
| 13 | `theorem` | [mapIdx_eq_enum_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidx-eq-enum-map.md) | 172 | `result-track:864cb44ecf55b444b1de3b2a24b1e69c33786bf716b41074beb4778242f9d2bc` |
| 14 | `theorem` | [mapIdx_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidx-cons.md) | 182 | `result-track:bd397fd9109504cbcb71c6535e88af23ba29c1aa96688d9fa0421330ccd3b7a1` |
| 15 | `theorem` | [mapIdx_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidx-append.md) | 188 | `result-track:e253eeea5a1cb4e65d08fb949c56970844c8d2e182b55aba3a58d488d2b4aed9` |
| 16 | `theorem` | [length_mapIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/length-mapidx.md) | 196 | `result-track:79c49305ade9bbfe3e9c7288d5b70164e28ba485f0a098ef65388604c2815c98` |
| 17 | `theorem` | [nthLe_mapIdx](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/nthle-mapidx.md) | 203 | `result-track:0586be23c03034a01dddaa816f6bd9831c37e8acc4121e2559025704df636ed3` |
| 18 | `theorem` | [mapIdx_eq_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidx-eq-offn.md) | 210 | `result-track:5e4f2cb39be4f190f5050a7083642c406f45335f358dbaf9cb872dee184c9858` |
| 19 | `def` | [foldrIdxSpec](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldridxspec.md) | 223 | `declaration-track:e008ce75a6472bea7cd0838c561c9022f2400f0257aad865641218949cfbabe5` |
| 20 | `theorem` | [foldrIdxSpec_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldridxspec-cons.md) | 227 | `result-track:5be73d35b3c1bc79b1656d06a5ebe24e44295571690fa860af420c3a50d48fa1` |
| 21 | `theorem` | [foldrIdx_eq_foldrIdxSpec](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldridx-eq-foldridxspec.md) | 232 | `result-track:5a0ca1ab7fe9327286c32a48bc36414504875c502a31b8d07f2b614a1ceaa6fd` |
| 22 | `theorem` | [foldrIdx_eq_foldr_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldridx-eq-foldr-enum.md) | 239 | `result-track:d8fc681a690117f56be0eaf4eee28a8ef3a2d17c716c0886fe03687cd95a3eb5` |
| 23 | `theorem` | [indexesValues_eq_filter_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/indexesvalues-eq-filter-enum.md) | 246 | `result-track:1fd49bcf265eedeaf67d82615568c638d4a995edc3d680c2f8d6914a59870f45` |
| 24 | `theorem` | [findIdxs_eq_map_indexesValues](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/findidxs-eq-map-indexesvalues.md) | 251 | `result-track:e068487af521ef2a051a867f9dbba7053fa2ecd74cecf5ff8b35bbb8567644fa` |
| 25 | `def` | [foldlIdxSpec](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldlidxspec.md) | 261 | `declaration-track:d0d7649b2f1b2e35fafbb9cc0037664b57fcf56e8241e9f1c7456204aad5c1ce` |
| 26 | `theorem` | [foldlIdxSpec_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldlidxspec-cons.md) | 265 | `result-track:6fe02ba9ffe87d074db78e4b340006d047ea1eab0e6fb0b00f5ac536a5147732` |
| 27 | `theorem` | [foldlIdx_eq_foldlIdxSpec](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldlidx-eq-foldlidxspec.md) | 270 | `result-track:d2ffcd78b51d26581d7bf03e5dac4ae8d2932589a7bcacb46952cab166a1dd7c` |
| 28 | `theorem` | [foldlIdx_eq_foldl_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldlidx-eq-foldl-enum.md) | 277 | `result-track:3928c82066b4c4db4b90ad7967887c9e85cccdf7942464df1ebad26b4e505c42` |
| 29 | `theorem` | [foldrIdxM_eq_foldrM_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldridxm-eq-foldrm-enum.md) | 289 | `result-track:75a07f8d0cfa93eb30bd2b06af5b8c2e82ed1353802dba7345aa8540a0fb071d` |
| 30 | `theorem` | [foldlIdxM_eq_foldlM_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/foldlidxm-eq-foldlm-enum.md) | 294 | `result-track:d88832e7af74eee15a57b0e0fb765aecc1f54552ed8918161791cd157b37cdda` |
| 31 | `def` | [mapIdxMAuxSpec](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidxmauxspec.md) | 307 | `declaration-track:db0e5357a41be1ca81f37e101e463cb163a384762b9807990cb9573567205a48` |
| 32 | `theorem` | [mapIdxMAuxSpec_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidxmauxspec-cons.md) | 313 | `result-track:dc9762f5e056446e834307de3416b19bac395e8f94083f84d70b537baae2944d` |
| 33 | `theorem` | [mapIdxMGo_eq_mapIdxMAuxSpec](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidxmgo-eq-mapidxmauxspec.md) | 318 | `result-track:d08f99d333713b08dddc59ee66def772fd99213938c30e0daa09150c7ab9b4cc` |
| 34 | `theorem` | [mapIdxM_eq_mmap_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidxm-eq-mmap-enum.md) | 338 | `result-track:a10ceb32a4ad8aef121df06afa442dc7edf3666d55c99e7265e2dccaf91f552e` |
| 35 | `theorem` | [mapIdxMAux'_eq_mapIdxMGo](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidxmaux-eq-mapidxmgo.md) | 351 | `result-track:c5d7d1687080c6a88bde5a2528a94560ba3f5f00e2c8c085414d40d3adf13866` |
| 36 | `theorem` | [mapIdxM'_eq_mapIdxM](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndexesNamespacedOldMapIdxCore.lean/declarations/mapidxm-eq-mapidxm.md) | 365 | `result-track:7de2ad7416c5cb2f4ebdeb2eb6f3eeb803157035c1c530c8cb02f7ae245dee81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=892a72d67012dc9c02c140b1ccd2c9968f94df3485e7e7dc959183f22e7945cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant8581face035ac762bb742cd1f07eb50209bff26d91b999b2ff01d42c8160e307.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
