# Verification target: Int Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b6fa246ea9d32eeaeaf59e9136116fcbc7f3d06",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Int/Variant698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IntPublic.lean/index.md) · [Full source](../../../../GeneralTopology/IntPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b6fa246ea9d32eeaeaf59e9136116fcbc7f3d06`.

Source path: `GRWTSK/Topology/MetricTopology/Int/Variant698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Int/Variant698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/IntPublic.lean/declarations/instance-source-edition-2.md) | 30 | `declaration-track:70f06648f474db7655a310b91d2207810b9f42f6a66dbbf7db13899816911e9c` |
| 2 | `theorem` | [dist_eq](../../../../GeneralTopology/IntPublic.lean/declarations/dist-eq.md) | 33 | `result-track:5172be1c3b961f6c9b6f3fd57a7866025e87012e22e300fb81121af9aa4465d8` |
| 3 | `theorem` | [dist_eq'](../../../../GeneralTopology/IntPublic.lean/declarations/dist-eq-source-edition-2.md) | 35 | `result-track:d8add5b3ec807bc344cfffed4a24a9ed83b57b5ae36cc9194d7f9a53926d4f77` |
| 4 | `theorem` | [dist_cast_real](../../../../GeneralTopology/IntPublic.lean/declarations/dist-cast-real.md) | 38 | `result-track:28c833be9652c949b1cb4031c211e637e579f8bdca730c6391e05de8d491f1cf` |
| 5 | `theorem` | [pairwise_one_le_dist](../../../../GeneralTopology/IntPublic.lean/declarations/pairwise-one-le-dist.md) | 41 | `result-track:aa237cace7f43deefaf4caf1626a0d8343cdd9b10f1128e65eebf4996a3f6eeb` |
| 6 | `theorem` | [isUniformEmbedding_coe_real](../../../../GeneralTopology/IntPublic.lean/declarations/isuniformembedding-coe-real.md) | 45 | `result-track:4992c470c967cf756830a493e0fbaac05586f904f328e80ae7145f6e2787b400` |
| 7 | `theorem` | [isClosedEmbedding_coe_real](../../../../GeneralTopology/IntPublic.lean/declarations/isclosedembedding-coe-real.md) | 48 | `result-track:c1980f6d19a7b571ca97eeb259f0e50f35a9c4a605d6f264c35f490f473d2598` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/IntPublic.lean/declarations/instance.md) | 51 | `declaration-track:5dcad3a2c9cffaafa9ca2b2c16b24f3eebd058ba0994b3cdd69817eb95be2da1` |
| 9 | `theorem` | [preimage_ball](../../../../GeneralTopology/IntPublic.lean/declarations/preimage-ball.md) | 53 | `result-track:4fb3e237868d36ab974cad6e551d4778656d7e168c87e0a17c141067017bcef1` |
| 10 | `theorem` | [preimage_closedBall](../../../../GeneralTopology/IntPublic.lean/declarations/preimage-closedball.md) | 55 | `result-track:49726760460b54b92891a1cbb0b70749f0f52959a61e71eafe09b39f749653da` |
| 11 | `theorem` | [ball_eq_Ioo](../../../../GeneralTopology/IntPublic.lean/declarations/ball-eq-ioo.md) | 57 | `result-track:dc9c25cb59a937f5533b54d6aa7cd2ab67e3ac9b5ccbedf4cf53c628b7bc3fc0` |
| 12 | `theorem` | [closedBall_eq_Icc](../../../../GeneralTopology/IntPublic.lean/declarations/closedball-eq-icc.md) | 60 | `result-track:26fb5f5e195ec2915b19e6637559864c414034e0f91442aceb1499d23e937341` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/IntPublic.lean/declarations/instance-source-edition-3.md) | 63 | `declaration-track:7a20fb4893510dc7e795cc4f78918fa6185a08e90874c918144716106850f4da` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/IntPublic.lean/declarations/instance-source-edition-4.md) | 68 | `declaration-track:e1edc5b9a33c5018192ae7656820cb06c5865d5ff865e0a025b8f1a99f595221` |
| 15 | `theorem` | [cofinite_eq](../../../../GeneralTopology/IntPublic.lean/declarations/cofinite-eq.md) | 75 | `result-track:f6577adc5a46e447cec5a7862fe7c1ab7618a227a28a0880771c70c117f41dd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2bf838bd0c46311704ab49191c1be60fbfa0fb5fc4e130cbad712eec425e5d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Int/Variant698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Int/Variant698b6dfbc82e533807266e55ff7685ddf2f2c1c7c898f5102c9e4dab9cc9694c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
