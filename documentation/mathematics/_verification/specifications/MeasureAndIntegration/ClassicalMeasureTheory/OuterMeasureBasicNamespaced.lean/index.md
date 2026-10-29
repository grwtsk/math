# Verification target: Outer Measure Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79399f8c49991aee5647209eb4de14c2dad2620a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant00e60c5626a58541d9625bb56b8301b8f0440de0c83d89b4cb8b2cbc66b1f6bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79399f8c49991aee5647209eb4de14c2dad2620a`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant00e60c5626a58541d9625bb56b8301b8f0440de0c83d89b4cb8b2cbc66b1f6bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant00e60c5626a58541d9625bb56b8301b8f0440de0c83d89b4cb8b2cbc66b1f6bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.OuterMeasure.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measure_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-empty.md) | 55 | `result-track:5cf216d44a03b86b0eec1af5cdc070fdd5d1b33e6f51b744a1d4c78304c8d898` |
| 2 | `theorem` | [measure_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-mono.md) | 58 | `result-track:adb444a5f7150570fba26e959bf5341af20b7ab167b08f6d89fa4e20a7730d1c` |
| 3 | `theorem` | [measure_mono_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-mono-null.md) | 61 | `result-track:f5ee23fb339708ebf04f6e7f231810526b7bdfaa2c0cabbf3708c80263833381` |
| 4 | `lemma` | [measure_eq_top_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-eq-top-mono.md) | 64 | `result-track:00f5c6a14c9d08155110286581fabe87b2e63254259898978b97fc2dcc3bc612` |
| 5 | `lemma` | [measure_lt_top_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-lt-top-mono.md) | 65 | `result-track:5beb7a97609c5080f39b58ebfe76418ba7e7f92260bc758c4485dedda1905c01` |
| 6 | `theorem` | [measure_pos_of_superset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-pos-of-superset.md) | 67 | `result-track:c5221552429429a8c9cae6acbf3eaebc02aadca1a538125f1dece8b413d090f9` |
| 7 | `theorem` | [measure_iUnion_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-iunion-le.md) | 70 | `result-track:93b2cdf98eb254cb95202920b08d5ad82845410e6dd44f4a3de25c5bbdb55194` |
| 8 | `theorem` | [measure_biUnion_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-biunion-le.md) | 78 | `result-track:5675eedcd58bff9df611de979b62410b2561f81b94e2bfad0fe1411d8cc78484` |
| 9 | `theorem` | [measure_biUnion_finset_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-biunion-finset-le.md) | 84 | `result-track:88c31d54a0cda35a1d2f81b8f62fce4635ba9b58ad89756c80b561be60b6c271` |
| 10 | `theorem` | [measure_iUnion_fintype_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-iunion-fintype-le.md) | 88 | `result-track:c905ed4300ee2fc703397de04d129dcbc0cb1d6ec020700d15e66ea42fb8f45b` |
| 11 | `theorem` | [measure_union_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-union-le.md) | 92 | `result-track:1390750d510a2b4c65310c9a7dee436453b062aa4d3cdcca4376a11047c359eb` |
| 12 | `lemma` | [measure_univ_le_add_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-univ-le-add-compl.md) | 95 | `result-track:70d5d886ca709e7dbfd4effd28c0ada5388c9caadb26b2a93b8dbbd4d5c36bec` |
| 13 | `theorem` | [measure_le_inter_add_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-le-inter-add-diff.md) | 98 | `result-track:0daef3932ec7f0cb8367b08eae10f1ed6aabe77d7fde05152e8c371a56c7787d` |
| 14 | `theorem` | [measure_diff_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-diff-null.md) | 101 | `result-track:596c2eff3793ebcfa849afb2e845f4736d81f0f783e9745a4da4963e67b80a1e` |
| 15 | `theorem` | [measure_biUnion_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-biunion-null-iff.md) | 107 | `result-track:8f584492cb0d16ff1d911d5be029bc919c61869cee106605f1a868b136254db2` |
| 16 | `theorem` | [measure_sUnion_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-sunion-null-iff.md) | 113 | `result-track:1a2af9fd1641f1466d8427f71437e02a4049a3f3833b05b03cc756165f8d182d` |
| 17 | `theorem` | [measure_iUnion_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-iunion-null-iff.md) | 118 | `result-track:5fdc8b64b8e2691c85d07104c30c33a850a91354024ca10c5fa55e1aa3faaed9` |
| 18 | `theorem` | [measure_union_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-union-null-iff.md) | 125 | `result-track:eccb1985cc38893f5e5748c5663b197475f54128f8457c0c8f7f83c93efd7574` |
| 19 | `theorem` | [measure_union_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-union-null.md) | 128 | `result-track:e214a2254f3453e56a25f6d35ec3602a893573c45c80798465487762f80b8506` |
| 20 | `lemma` | [measure_null_iff_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-null-iff-singleton.md) | 130 | `result-track:2382ecba002126ae2f14bd8c487533c9b49392d1d67f21e5300b520adf680f80` |
| 21 | `theorem` | [measure_iUnion_of_tendsto_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-iunion-of-tendsto-zero.md) | 136 | `result-track:7e51f97fdd5b7f9b0ffe5b7ac9ad4f1bc4bb3f2feba3c8a2fe040eb3378bcf64` |
| 22 | `theorem` | [measure_null_of_locally_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/measure-null-of-locally-null.md) | 150 | `result-track:227644bb1d84e58e983b65d5300b51c6be9646be23fb35577b583d376fbaf4da` |
| 23 | `theorem` | [exists_mem_forall_mem_nhdsWithin_pos_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/exists-mem-forall-mem-nhdswithin-pos-measure.md) | 159 | `result-track:fb672b3296416568e3d6210fa521b58544ea660f82b9d8319325fac76cd63887` |
| 24 | `theorem` | [iUnion_of_tendsto_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/iunion-of-tendsto-zero.md) | 174 | `result-track:dd5e8568f096cef56531f72389e4ac01e221e8eafe69736c0a86a959a14e5aed` |
| 25 | `theorem` | [iUnion_nat_of_monotone_of_tsum_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/iunion-nat-of-monotone-of-tsum-ne-top.md) | 180 | `result-track:f8a21259f279c7b7d90fe336cc33ab456cfc254a61b739f67fcc18124db4ae3d` |
| 26 | `theorem` | [coe_fn_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/coe-fn-injective.md) | 201 | `result-track:c5482828f925c19b44e75c4f4bbe71e8423c7cb9202f97e281f43005ac81b790` |
| 27 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/ext.md) | 205 | `result-track:2b3890509d0fb452f351e69a417481e4ad387f6552136bc3280cdf55100ed35a` |
| 28 | `theorem` | [ext_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasureBasicNamespaced.lean/declarations/ext-nonempty.md) | 210 | `result-track:22b31377f3f47fbdbd6e267c3c6f9bc8920ec43991cf307bc979e762c923a055` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cc9daf49af1ae2c28f9377c29aab19eb7a348be4f3bafc7e19a45ddeb2e43e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant00e60c5626a58541d9625bb56b8301b8f0440de0c83d89b4cb8b2cbc66b1f6bd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant00e60c5626a58541d9625bb56b8301b8f0440de0c83d89b4cb8b2cbc66b1f6bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
