# Verification target: GRWTSK.Topology.MetricTopology.PNat.Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acb1eb18686b1d4bef81315cd46af15f895fbc95",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acb1eb18686b1d4bef81315cd46af15f895fbc95`.

Source path: `GRWTSK/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Nat` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean/declarations/instance--7f6c18ba2bb063f10997f4bd.md) | 20 | `declaration-track:7f6c18ba2bb063f10997f4bda3371a5dd3b3dabf4c5fb0b70bbdd6347b16555a` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean/declarations/dist-eq--5a419b92f60ef379463ddf22.md) | 22 | `result-track:5a419b92f60ef379463ddf22bc63af50de0735c4c3962ff1b987f1eef4dadee7` |
| 3 | `theorem` | [dist_coe](../../../../../mathematics/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean/declarations/dist-coe--4ee3d61b91246de820535747.md) | 25 | `result-track:4ee3d61b91246de82053574796d9f5608cc231e34511ee7b1f1f86e332c7c78d` |
| 4 | `theorem` | [isUniformEmbedding_coe](../../../../../mathematics/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean/declarations/isuniformembedding-coe--62acacc1dea449a5378c9709.md) | 27 | `result-track:62acacc1dea449a5378c97090dde527b02bab6fe21cde351cf4832176120839c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean/declarations/instance--ec05e90a5eccb3e9bd43abe2.md) | 29 | `declaration-track:ec05e90a5eccb3e9bd43abe25f6d5a83a1b8ae9a29df5e060663a8fb1a57d3a7` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean/declarations/instance--dc328c7d50ca9ee8e74b708c.md) | 31 | `declaration-track:dc328c7d50ca9ee8e74b708c350441479b550699c5b555ef674149b567c8de02` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/PNat/Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe.lean/declarations/instance--e3f41b44217ed976064f29a0.md) | 37 | `declaration-track:e3f41b44217ed976064f29a07c11d47a5fdafcbd4d84aed6442d750570984bc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
