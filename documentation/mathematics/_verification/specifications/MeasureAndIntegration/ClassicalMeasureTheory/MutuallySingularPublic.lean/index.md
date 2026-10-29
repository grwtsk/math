# Verification target: Mutually Singular Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce5600af900cdda08a12be81586fd4f40770fd80",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce5600af900cdda08a12be81586fd4f40770fd80`.

Source path: `GRWTSK/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mutuallysingular.md) | 41 | `declaration-track:8e05bb9342858a703ae01580cd734a193c9f8d3231270730f758dd9e0684bb0d` |
| 2 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mk.md) | 49 | `result-track:c6059e687bd9ad8879e7cdd024f6b3fbee7a5200fcccb5375dace84b9f3bb3f7` |
| 3 | `def` | [nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/nullset.md) | 58 | `declaration-track:f39ecf8fd74c4e2184e29ede789561c5927a74b09b9e80153b53a59e78cb4a02` |
| 4 | `lemma` | [measurableSet_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/measurableset-nullset.md) | 60 | `result-track:2d8a286765ef9d2542d9d4850bcc170141de7c1049e57a7b4dd6fa32dba49c90` |
| 5 | `lemma` | [measure_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/measure-nullset.md) | 63 | `result-track:c2ee7c18507a9ad236378e08af027560bf159222bf45138929d874fd1e219f4e` |
| 6 | `lemma` | [measure_compl_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/measure-compl-nullset.md) | 66 | `result-track:edec45ca8e26438d3575c1d7b33c9f6a19444e768ea58b25b6be56a725826491` |
| 7 | `lemma` | [restrict_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/restrict-nullset.md) | 71 | `result-track:c8a39a0ffe41c67b5288a6fcec41e69fd9b634becc1af0e355aa782de7769d73` |
| 8 | `lemma` | [restrict_compl_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/restrict-compl-nullset.md) | 76 | `result-track:06558b18ce81f5800632e96d4e2c8da086eaea684332c96b3a8b8ac831f2eee4` |
| 9 | `theorem` | [zero_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/zero-right.md) | 79 | `result-track:6b195b7072775f49ca83b93984b337b0b52a4c9f79bfa2f0b88cd85b57acd42a` |
| 10 | `theorem` | [symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/symm.md) | 83 | `result-track:9e471053789bbbdcfdb4c5b71ca60c00e79f7d2b05df4ae375f77fd536172678` |
| 11 | `theorem` | [comm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/comm.md) | 87 | `result-track:89ff7c3ee5657120a39d2b33642b94dd59f146ea4a03fc9103950d4f0c42f0cb` |
| 12 | `theorem` | [zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/zero-left.md) | 91 | `result-track:2157972fb9dd0f01195baf520e96ebd691012f7209a2c6aae38affc6ef84b5a3` |
| 13 | `theorem` | [mono_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mono-ac.md) | 94 | `result-track:64606ec73f6373059c9f47a5e5a1e83af47adb8fb0cf5d6ad8701230b28138af` |
| 14 | `lemma` | [congr_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/congr-ac.md) | 98 | `result-track:a2704656848588a415f20c1f89bcd556aa54be814137d59a54f0351c0132918d` |
| 15 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mono.md) | 102 | `result-track:f89dd0b8bc144c5e48314e5f197d02437209bb6fdee12534e3a395193e58c32d` |
| 16 | `lemma` | [self_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/self-iff.md) | 106 | `result-track:bf495d824057a61b13c4dae9943c3443c5812bc184c16aff8d1736b70dde7f09` |
| 17 | `theorem` | [sum_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/sum-left.md) | 114 | `result-track:e18b490ed1dbbae07a0d4b084a0575739aba6477da6e2e34803ca2ff51f1258f` |
| 18 | `theorem` | [sum_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/sum-right.md) | 123 | `result-track:b3e636a9a0f75644032e47d9366cd73046e03b0b725e8b7519055d7ac875478b` |
| 19 | `theorem` | [add_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/add-left-iff.md) | 127 | `result-track:7e9760268b13b616becbe09168a0dbc6b084d07dc7cd4b127bcb8ffd18de3a0e` |
| 20 | `theorem` | [add_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/add-right-iff.md) | 131 | `result-track:f3ba94bee4d5a6d20abba5c4eb948fa4422cb4f06f5de34c1dd1678f06880812` |
| 21 | `theorem` | [add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/add-left.md) | 134 | `result-track:ab5798b7f0de65678d5b5da09a37df588677209e749b052f597a5bded7fad353` |
| 22 | `theorem` | [add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/add-right.md) | 137 | `result-track:95b3a635a8864568352076f62a3392c629f9deae40ee4eac9d462b0899db8bef` |
| 23 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/smul.md) | 140 | `result-track:4177cad73991f2df0390daf227543db9a04821957cef8a0c461e7a99a9da51f8` |
| 24 | `theorem` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/smul-nnreal.md) | 143 | `result-track:fe545407ef264b26d223510dbb2cfb503c54dba3b180d2576c3ba539ac585e0e` |
| 25 | `lemma` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/restrict.md) | 146 | `result-track:88cc21e00240f3eba03503f83b7939b8915e7254261598ed788725073220c323` |
| 26 | `lemma` | [eq_zero_of_absolutelyContinuous_of_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/eq-zero-of-absolutelycontinuous-of-mutuallysingular.md) | 153 | `result-track:885ece4116959b96d3ed3ceb3fd60b46807221fec87b32a1139f4e5e9eb46efd` |
| 27 | `lemma` | [absolutelyContinuous_of_add_of_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/absolutelycontinuous-of-add-of-mutuallysingular.md) | 159 | `result-track:0e5659bf9be90233bbabd63a9a0e4c2324643d3b69083262647b8d4e126f971a` |
| 28 | `lemma` | [_root_.MeasurableEmbedding.mutuallySingular_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/root-measurableembedding-mutuallysingular-map.md) | 176 | `result-track:6ace22316d810862694e650f0a588e20fb09df7f92e74759f1a095fcd7a0b265` |
| 29 | `lemma` | [exists_null_set_measure_lt_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/exists-null-set-measure-lt-of-disjoint.md) | 183 | `result-track:8c10cf062442c2dd3e02a60398cbe12a137653ffa6e39fda4bf1f0b6ef9e3443` |
| 30 | `lemma` | [mutuallySingular_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mutuallysingular-of-disjoint.md) | 206 | `result-track:2063fa5dd44e4917dee983295179bfba02b2ddc82a1111d36124f3b22c5f4285` |
| 31 | `lemma` | [MutuallySingular.disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mutuallysingular-disjoint.md) | 224 | `result-track:15a76beb6048503c4e0d7cc1f7f0bc475b7e6f0799613c887bdb698099192cef` |
| 32 | `lemma` | [MutuallySingular.disjoint_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mutuallysingular-disjoint-ae.md) | 238 | `result-track:a1dfe4da39efedeb167e0b7245f68f91d91e05c12ccef296cd795f0d94897f85` |
| 33 | `lemma` | [disjoint_of_disjoint_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/disjoint-of-disjoint-ae.md) | 249 | `result-track:5b96d317c0a3247bbf6e5bc3e17c8424261831aee74dd6eab217f512718719ba` |
| 34 | `lemma` | [mutuallySingular_tfae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mutuallysingular-tfae.md) | 260 | `result-track:9b606278cbd26bb8c2f5d50595559233cf22b145b41f88f0c6800011ef4f3ff0` |
| 35 | `lemma` | [mutuallySingular_iff_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mutuallysingular-iff-disjoint.md) | 274 | `result-track:edb90909745330a68a97e056d7ad5d0b7ec1b7a7a706be2d7ae14b54ce3b6418` |
| 36 | `lemma` | [mutuallySingular_iff_disjoint_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularPublic.lean/declarations/mutuallysingular-iff-disjoint-ae.md) | 277 | `result-track:e4805c4c7587925dc99a5f5d63e0fb865ff43859045b6fb36f9e09ea4d070052` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afe3e74202a6a54e566b4ad7dfb2a69725a9bd720dd6f0340e8e670a11dab509 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
