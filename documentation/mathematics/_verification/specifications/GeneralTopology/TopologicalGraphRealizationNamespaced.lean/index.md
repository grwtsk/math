# Verification target: Topological Graph Realization Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e81e974526d9205dffc8b5af88137173536579b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e81e974526d9205dffc8b5af88137173536579b`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledSpherical.AdmittedGraph` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.Topology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GraphPrePoint](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphprepoint.md) | 34 | `declaration-track:91ce5dfc24956d1f22caa31c5a020d38a1779cccfe11bbb51b27ff4d5a5e623c` |
| 2 | `inductive` | [GraphEndpointEqv](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphendpointeqv.md) | 46 | `declaration-track:18f98ff7b32a372a343384f38ff19b2ba29ae1b9c389d2edecd0b3a1fd2bde97` |
| 3 | `theorem` | [graphEndpointEqv_minimal](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphendpointeqv-minimal.md) | 66 | `result-track:5bf5b25fe02fffbf0ef84ace209fe808c1fabfd3f8ccbf1f8e34c6d78d4d7caf` |
| 4 | `def` | [graphEndpointSetoid](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphendpointsetoid.md) | 86 | `declaration-track:9bd0a4291b4a1a38bf93ddd2538f3e9f55707544c06ca6a69887d0ce0a556419` |
| 5 | `def` | [GraphPoint](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphpoint.md) | 98 | `declaration-track:3ed8d41a157807b8e673ab4ca0bb73826b262ec8876e71c23849c48b9551db5a` |
| 6 | `def` | [graphQuotientMap](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphquotientmap.md) | 105 | `declaration-track:b295d6b207defd9e2117bb76c3088ad9994f1e0da235f957c104c20d8d53796b` |
| 7 | `def` | [quotientMap](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/quotientmap.md) | 112 | `declaration-track:b1b33c06f5903d5e8a9f36b7d6a84001ba614379166393e1bb3d2ec1c0be053d` |
| 8 | `def` | [vertexPoint](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/vertexpoint.md) | 119 | `declaration-track:cb6bdc3843e85274bb11c7fda0130b987a4f3199b2149ddd1d8329624853c947` |
| 9 | `def` | [edgePath](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/edgepath.md) | 126 | `declaration-track:a6d422c2dcfb22ca2425b99dbdb97f3d8ac076ee9de24140291229aa4123a7b2` |
| 10 | `theorem` | [edgePath_zero](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/edgepath-zero.md) | 133 | `result-track:440073ba73dcbcf077137bd3b50b7d9af0d5ff3a238d56b4890784b9a7ba8387` |
| 11 | `theorem` | [edgePath_one](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/edgepath-one.md) | 140 | `result-track:6f07fd97c90ed9429a0e9808d4e53f218511a70265d2e88a12f8d65a6a8c8361` |
| 12 | `def` | [VertexFiberTag](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/vertexfibertag.md) | 151 | `declaration-track:f6560148727b9530ea60d791d2a13c3d70ec258393ee3da2e581ce227ea58adf` |
| 13 | `theorem` | [graphEndpointEqv_preserves_vertexFiberTag](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphendpointeqv-preserves-vertexfibertag.md) | 160 | `result-track:009f50bbcc40de1caa0ea6bc7cf5f9188398a2c062803a90a9ed642626fda174` |
| 14 | `theorem` | [vertexPoint_injective](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/vertexpoint-injective.md) | 189 | `result-track:fbf57a6268126d4e4b34c82586f28b14137a055f55e38221dfff0e90b0785519` |
| 15 | `def` | [InteriorTag](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/interiortag.md) | 204 | `declaration-track:daefd8ad6458f61f3de246468a60718eed75caa5193ffe4be2ab607bb062cfa8` |
| 16 | `theorem` | [interiorTag_zero_false](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/interiortag-zero-false.md) | 212 | `result-track:1a2633b9bbc788adc53296e5eb507fe42366de2d78f7d26019241fd9c2fb59bf` |
| 17 | `theorem` | [interiorTag_one_false](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/interiortag-one-false.md) | 224 | `result-track:ccb927e173cb0abfef9b867d5cd6ecd0b93e8552d0cc6a4292ce9ac35a79164e` |
| 18 | `theorem` | [graphEndpointEqv_preserves_interiorTag](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphendpointeqv-preserves-interiortag.md) | 236 | `result-track:c3b021f49ea3e8fb6849186b9af04ae313cef9c676b9f5c31d5f65071ff98b87` |
| 19 | `def` | [EdgeInteriorPoint](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/edgeinteriorpoint.md) | 262 | `declaration-track:70c774a72fa602feeb3f9432280e2c0838341814ea783a2b98ed9e39166a38f4` |
| 20 | `theorem` | [edgePath_injective_on_interior](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/edgepath-injective-on-interior.md) | 269 | `result-track:a9faa203cac47ad032be2bb875da5c0d8215ec528868bbb7d84374d2805edcc6` |
| 21 | `theorem` | [distinct_edgeInteriors_disjoint](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/distinct-edgeinteriors-disjoint.md) | 283 | `result-track:5e6b58c1c3d7ef764910664c62635a38fcf7f55b4834a5293c47a4e9e21d3c53` |
| 22 | `theorem` | [edgeInterior_avoids_vertices](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/edgeinterior-avoids-vertices.md) | 299 | `result-track:da3c3e672c6f9edbcf6d07244315bcbf34d672c33ae0aab59862a0f7fe76b1cc` |
| 23 | `def` | [graphPreTopology](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphpretopology.md) | 322 | `declaration-track:4c8ba8139c3683464667d2ecb31a1f24a587f49421488589f5f78734d1ac0edf` |
| 24 | `theorem` | [graphPreTopology_vertexSubset_open](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphpretopology-vertexsubset-open.md) | 360 | `result-track:c59205dda68b110061df5615b293602f0266949dca40d90fe83eb42ea1c95a1a` |
| 25 | `def` | [graphRealizationTopology](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphrealizationtopology.md) | 376 | `declaration-track:6425714f93c118fc085a30a1d9688344bcd9aaabf88b8d41f9c2c9b313720fcc` |
| 26 | `theorem` | [graphQuotientMap_continuous](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/graphquotientmap-continuous.md) | 383 | `result-track:75721707c5b2a2dec3019673f759ff5ba07709870aee2a36d89ba217b41c1d1a` |
| 27 | `theorem` | [quotientMap_continuous](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/quotientmap-continuous.md) | 394 | `result-track:c5a72258eeb7d582b95ae828e24080f5e281be7f7d96c65f97c163038c06eab3` |
| 28 | `theorem` | [edgePath_continuous](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/edgepath-continuous.md) | 404 | `result-track:ebb0d5090afd9158b5ab7308a3544a15492f539cecc9ae1e674bc143f72bee7a` |
| 29 | `theorem` | [continuous_from_graphRealization_iff](../../../../GeneralTopology/TopologicalGraphRealizationNamespaced.lean/declarations/continuous-from-graphrealization-iff.md) | 416 | `result-track:79aaa35ca75d0cbd6944dde9ccfbe8ba94c456b1404ec0f32033147fb5c9c47f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e01ef04eacb7b6b7d73947a47686499bd947e36ba9fe85be5500a63ea35b25c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TopologicalGraphRealization/Variantaac56e7230c67d4a01f536efee1f816663c26981f95907a98ad2aaad0b981096.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
