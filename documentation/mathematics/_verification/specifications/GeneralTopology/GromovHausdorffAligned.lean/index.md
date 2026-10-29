# Verification target: Gromov Hausdorff Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a323bb14830c522f7d8a6648634b1b5304b913ef",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/GromovHausdorffAligned.lean/index.md) · [Full source](../../../../GeneralTopology/GromovHausdorffAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a323bb14830c522f7d8a6648634b1b5304b913ef`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Closeds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Completion` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.GromovHausdorffRealized` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Kuratowski` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsometryRel](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/isometryrel.md) | 72 | `declaration-track:a45cbb48a0f7f4e3954e752a74ea1f70f5b1253e1fc59b0426f625ecd10deba3` |
| 2 | `theorem` | [equivalence_isometryRel](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/equivalence-isometryrel.md) | 76 | `result-track:8215aa6eada1fd002a9003abce759a591b546ad53f5975b248ed25fe0c01e9c7` |
| 3 | `instance` | [IsometryRel.setoid](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/isometryrel-setoid.md) | 80 | `declaration-track:1281a2b32ee91581f78ce713253c7c6553ff4587baa64f10144ea1706ab37230` |
| 4 | `def` | [GHSpace](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/ghspace.md) | 85 | `declaration-track:7acc3db49a2125845a7906fbbe72d9d2f0496afd114b33b7501f29531f1dba40` |
| 5 | `def` | [toGHSpace](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/toghspace.md) | 90 | `declaration-track:bbe3baea657b12012c1725c0c7c33a433a5ee183c7d1c3292b4f510dc142786a` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/instance-source-edition-3.md) | 94 | `declaration-track:2066da25ff6d5ad84210687732e8c9f33628afa1085ae2251327ab7b5fbef2e9` |
| 7 | `def` | [GHSpace.Rep](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/ghspace-rep.md) | 99 | `declaration-track:1412242ab118e84fd616cbcd850374bbcaf36706a040c8832d1b2e1ed8196f71` |
| 8 | `theorem` | [eq_toGHSpace_iff](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/eq-toghspace-iff.md) | 103 | `result-track:f5517b4edd5ec187936b8e3886435bbaae9756567185a50e416be1b891cf163a` |
| 9 | `theorem` | [eq_toGHSpace](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/eq-toghspace.md) | 122 | `result-track:472995e8e810bab9a7c4658e366ed9b20cce3a2a64f4e8fc86bbfbb6bc34c8d8` |
| 10 | `instance` | [repGHSpaceMetricSpace](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/repghspacemetricspace.md) | 128 | `declaration-track:aee404ef9d326f370444a038ee2fdffab50fb5e8988a5ccd740d4dd3856520df` |
| 11 | `instance` | [rep_gHSpace_compactSpace](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/rep-ghspace-compactspace.md) | 132 | `declaration-track:c122b5999d380b83d132a0e8e78021bfb6152e70141fc7f64eaaeaa767e5c96d` |
| 12 | `instance` | [rep_gHSpace_nonempty](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/rep-ghspace-nonempty.md) | 136 | `declaration-track:7bb3acaf16574df5b9ec89e6333758558e41120e7d7e3838630e71f1a1ec00a2` |
| 13 | `theorem` | [GHSpace.toGHSpace_rep](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/ghspace-toghspace-rep.md) | 142 | `result-track:2ecef8e93d72d2540121f2c64b95f2b657cb7aab943282454500189e9d14bd7c` |
| 14 | `theorem` | [toGHSpace_eq_toGHSpace_iff_isometryEquiv](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/toghspace-eq-toghspace-iff-isometryequiv.md) | 150 | `result-track:054926a65fa3c43cd64c3699eeb4eefcb67fca0f84d927bdf2be09a3079968cf` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/instance-source-edition-5.md) | 179 | `declaration-track:37bb70b9c4a6062e6a7c4ca7534d064a249af3c925db08a823ba54be1a01ad1b` |
| 16 | `def` | [ghDist](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/ghdist.md) | 185 | `declaration-track:e9cfd53675e8ccc5457a8b73a8f4a31e85433b12b1a46a6539903dd020a43f79` |
| 17 | `theorem` | [dist_ghDist](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/dist-ghdist.md) | 190 | `result-track:6184804346a906323f54a4655b2134ad43e4a2fba457f67940fe07d81e375af0` |
| 18 | `theorem` | [ghDist_le_hausdorffDist](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/ghdist-le-hausdorffdist.md) | 196 | `result-track:fd264b0de83b949bd74aa359b4e4d66030807a4cb0fb4e71aa741416bf1f9a83` |
| 19 | `theorem` | [hausdorffDist_optimal](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/hausdorffdist-optimal.md) | 254 | `result-track:bae6d5822200135e5854947f089a36f5fc2c2c9c906fab78f40f7b1c042f25ea` |
| 20 | `theorem` | [ghDist_eq_hausdorffDist](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/ghdist-eq-hausdorffdist.md) | 399 | `result-track:23eb3183272699a56792c8115f257cf4e3725d1aead0314651aca9f3ff9adcb4` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/instance-source-edition-4.md) | 417 | `declaration-track:2bbae00377b2c7f3f9c4182c965b77e231df5a518883d5765daea05638203aff` |
| 22 | `def` | [TopologicalSpace.NonemptyCompacts.toGHSpace](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/topologicalspace-nonemptycompacts-toghspace.md) | 526 | `declaration-track:0fc9725285167a91c585cac293680b377c85bf3ae2ba928fd4a6b7371d099bbc` |
| 23 | `theorem` | [ghDist_le_nonemptyCompacts_dist](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/ghdist-le-nonemptycompacts-dist.md) | 539 | `result-track:c5eb64710e83352337cde536ba32ed956098ee2da3510e486250a3f06106ddb9` |
| 24 | `theorem` | [toGHSpace_lipschitz](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/toghspace-lipschitz.md) | 550 | `result-track:496d4092a1260333a910f2187603031a27b7b8d209acd63f243f5c866793c622` |
| 25 | `theorem` | [toGHSpace_continuous](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/toghspace-continuous.md) | 555 | `result-track:9f628eec8a18c54ba03598869f62df67d03e2a29d7eab9113d49c832914c65ec` |
| 26 | `theorem` | [ghDist_le_of_approx_subsets](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/ghdist-le-of-approx-subsets.md) | 575 | `result-track:ce08e9adb2b763b37c5618bda4d02b50648fa2cbed2b74ac6d3e88737d2078e2` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/instance-source-edition-2.md) | 654 | `declaration-track:1406f92b72c3154ed82a7b4c01c2ac506d24058587a675762cab0a374f677cef` |
| 28 | `theorem` | [totallyBounded](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/totallybounded.md) | 789 | `result-track:dad4a5cb4d287340db1b801e00fe531a930b0b66d23cbda50bc32acf0dd4deeb` |
| 29 | `structure` | [AuxGluingStruct](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/auxgluingstruct.md) | 977 | `declaration-track:417aeb8b09517994552747c085796f575d9a17b6fbad4c8b91d2e0ce69b86df6` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/instance.md) | 986 | `declaration-track:093ddbd658653a522487ddead96073df92240700c0f3c0a76a8066e0ca84f998` |
| 31 | `def` | [auxGluing](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/auxgluing.md) | 996 | `declaration-track:91c8430ab6578f7d6febe3d0b837cea4ef32514c2108e45999d32fad064070fd` |
| 32 | `macro_rules` | [(anonymous)](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/macro-rules.md) | 1005 | `declaration-track:10a3c9051d1fac5d7a21a6eb8717b8b4cab2e23f9c6782aa465430da78824979` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/GromovHausdorffAligned.lean/declarations/instance-source-edition-6.md) | 1008 | `declaration-track:9a1eba7f7aed487875378d5da95e606d7d0d89e8ccd620ae904f6014c203a9d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8bbe7de723ae14fc936cf3d9d449f141dc7fefac014a3f2782769f036d502b9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/GromovHausdorff/Variantfe8ef45111aa39dad7e1cee065519e35a425e736b3064e9cd0957f3b37029c03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
