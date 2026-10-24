# Verification target: GRWTSK.Topology.GeneralTopology.Sequences.Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9326a1eef80784cf5b6524a659ced02227e855d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9326a1eef80784cf5b6524a659ced02227e855d`.

Source path: `GRWTSK/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Defs.Filter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seqClosure](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/declarations/seqclosure--2efca75517f9381210d3a3a5.md) | 51 | `declaration-track:2efca75517f9381210d3a3a5fa5a8854d8ab1d4432467a479ccda92fd40152dc` |
| 2 | `def` | [IsSeqClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/declarations/isseqclosed--15943fd5de592bc817bddfdb.md) | 57 | `declaration-track:15943fd5de592bc817bddfdb16c1616f01a9409e00a3fe4d1119ae5999300f8c` |
| 3 | `def` | [SeqContinuous](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/declarations/seqcontinuous--880307c07aa9bd1eb253dcf0.md) | 62 | `declaration-track:880307c07aa9bd1eb253dcf0cd7f41d274991422d806a5e0d726f0473bc098d6` |
| 4 | `def` | [IsSeqCompact](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/declarations/isseqcompact--eb1aa510067e9685960d8c43.md) | 67 | `declaration-track:eb1aa510067e9685960d8c439d2b1d6cee7cee30526da1d8577ce1809e033f07` |
| 5 | `class` | [SeqCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/declarations/seqcompactspace--7f24689c25218664f300a53c.md) | 75 | `declaration-track:7f24689c25218664f300a53c84e06b24396558045227652fcaa02ac092288efb` |
| 6 | `class` | [FrechetUrysohnSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/declarations/frecheturysohnspace--40df9a2bd446276b1d7293d6.md) | 83 | `declaration-track:40df9a2bd446276b1d7293d6869d92c3c7fc2915a4d7724246fd29d44f101157` |
| 7 | `class` | [SequentialSpace](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/declarations/sequentialspace--2b1cc3d7e1a50e24adaa64df.md) | 88 | `declaration-track:2b1cc3d7e1a50e24adaa64dfd8e30482998387c3090f6628db569bfc4a7da0c4` |
| 8 | `theorem` | [IsSeqClosed.isClosed](../../../../../mathematics/Topology/GeneralTopology/Sequences/Variantbbf7a18b69fcf02f6d25b08f8a8f1a4ec2473c28fb5f62b6fe9aed178adc37d8.lean/declarations/isseqclosed-isclosed--7257478907e70f544aea7467.md) | 94 | `result-track:7257478907e70f544aea746717e8e130079210c8f32f9b0419b889842a1b8419` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
