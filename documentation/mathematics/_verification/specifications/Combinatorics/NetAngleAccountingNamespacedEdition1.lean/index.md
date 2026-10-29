# Verification target: Net Angle Accounting Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65349fabf854c1db20573d17bd7d9b7651a2a616",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/index.md) · [Full source](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65349fabf854c1db20573d17bd7d9b7651a2a616`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vertexDeficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/vertexdeficit.md) | 30 | `declaration-track:2caa802798728687a706c1ae5d5cb645d85a6964b8b613525979481f5c50aba4` |
| 2 | `def` | [vertexBoundaryTurn](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/vertexboundaryturn.md) | 34 | `declaration-track:6831d8121da585a5ae039df2c8f5d57d145a9c18a529a08549e9baea1019a7b4` |
| 3 | `theorem` | [vertex_gluing_correction](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/vertex-gluing-correction.md) | 38 | `result-track:6756ab71becd7b7b626b40fe7932b8306d747d4a057224ff38f3d5afaec86752` |
| 4 | `def` | [totalBoundaryCopies](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/totalboundarycopies.md) | 49 | `declaration-track:92ef1f6fb90beea6866a50c8624d559d4c2d28a4b40316e9609d193a2a32e773` |
| 5 | `def` | [totalDeficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/totaldeficit.md) | 52 | `declaration-track:0da157c982b3c1853e9ab016f54b7240e03adb45b588f2704070e7ac196cb7e6` |
| 6 | `def` | [totalBoundaryTurn](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/totalboundaryturn.md) | 56 | `declaration-track:9a774ccc1d05d4bf42216ed1c68c67d84a0d402d833b31e821b1784e28cd02db` |
| 7 | `theorem` | [total_gluing_correction](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/total-gluing-correction.md) | 61 | `result-track:d9c5fcdc1121cad0d3f7234f319858cdc84c9459ecd848fd50dec82365273772` |
| 8 | `theorem` | [cube_count_accounting](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/cube-count-accounting.md) | 73 | `result-track:a8042e405494a317af60929ad203154a9ec7d5aa3285af939f4cfe25bf4cd18c` |
| 9 | `theorem` | [cube_vertex_deficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/cube-vertex-deficit.md) | 83 | `result-track:eddab201bfdf0057a4bf85eea3213ef28e60fd81f9df889628d9c3b49c51a7ac` |
| 10 | `theorem` | [cube_eight_vertices](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/cube-eight-vertices.md) | 89 | `result-track:9bbc8b9f5473de31fd1cbebcd7ba93cf33e055e6a58a006035748d212b9f30c0` |
| 11 | `theorem` | [reflex_copy_signs](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/reflex-copy-signs.md) | 95 | `result-track:d4a489cce8baf2fed1c3c5ac11f857e6b64f2533c3bf4adeb1d61eda085cf52c` |
| 12 | `theorem` | [grouping_changes_deficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/grouping-changes-deficit.md) | 104 | `result-track:5eca2c7862ffba0f9417483d7dca9d012a1b217ba0d6894a2b3f1dc5631fa4b5` |
| 13 | `def` | [prismVertexDeficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/prismvertexdeficit.md) | 117 | `declaration-track:1c0b5ae7ae1cb9854c32a3c9b78c8015aabecf6856f797dfd2a3f564a372f4af` |
| 14 | `theorem` | [prism_angle_formula](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/prism-angle-formula.md) | 120 | `result-track:780eeff34a05761d074435355e6def6f8f99df265d1a81403a0cb682a47a6cec` |
| 15 | `theorem` | [prism_total](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/prism-total.md) | 127 | `result-track:775c3c2993abb5f5dc53f16cc6d2fa9cee314ae6416a1a1618401b016e07bc82` |
| 16 | `theorem` | [arbitrarily_small_local_fixed_total](../../../../Combinatorics/NetAngleAccountingNamespacedEdition1.lean/declarations/arbitrarily-small-local-fixed-total.md) | 135 | `result-track:c8854b717cb98e0ddacb3381a74948bcc93559a2c62c7c7d42ef4ad6ac58bb04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a0485f9dbed6e3eedeae5aed8a56aadd30532fc78c9562aebea097cb58f045d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
