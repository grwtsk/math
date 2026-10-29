# Verification target: Metric Space Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0604852c53a85febd7b89dfc7ed7fa95134b1626",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Defs/Varianta5f54128ba129843ed52e87b6a22b9fb1a245b0658121801affbc727923af866.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0604852c53a85febd7b89dfc7ed7fa95134b1626`.

Source path: `GRWTSK/Topology/MetricTopology/Defs/Varianta5f54128ba129843ed52e87b6a22b9fb1a245b0658121801affbc727923af866.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Defs/Varianta5f54128ba129843ed52e87b6a22b9fb1a245b0658121801affbc727923af866.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MetricSpace](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/metricspace.md) | 61 | `declaration-track:e6303d064af9546b4bd63cc051ffe56afb7a2a17a2e74ca26d0449c47f91278b` |
| 2 | `theorem` | [MetricSpace.ext](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/metricspace-ext.md) | 66 | `result-track:73c749d5ccc07a6d6ffa15e1e9b4dc02af17376a0a9c4f7fa5a6c6fd7df687f1` |
| 3 | `def` | [MetricSpace.ofDistTopology](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/metricspace-ofdisttopology.md) | 73 | `declaration-track:dd436c77c2b724926a306adb3a3cdc4a70257998befbaf8ceb1c80a0dcc6f082` |
| 4 | `theorem` | [eq_of_dist_eq_zero](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/eq-of-dist-eq-zero.md) | 83 | `result-track:5536d4cf7fb11df19c85d790011a4b99764a84a88daf3f586a9765bd8505e7cf` |
| 5 | `theorem` | [dist_eq_zero](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-eq-zero.md) | 87 | `result-track:477e730b9194d0ea869acef06b40acd6fa2571b23586886121b99dbadf3576f2` |
| 6 | `theorem` | [zero_eq_dist](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/zero-eq-dist.md) | 91 | `result-track:cde6c7301a2d8fea1fb640246c2e187dd6ad62fc1b6e15db0f3fa92fbfa3fee0` |
| 7 | `theorem` | [dist_ne_zero](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-ne-zero.md) | 93 | `result-track:07a54156e79533a449e15b159091c3af5d9f55d8b4dbf5d0b4324d242e88ff40` |
| 8 | `theorem` | [dist_le_zero](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-le-zero.md) | 97 | `result-track:2339365a5f32373704667ac2bd5f0142b3a03c34ffba0cd82ff31727137c1f90` |
| 9 | `theorem` | [dist_pos](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-pos.md) | 101 | `result-track:f36cef7535b62cfa7fc03be8d95161aa6a551902ca6042cc5e4294c7c8584187` |
| 10 | `theorem` | [eq_of_forall_dist_le](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/eq-of-forall-dist-le.md) | 104 | `result-track:8262092efb12ce4d2ddd852c01b17ad62dbc74d1f5e859865887a226d5b49c5b` |
| 11 | `theorem` | [eq_of_nndist_eq_zero](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/eq-of-nndist-eq-zero.md) | 108 | `result-track:242f86cb8dd7bce5b414b95e0d370217665b782060dc39a72e49f1d5b4a90f60` |
| 12 | `theorem` | [nndist_eq_zero](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/nndist-eq-zero.md) | 113 | `result-track:85410358326c6738f491d77968c83cec8b205999ff88e04b11184856e072d6b9` |
| 13 | `theorem` | [zero_eq_nndist](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/zero-eq-nndist.md) | 117 | `result-track:6a433569c1a1cb7024bfbcebc88e50af35caa61d9dac778d0a65b2512014edfa` |
| 14 | `theorem` | [closedBall_zero](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/closedball-zero.md) | 124 | `result-track:6a61537f7f1f906e3a6d2570c55fa3a463d42f4bafd1c19e55a7f9bb17a9ee1e` |
| 15 | `theorem` | [sphere_zero](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/sphere-zero.md) | 126 | `result-track:47264261bee4e61b37f957e5c22961b8bfe6c2ba91eeb56e08f312cd9d9d8998` |
| 16 | `theorem` | [subsingleton_closedBall](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/subsingleton-closedball.md) | 128 | `result-track:0b3639162805cee9ca7daea4e32a327256888403f482af63ba21e7a1b8fcbb7b` |
| 17 | `theorem` | [subsingleton_sphere](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/subsingleton-sphere.md) | 135 | `result-track:814824ebae1679d16984224b601c85a004b60a79fab3661bb5a09ddab598fa24` |
| 18 | `abbrev` | [MetricSpace.replaceUniformity](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/metricspace-replaceuniformity.md) | 145 | `declaration-track:170056b2f030c0c5cc0bf300d6f01501e7acf5faf2121a0308c3a496896634e7` |
| 19 | `theorem` | [MetricSpace.replaceUniformity_eq](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/metricspace-replaceuniformity-eq.md) | 150 | `result-track:ee4e31fda3c9653a93535f8eeb9036014c0805dfe9c7e2064d3574faee72addf` |
| 20 | `abbrev` | [MetricSpace.replaceTopology](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/metricspace-replacetopology.md) | 159 | `declaration-track:74066b0dc1850347fce2af6f8ae17acd353b4b1d6e2af202111c393d62e4e207` |
| 21 | `theorem` | [MetricSpace.replaceTopology_eq](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/metricspace-replacetopology-eq.md) | 163 | `result-track:fbcb111979c1b390315479eb5a3a40c356c9e7d638b11cba4018c825c2144a19` |
| 22 | `abbrev` | [MetricSpace.replaceBornology](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/metricspace-replacebornology.md) | 173 | `declaration-track:3175f1601dc2beeaf0af3e10216666976a9a28f6705f887f8c45fd3cef2f0da4` |
| 23 | `theorem` | [MetricSpace.replaceBornology_eq](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/metricspace-replacebornology-eq.md) | 177 | `result-track:3d7a119838dd6c24cb8344d0dd83988f8d4a425fe1397cf98e886c130a587c5d` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 183 | `declaration-track:75422acaf259ab53aaf12efc81ab8873f3c066062164be7b541881484f2c7781` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/instance.md) | 193 | `declaration-track:0630d890498302aaa2168c11d9ebf807227d81ae74a25015e6ff563c20cafd56` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/instance-source-edition-6.md) | 217 | `declaration-track:b25ad87df503f13a2f9ed8922398783d69cb58d3c373ec075931ba936bd38365` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/instance-source-edition-5.md) | 218 | `declaration-track:8da14298aedc7253d1842e73ad4e6f942e940fd1977a2dae2988d478a525be9c` |
| 28 | `theorem` | [dist_ofMul](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-ofmul.md) | 220 | `result-track:ec5ab8380fa092e90b6a909fe602cc3931c56c61983486c49a36e0b41d145741` |
| 29 | `theorem` | [dist_ofAdd](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-ofadd.md) | 222 | `result-track:00dea6338097422f65d90aa8f3a177abefe59daff89e49636d3c3c621c848aeb` |
| 30 | `theorem` | [dist_toMul](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-tomul.md) | 224 | `result-track:1f04b83ff1d13d5b13426c6f9b5ce75fdc57446c44b3ba408ee0f8571bed42f0` |
| 31 | `theorem` | [dist_toAdd](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-toadd.md) | 226 | `result-track:dd9848a1eae8519d3b9a771a542f68d5edefe7e02e9bb45b6ce71b80d2ee96df` |
| 32 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/instance-source-edition-8.md) | 230 | `declaration-track:edbf96745801af740aceb8b05e709fcc5f1dbb6aa0076a75e0dacb666adf5d4a` |
| 33 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/instance-source-edition-7.md) | 231 | `declaration-track:dcfffa95a3482b03a5a073a3e2bcec10401f66bf299c79f81b62a8b422e3de73` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 245 | `declaration-track:77a541e19e8ab1256a53694dbd5cc1af074bb60a3dcabcaa434e89546ae0e25b` |
| 35 | `theorem` | [dist_toDual](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-todual.md) | 247 | `result-track:9ae058bde7017e4f7d992cba6f9197cd2331c10d58380eef739d465a0411e919` |
| 36 | `theorem` | [dist_ofDual](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/dist-ofdual.md) | 249 | `result-track:ed8fe8eab48bb0e0c2ecdb9aadbc460efb2ad1630f6e560e37398b915539953b` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 253 | `declaration-track:1348eb9c7d9a8f5b99f8435b978f6a13b57c4621fd1391c4c3d72976543b2a5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8da8a67894fe77d6c939cc5760f5c10dfa34faf0f252de9867dca2d00f599e6e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Defs/Varianta5f54128ba129843ed52e87b6a22b9fb1a245b0658121801affbc727923af866.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Defs/Varianta5f54128ba129843ed52e87b6a22b9fb1a245b0658121801affbc727923af866.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
