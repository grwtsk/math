# Verification target: AEMeasurable Sequence Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f13d6d9ac16c240945bf63a6ee5fe762af505425",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant1096af75ab25db65dba55577d98538105697c92237bb3cb0764d296bf08a745c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f13d6d9ac16c240945bf63a6ee5fe762af505425`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant1096af75ab25db65dba55577d98538105697c92237bb3cb0764d296bf08a745c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEMeasurableSequence/Variant1096af75ab25db65dba55577d98538105697c92237bb3cb0764d296bf08a745c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MeasureSpaceDef` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [aeSeqSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/aeseqset.md) | 44 | `declaration-track:b1e34521be7f01bdd0551268d984ab463b96978faf9839e24d2d7f1e4e09e164` |
| 2 | `def` | [aeSeq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/aeseq.md) | 50 | `declaration-track:b1d506e4ffd3d4ecabb8836e4ecdbc5d35c469aeb4adf6b98629e41f9268b992` |
| 3 | `theorem` | [mk_eq_fun_of_mem_aeSeqSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/mk-eq-fun-of-mem-aeseqset.md) | 58 | `result-track:ecd3328af8ed2bf6ceaac5d372d575918b5eeec1271dcdc4b664d6897825924f` |
| 4 | `theorem` | [aeSeq_eq_mk_of_mem_aeSeqSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/aeseq-eq-mk-of-mem-aeseqset.md) | 67 | `result-track:38871367c8975f6aed58c7e9692f490527b26ae94074d061511ef7fbddcbb0b1` |
| 5 | `theorem` | [aeSeq_eq_fun_of_mem_aeSeqSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/aeseq-eq-fun-of-mem-aeseqset.md) | 72 | `result-track:f4e90c2302bdb6cc342ada72e3e014badead83f048422e767982eae31e914e09` |
| 6 | `theorem` | [prop_of_mem_aeSeqSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/prop-of-mem-aeseqset.md) | 77 | `result-track:86dc23adea40cafcc5a9d02574c741957e06fbff7189dae7109137804d16b07d` |
| 7 | `theorem` | [fun_prop_of_mem_aeSeqSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/fun-prop-of-mem-aeseqset.md) | 89 | `result-track:3b72747a3228dade9205a906e156e0ea6fc34006a6d93e07494e5398d5dfd6e9` |
| 8 | `theorem` | [aeSeqSet_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/aeseqset-measurableset.md) | 99 | `result-track:71db804f2c5b9439681efb5d5835578573eb9026cbdec929138cc5f9d1dcbe71` |
| 9 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/measurable.md) | 103 | `result-track:30c3a0ee8f0a122e4f4c592dd3fcdd452af1a7538a7c3b7d82c5f1f3b4e42ed5` |
| 10 | `theorem` | [measure_compl_aeSeqSet_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/measure-compl-aeseqset-eq-zero.md) | 108 | `result-track:eb88fdbf8771127e1abf79fc742dd3a310e073b02c592a70a224f2b1c6510b54` |
| 11 | `theorem` | [aeSeq_eq_mk_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/aeseq-eq-mk-ae.md) | 116 | `result-track:0945f7ecee70b7e901f1f10c16618c25145025962a16fd5d0f651e586cb2bdd6` |
| 12 | `theorem` | [aeSeq_eq_fun_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/aeseq-eq-fun-ae.md) | 126 | `result-track:62a3d8dcff2ceb5f057f99f3c67adda8dbfacc67ff14e7cb93d7c4b9cb5ad75b` |
| 13 | `theorem` | [aeSeq_n_eq_fun_n_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/aeseq-n-eq-fun-n-ae.md) | 133 | `result-track:0d2df029996e0c40b70c8c2c607108bf7aa6417b02209e60adae8a240e4b829a` |
| 14 | `theorem` | [iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEMeasurableSequenceNamespaced.lean/declarations/isup.md) | 138 | `result-track:60267ea4a2cc63fc52c06d59bdb9d93df14229cc358617489dbad89391666873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49c510393151961d33dddead74c5aeb48d0faccffbcc2fe5aef09dffcbacca69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AEMeasurableSequence/Variant1096af75ab25db65dba55577d98538105697c92237bb3cb0764d296bf08a745c.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/AEMeasurableSequence/Variant1096af75ab25db65dba55577d98538105697c92237bb3cb0764d296bf08a745c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
