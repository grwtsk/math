# Verification target: Spectral Face Projection Namespaced Spectral Triple Descriptor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2decdb8503a2350fb2a98ee83cf5104134de00e6",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjection/Variant1e52cf321e482199629cc07bc2500669e486737eb285dff3f1b58cfdb5df997b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2decdb8503a2350fb2a98ee83cf5104134de00e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjection/Variant1e52cf321e482199629cc07bc2500669e486737eb285dff3f1b58cfdb5df997b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjection/Variant1e52cf321e482199629cc07bc2500669e486737eb285dff3f1b58cfdb5df997b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.AnalyticMeshPipeline` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.CountableShadowPipeline` — import line 7; external provider; requires a separately pinned dependency.
- `AnalyticNumber.TheoremResolution` — import line 8; external provider; requires a separately pinned dependency.
- `AnalyticNumber.BoundaryCalculus` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SpectralTripleDescriptor](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/spectraltripledescriptor.md) | 28 | `declaration-track:48783708885a10d03a9aa5d7d53fc9ea6e3f5092777425543d2cdc4094507eee` |
| 2 | `structure` | [SpectralFaceRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/spectralfacerequest.md) | 38 | `declaration-track:a561f707eb7d97b432d08170731667598ac8fa3a22d5ccbd191453d21ed5af8e` |
| 3 | `structure` | [ProjectionCacheKey](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projectioncachekey.md) | 50 | `declaration-track:574f2e69d3803ea95ce69dcaae72c408ed9137d1f22b871cf5a5ed633b4903b4` |
| 4 | `structure` | [ProjectedFace](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projectedface.md) | 62 | `declaration-track:920e8f673831a24f6c0f4504ce44af156286c68f4a1230b612f1f9d761279379` |
| 5 | `structure` | [ProjectionCacheCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projectioncachecertificate.md) | 74 | `declaration-track:25cdaf9b17e8ebed6d8be1c1a3c8f78f91aa2066b59309832bcdda45edd6d173` |
| 6 | `inductive` | [ReducerEventKind](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/reducereventkind.md) | 86 | `declaration-track:457d2fdaae8fcb874b419fc8033c426e7f44abb439263bb67292a190b3ee023c` |
| 7 | `structure` | [ReducerNdjsonEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/reducerndjsonevent.md) | 107 | `declaration-track:9b939b49915b8ed0a3355c6b950b6ceaaa5d70b42874b9bdf789f0a7407eb14b` |
| 8 | `structure` | [ReducerNdjsonStream](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/reducerndjsonstream.md) | 122 | `declaration-track:6bee919f3d1b026401e51c6821895098b3847664bcbcc7b4cd0be68dee47965e` |
| 9 | `inductive` | [SpectralOperatorKind](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/spectraloperatorkind.md) | 135 | `declaration-track:5bae5de852e91491253fc4cfc4aec037a16bda8ae5c20333fb21c818139f64e9` |
| 10 | `structure` | [SpectralOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/spectraloperator.md) | 148 | `declaration-track:7d9d1eeac16dbf638f52ff36a15395a69ee2fd2ef904a78e0c3bce5dd4ece4b8` |
| 11 | `inductive` | [HeatCommandKind](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/heatcommandkind.md) | 158 | `declaration-track:27bc80a2861cf2ec19b3f3eebea94244d02bf7952a67bfdca7d98afbb92f7c97` |
| 12 | `structure` | [HeatCommand](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/heatcommand.md) | 167 | `declaration-track:3557d7ff61868d62718086e429dc3ef0f4c817d979cdd9d4160f99ee9fcda002` |
| 13 | `structure` | [HeatMutationWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/heatmutationwitness.md) | 176 | `declaration-track:9cd4b3d4fd6565722919bb88b385513a078ab307370f34f2950832b48b2d8a56` |
| 14 | `inductive` | [NetworkNodeKind](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/networknodekind.md) | 198 | `declaration-track:d17dc65fc0b27fcb7770b41b33a91be380eccecdcfc6361574062bb70cc57b50` |
| 15 | `structure` | [ProjectionNetworkNode](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projectionnetworknode.md) | 213 | `declaration-track:9d4c2caa0c448256530a43158b439947ad7d7af5fce546dd6557db5fc07774f5` |
| 16 | `structure` | [ProjectionNetworkEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projectionnetworkedge.md) | 221 | `declaration-track:92aba435a8e260f081e9b1824be3d3350e79fe682c64e20b861b5628667e0440` |
| 17 | `structure` | [ProjectionNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projectionnetwork.md) | 231 | `declaration-track:2759b7e8906f033d71a536135eadec79c0dbc2f0340055ad36d05976e015d819` |
| 18 | `structure` | [RequestTimeProjectionCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/requesttimeprojectioncertificate.md) | 245 | `declaration-track:fe1859edaadcc85dc06dac636062d6936211a0d886b76d33880d5f473fb5252e` |
| 19 | `def` | [UrlQueryProvesSpectralTriple](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/urlqueryprovesspectraltriple.md) | 272 | `declaration-track:d1c55c487e9ce77c5cd5da32a08915605a9d3cb878d8814fbfc19d4f429a7649` |
| 20 | `def` | [SpectralTripleDescriptorProvesSpectralGeometry](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/spectraltripledescriptorprovesspectralgeometry.md) | 273 | `declaration-track:72daf144db5cc75204b563109e4a360f077fa2afdd0e8f35c9e269c6eae0719e` |
| 21 | `def` | [ProjectedFaceProvesAnalyticTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projectedfaceprovesanalytictheorem.md) | 274 | `declaration-track:6847ba53675b2291c09ec38233f8f37a2dfa74d42ed14437ad10b499434ed268` |
| 22 | `def` | [CacheEntryOwnsTheoremAuthority](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/cacheentryownstheoremauthority.md) | 275 | `declaration-track:dc98682566cea051f2a9b53e67afbdad1bdc5893809013538a013b8ea4f64574` |
| 23 | `def` | [ReducerStreamProvesMathematics](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/reducerstreamprovesmathematics.md) | 276 | `declaration-track:4c2b903d3af38922ac10f3ccf22b4fcb2c8d0cad35834c48cd05a3bec5287b13` |
| 24 | `def` | [HeatMutationProvesAnalyticTruth](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/heatmutationprovesanalytictruth.md) | 277 | `declaration-track:84530a1325fa1612dbde0709c68e78f3f7851efcb0a978876a4e9ee6be654d7c` |
| 25 | `def` | [SpectralOperatorCreatesAuthority](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/spectraloperatorcreatesauthority.md) | 278 | `declaration-track:03a232dbacebb563e246d24bee7a85b5c65cc1f0c635870f6f55e6667e4ec4fb` |
| 26 | `def` | [DomNodeIsProof](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/domnodeisproof.md) | 279 | `declaration-track:5e479eed21001fee33e0e920287fc86f1a1041faee98314da1417080747b26b0` |
| 27 | `theorem` | [url_query_not_spectral_triple_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/url-query-not-spectral-triple-authority.md) | 281 | `result-track:5ebaec65fd57b5e2ed9f43ca9a16b213067a69bbb3052ae7515828acac2b124c` |
| 28 | `theorem` | [spectral_descriptor_not_spectral_geometry](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/spectral-descriptor-not-spectral-geometry.md) | 287 | `result-track:a4be4fb1ef50bf73d19aafa93cf58a01c8fa96a5d9dbe84912dc69fbb7b29dc1` |
| 29 | `theorem` | [projected_face_not_analytic_theorem](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projected-face-not-analytic-theorem.md) | 293 | `result-track:ef104483b87e8c08e667f8a385565625353a65b75ddf91273dd30bc3b718c7e6` |
| 30 | `theorem` | [cache_entry_not_theorem_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/cache-entry-not-theorem-authority.md) | 299 | `result-track:da6934f710da990ef5c6daa2f3f29b353c63801729baa403736330a763506aa2` |
| 31 | `theorem` | [reducer_stream_not_mathematics_proof](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/reducer-stream-not-mathematics-proof.md) | 305 | `result-track:06af1c1d599992ce3f34e34b300c2e5b7c633d862920962e1657d05337aef42e` |
| 32 | `theorem` | [heat_mutation_not_analytic_truth](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/heat-mutation-not-analytic-truth.md) | 311 | `result-track:8817b9ce53cff473cb9c136348550259425c555af051f91d0c74681b0dff4981` |
| 33 | `theorem` | [spectral_operator_not_authority_creator](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/spectral-operator-not-authority-creator.md) | 317 | `result-track:210c0899ca73382bba5d698340f4b2e46bc6e51b596744ca8f41b867adf39652` |
| 34 | `theorem` | [dom_node_not_proof](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/dom-node-not-proof.md) | 323 | `result-track:bfa2e03ff54cb2a053d0f919c690de2c9e62c3d6b92ab0004ee248cb3ef2aa8d` |
| 35 | `theorem` | [heat_mutation_witness_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/heat-mutation-witness-sound.md) | 329 | `result-track:8c23605dfd45e0d5d352366741d73d8fc06de585cdc2ad2d6f95e966e9ad5a7d` |
| 36 | `theorem` | [reducer_ndjson_stream_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/reducer-ndjson-stream-sound.md) | 342 | `result-track:1e6645c0765afee0deab09fc94fbfb448e4485212d23e5e8b94b16395e8a039c` |
| 37 | `theorem` | [projection_network_composition_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projection-network-composition-sound.md) | 353 | `result-track:4495c3ec1ad1d448d809414b16da8e9458b1446e985554fc5b9e645cd4396e7a` |
| 38 | `theorem` | [projection_cache_replay_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/projection-cache-replay-sound.md) | 364 | `result-track:09c7e55a26d68e59bd4db38cb796fdf7c8a006d3afc691f56ff41b705b54a1a5` |
| 39 | `theorem` | [certified_request_time_spectral_face_projection](../../../../../ComputerScience/AlgorithmsInComputerScience/SpectralFaceProjectionNamespacedSpectralTripleDescriptor.lean/declarations/certified-request-time-spectral-face-projection.md) | 373 | `result-track:52c67dd6ac703e213e73c53d755f0a91b8a6063c2107c331d1cfc0f7e12df304` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56521b4bc7291bfc8e26f959ac73c247dd6ace5e60743a8f9b785f2ee7cfb255 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjection/Variant1e52cf321e482199629cc07bc2500669e486737eb285dff3f1b58cfdb5df997b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SpectralFaceProjection/Variant1e52cf321e482199629cc07bc2500669e486737eb285dff3f1b58cfdb5df997b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
