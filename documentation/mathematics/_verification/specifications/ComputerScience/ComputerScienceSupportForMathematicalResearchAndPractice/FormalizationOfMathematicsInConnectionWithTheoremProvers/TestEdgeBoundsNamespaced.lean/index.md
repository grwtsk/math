# Verification target: Test Edge Bounds Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19c8f060a2aa8670cd3b744e0bbe4e029c700bd3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant65325adf5a1c00e7cf347b1cc08bbd44125b1b605af4c403876148393396df08.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19c8f060a2aa8670cd3b744e0bbe4e029c700bd3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant65325adf5a1c00e7cf347b1cc08bbd44125b1b605af4c403876148393396df08.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant65325adf5a1c00e7cf347b1cc08bbd44125b1b605af4c403876148393396df08.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Tactic.IntervalAuto` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Icc01](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/icc01.md) | 13 | `declaration-track:c8dce702bd5a6f206ab8c9c2fc4ec626d920f660c9c717c689e643f8a1b47236` |
| 2 | `theorem` | [edge_bound_def_seticc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-def-seticc.md) | 15 | `result-track:7c75daf8a94ba25f5660c9e52f81d9963b976a0fd504d9ddeb073b3253b21caf` |
| 3 | `theorem` | [edge_bound_neg_interval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-neg-interval.md) | 18 | `result-track:2795d86c22471e98218ab925c83ac458ac258e433c4482fe360e60a7346e5e83` |
| 4 | `theorem` | [edge_bound_abs_interval](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-abs-interval.md) | 21 | `result-track:1b1db87336f56cc6b1180604c572c0d0a8a8b9a78da57cb36bf4857e38a084d7` |
| 5 | `theorem` | [edge_bound_sqrt_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-sqrt-upper.md) | 24 | `result-track:e08f934d1f5bc63aa4c97f27b8c8a23fa33e6bdb54a3bcce444525f984790407` |
| 6 | `theorem` | [edge_bound_rpow_half](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-rpow-half.md) | 27 | `result-track:b27820c76c1ead48b02de16b24ab3562a2169a2210e507214d591992604c69c7` |
| 7 | `theorem` | [edge_bound_rpow_inv_two](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-rpow-inv-two.md) | 30 | `result-track:4215e302c4a2bd063eb0369a7028f085e0add82336232d0d09e355472d64755f` |
| 8 | `theorem` | [edge_bound_rpow_three_halves](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-rpow-three-halves.md) | 33 | `result-track:635571d404f096d041fcfd99eb8e63adfd9182cc47287f772cc098857281cb8f` |
| 9 | `theorem` | [edge_bound_rpow_one_point_five](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-rpow-one-point-five.md) | 37 | `result-track:e7f1ef41968ce95dbe2e7e9215e52092211392e3d91b0259801bf604f045bdff` |
| 10 | `theorem` | [edge_bound_sinh_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-sinh-upper.md) | 41 | `result-track:2d3682725e6a87342a61d0e625feb8747059309b072013f13a266e9130ddbf7c` |
| 11 | `theorem` | [edge_bound_cosh_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-cosh-lower.md) | 44 | `result-track:06bea6c41e27724755ed319a928f19c1b88bd02436fab7e47077cb0c82cf749f` |
| 12 | `theorem` | [edge_bound_tanh_upper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-tanh-upper.md) | 47 | `result-track:5970ac4616eb9a1e5e7d6e61878460eab8384ebe60ef3fef83280d671ea2f1ae` |
| 13 | `theorem` | [edge_bound_tanh_lower](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-tanh-lower.md) | 50 | `result-track:ae24d83933cf837fb09a1236054daa52d9bb8affd94bcbd30c3c0e551b7a0e18` |
| 14 | `theorem` | [edge_bound_pi_shift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-pi-shift.md) | 53 | `result-track:0bea6fb5f5ea967b7416220f5c63b50e66f51a26080b036219ac11b7127d524f` |
| 15 | `theorem` | [edge_bound_strict](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/TestEdgeBoundsNamespaced.lean/declarations/edge-bound-strict.md) | 56 | `result-track:864dde7aacc27de27e7d6176a909f6235fbd1e10bea31cffae09994ed0189636` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d996a8d471e26849a071c93deb7c3d2adf4d093a07cf0dee870cb29a57c4620 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant65325adf5a1c00e7cf347b1cc08bbd44125b1b605af4c403876148393396df08.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TestEdgeBounds/Variant65325adf5a1c00e7cf347b1cc08bbd44125b1b605af4c403876148393396df08.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
