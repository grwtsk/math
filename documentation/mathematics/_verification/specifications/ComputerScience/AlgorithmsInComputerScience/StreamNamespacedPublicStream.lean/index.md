# Verification target: Stream Namespaced Public Stream

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6394b31f1a45ad211a014b1af7ee5a20294e574",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stream/Variant8733c3b51bf786e3ffd7bc419f68adcf9b2d00cb977f691b52421c6b9646f19c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6394b31f1a45ad211a014b1af7ee5a20294e574`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stream/Variant8733c3b51bf786e3ffd7bc419f68adcf9b2d00cb977f691b52421c6b9646f19c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stream/Variant8733c3b51bf786e3ffd7bc419f68adcf9b2d00cb977f691b52421c6b9646f19c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Slice.Array.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ToStream](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/tostream-source-edition-2.md) | 59 | `declaration-track:ace94129f23f93c38e3f610e31a301034e0e2be66d7e8116bad299216f47694f` |
| 2 | `class` | [Stream](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/stream.md) | 64 | `declaration-track:2a2b2903a28a57d8b8e2cffc35102a3b8d91203f68c923af6e6a11dafdc14f5a` |
| 3 | `def` | [Stream.forIn](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/stream-forin.md) | 67 | `declaration-track:7ddec19c45fba21198f95cf5bf04cc1603ec79f565f40ff8613123d68be42343` |
| 4 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance-source-edition-9.md) | 77 | `declaration-track:c469996c61aa393391054285fca95f456da9d80615f1936928ff9ee721f49fdf` |
| 5 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance-source-edition-3.md) | 80 | `declaration-track:29f76c2bd67df25d71777cabfc7b8ccef58bb01ac50ff94c70a1b12b0c6df5cb` |
| 6 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance-source-edition-5.md) | 84 | `declaration-track:6eace94a4ea66eededfe5f0a8f33ee1c94128e92d16a6fcb8b11e65307e5f9a1` |
| 7 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance-source-edition-8.md) | 87 | `declaration-track:bf266eeaeb6c4eddc089c709e37a5861b08782f85748d69c432c7a3f7fc1144e` |
| 8 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance-source-edition-6.md) | 90 | `declaration-track:750cacfdbf7e1bf4d2656dd122f32fd3c697a9733f40a87334f22ea3859180d1` |
| 9 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance-source-edition-7.md) | 93 | `declaration-track:9477534be5673708f4294b5eb9bf8925710011ab29b5d00a50492d79a08e92d9` |
| 10 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance-source-edition-2.md) | 96 | `declaration-track:24fb28f057af3e0e1dd9e0aeab97798f5fac8b5a1fc2a0ee1c5eec1352160343` |
| 11 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance-source-edition-4.md) | 105 | `declaration-track:5ea9a9b98c485559927301f12b0d6817db56c3c23f5d90ebb85f298b1afd9651` |
| 12 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance-source-edition-10.md) | 110 | `declaration-track:c89ba5ea5129fb5d00a6e058fa353747657743f879e6676ed7198a9e0685a9af` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/instance.md) | 119 | `declaration-track:21e722dd03db76f4802d2d87e30e925fa5dc098243fb872c6befe5aaaffa5e17` |
| 14 | `abbrev` | [Stream](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/stream-source-edition-2.md) | 129 | `declaration-track:e6c470bee89c545eddf90fb3f528c654890029d73e16d827697a3bc2fef7e1df` |
| 15 | `abbrev` | [Stream.next?](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/stream-next.md) | 132 | `declaration-track:c3063dff005a8a39e3e6be78b6b12f165e8cad3a0b407e376f6af72ec30c7dcb` |
| 16 | `abbrev` | [ToStream](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/tostream.md) | 136 | `declaration-track:84079d48d91d48a4b8098f7e0422047be7c0ab76739bb781cd45036cc0e85754` |
| 17 | `abbrev` | [ToStream.toStream](../../../../../ComputerScience/AlgorithmsInComputerScience/StreamNamespacedPublicStream.lean/declarations/tostream-tostream.md) | 139 | `declaration-track:0c019602eb25a5503daffad912efaacede8378ba0c34863e4b2a8e07ba11bfd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28cc4b391aaf05fff821bdfc0d03f7ea1c37addb017bd219326b747476403503 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stream/Variant8733c3b51bf786e3ffd7bc419f68adcf9b2d00cb977f691b52421c6b9646f19c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stream/Variant8733c3b51bf786e3ffd7bc419f68adcf9b2d00cb977f691b52421c6b9646f19c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
