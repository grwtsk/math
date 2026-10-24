# Verification target: GRWTSK.Topology.GeneralTopology.Prod.Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "840211fa35e280907e9127678915480380fed59d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `840211fa35e280907e9127678915480380fed59d`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_atTop_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/declarations/prod-attop-attop-eq--251c7e9eeed7afedf6a09413.md) | 33 | `result-track:251c7e9eeed7afedf6a094130cb5d9b6647c6509776258838b32724e8b69e112` |
| 2 | `lemma` | [tendsto_finsetProd_atTop](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/declarations/tendsto-finsetprod-attop--784b71cf26517b87ef842d73.md) | 41 | `result-track:784b71cf26517b87ef842d73dbd91533f421e9fe494da86d6fc53e4e384a4858` |
| 3 | `theorem` | [prod_map_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/declarations/prod-map-attop-eq--7b4759291ac98f845c6b1c1e.md) | 54 | `result-track:7b4759291ac98f845c6b1c1eef434143d426361393eab56785d2fdcf5adc9118` |
| 4 | `theorem` | [tendsto_atTop_diagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/declarations/tendsto-attop-diagonal--a2f0f36ae1e8fc81bd7eab11.md) | 59 | `result-track:a2f0f36ae1e8fc81bd7eab11eecdc70c0b63a255821bb711abf60cbe57cd84b8` |
| 5 | `theorem` | [Tendsto.prod_map_prod_atTop](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/declarations/tendsto-prod-map-prod-attop--1c4cdb224327f832d1c27d26.md) | 64 | `result-track:1c4cdb224327f832d1c27d264f35db253e6a2cc686bc58e63edacbce25cf4c17` |
| 6 | `theorem` | [Tendsto.prod_atTop](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/declarations/tendsto-prod-attop--ea4e4d00f2fe06c995ea5fe5.md) | 71 | `result-track:ea4e4d00f2fe06c995ea5fe5ed8d55b093a7c16392836f81f97bfd208e1e7cd0` |
| 7 | `theorem` | [eventually_atTop_prod_self](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/declarations/eventually-attop-prod-self--8ed84e4fe67879dfc1fe2c78.md) | 78 | `result-track:8ed84e4fe67879dfc1fe2c782bd3c46f9f6828f76cc54cdec8454de448f1d8d4` |
| 8 | `theorem` | [eventually_atTop_prod_self'](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/declarations/eventually-attop-prod-self--bc889d7757f71505e706842f.md) | 83 | `result-track:bc889d7757f71505e706842fc3b3deb2f6dc6b8a8dd92c25ee860dda6c1b5ea2` |
| 9 | `theorem` | [eventually_atTop_curry](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant41fed826bb7bb801c3ee27b0893b2f8f438679afe2896c601186d819320315c3.lean/declarations/eventually-attop-curry--f7f0b20e3fcd1723f0ad499a.md) | 88 | `result-track:f7f0b20e3fcd1723f0ad499a35943f2cc4b7472bb1d40ea5e1bfed5b25794cb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
