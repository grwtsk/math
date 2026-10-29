# Verification target: Net Angle Accounting Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea7ab1d40a7901e37e62b7bbe65306d9a32d7a75",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/NetAngleAccountingEdition1.lean/index.md) · [Full source](../../../../Combinatorics/NetAngleAccountingEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea7ab1d40a7901e37e62b7bbe65306d9a32d7a75`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vertexDeficit](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/vertexdeficit.md) | 22 | `declaration-track:96cad2baf320a16773026077cd2ab3a91fc534e8730c5f9198a7cd0393ead09b` |
| 2 | `def` | [vertexBoundaryTurn](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/vertexboundaryturn.md) | 26 | `declaration-track:437a96dddccc0438c536112f84db26de6ac188259b679003e8d3087080f92d21` |
| 3 | `theorem` | [vertex_gluing_correction](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/vertex-gluing-correction.md) | 30 | `result-track:cb4aed4ce052f0cfe47963760914a2cef67be8177e80a0cb3c0aface95f8b849` |
| 4 | `def` | [totalBoundaryCopies](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/totalboundarycopies.md) | 41 | `declaration-track:b6142fd768c6ca9c59b7dd3e7211552214ad5bdb947e678f3aa883ad5dba2c72` |
| 5 | `def` | [totalDeficit](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/totaldeficit.md) | 44 | `declaration-track:bff73776aea6547a74908259ebfe9c5f1534b6da39563266ed641763e05fdc77` |
| 6 | `def` | [totalBoundaryTurn](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/totalboundaryturn.md) | 48 | `declaration-track:8e7d8f569bab01bf22cf1c56ab2f5ef746ebdb754cab7522857eec41c65d891d` |
| 7 | `theorem` | [total_gluing_correction](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/total-gluing-correction.md) | 53 | `result-track:668835cd89b0e20a2abd43eda92e4e57369c812a3720c0ffaed78dc8cac551bd` |
| 8 | `theorem` | [cube_count_accounting](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/cube-count-accounting.md) | 65 | `result-track:55a6814375edc87dcaf9ab10a4f54d5b9206bb5866bf6be496150661d00421bd` |
| 9 | `theorem` | [cube_vertex_deficit](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/cube-vertex-deficit.md) | 75 | `result-track:1a6cfc78344951802b21b447fc5fbe00a964ecbe8c376446203a4d6b262bfbc5` |
| 10 | `theorem` | [cube_eight_vertices](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/cube-eight-vertices.md) | 81 | `result-track:8867daf1dac438bf1d68c1d7b5e4026aeb8bb38fcdc9fee8a07cbda648518b53` |
| 11 | `theorem` | [reflex_copy_signs](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/reflex-copy-signs.md) | 87 | `result-track:2ae8268c3e4da54f38b2eb8eba4fd7513ac1291349b97db0add797867812c4b5` |
| 12 | `theorem` | [grouping_changes_deficit](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/grouping-changes-deficit.md) | 96 | `result-track:4469569798ab9319db6cbcc678f401126f9706ce01075898e706b16680c1ecef` |
| 13 | `def` | [prismVertexDeficit](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/prismvertexdeficit.md) | 109 | `declaration-track:508a0bbfa3339e94bf2bdfc16b296d9daec5972ef352ac3cba219c8abfc840e7` |
| 14 | `theorem` | [prism_angle_formula](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/prism-angle-formula.md) | 112 | `result-track:288adf967773c9e396b307668cf4fe37d2c183dc47b9d99f99d50c2d21d4775a` |
| 15 | `theorem` | [prism_total](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/prism-total.md) | 119 | `result-track:660dc7c965cb483359537a06065313f28336c2ff34cfad1343e5a2f870db43b0` |
| 16 | `theorem` | [arbitrarily_small_local_fixed_total](../../../../Combinatorics/NetAngleAccountingEdition1.lean/declarations/arbitrarily-small-local-fixed-total.md) | 127 | `result-track:29870753c41e4d6fa4de7233867a59ce78ce88396def99a7455cef1ea62f2cc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e80dc1fe595b347683b7303714f4107a4b9595130aa916e5b694aa12b177160 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
