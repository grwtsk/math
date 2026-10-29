# Verification target: Finite Atlas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5f34c2a6517eb6a15bfb7d111016449e2303c14",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant567a65d63668848c16d83b517852c874ec3871c772ce3b607aa3fd1a7287c79b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteAtlasNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/FiniteAtlasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5f34c2a6517eb6a15bfb7d111016449e2303c14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant567a65d63668848c16d83b517852c874ec3871c772ce3b607aa3fd1a7287c79b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant567a65d63668848c16d83b517852c874ec3871c772ce3b607aa3fd1a7287c79b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Certification` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompressionWitness](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/compressionwitness.md) | 27 | `declaration-track:d6cf918478277b61935079956fe065d2f1bfa9b5101bac2cddb55b14fa1580a2` |
| 2 | `def` | [identity](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/identity-source-edition-2.md) | 41 | `declaration-track:f744b0570c1be954e9df0572d25029d1950070973de965753d0fcc312667e8aa` |
| 3 | `def` | [comp](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/comp.md) | 46 | `declaration-track:38404639c79063eebc6fb2d787caa2ae8da70616aadd45b83eb207283eef0436` |
| 4 | `theorem` | [factors_through](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/factors-through.md) | 54 | `result-track:da0cc6b039b8cf89dea1337a459b9c11d1f4cd21f80e1c9289970082e1fb735b` |
| 5 | `theorem` | [compression_refl](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/compression-refl.md) | 62 | `result-track:a621fa264a73c1d61951ecfe355cf795faf7e63c2be36fe018418c09e0b59e8e` |
| 6 | `theorem` | [compression_trans](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/compression-trans.md) | 68 | `result-track:936023d5ea12067e4db33eeed46a4ed42fca9fa079c1eb84a882a2b138164967` |
| 7 | `def` | [compressionPreorder](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/compressionpreorder.md) | 81 | `declaration-track:6258d3085c82a81e88d4d458a69118624775714f93e3777740b37ae66d9a79ff` |
| 8 | `structure` | [Object](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/object.md) | 89 | `declaration-track:0da6b982eb860504ee884b12cef2e023008e37acca9367c9598bf7f8db0fa794` |
| 9 | `structure` | [Transport](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/transport.md) | 104 | `declaration-track:bacf33b7784904e938e2ca8bc212a5936e5e4671879fb2fe3283b769474c78ac` |
| 10 | `def` | [identity](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/identity.md) | 118 | `declaration-track:1e9c751a6d063bfc3262a69ecba50e3df4ccc3e864d9ddc26fb8c273bcb7c7de` |
| 11 | `def` | [comp](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/comp-source-edition-2.md) | 125 | `declaration-track:5bfedbbaeb2e2ca2c924c3bfc3e27e097b73b8daa9df31a0faf304ba1f8bab05` |
| 12 | `theorem` | [comp_assoc](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/comp-assoc.md) | 133 | `result-track:7e45eb6d09276f1f94a150c0d466ce099815b8ff915d92259cd803d6c5472787` |
| 13 | `theorem` | [identity_comp](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/identity-comp.md) | 138 | `result-track:78191a7877bd5273a52cbeaecedba840203706ad5d79d457f1bf7d84e71d6afb` |
| 14 | `theorem` | [comp_identity](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/comp-identity.md) | 142 | `result-track:a0e2a1f0ec9f9296789b4c8406ced494f0b668dc83adadc8a920deb2942c6ad8` |
| 15 | `theorem` | [comp_assoc_map](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/comp-assoc-map.md) | 146 | `result-track:5ad579cd82c36097260e4dde5a822277a4a4227f97b007e4e04a13c1d6d4ac8f` |
| 16 | `theorem` | [identity_comp_map](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/identity-comp-map.md) | 151 | `result-track:9bdda36228262e73d2455aae6f6466126f7614a90495bc20c5f1fcaa5539a038` |
| 17 | `theorem` | [comp_identity_map](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/comp-identity-map.md) | 155 | `result-track:f1783a45040cd92e6d311ea02aab3c969d1e64a1a6c8f2a859edc1e36e3494eb` |
| 18 | `theorem` | [map_equivalent](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/map-equivalent.md) | 159 | `result-track:a5812783d32b4c01ece6b5f82fb5772d79d7efc42cb3983ed22f41dbf9751de6` |
| 19 | `structure` | [Occurrence](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/occurrence.md) | 168 | `declaration-track:9501768d752a14cbf837c94122562599d33b4d1b41725ee05d07f57c4da1094b` |
| 20 | `abbrev` | [FiniteState](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/finitestate.md) | 176 | `declaration-track:180486d15d9b070e55d5efaa6feaeb5d51ec71599e0b887fbfe699efa776ec75` |
| 21 | `def` | [observed](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/observed.md) | 179 | `declaration-track:ece88275c9c414824a7164692dfb0bfd6c703e0e47394d78547cedb578cc5500` |
| 22 | `def` | [observedRepresentation](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/observedrepresentation.md) | 184 | `declaration-track:c900aee178ebf8345ce8e0a5edfe92d44e370cb6d5cfd3e5e9f690b8ef1d4cff` |
| 23 | `def` | [observationFactor](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/observationfactor.md) | 191 | `declaration-track:79e1ae3873afd049d6dcbf03f33e38d394efaf81ede10c75cd8b7685db4e2081` |
| 24 | `theorem` | [observed_minimal](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/observed-minimal.md) | 197 | `result-track:7aba2e0e6efa999805fe524ab0634e8c147948e64c29a08b99b5ed37ace4703a` |
| 25 | `def` | [observedQuine](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/observedquine.md) | 203 | `declaration-track:e3abe237847d77d09bcf84696c7c3a570868636abf6cf70f27e000cb9f733d89` |
| 26 | `theorem` | [observed_quine_project](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/observed-quine-project.md) | 211 | `result-track:7d61f86dd1b0a056ba82800668ffd203079dfdfebcdf66bdad4daca086bd0f0e` |
| 27 | `def` | [paddedRepresentation](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/paddedrepresentation.md) | 215 | `declaration-track:1f2b2326ed05f8c451dcacd334ad220e7ceab5253d91922d901f0ef9832b2d0c` |
| 28 | `def` | [forgetPadding](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/forgetpadding.md) | 222 | `declaration-track:181b2317de38031bb845f405e6d47187bbe2a592bae3924e2c7197f14023da4d` |
| 29 | `def` | [alternatePadding](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/alternatepadding.md) | 227 | `declaration-track:2f2bde79f5053b733b7326c751fb3a5f6bb317deebb4f8e62ef1950caf81c495` |
| 30 | `def` | [addPadding](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/addpadding.md) | 232 | `declaration-track:a79c9a2670289d7e3c2bf0877adca7b7965c1743983d7d5daf11353f16766309` |
| 31 | `theorem` | [full_carrier_factors_not_unique](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/full-carrier-factors-not-unique.md) | 237 | `result-track:00e2f5c1731ef46eeb610ef043883d21a534f78ef83add27f257cede9652f96c` |
| 32 | `theorem` | [mutual_compression_without_carrier_equivalence](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/mutual-compression-without-carrier-equivalence.md) | 244 | `result-track:e34375c5af2f9dc78a6135b8ae38cd2e0ff8eed3669715876f4ec4c9dc5a2be8` |
| 33 | `def` | [observedObject](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/observedobject.md) | 256 | `declaration-track:7d47fd49214cf12a30d68b990ac0f7d89bf846c79dc78aaee82f1952a945744e` |
| 34 | `def` | [switchSource](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/switchsource.md) | 264 | `declaration-track:c4e62c8203dbb8102152ca2322254ab92f8d03d3b0689911357e154900042999` |
| 35 | `theorem` | [switch_source_involutive](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/switch-source-involutive.md) | 271 | `result-track:659598cf8081d2b91bd8665bb3c995453c897aae311de198f88b957eeec016e5` |
| 36 | `structure` | [Diagram](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/diagram.md) | 277 | `declaration-track:d73c168d0c262577b662d7076daa41ed77d9df5cbcc3d2482f7b6a70c569876b` |
| 37 | `structure` | [Square](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/square.md) | 290 | `declaration-track:01c469907978060ec5c819e1c28bf4a452d3bf8b8e5650e6ff94852b03af7483` |
| 38 | `def` | [switchSquare](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/switchsquare.md) | 303 | `declaration-track:a05fce29b9b5623c139ca773438902245f58fb8481cf1fe56dbfe644425ab948` |
| 39 | `def` | [parallelDiagram](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/paralleldiagram.md) | 311 | `declaration-track:ce0de2a12d550151ebe45400261d83d8c12dbfda8ccaf5998692d70da92d154c` |
| 40 | `theorem` | [parallel_occurrences_distinct](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/parallel-occurrences-distinct.md) | 319 | `result-track:ee8ab949fc11b09b04102a06a772704887aaeb94fd236ef3b138b6625bd514d8` |
| 41 | `structure` | [Witness](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/witness.md) | 323 | `declaration-track:c3130a9aa929c1a6e3a518103a7a86c08a7a84a5c5761af91681d1cc907be580` |
| 42 | `theorem` | [witness_observation](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/witness-observation.md) | 332 | `result-track:17f5c9545f9b7447a0129920e234f48e3ba46ff8e18713f7053d0c0f2a61bf4e` |
| 43 | `structure` | [Obstruction](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/obstruction.md) | 341 | `declaration-track:695333cdc6b1810b1deb11e898dcc7477594a9506f32772f173cddc7232c660b` |
| 44 | `theorem` | [obstruction_ne](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/obstruction-ne.md) | 348 | `result-track:52b9f467d13e0de494e7612a18e23614fc623fdf49d430f867f5e24fd5de0764` |
| 45 | `def` | [allowed](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/allowed.md) | 354 | `declaration-track:43d423c9dbdfb7463b30bbc55dc28b583d2c3754be7a5156ceaf2c6d35115e08` |
| 46 | `def` | [denied](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/denied.md) | 357 | `declaration-track:04e98716c15521375fcbf682e336e8e2e21fa8539eaa6a6eacad236a7aad362c` |
| 47 | `theorem` | [parallel_maps_distinct](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/parallel-maps-distinct.md) | 360 | `result-track:dac33f4377a3bf247155d2aa3cc9cf7a621a0968a228e394e0e43faee890ef04` |
| 48 | `def` | [switchWitness](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/switchwitness.md) | 368 | `declaration-track:475360d366c4228668db0d7d5c092b51c57fa20645df3f95112e79d94761eaf5` |
| 49 | `def` | [oppositeObservation](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/oppositeobservation.md) | 374 | `declaration-track:62ff48c76ffc35a5eb11acb4debdef746626a6cf5651330258703ce7bbfa39e2` |
| 50 | `inductive` | [Effect](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/effect.md) | 382 | `declaration-track:dbfe6915c0dd36d3236ffdffca56c31ef6874cd351508b9dca68df79636bc7f6` |
| 51 | `def` | [MayPerform](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/mayperform.md) | 387 | `declaration-track:2cc52d34bc399093cbc7792dc378d332327dcf2c52f85b636963062baa0a1ddc` |
| 52 | `theorem` | [same_observation_distinct_provenance](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/same-observation-distinct-provenance.md) | 390 | `result-track:1f39d0d019b518e813c2e8d3a3edac92bc0e014ff1924134c9266f93edfdc139` |
| 53 | `theorem` | [transport_does_not_preserve_permission](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/transport-does-not-preserve-permission.md) | 395 | `result-track:3477829c1b1af8db9fce5597988d4ea0d4571ad4fe5fade8f9cf1e5ab87e9346` |
| 54 | `theorem` | [sufficient_quine_without_permission](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/sufficient-quine-without-permission.md) | 401 | `result-track:b90ab9c0e2ea864ea05129991fe21540b7933fc8decf2a642f8bcdcb5fbdb1f0` |
| 55 | `theorem` | [permission_not_recoverable](../../../../Combinatorics/FiniteAtlasNamespaced.lean/declarations/permission-not-recoverable.md) | 410 | `result-track:a045b296e792d9eb095d772e88c7a2948d920c231e9e5f33719331a20dc0ea7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26db9a516bf188f40f56e3b6f3922cbb485924b0b8bb9b237b00e0c194a9e2c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant567a65d63668848c16d83b517852c874ec3871c772ce3b607aa3fd1a7287c79b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant567a65d63668848c16d83b517852c874ec3871c772ce3b607aa3fd1a7287c79b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
