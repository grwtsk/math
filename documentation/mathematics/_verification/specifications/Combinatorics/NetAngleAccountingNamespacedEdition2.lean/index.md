# Verification target: Net Angle Accounting Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1ad1790f19d98e40c4ef0f70ebe018b992a937b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantec5b924c6f7f9b4c5477a473f8450b04da6ada9096a649bbffbad01263e2f047.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/index.md) · [Full source](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1ad1790f19d98e40c4ef0f70ebe018b992a937b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantec5b924c6f7f9b4c5477a473f8450b04da6ada9096a649bbffbad01263e2f047.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantec5b924c6f7f9b4c5477a473f8450b04da6ada9096a649bbffbad01263e2f047.lean.json)

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
| 1 | `def` | [vertexDeficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/vertexdeficit.md) | 30 | `declaration-track:268d5339f1af24181304f27cc0d7b44fe2a04fbabde3019506aa5c7d70a1d2b4` |
| 2 | `def` | [vertexBoundaryTurn](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/vertexboundaryturn.md) | 34 | `declaration-track:1a1e92604fdb6f2a3e744d114d84b110d3bede0dfb2605b39f8bb320a2696485` |
| 3 | `theorem` | [vertex_gluing_correction](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/vertex-gluing-correction.md) | 38 | `result-track:72a2219fcb9a06fdbb9cdf1de6a97f6a6bbab4c557b965ae7256b31c62693cee` |
| 4 | `def` | [totalBoundaryCopies](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/totalboundarycopies.md) | 49 | `declaration-track:5da443d7f402bf97c1be08ae53c1917fbcc78cc4f1473bfe376fad0e4d1b94f8` |
| 5 | `def` | [totalDeficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/totaldeficit.md) | 52 | `declaration-track:12391984d53b4b3fe990cf0cc1e6b0df8793c6fe4c54fda53b909169efc6a87d` |
| 6 | `def` | [totalBoundaryTurn](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/totalboundaryturn.md) | 56 | `declaration-track:efef6fec50fb1aa9b501333a23fed3dcd6b0c4ce793ee37a580f78467dfda3ff` |
| 7 | `theorem` | [total_gluing_correction](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/total-gluing-correction.md) | 61 | `result-track:29686c7bf93a6d7322292a04f8f91dbf0f0c3f93700b7d75c090c5f0f724b7ba` |
| 8 | `theorem` | [cube_count_accounting](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/cube-count-accounting.md) | 73 | `result-track:03d669410cf293b7521c4dfb848f00424056f441771df10ff999ca4e2cb2f87f` |
| 9 | `theorem` | [cube_vertex_deficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/cube-vertex-deficit.md) | 82 | `result-track:1e62c356819f5bb52aec57286804107f9678b859bf5f2e1e08bd02a18ab6b12d` |
| 10 | `theorem` | [cube_eight_vertices](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/cube-eight-vertices.md) | 87 | `result-track:1f500d904fc40ed6368dc53d23b01755ed5b9907026fda40486a968ca7b37382` |
| 11 | `theorem` | [reflex_copy_signs](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/reflex-copy-signs.md) | 93 | `result-track:53e2321976bc532bb81622ade57bd56d758cc68df2d4a30617c10ed622cf65de` |
| 12 | `theorem` | [grouping_changes_deficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/grouping-changes-deficit.md) | 102 | `result-track:928c3608d35b3e745792f3d0204d44a14b1f50219d4cca4345f3def3a48454a4` |
| 13 | `def` | [prismVertexDeficit](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/prismvertexdeficit.md) | 113 | `declaration-track:bc574202c23bcf33d57af9b2d171589579ec787317f176c2083ec05c1bfcbae0` |
| 14 | `theorem` | [prism_angle_formula](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/prism-angle-formula.md) | 116 | `result-track:af951b64138f9cf6883d71ca64046f191ee0f68a3b3e6e164ed32c2fded5b500` |
| 15 | `theorem` | [prism_total](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/prism-total.md) | 123 | `result-track:e95ef2b31fe89f59b2c4b5548609c58a6389ba6856acf5b43bf5f39575e2c391` |
| 16 | `theorem` | [arbitrarily_small_local_fixed_total](../../../../Combinatorics/NetAngleAccountingNamespacedEdition2.lean/declarations/arbitrarily-small-local-fixed-total.md) | 130 | `result-track:af5d853d3fb1dfa5f6c9a2e5eb5b40c3c6f9fe004e1dbf5f49eeb3ed7609621b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67267c0b77234a633106aea3093a6f16553f88151bee75a252967036e1b46799 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantec5b924c6f7f9b4c5477a473f8450b04da6ada9096a649bbffbad01263e2f047.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NetAngleAccounting/Variantec5b924c6f7f9b4c5477a473f8450b04da6ada9096a649bbffbad01263e2f047.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
