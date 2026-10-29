# Verification target: Finite Atlas Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf05caca5bde3f00f496cfffc3ac6b40bdb95aeb",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteAtlasTransport.lean/index.md) · [Full source](../../../../Combinatorics/FiniteAtlasTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf05caca5bde3f00f496cfffc3ac6b40bdb95aeb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37.lean.json)

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
| 1 | `structure` | [CompressionWitness](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/compressionwitness.md) | 19 | `declaration-track:146f8077acdc1bc093ab3cee75e4b49e50a5cf67c84c3d6cc9fd4361fd6c5e80` |
| 2 | `def` | [identity](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/identity.md) | 33 | `declaration-track:392c53380ef46927eabd6f84f62da430bb9f6b82a50e29bd8bce37af19b67c2e` |
| 3 | `def` | [comp](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/comp-source-edition-2.md) | 38 | `declaration-track:f3e3bb2094c16ecbdc6416c598969257ca67dc4b30b0768c9b9d38f675e5e2fe` |
| 4 | `theorem` | [factors_through](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/factors-through.md) | 46 | `result-track:79e880e20ab0d89c0608d029b2cdda4d8bf5d70b8c84b652ea6f9098f8ecd1e4` |
| 5 | `theorem` | [compression_refl](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/compression-refl.md) | 54 | `result-track:8c36fb54f3cbfaf4edac7550afb5c9a57e2f65f4d02a8da8b57b6ea66b18ae0c` |
| 6 | `theorem` | [compression_trans](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/compression-trans.md) | 60 | `result-track:0abc4bafb203a2a0132a681f108912b7153a0aec0938e6592ffab7cc0d5f8ca3` |
| 7 | `structure` | [Object](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/object.md) | 71 | `declaration-track:72b20c34e17d7ef2399c3bbe0d149f09c27ba0be7a0e6b7fe388797891661b4d` |
| 8 | `structure` | [Transport](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/transport.md) | 86 | `declaration-track:74f49c79c485d87ae05ce57ffca5638c2f5dbee46755e6852ca336af0774a0a6` |
| 9 | `def` | [identity](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/identity-source-edition-2.md) | 100 | `declaration-track:62137a2776cc264ffef9cc371f128c93b9ad0e303b90a6526aeea9e1822363ed` |
| 10 | `def` | [comp](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/comp.md) | 107 | `declaration-track:2495d509fc6deed69add32ee4939f66056de6ec7428f887f930b07e250334279` |
| 11 | `theorem` | [comp_assoc_map](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/comp-assoc-map.md) | 115 | `result-track:fb7c1c23b4e6b5654fd1c618b66ef47aa1ad5b644b8787a8ecf36abbae0c2a5c` |
| 12 | `theorem` | [identity_comp_map](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/identity-comp-map.md) | 120 | `result-track:1165d80d0db046c90742c8400bb722e01b9f65aeca088749c4279bbb6b079f05` |
| 13 | `theorem` | [comp_identity_map](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/comp-identity-map.md) | 124 | `result-track:f36e2047602b903acda22f209203095f717554930b10537c65866b69e5b8c51f` |
| 14 | `theorem` | [map_equivalent](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/map-equivalent.md) | 128 | `result-track:25054c34d5979c51d6d686f508cfa37d53630d3f986763bef74983fd5094199b` |
| 15 | `structure` | [Occurrence](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/occurrence.md) | 137 | `declaration-track:e861c99efb442ba14decbd4782db42097ade25e8339f77c9f7a082bcee9d1330` |
| 16 | `abbrev` | [FiniteState](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/finitestate.md) | 145 | `declaration-track:9b820a0df14851f705edf0ed919595d604e23a3db307bcfe6a5b0c6f74d02378` |
| 17 | `def` | [observed](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/observed.md) | 148 | `declaration-track:919141a8686a75ff11f8e68256e14d77c7418efd598c5b96dfd9acadfebf5491` |
| 18 | `def` | [observedRepresentation](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/observedrepresentation.md) | 153 | `declaration-track:4ac499baa27cb266017d7ef488075344c7526a1fb39472879f8caa80e079a848` |
| 19 | `def` | [observationFactor](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/observationfactor.md) | 160 | `declaration-track:3d1552d9c2b898362f7a271decca0270db1e96df9dd01b6555a806e285dc327f` |
| 20 | `theorem` | [observed_minimal](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/observed-minimal.md) | 166 | `result-track:5d258c86ceb5ec84710a96c9f1066e1e983c3f213205050014e7388d45838fc0` |
| 21 | `def` | [observedQuine](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/observedquine.md) | 172 | `declaration-track:d6b285b0ed3042844a7a9c0464b38c1583ac13c6dc944f176372073d068f518e` |
| 22 | `theorem` | [observed_quine_project](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/observed-quine-project.md) | 180 | `result-track:d47268a1bfd3b96b6305e41d35a81664da92b37c68bb5ff6b0375c24e1ebe6f0` |
| 23 | `def` | [paddedRepresentation](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/paddedrepresentation.md) | 184 | `declaration-track:de8f2c58028e27b22b9cb1ae60ec7a667d59ecf39c2a1407c1c8fcb34b83fcc6` |
| 24 | `def` | [forgetPadding](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/forgetpadding.md) | 191 | `declaration-track:24216e5b65b44768532b67874d2115139f2bb5556325cb7d3a86d92e510307c5` |
| 25 | `def` | [alternatePadding](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/alternatepadding.md) | 196 | `declaration-track:64edd0341bfa0d2b8a9851c1086137993936db4dcffc4efa880c2ffb3d824d6c` |
| 26 | `def` | [addPadding](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/addpadding.md) | 201 | `declaration-track:1f0301096dede0d2ac4b1fd4d9580817318f95c26f60320fc925b092448fa1ec` |
| 27 | `theorem` | [full_carrier_factors_not_unique](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/full-carrier-factors-not-unique.md) | 206 | `result-track:b8f24bcc85ffdfc92756666219e0f6664024cb40118fb0fdc37d6eb8cfb98c07` |
| 28 | `theorem` | [mutual_compression_without_carrier_equivalence](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/mutual-compression-without-carrier-equivalence.md) | 213 | `result-track:06416be67444269b4ddcf95884034c513bc48c98806430afeeacdf05b19fc3d5` |
| 29 | `def` | [observedObject](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/observedobject.md) | 225 | `declaration-track:fe1df1f997ad917388e220675c985dc6842d7c9e26ed03795b8ec58fe5300a64` |
| 30 | `def` | [switchSource](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/switchsource.md) | 233 | `declaration-track:888b683f501ed651a911d1ddbee500aaea6efdaca984193ddbb4fbcc4ad0c1ae` |
| 31 | `theorem` | [switch_source_involutive](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/switch-source-involutive.md) | 240 | `result-track:06c7895ea6d0921969b02dcedce2f47bd92a3bc86802341efd004f1fde993777` |
| 32 | `structure` | [Diagram](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/diagram.md) | 246 | `declaration-track:e7dd88de6c9650d62930e68e7ef09629c174f6ed245b277afe0c6f717156bd3e` |
| 33 | `structure` | [Square](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/square.md) | 259 | `declaration-track:c6f29034fc1dd449e070effe6074ea5108a1e5f402fef505ce890563709172c5` |
| 34 | `def` | [switchSquare](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/switchsquare.md) | 272 | `declaration-track:cdc77ceec7a3b83118ef001db2505bec83990b27e0806fe08b2db2990af204a5` |
| 35 | `def` | [parallelDiagram](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/paralleldiagram.md) | 280 | `declaration-track:15ba47c3158bae2bc1cd8e30e8b6d348654c643d53a00c5b74e15de917bd2fc1` |
| 36 | `theorem` | [parallel_occurrences_distinct](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/parallel-occurrences-distinct.md) | 288 | `result-track:2b9f9d72d59eaffdb264352bf4d0c07b5d6414b5230adf5714528715228f74d9` |
| 37 | `structure` | [Witness](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/witness.md) | 292 | `declaration-track:134a52b2f4bc51abd9df532aa8b34f4dd471bcb6ec8c1e85a5a509feb0beb615` |
| 38 | `theorem` | [witness_observation](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/witness-observation.md) | 301 | `result-track:bef56efdd166dd0f53fa1ce3109a5359fe677645fa3cad488a2747d9e131c1b1` |
| 39 | `structure` | [Obstruction](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/obstruction.md) | 310 | `declaration-track:243821dd120a40e969fe28b15c99dab4535774518b3243b1385e39aad230d138` |
| 40 | `theorem` | [obstruction_ne](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/obstruction-ne.md) | 317 | `result-track:c18df05f6f6c0b6560c5ffeacdfc7bddee3435b852e54a2416ba9af0dc855ba8` |
| 41 | `def` | [allowed](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/allowed.md) | 323 | `declaration-track:647e2d9bae8b94ca326304d24a0e7ce0d966b0ac3801ae8d868cc324ac14cdb6` |
| 42 | `def` | [denied](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/denied.md) | 326 | `declaration-track:89da0ddce96c7d54d699493e95b06171eb874b4b1b7d7999fa977383c87b771b` |
| 43 | `theorem` | [parallel_maps_distinct](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/parallel-maps-distinct.md) | 329 | `result-track:05e990ff505e1399eaf9fdca49f11743e3f294cb3495913b9a5ec9b783cbd7d5` |
| 44 | `def` | [switchWitness](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/switchwitness.md) | 337 | `declaration-track:6ab4aed86b80ead849dbf6b8446ba20b49f20aade411b5921f6224ad56709036` |
| 45 | `def` | [oppositeObservation](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/oppositeobservation.md) | 343 | `declaration-track:cdcc240cfc925d92f80cabe87a3782a8a38fb785251396eab70a62d94b082907` |
| 46 | `inductive` | [Effect](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/effect.md) | 351 | `declaration-track:3f2fca1848d4168b3789a687a0ec5d5581f1e84c100d6fff8bed39c387f1a6e4` |
| 47 | `def` | [MayPerform](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/mayperform.md) | 356 | `declaration-track:afc645e1339b192a4eb780551b98adb7bb2c8b2c4fcd863fd825e28ae7870fe6` |
| 48 | `theorem` | [same_observation_distinct_provenance](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/same-observation-distinct-provenance.md) | 359 | `result-track:be80bab3bfd94837bb61c9e85785ec93837f7a158331f565342858d9d1dcc03e` |
| 49 | `theorem` | [transport_does_not_preserve_permission](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/transport-does-not-preserve-permission.md) | 364 | `result-track:e40009a0ccd6946accd4976e4e13810e0118d7f809b95b51b82312b30225e62a` |
| 50 | `theorem` | [sufficient_quine_without_permission](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/sufficient-quine-without-permission.md) | 370 | `result-track:68284669bb76314b818d2be357b3e8326eef7fc3a724f7b82bb24a4269b0f471` |
| 51 | `theorem` | [permission_not_recoverable](../../../../Combinatorics/FiniteAtlasTransport.lean/declarations/permission-not-recoverable.md) | 379 | `result-track:d9640d28fa39ae953d30d8e6658bae6e626ac6030648555e42a22b1e59914735` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81aa3c8baa13f09fd80ff4a0c79badb4fa1d2980a263cae84fe9d85d3a016401 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/E66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37FiniteAtlasTrans/Variante66165f8bf5b5282bb9d91fb29211995ef8217d3d177037d9a99ad013f8bcc37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
