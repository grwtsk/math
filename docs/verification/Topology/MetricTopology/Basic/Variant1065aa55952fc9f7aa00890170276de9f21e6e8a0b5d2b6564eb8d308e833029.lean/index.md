# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0eaa24f2f36c28aca32d33ab3f48bc271b027c2",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0eaa24f2f36c28aca32d33ab3f48bc271b027c2`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion--c57a2646caeb4cc911e1954e.md) | 40 | `declaration-track:c57a2646caeb4cc911e1954e4506905c0b76f120dd6ef9a30d9a1871439c232f` |
| 2 | `theorem` | [inversion_def](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-def--1bdec4add19184e3c7bbdd45.md) | 43 | `result-track:1bdec4add19184e3c7bbdd458a8bf4c8855500e7097f996450ca130c3a6dd9b3` |
| 3 | `theorem` | [inversion_eq_lineMap](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-eq-linemap--ea5b0a8dbca3aed54bbb9110.md) | 55 | `result-track:ea5b0a8dbca3aed54bbb911053452e03ffc9b48dea0be00052f4000965711fb2` |
| 4 | `theorem` | [inversion_vsub_center](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-vsub-center--28f164405850140da9a2f67a.md) | 59 | `result-track:28f164405850140da9a2f67aa701c168ecbc3056dc280559ea0d2be3b4c0acfc` |
| 5 | `theorem` | [inversion_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-self--c5dca9e08a2edb99ed39765d.md) | 64 | `result-track:c5dca9e08a2edb99ed39765d9ede52c9f047ce844bc174031ed3ec782645025b` |
| 6 | `theorem` | [inversion_zero_radius](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-zero-radius--f9954537623be53656279f38.md) | 67 | `result-track:f9954537623be53656279f38e9af7631f83594fe4232a1561795286384c823c5` |
| 7 | `theorem` | [inversion_mul](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-mul--e4b8c37bede3ff2c77d15157.md) | 69 | `result-track:e4b8c37bede3ff2c77d1515701223ee79661138949060b7e7ba6aad06cddf34c` |
| 8 | `theorem` | [inversion_dist_center](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-dist-center--43697002a87eb2e471c46763.md) | 75 | `result-track:43697002a87eb2e471c467635157f63f68b33f33f185a3a3aa743d3fbba6d185` |
| 9 | `theorem` | [inversion_dist_center'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-dist-center--d92f580deacc465d7abe9eae.md) | 82 | `result-track:d92f580deacc465d7abe9eae44f4d2bb04fb53809d21d1d7e4896a9214f8fb53` |
| 10 | `theorem` | [inversion_of_mem_sphere](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-of-mem-sphere--b2a2cbf3e2b9f44878507671.md) | 85 | `result-track:b2a2cbf3e2b9f448785076716998086a9713a4e34de4e7e0e96f6ce9499c4771` |
| 11 | `theorem` | [dist_inversion_center](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/dist-inversion-center--d48d2d838d922dc809648c21.md) | 90 | `result-track:d48d2d838d922dc809648c2180e58cad023c0403749430f3400689da615cce20` |
| 12 | `theorem` | [dist_center_inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/dist-center-inversion--1d462b0771389a72fa35cc14.md) | 103 | `result-track:1d462b0771389a72fa35cc14c2002219a51b188bb65f0a6b8213c3d07f36690b` |
| 13 | `theorem` | [inversion_inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-inversion--a06be8e4beb6e3d919c32ce8.md) | 107 | `result-track:a06be8e4beb6e3d919c32ce882ab156dbcc9111783ae5a49d8b4498058e98db3` |
| 14 | `theorem` | [inversion_involutive](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-involutive--f283d6268827961f0f13acfc.md) | 116 | `result-track:f283d6268827961f0f13acfcf4228a744d099b0f90d85a0ea257939861e9fa22` |
| 15 | `theorem` | [inversion_surjective](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-surjective--90331761443a5752b835bc37.md) | 119 | `result-track:90331761443a5752b835bc37f9a073f3e93443e098104febf61b132d272a5f80` |
| 16 | `theorem` | [inversion_injective](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-injective--8be47d32fe77abfe214a9c43.md) | 122 | `result-track:8be47d32fe77abfe214a9c43a6490d3a5caf7d241e97b5c680f8ab708c3077cc` |
| 17 | `theorem` | [inversion_bijective](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-bijective--0a28489bb08cc9b0995f9bdc.md) | 125 | `result-track:0a28489bb08cc9b0995f9bdcd55ac26f9c902445070a88a98bdd4a9a5c548a1c` |
| 18 | `theorem` | [inversion_eq_center](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-eq-center--48e332cf4d8d9e68af85cae4.md) | 128 | `result-track:48e332cf4d8d9e68af85cae488ef86ede0667204fb0b0241e9e7791a1c9d506e` |
| 19 | `theorem` | [inversion_eq_center'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/inversion-eq-center--fb465940e40f86b25fb04ff6.md) | 132 | `result-track:fb465940e40f86b25fb04ff6d478920af84691027f0816dd0904dff7e2228d24` |
| 20 | `theorem` | [center_eq_inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/center-eq-inversion--221e7f77449e48f17b09701c.md) | 135 | `result-track:221e7f77449e48f17b09701cbc12b6f2b5cc80011154829104dffc6d873a1e11` |
| 21 | `theorem` | [center_eq_inversion'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/center-eq-inversion--734aac8248abacfee01e8256.md) | 139 | `result-track:734aac8248abacfee01e825698b95407fb74464fd712d9cbcde0bcc5eab58914` |
| 22 | `theorem` | [dist_inversion_inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/dist-inversion-inversion--71d9ae0fe2d204d151ebda65.md) | 152 | `result-track:71d9ae0fe2d204d151ebda6537dd46e9a3605c7e65ab101b92e78425cb0ba551` |
| 23 | `theorem` | [dist_inversion_mul_dist_center_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/dist-inversion-mul-dist-center-eq--41e917c9dd1b98f686a82c47.md) | 159 | `result-track:41e917c9dd1b98f686a82c47264c1b6475c095b399ee58dc29de48af4ab70bc3` |
| 24 | `theorem` | [mul_dist_le_mul_dist_add_mul_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/mul-dist-le-mul-dist-add-mul-dist--15aa03d83e52ec0955a7c337.md) | 180 | `result-track:15aa03d83e52ec0955a7c3374ad88996bdfc7c29cb3e76e01aa812155478342a` |
| 25 | `theorem` | [Filter.Tendsto.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/filter-tendsto-inversion--2c6f95dca253a5a220c17428.md) | 207 | `result-track:2c6f95dca253a5a220c1742877b52f6246c1abf3efad37ddce939d190f2a19f0` |
| 26 | `theorem` | [ContinuousWithinAt.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/continuouswithinat-inversion--265e44721233b7b0dbc0b143.md) | 215 | `result-track:265e44721233b7b0dbc0b14309af19702b205cfc60c3ff3cbf4166157afd3ba6` |
| 27 | `theorem` | [ContinuousAt.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/continuousat-inversion--f66589f1059ac8c2d66ccca1.md) | 220 | `result-track:f66589f1059ac8c2d66ccca1912600a0415cb8c309f65c9e4d6d81ec45948375` |
| 28 | `theorem` | [ContinuousOn.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/continuouson-inversion--983d344f1d5d6b12b9eea922.md) | 225 | `result-track:983d344f1d5d6b12b9eea9228763f87ee7c3eb56372d8ab6e7d99d7835f96137` |
| 29 | `theorem` | [Continuous.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant1065aa55952fc9f7aa00890170276de9f21e6e8a0b5d2b6564eb8d308e833029.lean/declarations/continuous-inversion--c58a6874d41a3dd0a86bd8a6.md) | 230 | `result-track:c58a6874d41a3dd0a86bd8a69983be250f0d453ba750a66e3e9269e318d86621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
