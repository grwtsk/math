# Verification target: Mutually Singular Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1e8b887dba8de2d09e29c25b2909c8b7aff8b28",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1e8b887dba8de2d09e29c25b2909c8b7aff8b28`.

Source path: `GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean.json)

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
| 1 | `def` | [MutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mutuallysingular.md) | 49 | `declaration-track:561df4e7ab338e941bc62c79e804b67bb8933ecbb73410fbe77c9330d0975fe4` |
| 2 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mk.md) | 57 | `result-track:40f53cf6047d5d9e1db627782f6e872a8c75151cd59ae2552dd81511985ab29f` |
| 3 | `def` | [nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/nullset.md) | 66 | `declaration-track:a5aab77f76fa2568cce387eac2da5d842cabd2846db92595caecdfe2ce45d2eb` |
| 4 | `lemma` | [measurableSet_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/measurableset-nullset.md) | 68 | `result-track:545d6e3de59163236cbca208186f4f3a3afb17fc59ca349ca0a2c371c79c8bc5` |
| 5 | `lemma` | [measure_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/measure-nullset.md) | 71 | `result-track:bc700749a683be69dfb1444da6e7544b22e8adfcb66eee1747bae25c4b52c78a` |
| 6 | `lemma` | [measure_compl_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/measure-compl-nullset.md) | 74 | `result-track:00bce63ea26baab65f49ecf85e62a95fa3af9a982ed19ac1757cb18a2029f959` |
| 7 | `lemma` | [restrict_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/restrict-nullset.md) | 79 | `result-track:a7c1480349a7dad7c3b0fefc9011558a40c0967fbbe491a8a0560839820a85da` |
| 8 | `lemma` | [restrict_compl_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/restrict-compl-nullset.md) | 84 | `result-track:f561cb38041b00338c5d37704688f2dda4f2a00f532e6509b7388f989e2d53cd` |
| 9 | `theorem` | [zero_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/zero-right.md) | 87 | `result-track:b42cfb4b30130e30fd5a4b3ac855bc2c59ed0e4b7ee0b08e434eb9c00ded4370` |
| 10 | `theorem` | [symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/symm.md) | 91 | `result-track:665190144f13b93ff4a86ea87f634f0b1c20e290e5be2738c193a0b08050867a` |
| 11 | `theorem` | [comm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/comm.md) | 95 | `result-track:e8572d077475de6898721df95dd456805bb46eee12d5c6929d7be773ced574a9` |
| 12 | `theorem` | [zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/zero-left.md) | 99 | `result-track:0110d5717a33a6b39fd0820297e95912cfc330fa10ce4c8ce0dcfac33889eb1e` |
| 13 | `theorem` | [mono_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mono-ac.md) | 102 | `result-track:d0cdd073e897fb1a626d7022bf8df5e682ccf0abbcd186a65cb1575f0f947396` |
| 14 | `lemma` | [congr_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/congr-ac.md) | 106 | `result-track:f64460eb7426f21bb7987ef0c9b7ccaf8c239f3aa5af14f050ddd4600e3e84a4` |
| 15 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mono.md) | 110 | `result-track:696b0375b91bec3c19d9308623fb124f5c64c09d20f250c64ad5fb7075cf64bf` |
| 16 | `lemma` | [self_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/self-iff.md) | 114 | `result-track:192c8e6d5a8f569f95097cd5fe0fd328ee8b127bc269da35ca0bdc7c26a550db` |
| 17 | `theorem` | [sum_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/sum-left.md) | 122 | `result-track:107205774654ada113e7bb2b9caa4c2568b8c649ca47b9cbaac1f971a02aa9a7` |
| 18 | `theorem` | [sum_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/sum-right.md) | 131 | `result-track:c607406b2e8ffc03a13865bd0fbc93bd98b01dd39c881af8a4df12f4b6881918` |
| 19 | `theorem` | [add_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/add-left-iff.md) | 135 | `result-track:602caed8032652a33328d7ca399072990bdfba47e83557fc890829a8c4fea9bb` |
| 20 | `theorem` | [add_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/add-right-iff.md) | 139 | `result-track:48c312a79b03b8a62b5b239d1b4208ba895f817691a2ed014acb5c6d23f08a2a` |
| 21 | `theorem` | [add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/add-left.md) | 142 | `result-track:c8b2c129c0cf4bc40ac412893565b042736d53689e1441beca4449cd478a9df2` |
| 22 | `theorem` | [add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/add-right.md) | 145 | `result-track:641a465ee7e027f4b1444057cccf6b24768fa8ec7fc14248290b6d0f6470115b` |
| 23 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/smul.md) | 148 | `result-track:b87c198097c4cca186bc6640b913c97b3c1237061cefbffe7a5cbe5e3b54b0b5` |
| 24 | `theorem` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/smul-nnreal.md) | 151 | `result-track:34d2b9002d276a381758bff8f7f5ff3c470c4812b23f860f511ef8a14adbc94a` |
| 25 | `lemma` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/restrict.md) | 154 | `result-track:ca8f474825587389dece3b73ce7fcb115d253025d541e161ad01315b92a061b7` |
| 26 | `lemma` | [eq_zero_of_absolutelyContinuous_of_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/eq-zero-of-absolutelycontinuous-of-mutuallysingular.md) | 161 | `result-track:64cb6962776b869933520a66dc7a082fd59a9a98dc6044353ab9de9f141f5397` |
| 27 | `lemma` | [absolutelyContinuous_of_add_of_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/absolutelycontinuous-of-add-of-mutuallysingular.md) | 167 | `result-track:fa14411876c9ea9b8882b99f5993cbd7db1cb11a1a4158ebf3d4429de519dcb1` |
| 28 | `lemma` | [Mutually Singular Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mutuallysingular-map.md) | 184 | `result-track:5b4330f9eda4540458d57a99a67d27610afefc280530d4d213155d8b0f4ba8cd` |
| 29 | `lemma` | [exists_null_set_measure_lt_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/exists-null-set-measure-lt-of-disjoint.md) | 191 | `result-track:b66802c14f40e8b4c02776e7877fa2c1e767c64698a90eb76ca5c8b8afff9c3e` |
| 30 | `lemma` | [mutuallySingular_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mutuallysingular-of-disjoint.md) | 214 | `result-track:1d765bd10156068c11d54395872c238a2e905949bd3ab1d2fcb04b8d79fded95` |
| 31 | `lemma` | [MutuallySingular.disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mutuallysingular-disjoint.md) | 232 | `result-track:b7e0d676ced9e746b44d4a471db589fa59a7a96eeb7cd702cf37a7781b93eacb` |
| 32 | `lemma` | [MutuallySingular.disjoint_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mutuallysingular-disjoint-ae.md) | 246 | `result-track:64a70386fc522e94cb5a240676d4e18d80102d91705159e5acb5a38c315c674c` |
| 33 | `lemma` | [disjoint_of_disjoint_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/disjoint-of-disjoint-ae.md) | 257 | `result-track:7625ae944ecb500e46a5a7f7b663e4ad0ee51278a2a216f9b0060c4330bc4f41` |
| 34 | `lemma` | [mutuallySingular_tfae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mutuallysingular-tfae.md) | 268 | `result-track:8f902229e29f9169a3c8a9bc589efee3d1a25a7ac80c8284e415ee17c2a5da0b` |
| 35 | `lemma` | [mutuallySingular_iff_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mutuallysingular-iff-disjoint.md) | 282 | `result-track:2d50b8ed83f95115d85611a1e3fe290a61dff684f575d8bcf97f7d88645c95c2` |
| 36 | `lemma` | [mutuallySingular_iff_disjoint_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedPublic.lean/declarations/mutuallysingular-iff-disjoint-ae.md) | 285 | `result-track:45c30889971be6807775530b9f2775de3235ecea76c582ad9c960feec021d21f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd12b0952c3f7eccff4f1949a4522ea8eb4cdd98ee0083271459bb84e146cd03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MutuallySingular/Variant4525f79b216a0b853f4effdf4b62dd48a53e15695cc1ce5a7365c4015dcab3e8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
