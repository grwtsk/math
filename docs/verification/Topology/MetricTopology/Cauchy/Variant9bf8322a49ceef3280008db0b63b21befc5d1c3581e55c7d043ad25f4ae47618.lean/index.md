# Verification target: GRWTSK.Topology.MetricTopology.Cauchy.Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f65c04a3aac9896699e53b84846de79031d9836",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f65c04a3aac9896699e53b84846de79031d9836`.

Source path: `GRWTSK/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean.json)

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
| 1 | `theorem` | [Metric.complete_of_convergent_controlled_sequences](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/metric-complete-of-convergent-controlled-sequences--632b93857e73bc28f6e6fc3a.md) | 41 | `result-track:632b93857e73bc28f6e6fc3aaa34396cd3a11c939b753c26c2c36932d3eba2d0` |
| 2 | `theorem` | [Metric.complete_of_cauchySeq_tendsto](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/metric-complete-of-cauchyseq-tendsto--dc5490b5517337ab27318f85.md) | 49 | `result-track:dc5490b5517337ab27318f859340b224341cde4e2924cef37c2208f24b6da2f7` |
| 3 | `theorem` | [Metric.cauchySeq_iff](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/metric-cauchyseq-iff--1c6c6acecdb3788a6d4ff938.md) | 59 | `result-track:1c6c6acecdb3788a6d4ff938041c38c98f007f387f7ed4115ca631efafe4f65c` |
| 4 | `theorem` | [Metric.cauchySeq_iff'](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/metric-cauchyseq-iff--a3f4b097ebffe98bdffbfcd5.md) | 64 | `result-track:a3f4b097ebffe98bdffbfcd5c4f86d6c4be05af23e59a0629579ac5e04c92473` |
| 5 | `theorem` | [Metric.uniformCauchySeqOn_iff](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/metric-uniformcauchyseqon-iff--92fe27d593c9dad45c6ecb4e.md) | 70 | `result-track:92fe27d593c9dad45c6ecb4e01eb180bb55c6a05e4b7f9e3df770118d5b4e44e` |
| 6 | `theorem` | [cauchySeq_of_le_tendsto_0'](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/cauchyseq-of-le-tendsto-0--34d1a3227a7da412910859bb.md) | 93 | `result-track:34d1a3227a7da412910859bb89fa3bc414a27c27dd019591426e2439033b5a3c` |
| 7 | `theorem` | [cauchySeq_of_le_tendsto_0](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/cauchyseq-of-le-tendsto-0--e0dda40ff32a21f38e17a714.md) | 102 | `result-track:e0dda40ff32a21f38e17a71434d68ab90ceb60899e73cec2fdca33a031fa2af2` |
| 8 | `theorem` | [cauchySeq_bdd](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/cauchyseq-bdd--2deace0d58701004b7e93180.md) | 108 | `result-track:2deace0d58701004b7e93180f9b59d5923bb9d50c2afbd8cd61acc7dd9cf1043` |
| 9 | `theorem` | [cauchySeq_iff_le_tendsto_0](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/cauchyseq-iff-le-tendsto-0--d3a3bece3cda63d83c3464d1.md) | 122 | `result-track:d3a3bece3cda63d83c3464d1efd0b0898a0abc9feb7aa3978a125381c5c77ea1` |
| 10 | `lemma` | [Metric.exists_subseq_bounded_of_cauchySeq](../../../../../mathematics/Topology/MetricTopology/Cauchy/Variant9bf8322a49ceef3280008db0b63b21befc5d1c3581e55c7d043ad25f4ae47618.lean/declarations/metric-exists-subseq-bounded-of-cauchyseq--044afe27cef2931c9bc6b127.md) | 152 | `result-track:044afe27cef2931c9bc6b127d1def7100649c60cb4a252c6f7d5ef9d61bdbd4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
