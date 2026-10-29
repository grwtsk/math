# Verification target: Mutually Singular Namespaced Null Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49ec7d49b0b1d2fcfb39c474478a828b6f3a3f30",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49ec7d49b0b1d2fcfb39c474478a828b6f3a3f30`.

Source path: `GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Restrict` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mutuallysingular.md) | 45 | `declaration-track:cd99b65ba8a0fbd4fe4a64d3aaf6e1f47183ccb6c769e66ee6f284407ecd8046` |
| 2 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mk.md) | 53 | `result-track:7b5829b459b36842dc370233d6bc435a9d51ae4793e0892bca9b578ce98d483f` |
| 3 | `def` | [nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/nullset.md) | 60 | `declaration-track:8e8b0a1ed69bde0d3f7de7fc85d5c0400e5897d689b30e185bc092819299aee0` |
| 4 | `lemma` | [measurableSet_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/measurableset-nullset.md) | 62 | `result-track:8f65198bfd7426ce4505c25fe01c2fb68a1c981f164e3b0e8c66858d2fa844fb` |
| 5 | `lemma` | [measure_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/measure-nullset.md) | 65 | `result-track:3be9bd74753217d7f495b9e8931349d9d79293f9eb836a349288d2e5ce1c063d` |
| 6 | `lemma` | [measure_compl_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/measure-compl-nullset.md) | 68 | `result-track:72957b84b543dfd614cbd2f93ba8dd199986607c9554692a29360579f5a104a6` |
| 7 | `lemma` | [restrict_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/restrict-nullset.md) | 73 | `result-track:f708a3ee22ff5219e0c8469c202383a538867d8e87401a991e6ed055cb1e5290` |
| 8 | `lemma` | [restrict_compl_nullSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/restrict-compl-nullset.md) | 78 | `result-track:54ea2e7fff8862a11a449b640f6398bef95eea3b0d6ba27787d393256d5d49b7` |
| 9 | `theorem` | [zero_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/zero-right.md) | 81 | `result-track:56041f0671c26810edd097b764639ab086436aee56ad200fdb6de1b590fda39e` |
| 10 | `theorem` | [symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/symm.md) | 85 | `result-track:061d06050dc866bca12b12fc884b2184282a71d6b37a082c41f63a57938ba98b` |
| 11 | `theorem` | [comm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/comm.md) | 89 | `result-track:d77fc56d74061a4b02c72280894d380787412a7011c596445b78c5b4e164ee97` |
| 12 | `theorem` | [zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/zero-left.md) | 93 | `result-track:7d6722bd7bea39d27570ab382e448ad09e140ee4b5c4f16fd803ad7675d927bd` |
| 13 | `theorem` | [mono_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mono-ac.md) | 96 | `result-track:518c20c8e97fa7ed09c715b7115a31d328628772652ca6c18dd66299cc169349` |
| 14 | `lemma` | [congr_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/congr-ac.md) | 100 | `result-track:1f974d4b6e624d6b191f8bda03125501c865eeafbf4253cd1cf30083bf6b7d86` |
| 15 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mono.md) | 104 | `result-track:b952995f0cadde8e26a421e42593b4d69c0edc14cc788d74037d3b6b34cd7b6b` |
| 16 | `lemma` | [self_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/self-iff.md) | 108 | `result-track:2b2baa3d1dc3e6736ce6642cdd276cdf7ada46ffe6301b036a5ee76bc966a5ac` |
| 17 | `theorem` | [sum_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/sum-left.md) | 116 | `result-track:5ad82b0df7638b64e0eac767c7ad2c7934a36de30e31043790a44ed9b70fe01f` |
| 18 | `theorem` | [sum_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/sum-right.md) | 125 | `result-track:eeeaf5efa363744f36906d2d4d3c44d6e514a25bd9824eb5ccf0f56c7b84f522` |
| 19 | `theorem` | [add_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/add-left-iff.md) | 129 | `result-track:e329a04fa16b9684565582115969f987e5a6f8b3b9ad37f607ac1cebef97cb03` |
| 20 | `theorem` | [add_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/add-right-iff.md) | 133 | `result-track:202718cac2db2bb72152857ca5760fd57b34ad6b96ee2eca889be4950cfc1e76` |
| 21 | `theorem` | [add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/add-left.md) | 136 | `result-track:bbeb5cc56f8a0be8a2c5e5d3aebb4338a7c180396933773ebd52587d7ac967da` |
| 22 | `theorem` | [add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/add-right.md) | 139 | `result-track:112ab7004b7dde91cb5e32fecac3b8f32efe44cc4d2db11294688d23f814139e` |
| 23 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/smul.md) | 142 | `result-track:b497539ac1297451d092d7339c1fab5b9c02f614cd6e8c5300764ba6a43c1eed` |
| 24 | `theorem` | [smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/smul-nnreal.md) | 145 | `result-track:25f68077b3448d28f69978142e601f0ffa549ba6fc41327f5a5e836f48328c4a` |
| 25 | `lemma` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/restrict.md) | 148 | `result-track:2ee2ca8eae017bfddb01508a5eb07f9c0e8c84154ee95e1df2139bf527990782` |
| 26 | `lemma` | [eq_zero_of_absolutelyContinuous_of_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/eq-zero-of-absolutelycontinuous-of-mutuallysingular.md) | 155 | `result-track:612d37dabc4ba890f7803e0bb37d3e7e0bcccfb1280cef6eac0d408cb0cd7792` |
| 27 | `lemma` | [absolutelyContinuous_of_add_of_mutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/absolutelycontinuous-of-add-of-mutuallysingular.md) | 161 | `result-track:01d72c421909e51f9fbc42d1719dddef8c5f08b4d13ed71a2bbb6bab65b6e4a2` |
| 28 | `lemma` | [Mutually Singular Namespaced Null Set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mutuallysingular-map.md) | 178 | `result-track:2fb0a54e3921e28dc72dac36ce2a112cc09a7c8982591a16f608b0764e1e37b9` |
| 29 | `lemma` | [exists_null_set_measure_lt_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/exists-null-set-measure-lt-of-disjoint.md) | 185 | `result-track:8c0f9c8e4e968c113a248804b0d1eae81029396ca83807a6d9d7f81fbce3189f` |
| 30 | `lemma` | [mutuallySingular_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mutuallysingular-of-disjoint.md) | 208 | `result-track:9745dd66391e6774b001f27b341da987a56fc98a429ad55ea2aa32e0a0fa9749` |
| 31 | `lemma` | [MutuallySingular.disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mutuallysingular-disjoint.md) | 227 | `result-track:a2270207a931074a2617a2fe9b257616047177292781912ce81e37d12ed7974d` |
| 32 | `lemma` | [MutuallySingular.disjoint_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mutuallysingular-disjoint-ae.md) | 241 | `result-track:6515495c1e56ae01c894cac78a8e09453e6168c555614dcf749ccb222f2dd510` |
| 33 | `lemma` | [disjoint_of_disjoint_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/disjoint-of-disjoint-ae.md) | 252 | `result-track:f484166a5bf570410701c91dbcb4df3bf179fefca685a406f14a47ded4279dd1` |
| 34 | `lemma` | [mutuallySingular_tfae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mutuallysingular-tfae.md) | 277 | `result-track:f461f040bde40d2a5d665f202859a8d123fdd306c77491852434b745bc3244d9` |
| 35 | `lemma` | [mutuallySingular_iff_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mutuallysingular-iff-disjoint.md) | 291 | `result-track:745791d7f096a5601d3a534831474cd38297490af6743b177a50b9b6974ebc65` |
| 36 | `lemma` | [mutuallySingular_iff_disjoint_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MutuallySingularNamespacedNullSet.lean/declarations/mutuallysingular-iff-disjoint-ae.md) | 294 | `result-track:67bba359d5f3c18ab3c39d0214eef606bfa8df3c20fa6e2e78045dca79820bcb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6a69bed1fe2fac838504dfe5387b7249ee3e58e82567b656897eb5170448c20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MutuallySingular/Variante559d2841fed0b1e25a5acce39e4c066ad5b57cef2a3899709e5a88711ea703b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
