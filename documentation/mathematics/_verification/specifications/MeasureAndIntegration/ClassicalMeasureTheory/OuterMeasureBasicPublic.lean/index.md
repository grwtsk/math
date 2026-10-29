# Verification target: Outer Measure Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "052e7886a36bab9f475112a40ae42a6d1e0a8374",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `052e7886a36bab9f475112a40ae42a6d1e0a8374`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean.json)

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
| 1 | `theorem` | [measure_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-empty.md) | 48 | `result-track:117c8d2d470a2385f0cbee36863c05246a499b1acb3ccfce784ed854f84381bc` |
| 2 | `theorem` | [measure_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-mono.md) | 51 | `result-track:77f4c8ced5063bdc15eda273bbdaf1c47d3cbbd94084a5296db02c618f36327b` |
| 3 | `theorem` | [measure_mono_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-mono-null.md) | 54 | `result-track:00084089055917c5064ec33f86a665cc8fa9e65d3ead0f021636364002053974` |
| 4 | `lemma` | [pos_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/pos-mono.md) | 57 | `result-track:0c53e71bc26d8c3649b2223e4b649b2232bd2c678bf5c3391c230bd0de28d78b` |
| 5 | `lemma` | [measure_eq_top_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-eq-top-mono.md) | 60 | `result-track:8b0d2c19ca9809001f326913165dc6a350556e012bd6765d901b643f7c9c2654` |
| 6 | `lemma` | [measure_lt_top_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-lt-top-mono.md) | 61 | `result-track:afbd2cd0bddc1de5e21b9947eb36081013906a2912519dfe98ab872ce427a62d` |
| 7 | `theorem` | [measure_pos_of_superset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-pos-of-superset.md) | 63 | `result-track:0e08e7641ec63a8846ebc44bae99d03508b3217db1a49401d173b6468b347d96` |
| 8 | `theorem` | [measure_iUnion_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-iunion-le.md) | 66 | `result-track:68b355c382101f8452ebc6a4f493186e584c58b9016e5d018e3c0fc589636e1b` |
| 9 | `theorem` | [measure_biUnion_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-biunion-le.md) | 74 | `result-track:c300ed11f62250ef1bab546a887d1ebe9f4d535f10f305d7f43113e81c62887b` |
| 10 | `theorem` | [measure_biUnion_finset_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-biunion-finset-le.md) | 80 | `result-track:a80cf3ce6564f1ec45e3a7a771900c0cecd09b6e459cbf0724e2cb6975e6396a` |
| 11 | `theorem` | [measure_iUnion_fintype_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-iunion-fintype-le.md) | 84 | `result-track:86fb66e49de36829d846dec23d041b5ace415293339c37cd9e905e251f06e328` |
| 12 | `theorem` | [measure_union_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-union-le.md) | 88 | `result-track:d802e0ca44795b6b8ac96df980ce3df53458ec00efbce1770108c33050c47dd3` |
| 13 | `lemma` | [measure_univ_le_add_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-univ-le-add-compl.md) | 91 | `result-track:d8eb36c5177a39dd37b4227d2d846e1b207cfac99bff36569f1c83e1e77184d4` |
| 14 | `theorem` | [measure_le_inter_add_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-le-inter-add-sdiff.md) | 94 | `result-track:5e663a53303635a10876744835f606aaf0750d372702e73d34f5c5f1ecc690ad` |
| 15 | `theorem` | [measure_sdiff_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-sdiff-null.md) | 99 | `result-track:67503fa9e3105dabe1820404bb8e5d2ccc632e00db1540026cd99f69297b75bc` |
| 16 | `theorem` | [measure_biUnion_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-biunion-null-iff.md) | 107 | `result-track:02ef2ae9b2d3d874469b55d3849ec9c63f3e2775e71faa896ba195fe08d07761` |
| 17 | `theorem` | [measure_sUnion_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-sunion-null-iff.md) | 113 | `result-track:064af9631c7f19715038c5b1d973a55e8c6d122453a538a19ef32571f5e035c4` |
| 18 | `theorem` | [measure_iUnion_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-iunion-null-iff.md) | 118 | `result-track:609a68f46905c72c5e95c5842705dfa4b925ed22f555a9913ee3d9ac5b93ffcd` |
| 19 | `theorem` | [measure_union_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-union-null-iff.md) | 125 | `result-track:a632f008b22fc26e145168e6766d3207b814f1151393e5483ef989073c1cf558` |
| 20 | `theorem` | [measure_union_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-union-null.md) | 128 | `result-track:f1b9be8a40ead049d7738973d0f3ff5181b9681c0ec667e9e6153bcda49b8b65` |
| 21 | `lemma` | [measure_null_iff_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-null-iff-singleton.md) | 130 | `result-track:b2e285351bc462a4fcbdc36eaf00f04952fd0983fdfcdaf417849f633abe0c7a` |
| 22 | `theorem` | [measure_iUnion_of_tendsto_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-iunion-of-tendsto-zero.md) | 136 | `result-track:2a8ec005ec1156408b6206c6b8350a77c84fd23a17afa5fa635e534e384df09c` |
| 23 | `theorem` | [measure_null_of_locally_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/measure-null-of-locally-null.md) | 150 | `result-track:9c799b2588965390875bb725fd45b62ba6f66600afeb56007b72654cfcc51a57` |
| 24 | `theorem` | [exists_mem_forall_mem_nhdsWithin_pos_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/exists-mem-forall-mem-nhdswithin-pos-measure.md) | 159 | `result-track:313269c9de1a79e61d49d850c5800fd75320ddd5cf89a7a00d1f7cc5888610c3` |
| 25 | `theorem` | [iUnion_of_tendsto_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/iunion-of-tendsto-zero.md) | 174 | `result-track:2bff13d77d14654bf97eeb8aa7a9d32bab299d0ef3250eb199d263a4c8a9cac6` |
| 26 | `theorem` | [iUnion_nat_of_monotone_of_tsum_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/iunion-nat-of-monotone-of-tsum-ne-top.md) | 180 | `result-track:853492b4c2b0ea2f26de331c625e363adfdae60ab2cd29c52f0057b4ff06dec4` |
| 27 | `theorem` | [coe_fn_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/coe-fn-injective.md) | 202 | `result-track:5083a7929f0b5cd541e618c932316f647b2c2009fa77262ffc307ac4cca86fa8` |
| 28 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/ext.md) | 206 | `result-track:2c292323b465362aeafe0bd09d459622f96aec5c010af47007d18bfdf8fa5e8f` |
| 29 | `theorem` | [ext_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicPublic.lean/declarations/ext-nonempty.md) | 211 | `result-track:cfd728e45ee9247a934b655fb6639eb65e26703dca9b33657fcb15210eba055c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04780fc4e825898e56b21563e72fdbab29b4c2522841ff60df84df78870f8dad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant1804bb6669866188dfd2723b0910d8f282c27e10990ff9afdb59cdbadf33cd2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
