# Verification target: Compactness Locally Compact Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8daae99ac29b2ad06fbe9308dc7fb988c732763",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/index.md) · [Full source](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8daae99ac29b2ad06fbe9308dc7fb988c732763`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyCompact/Variant4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/instance-source-edition-4.md) | 22 | `declaration-track:73f25d1931f1ae070c2f72389ffc141301b85ca3388b5fb61d465f2294e7ee92` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/instance-source-edition-3.md) | 29 | `declaration-track:64bef4b4513283d93b2714219835efed7cc0a635262ab66fee95f6a6c03c89bd` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/instance.md) | 36 | `declaration-track:177039fbe9517bc39acbdee2a858eec51ae016fc8ffc28fafd860c56a58ab00c` |
| 4 | `theorem` | [Topology.IsClosedEmbedding.weaklyLocallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/topology-isclosedembedding-weaklylocallycompactspace.md) | 39 | `result-track:8d02256899b8f2466d835b4ca2d5cd5471e089431993e37237dc525a9c4c919b` |
| 5 | `theorem` | [IsClosed.weaklyLocallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/isclosed-weaklylocallycompactspace.md) | 45 | `result-track:f376be3e6fc10493354f28faa54c5a6a9166c4acd3d6981ff2061567accf0243` |
| 6 | `theorem` | [IsOpenQuotientMap.weaklyLocallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/isopenquotientmap-weaklylocallycompactspace.md) | 49 | `result-track:45d7db285d3f418473e18220b65f63083f24dc9e80a10b5270e89b44051f0bee` |
| 7 | `theorem` | [exists_compact_superset](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/exists-compact-superset.md) | 58 | `result-track:f3973ec8398a106aceaae50c6cfc922c6c09ec7efca8959eec6da42477887cc6` |
| 8 | `theorem` | [disjoint_nhds_cocompact](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/disjoint-nhds-cocompact.md) | 67 | `result-track:d5b53228b42ca643a49ae8c1cf0c8c24153d20a5bccab1cafd54cdee06f186bc` |
| 9 | `theorem` | [compact_basis_nhds](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/compact-basis-nhds.md) | 72 | `result-track:1cbf05b62c3d6e24970dee718803350dfd6fe049539941a0690caf2736f2e8a4` |
| 10 | `theorem` | [local_compact_nhds](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/local-compact-nhds.md) | 76 | `result-track:7ab585aec56019b7ad7a6a1eec5183397419391da399ac157b704db89c3a3413` |
| 11 | `theorem` | [LocallyCompactSpace.of_hasBasis](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/locallycompactspace-of-hasbasis.md) | 80 | `result-track:75a33cb5fc0c6336f227d58a831a800edbb0a4fdd6498359025f928dcaaf7997` |
| 12 | `instance` | [Prod.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/prod-locallycompactspace.md) | 87 | `declaration-track:f20d2c3b7e44d64a5d0343aff3fb476757f9b7156351dd420ce00e02333b4c9f` |
| 13 | `instance` | [Pi.locallyCompactSpace_of_finite](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/pi-locallycompactspace-of-finite.md) | 99 | `declaration-track:1c9acd7a2510c3851237343f121284c486f85acc2053788bddc950697c6c7dc1` |
| 14 | `instance` | [Pi.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/pi-locallycompactspace.md) | 110 | `declaration-track:ff8bc0721921356f4a6735247aca8bdf2fcefa99a73a7a12a840d38a65aa4d76` |
| 15 | `instance` | [Function.locallyCompactSpace_of_finite](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/function-locallycompactspace-of-finite.md) | 128 | `declaration-track:0c34cab23cd80ead33916e9bb3aa196246e77b1b24d7f5561e95c5939566a441` |
| 16 | `instance` | [Function.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/function-locallycompactspace.md) | 132 | `declaration-track:18b0dd232431c83c0e5f78803eb1bf5322da94fe40115b9d33d6fa76d7bef505` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/instance-source-edition-2.md) | 138 | `declaration-track:289a78a7b75d53e56071cf4a5eb588349bb9616a2e1124bba5e3f266d5ec2326` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/instance-source-edition-5.md) | 142 | `declaration-track:7b09c387fff2ebcce3fa0084ad842dee4d3d3400e3fd519bd0656de1b406b21e` |
| 19 | `theorem` | [exists_compact_subset](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/exists-compact-subset.md) | 148 | `result-track:37fd097c1dfaef8ced84d002c6e63cd2004a53c91cb5a77472be955e5c6ea3bb` |
| 20 | `lemma` | [exists_mem_nhdsSet_isCompact_mapsTo](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/exists-mem-nhdsset-iscompact-mapsto.md) | 158 | `result-track:0136f783819cb6c74307560313db20ff0716510ed10ea07a13225cfbb2099176` |
| 21 | `theorem` | [exists_compact_between](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/exists-compact-between.md) | 172 | `result-track:4ae17d03e14bd45468812a6d4d6516dda4e850bf4348fb0d5cadffac8b25933e` |
| 22 | `theorem` | [IsCompact.nhdsSet_basis_isCompact](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/iscompact-nhdsset-basis-iscompact.md) | 179 | `result-track:c071f5fc1349ca982fd5dbce2bc9b3a0fed48792b882f28c3c64cf95e0df4a8e` |
| 23 | `theorem` | [IsOpenQuotientMap.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/isopenquotientmap-locallycompactspace.md) | 186 | `result-track:a73da1d0814b35ce9d0c24c12975bc41778c6416dd7128eaa9b875c5f3ae8ab1` |
| 24 | `theorem` | [Topology.IsInducing.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/topology-isinducing-locallycompactspace.md) | 195 | `result-track:d84eb5ecf275dfc591d810de25c804a0468ba4498c2507f96e1e9696025fc896` |
| 25 | `theorem` | [Topology.IsClosedEmbedding.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/topology-isclosedembedding-locallycompactspace.md) | 208 | `result-track:855359754f7fb919911719d4cd57f544901894a526e1682370929537e0a13883` |
| 26 | `theorem` | [Topology.IsOpenEmbedding.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/topology-isopenembedding-locallycompactspace.md) | 212 | `result-track:1e5f272100764360550a619ef9d5273a00fba35ecd7133819be352884153c6a8` |
| 27 | `theorem` | [IsLocallyClosed.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/islocallyclosed-locallycompactspace.md) | 216 | `result-track:cdd89377a53c4109cf7c3b4c5f7aa08bf6219aeffa17a2673d214b1cbea00ebc` |
| 28 | `theorem` | [IsClosed.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/isclosed-locallycompactspace.md) | 220 | `result-track:70b2ad5234207c1b3a5951af9ea667365ec25cc7f01204b54e2f0d3e62e27cea` |
| 29 | `theorem` | [IsOpen.locallyCompactSpace](../../../../GeneralTopology/CompactnessLocallyCompactPublic.lean/declarations/isopen-locallycompactspace.md) | 224 | `result-track:d9d9cc58cc429c36d494033019d5dc13a0e2e001bb44ba7725e743dc3b117067` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b63a3245e61bc3ec27383992a3ac478016a99841289409a5d999e73262fa22a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyCompact/Variant4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocallyCompact/Variant4b6595bb61a6c53eee398a96f7fb2301cf24f400f82ce9fdfe4ee1d5dd3e64ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
