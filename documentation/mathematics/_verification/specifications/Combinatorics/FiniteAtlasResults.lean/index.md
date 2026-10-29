# Verification target: Finite Atlas Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e754023bd3b4a067546c8d028af858624a318b9",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant3871d57836486f478d7b9398e7ec69e3e0a6fe005fc305725649e204d65f82ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteAtlasResults.lean/index.md) · [Full source](../../../../Combinatorics/FiniteAtlasResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e754023bd3b4a067546c8d028af858624a318b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant3871d57836486f478d7b9398e7ec69e3e0a6fe005fc305725649e204d65f82ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant3871d57836486f478d7b9398e7ec69e3e0a6fe005fc305725649e204d65f82ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Certification` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompressionWitness](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/compressionwitness.md) | 19 | `declaration-track:d4343852c0d6d3eea1e76e2137dd04d96ba4cf7c4cdbafef43f73d4a6f6e1cd0` |
| 2 | `def` | [identity](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/identity-source-edition-2.md) | 33 | `declaration-track:87da983a37377fbdcab729f3e6215b197698507d4fb12522b22307dc5c47979d` |
| 3 | `def` | [comp](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/comp-source-edition-2.md) | 38 | `declaration-track:8f8ad7a173875e08406d4c899ee1585df850d8cd9cfe942c9c8c57403ea637b2` |
| 4 | `theorem` | [factors_through](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/factors-through.md) | 46 | `result-track:8e5d4efc1162e8881f09f99eb4b1aa7c0c883e0ee600d53fd2419ed38a8d754b` |
| 5 | `theorem` | [compression_refl](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/compression-refl.md) | 54 | `result-track:23e3e456fc2556ef489ebaae8e66b6e4e8ab91d4799f740560b8cde1ef1d7a14` |
| 6 | `theorem` | [compression_trans](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/compression-trans.md) | 60 | `result-track:cb8ca1aeabb00e4ab9817416f3c17073415f4d80c0bac3d57e340d66200af604` |
| 7 | `def` | [compressionPreorder](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/compressionpreorder.md) | 73 | `declaration-track:28d8b248837b2c078f37707b6f6411f22cde706f48cec75d0384b9f7572c64d7` |
| 8 | `structure` | [Object](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/object.md) | 81 | `declaration-track:308185e83861cf1cff3737489d98852a872ec79bc46531e29e393445a9381228` |
| 9 | `structure` | [Transport](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/transport.md) | 96 | `declaration-track:27bd90ae1a7436136785feb639b09c383aa0060080c0871f5dfabdcc61a353c3` |
| 10 | `def` | [identity](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/identity.md) | 110 | `declaration-track:081c9fa6c5009ee0622b7ac73962cc71d6c6f99cc7d166a81306d0d7660126e5` |
| 11 | `def` | [comp](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/comp.md) | 117 | `declaration-track:487de7abd17c5b778c6aa27648cb9e91546dabe7c8c44a88a9bf497cfbddbed3` |
| 12 | `theorem` | [comp_assoc](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/comp-assoc.md) | 125 | `result-track:3e6c68a0d6ceb3db17ed25949d8aeb25930f7bc6e241d10f01716253a72e338e` |
| 13 | `theorem` | [identity_comp](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/identity-comp.md) | 130 | `result-track:33e59251e5c6a4d5bf08367632b4e7009f7b32cf45964b9638030c53593bf4db` |
| 14 | `theorem` | [comp_identity](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/comp-identity.md) | 134 | `result-track:5fc177f110c374bf0b7354c585028adff3a5e874f2220af83729648f57cc7de6` |
| 15 | `theorem` | [comp_assoc_map](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/comp-assoc-map.md) | 138 | `result-track:7e4a2fe0c2c3ea063392029fb0a58ce7a3d7c62f7c9d0a3168d8eca341b1e0e4` |
| 16 | `theorem` | [identity_comp_map](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/identity-comp-map.md) | 143 | `result-track:d36db86383344c89f69daff7a101d537c6c09c0bcc5bc530ccb8a09c6fe11afb` |
| 17 | `theorem` | [comp_identity_map](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/comp-identity-map.md) | 147 | `result-track:d48ce5f01ddd7b185a37b4b53e2e495d7bda7a248daebb81d616130f2a38e8e8` |
| 18 | `theorem` | [map_equivalent](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/map-equivalent.md) | 151 | `result-track:3e7056a57da956dd0cfeecfaf7886e61d4e7d44232d2d5ab42bfb583015e3754` |
| 19 | `structure` | [Occurrence](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/occurrence.md) | 160 | `declaration-track:7c5c6a5869c060e57418ea1bf129d9be1d6cfcea940f8b1fc7dab9fd0a2084a9` |
| 20 | `abbrev` | [FiniteState](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/finitestate.md) | 168 | `declaration-track:17040430f2e2e70897bdf01e5fefd014d7e44ca9ebc40c48c7064312d8f1d49b` |
| 21 | `def` | [observed](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/observed.md) | 171 | `declaration-track:ee51823557c77535c4b4c99797138145a719ed0b27fdd1fcb000fec2b72666cf` |
| 22 | `def` | [observedRepresentation](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/observedrepresentation.md) | 176 | `declaration-track:eae0c388ac26ff533d9bb30b0d71e8109cfe5d31f71ed93a0bef721180672262` |
| 23 | `def` | [observationFactor](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/observationfactor.md) | 183 | `declaration-track:2663ccc8d67fd711d0c63c77647d1523098626d4e5a7e53ef906ac63d4ac80d8` |
| 24 | `theorem` | [observed_minimal](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/observed-minimal.md) | 189 | `result-track:ede45a43d3951fbd4353f5a1fbdc2122667eec5b0315b6c23dc4104052bf929e` |
| 25 | `def` | [observedQuine](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/observedquine.md) | 195 | `declaration-track:a7d814a9d34a65973c2c9215e6af9e917d0bb1617652746acb5d8346c8850102` |
| 26 | `theorem` | [observed_quine_project](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/observed-quine-project.md) | 203 | `result-track:72650b1e2a25e224a1eeef0bf3e891c4f287e0ad8e490bf05745de7b834797c6` |
| 27 | `def` | [paddedRepresentation](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/paddedrepresentation.md) | 207 | `declaration-track:f36a53407f9f2c42f7328dec2a079ae3518f21e694351ad1e0433b89dace94a5` |
| 28 | `def` | [forgetPadding](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/forgetpadding.md) | 214 | `declaration-track:fc7621082e3878284f55764fb6c9d892b4b10895f89ffde761499cf8c947c32d` |
| 29 | `def` | [alternatePadding](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/alternatepadding.md) | 219 | `declaration-track:cdeaa7ca8dcebb8a4708a7945df7cc621136e6c21d775d62c54dd64e764ff4e9` |
| 30 | `def` | [addPadding](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/addpadding.md) | 224 | `declaration-track:e34a5bc05c7cb776431ca4a4538251ef4845715bd066bf11a2c621c1bd5e6ac8` |
| 31 | `theorem` | [full_carrier_factors_not_unique](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/full-carrier-factors-not-unique.md) | 229 | `result-track:91b87acbe1de19ee8eb38b388761c1269bf39b769046690f78c56963d9ac5759` |
| 32 | `theorem` | [mutual_compression_without_carrier_equivalence](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/mutual-compression-without-carrier-equivalence.md) | 236 | `result-track:c1eb689b68dfbdb295b6b09d4c9c866e94dcc2174d199f2d00c55da89112385a` |
| 33 | `def` | [observedObject](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/observedobject.md) | 248 | `declaration-track:c4ff965c75f66fa22bdf0b184c3a89895473b78c19110deedcf08c2ca7ed1bcc` |
| 34 | `def` | [switchSource](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/switchsource.md) | 256 | `declaration-track:ca7d5c460761e80e5096d63b16f658e0823e92e00e549539a9d10f5314d2b441` |
| 35 | `theorem` | [switch_source_involutive](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/switch-source-involutive.md) | 263 | `result-track:86f42a7ba442a3f3e07c0600995ea868cc2983c81fd52784b3d4d1744da937b6` |
| 36 | `structure` | [Diagram](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/diagram.md) | 269 | `declaration-track:4831d6e5c438ec5172a694f103b5c24fc5294b08df9d1481b2086e0539020261` |
| 37 | `structure` | [Square](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/square.md) | 282 | `declaration-track:9d6262308ed45439ab340a6f3fcae74f3a7c98f217d5bcb65a63826758143ad9` |
| 38 | `def` | [switchSquare](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/switchsquare.md) | 295 | `declaration-track:1f0e547ec38c0a43bf3559db737d2e7666701968290eb4fd03e7955727b9d859` |
| 39 | `def` | [parallelDiagram](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/paralleldiagram.md) | 303 | `declaration-track:6f7e5a7e97d043cd2ea406b9fc54eb1ad83df43b9843410d9219a9464da78975` |
| 40 | `theorem` | [parallel_occurrences_distinct](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/parallel-occurrences-distinct.md) | 311 | `result-track:72d8ef9c4c6e00fda23e6482fd8dff3cd0302d382ef8b33fcff535dfa73eb478` |
| 41 | `structure` | [Witness](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/witness.md) | 315 | `declaration-track:c03b9907febeb4148c93552577dc7e9e3cb0240c06bcef4e974434e89c41c6b7` |
| 42 | `theorem` | [witness_observation](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/witness-observation.md) | 324 | `result-track:bd264bccec19b70563a7bf199290868a12d2aa755bca9a246aa27abbcb8a90d7` |
| 43 | `structure` | [Obstruction](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/obstruction.md) | 333 | `declaration-track:6feef5bb43afd8afa9afcd1df2b5a45e6defdf87f0c6d943c9b92f0c612d83b4` |
| 44 | `theorem` | [obstruction_ne](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/obstruction-ne.md) | 340 | `result-track:1cba7c25feaf03da47c03ff521c5b3e7fb5e3654a581461fb5e018abb001512c` |
| 45 | `def` | [allowed](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/allowed.md) | 346 | `declaration-track:87d08c697df8c17d411d481eca678ed1537201e1b9379f09a7d7263be9d7c132` |
| 46 | `def` | [denied](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/denied.md) | 349 | `declaration-track:825e517d1496e3b90c27eb11cf0ef6f2d1bd5bc262cc24ab2e148a0a8fe038b0` |
| 47 | `theorem` | [parallel_maps_distinct](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/parallel-maps-distinct.md) | 352 | `result-track:0077b190598ad4a2513f0d1b64fc1b140f85416253106f1660f1e77684c18afa` |
| 48 | `def` | [switchWitness](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/switchwitness.md) | 360 | `declaration-track:070719f38fd2ad6f7bd24adfb3dd8a01def9837b52cf81b66583282e61ad9295` |
| 49 | `def` | [oppositeObservation](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/oppositeobservation.md) | 366 | `declaration-track:e65e25b30ebc03f38cf47072da9ecf67f1d6e1f86fc853cafc2d0a677811a038` |
| 50 | `inductive` | [Effect](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/effect.md) | 374 | `declaration-track:fc9b8264dcdc0ba58bac53c6e0afce77a5201ddd256cd5d0be45e0d4fd8c55c0` |
| 51 | `def` | [MayPerform](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/mayperform.md) | 379 | `declaration-track:5610a60389e6d7706a4fc26edbd55af786be2ea6942b3022469385f81665d8f8` |
| 52 | `theorem` | [same_observation_distinct_provenance](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/same-observation-distinct-provenance.md) | 382 | `result-track:87beda451a03a0105b2b4ede6f5feb6226341f0e1dbdb720ee745ee89516cf86` |
| 53 | `theorem` | [transport_does_not_preserve_permission](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/transport-does-not-preserve-permission.md) | 387 | `result-track:e26af1b5d121c2f0da667c823d3d073577bede445be15ac0992497298e7b11c8` |
| 54 | `theorem` | [sufficient_quine_without_permission](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/sufficient-quine-without-permission.md) | 393 | `result-track:55a76b8813277d93897adc9dbf02e879840a34ed1b54af19a3806e7e265606fb` |
| 55 | `theorem` | [permission_not_recoverable](../../../../Combinatorics/FiniteAtlasResults.lean/declarations/permission-not-recoverable.md) | 402 | `result-track:9df6cda1501ef94194df3ccc017aad361134294200d353a8ef673391a45a31f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08724009733363d6da3e4d189fc2b547a7d9670ff9810edf5d9f482b97bf52ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant3871d57836486f478d7b9398e7ec69e3e0a6fe005fc305725649e204d65f82ef.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant3871d57836486f478d7b9398e7ec69e3e0a6fe005fc305725649e204d65f82ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
