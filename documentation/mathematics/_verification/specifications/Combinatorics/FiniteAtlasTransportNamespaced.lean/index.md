# Verification target: Finite Atlas Transport Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46601a81a570444cbc0e460f41c9972c954dca6d",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante94074d7673a092b521f4eb963772ef63d0077b388f141773b5640cf290bf14c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46601a81a570444cbc0e460f41c9972c954dca6d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante94074d7673a092b521f4eb963772ef63d0077b388f141773b5640cf290bf14c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante94074d7673a092b521f4eb963772ef63d0077b388f141773b5640cf290bf14c.lean.json)

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
| 1 | `structure` | [CompressionWitness](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/compressionwitness.md) | 27 | `declaration-track:18c6dd09a12fb44d190c4ddff6a91a6fff9382f4d0254d968e5a7636d9bb3851` |
| 2 | `def` | [identity](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/identity.md) | 41 | `declaration-track:16224560c477d7256b4844fef4d45f83807a47e54f0589abea5b6d3a9af03819` |
| 3 | `def` | [comp](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/comp.md) | 46 | `declaration-track:0612de87c7a378ec316e2a6189bb916acde46c9687dc9c3194fcbd20ecfead75` |
| 4 | `theorem` | [factors_through](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/factors-through.md) | 54 | `result-track:fd58be51edaf0a04dc7b108fb8e5361dc8dc571ddbf40521eac91b07ab912822` |
| 5 | `theorem` | [compression_refl](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/compression-refl.md) | 62 | `result-track:bf4c365cb5fc58277f36dde0942775cde6560c6d4636196bbfa221f6ad30de08` |
| 6 | `theorem` | [compression_trans](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/compression-trans.md) | 68 | `result-track:3ff4f246e90924ad72cae8e27967855e392a967b5ffe8fa925160c036d98b48d` |
| 7 | `structure` | [Object](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/object.md) | 79 | `declaration-track:f06aed8e5ce52bd2a369128d8866a9fdcb7beca8f03843925d1bdee767815ee7` |
| 8 | `structure` | [Transport](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/transport.md) | 94 | `declaration-track:b89e1e0d586d326a88a9cb31e7f2cb717259fad214541b59c2e915da76b00d39` |
| 9 | `def` | [identity](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/identity-source-edition-2.md) | 108 | `declaration-track:adf426e2320c2753f3ace638eaf114ae4b088515b38056f5b2287505d160ee5a` |
| 10 | `def` | [comp](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/comp-source-edition-2.md) | 115 | `declaration-track:0afbfd60219de7cf76404536b15e6cfad584a3ca6d3508b39e0ba55599fe2579` |
| 11 | `theorem` | [comp_assoc_map](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/comp-assoc-map.md) | 123 | `result-track:32a75ef8ba6e04bb2812010ee9021394013780af68dbac72662bb0d3fbf0845a` |
| 12 | `theorem` | [identity_comp_map](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/identity-comp-map.md) | 128 | `result-track:0417ffc5f95e82f4f139188095a67708e39d4ac7b3e804b91080e13c243a43e0` |
| 13 | `theorem` | [comp_identity_map](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/comp-identity-map.md) | 132 | `result-track:0f2e258f6c29a2054dc98fdc231c753a318c2ac2169190d389ac6086f5f267ed` |
| 14 | `theorem` | [map_equivalent](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/map-equivalent.md) | 136 | `result-track:065b2e98f6fa058125526690c0f86f816351c259beb98bc1c32bba19aa084cf2` |
| 15 | `structure` | [Occurrence](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/occurrence.md) | 145 | `declaration-track:b640b8b0dc6ea5174a8fb30d36e4ddfd2b1117d412ba02fb4e3290fedfadb685` |
| 16 | `abbrev` | [FiniteState](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/finitestate.md) | 153 | `declaration-track:573573262a45c81233fddadcf211ea153c544c4997748b98d1ab0e656a37c900` |
| 17 | `def` | [observed](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/observed.md) | 156 | `declaration-track:753e55ed97186c1e23f0503677e4eb1ec85bb935d150d98ff457ae01e16eff18` |
| 18 | `def` | [observedRepresentation](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/observedrepresentation.md) | 161 | `declaration-track:3b95f227f397919c25566373406bf66c234aa26fb7737e0a977ee3291ff9a71b` |
| 19 | `def` | [observationFactor](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/observationfactor.md) | 168 | `declaration-track:5c315ba5ac8401d7e8c7b1d49000b2860a352bfbd348040ce76b5b654a8b5000` |
| 20 | `theorem` | [observed_minimal](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/observed-minimal.md) | 174 | `result-track:b4a8d09aac2a37fdcb97f1186c50c6cff5a96d301aa8a64d97f4ea45d967ba53` |
| 21 | `def` | [observedQuine](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/observedquine.md) | 180 | `declaration-track:e73a9c0ecafe5914741ac6c5ac445dbce97d44814c3522f8f49fdbb8f4807a0a` |
| 22 | `theorem` | [observed_quine_project](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/observed-quine-project.md) | 188 | `result-track:62410e98f7084d418d266d54b6cd8d764e31f7385da03eea8e3ba5311abd80a6` |
| 23 | `def` | [paddedRepresentation](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/paddedrepresentation.md) | 192 | `declaration-track:622df5282b7d5934e1bc588a87141d96bea56382a940ebcfcc98d5e6296477fe` |
| 24 | `def` | [forgetPadding](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/forgetpadding.md) | 199 | `declaration-track:b92c9f50173fb290d674c2a7f4e0fc9db0e166e8b3a609954534d1709c01419c` |
| 25 | `def` | [alternatePadding](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/alternatepadding.md) | 204 | `declaration-track:da46c8466240d4b8c984c294e30572336dafbf1dc0b428b0ba725d29290b3f56` |
| 26 | `def` | [addPadding](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/addpadding.md) | 209 | `declaration-track:4dc43c900312c265645dc27b47409128a06999c0c297a0e9a5268b0c41db1418` |
| 27 | `theorem` | [full_carrier_factors_not_unique](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/full-carrier-factors-not-unique.md) | 214 | `result-track:8f231fbb813cccd98a947b66546b4a17ea9cb1d76ad789fa3a31ecf8b1e0f8e9` |
| 28 | `theorem` | [mutual_compression_without_carrier_equivalence](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/mutual-compression-without-carrier-equivalence.md) | 221 | `result-track:725bd8528ce79e3dbc8c8ac13fcdad1c154fadca7c92dbd28cd5a6fa9b43dc24` |
| 29 | `def` | [observedObject](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/observedobject.md) | 233 | `declaration-track:2485653e75dea00cc04a3eace1fae96068fd660c1c1e8583e925885d7f6caa49` |
| 30 | `def` | [switchSource](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/switchsource.md) | 241 | `declaration-track:312ac74a561d30b904d493d599d075cc4b8d72734167741747c7abfc3befceb9` |
| 31 | `theorem` | [switch_source_involutive](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/switch-source-involutive.md) | 248 | `result-track:ff371ec0988241be3b1ec9bb980af043734ad01e83fb801d404578ab4c823d3c` |
| 32 | `structure` | [Diagram](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/diagram.md) | 254 | `declaration-track:28df2472e40f64c7117edb84a80038abc9fa3d83726d3cc7008bdae46df8678d` |
| 33 | `structure` | [Square](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/square.md) | 267 | `declaration-track:83658f67be1db668ee72c56d75e23a1c1c74b688157c4f304b498235cb590a67` |
| 34 | `def` | [switchSquare](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/switchsquare.md) | 280 | `declaration-track:687d13a5e40d69ed490c39b1a10c8da7b4a81b15b25f96e4ec03499e6ed398e4` |
| 35 | `def` | [parallelDiagram](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/paralleldiagram.md) | 288 | `declaration-track:a03ee40e16eecb83606dd8faab19c56fe72224437de6f95204bf81e19f9dc0fb` |
| 36 | `theorem` | [parallel_occurrences_distinct](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/parallel-occurrences-distinct.md) | 296 | `result-track:0aded0d14cd31d195d5444f98bfd51589502c8203b6e603c4aa32f509d8bc9f3` |
| 37 | `structure` | [Witness](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/witness.md) | 300 | `declaration-track:5d17b99a99066cc98adf0ccbfe22cb88cf78bc38c3843d055e14e198b918b37c` |
| 38 | `theorem` | [witness_observation](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/witness-observation.md) | 309 | `result-track:95bb9bdce516129b64c0edd93ec14f901035aa5183a3b284349f07188b763206` |
| 39 | `structure` | [Obstruction](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/obstruction.md) | 318 | `declaration-track:755d3ef03d62abed066e00da0aae842a13fc5748fc6a3b51bc4df7c84b4fee3e` |
| 40 | `theorem` | [obstruction_ne](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/obstruction-ne.md) | 325 | `result-track:85ecfc735af457fdace9264722418e2b6be15f658016a373b0c67c77df0145a4` |
| 41 | `def` | [allowed](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/allowed.md) | 331 | `declaration-track:18a5b765fd2ce5f5818578683cb49cc2a38283ae2fa9e773a8822d7dbe34d22f` |
| 42 | `def` | [denied](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/denied.md) | 334 | `declaration-track:617344aa64a0da836aefd437901b77ce0aaf4a41501655bae098a13922bbb73b` |
| 43 | `theorem` | [parallel_maps_distinct](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/parallel-maps-distinct.md) | 337 | `result-track:3b278d4594be8dfa289f8fb854c49ccd5a500f31750cf5544d85fdd5c2af0e27` |
| 44 | `def` | [switchWitness](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/switchwitness.md) | 345 | `declaration-track:b045a678822905a975230bb2365e0f9b314d2acd45861dbaa575d83adc7e1bcb` |
| 45 | `def` | [oppositeObservation](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/oppositeobservation.md) | 351 | `declaration-track:c6a8ab84390b657a9bf7e3c16bfc3e36d80b6dde8f465cb805906ce708d0e132` |
| 46 | `inductive` | [Effect](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/effect.md) | 359 | `declaration-track:150b5179f54cc3b285c935d2d1291559a66f20e205ca52ccb26011c575354519` |
| 47 | `def` | [MayPerform](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/mayperform.md) | 364 | `declaration-track:996436ef3befcdb24ef2e1401302b41a01c30679d40c7733edb31b14743e863a` |
| 48 | `theorem` | [same_observation_distinct_provenance](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/same-observation-distinct-provenance.md) | 367 | `result-track:47c1f4ea96160111d1e57d8db524c2a5c209bf190a165fbcb25cdbe22263006f` |
| 49 | `theorem` | [transport_does_not_preserve_permission](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/transport-does-not-preserve-permission.md) | 372 | `result-track:a5c6ac54305cf343f1378a62b9ebe9a00e094e35806c0acb19e67e95469006ba` |
| 50 | `theorem` | [sufficient_quine_without_permission](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/sufficient-quine-without-permission.md) | 378 | `result-track:d9a90c8b79bee9c3e2bcd8ddac26735711982478ae9db41ac426ec0bc96a4061` |
| 51 | `theorem` | [permission_not_recoverable](../../../../Combinatorics/FiniteAtlasTransportNamespaced.lean/declarations/permission-not-recoverable.md) | 387 | `result-track:57f6abf9f192fa9b63407cd63615927ac0117cd22d1a9008f1d965a0bb53db4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8c5e700e6eacec8b6dcf37bf7628e01bd153782ac3f05bd629a6f4ab2a0866c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante94074d7673a092b521f4eb963772ef63d0077b388f141773b5640cf290bf14c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante94074d7673a092b521f4eb963772ef63d0077b388f141773b5640cf290bf14c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
