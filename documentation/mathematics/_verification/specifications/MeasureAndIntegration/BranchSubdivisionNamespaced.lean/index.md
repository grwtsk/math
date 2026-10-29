# Verification target: Branch Subdivision Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c1c63377f168a60a35d80f5fc6e80de1fdf0230",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c1c63377f168a60a35d80f5fc6e80de1fdf0230`.

Source path: `GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.RectangleContour` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [corner](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/corner.md) | 54 | `declaration-track:241ed6066f53f2552fdf520f93beee918ab091d0c2268326f26439e166483415` |
| 2 | `theorem` | [corner_eq_add_mul_I](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/corner-eq-add-mul-i.md) | 57 | `result-track:a36d606ecd7937c77a1cb1770a9914bffc1624a629ef1317120b711bff3fba97` |
| 3 | `def` | [horizontal](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/horizontal.md) | 62 | `declaration-track:ef48b429290d0f7a60ce16baa1c869b56c4f8b74242bf386ce17d72d78c35ec7` |
| 4 | `def` | [vertical](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/vertical.md) | 66 | `declaration-track:54c213853bd24c484a836d8b5dfb225bc40db559fb4fbf3440627bf53066af31` |
| 5 | `def` | [boundary](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/boundary.md) | 70 | `declaration-track:64daf3c6bbb0ae9a0c2d5fc6e3f420e93c8bdd2ebb94646fac0bb24f8dfe3a4c` |
| 6 | `theorem` | [boundary_eq_rectangleBoundaryIntegral](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/boundary-eq-rectangleboundaryintegral.md) | 74 | `result-track:a8f44e6b1244ac761ad4a22fb5b4d457efc6013019d88e5c596d2efe200dd9c3` |
| 7 | `theorem` | [horizontal_intervalIntegrable_of_continuousOn](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/horizontal-intervalintegrable-of-continuouson.md) | 81 | `result-track:b2800b59e45a5609480618cb09b8daa0a93f3b83f1ee2d597b488f07ae91d792` |
| 8 | `theorem` | [vertical_intervalIntegrable_of_continuousOn](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/vertical-intervalintegrable-of-continuouson.md) | 99 | `result-track:3a3c0ca84bc523f5263a6df68f2e2afc7052dad774213fdf54a5a6fe88bce911` |
| 9 | `theorem` | [horizontal_add_three](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/horizontal-add-three.md) | 117 | `result-track:7bc474318e6473367f79fdb691cc9c19e8b576d8971f18e5b11b75eb3815b3fe` |
| 10 | `theorem` | [vertical_add_three](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/vertical-add-three.md) | 149 | `result-track:6c3e66f089e6258c4f4b161d72e3d3c96e1a0081eee62d5cce17c7a35acdc680` |
| 11 | `theorem` | [four_rectangles_boundary_sum](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/four-rectangles-boundary-sum.md) | 178 | `result-track:1065b50c1cfc302d5229a148f867796285e6e148154e2b986e266eb51a0c4187` |
| 12 | `theorem` | [rectangleBoundaryIntegral_eq_innerRectangle](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/rectangleboundaryintegral-eq-innerrectangle.md) | 226 | `result-track:4b8448cd24142d579fda4b41d9e09ec7b679a814b70856cae3f33de9da0656ab` |
| 13 | `theorem` | [rectangleBoundaryIntegral_eq_innerRectangle_of_continuousOn](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/rectangleboundaryintegral-eq-innerrectangle-of-continuouson.md) | 261 | `result-track:55b124b8d19afc94d0026a95461f715a2e72cdeb08bcc41769a3f5f4b30747a7` |
| 14 | `structure` | [OrderedRectangle](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/orderedrectangle.md) | 307 | `declaration-track:04e08f302ae04defd596ceee4ddda653aba4941336b3a70d16a16d805b74486b` |
| 15 | `def` | [lowerCorner](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/lowercorner.md) | 317 | `declaration-track:15bf3159d0eba33cefe14090034ab9f4746738c53cf9d2a8277546e888ae46cb` |
| 16 | `def` | [upperCorner](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/uppercorner.md) | 319 | `declaration-track:a059b2b746e1238177bba4755c1b13a6c755d13dd353df8dbd3bb8d4339f6488` |
| 17 | `def` | [boundaryIntegral](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/boundaryintegral.md) | 321 | `declaration-track:a97d51e29eb3510e5f156ee852bbc0fd4a822eea6a821acdd89af5df1898f9e6` |
| 18 | `structure` | [Contains](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/contains.md) | 325 | `declaration-track:63d03bc9527779c47ccd35c21720ed58008f53610a57310ef0bd6a8cd33d64fb` |
| 19 | `theorem` | [boundaryIntegral_eq_inner](../../../../MeasureAndIntegration/BranchSubdivisionNamespaced.lean/declarations/boundaryintegral-eq-inner.md) | 334 | `result-track:67341dba9899e2b5ce1e2f80827f7463adc4445fded7e94b0216b5bf35027724` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=631944c6fe1185b61f8364394689e27eaaa40bddaa22be36350e18197c2e308a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/BranchSubdivision/Variantb321992f57a57eb8b5beb0cf5fbe48cdd50ec634e121ca219409d7a77f1753f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
