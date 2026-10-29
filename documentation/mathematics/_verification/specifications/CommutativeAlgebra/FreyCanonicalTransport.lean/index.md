# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f13d91be2af9c9251c524b813d923d60bd3aa22",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f13d91be2af9c9251c524b813d923d60bd3aa22`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalCompletion`](../../../../CommutativeAlgebra/FreyCanonicalCompletion.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionBaseChange`](../../../../CommutativeAlgebra/FreyCompletionBaseChange.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cubicIdeal_map_le](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/cubicideal-map-le.md) | 24 | `result-track:9bd9aecc788dafe86585141dc75295142394b1d5aaff001bb85a93ea65a7d77a` |
| 2 | `def` | [coordinateBaseChange](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/coordinatebasechange.md) | 36 | `declaration-track:5d16cfdfecac78876efcb8edeb8fe339ca35cc04ffc1891f8b33d0dbdff0f9ac` |
| 3 | `theorem` | [coordinateBaseChange_mk](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/coordinatebasechange-mk.md) | 42 | `result-track:503cd33dc7cf16af09b78ecbb39c0f111a6206f9e90e79cd7f395233bd8d9c95` |
| 4 | `theorem` | [coordinateBaseChange_presentation](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/coordinatebasechange-presentation.md) | 47 | `result-track:160a3350df281d6b8e108a8c27a7b200747d1bf320fc5e31f7581d5d326366ce` |
| 5 | `theorem` | [coordinateBaseChange_scalar](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/coordinatebasechange-scalar.md) | 54 | `result-track:8208df5407cfc9ec3367b93d7f9d04c83c479f67089d439e1cdfaada0b54bcf3` |
| 6 | `theorem` | [curveSectionIdeal_map_le](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/curvesectionideal-map-le.md) | 62 | `result-track:52ffc6f9faf9a15f17a2cf15f58334e6cf8df7e502d17667d358f3c37f05fb5e` |
| 7 | `theorem` | [curveSectionPower_map_le](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/curvesectionpower-map-le.md) | 71 | `result-track:21b6b857a14b4c3abe0f7b54fcb3a4b9ca9cba85126721ccd87deeeaece28d3a` |
| 8 | `def` | [powerMap](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/powermap.md) | 78 | `declaration-track:32b25bb2efcae119e776c976c6621757311cec5a14270ff7149c9453304f2941` |
| 9 | `theorem` | [powerMap_mk](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/powermap-mk.md) | 87 | `result-track:4741edd3c9857ec269710780a5317fdbd7bcede0778fb27a0276a1e37e4bc789` |
| 10 | `theorem` | [powerMap_transition](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/powermap-transition.md) | 93 | `result-track:c85e90a50370b36fb7ece4344aef3d6833e927c74e7b09036766c3e01988164b` |
| 11 | `theorem` | [finiteEquiv_natural](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/finiteequiv-natural.md) | 102 | `result-track:4857e2fc031fc33bb9d38171af14231366d3816d16f4fa3f18517fea996e6eb5` |
| 12 | `def` | [stageMap](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/stagemap.md) | 111 | `declaration-track:ae72409cf80f9b02f45ed41e8ac5b0e2bd24c2827d25a0fcfec0844f97ed90d0` |
| 13 | `theorem` | [stageMap_compatible](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/stagemap-compatible.md) | 116 | `result-track:30c1e5b88221f4786fea4d54b2316c0329f1e012c808cbae458d70dca4e6fdbf` |
| 14 | `def` | [canonicalMap](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/canonicalmap.md) | 128 | `declaration-track:78de2be33af16810646a72eaf57d5824e797d21a648e9e8bc39b7f09a0b0dc4b` |
| 15 | `theorem` | [canonicalMap_projection](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/canonicalmap-projection.md) | 134 | `result-track:f6229535affcd063271b7a234a8298a7defa7d5bb05e8f0ac72dcbad1d8dbbde` |
| 16 | `theorem` | [toLimit_natural](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/tolimit-natural.md) | 142 | `result-track:7c7ff95a76e07db43eef994fa9aa4a2709fd4d9b0912fecbce4accfa41622974` |
| 17 | `theorem` | [fromLimit_natural](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/fromlimit-natural.md) | 152 | `result-track:135f728d97b0e508641f497698ea901924d5f1c5a95370a0da12bafb731744aa` |
| 18 | `theorem` | [canonicalMap_id](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/canonicalmap-id.md) | 162 | `result-track:cfdd6948ddec7f120d4170f385a7f5dcada2fb60db71a93a4595b759310d3e70` |
| 19 | `theorem` | [canonicalMap_comp](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/canonicalmap-comp.md) | 171 | `result-track:9e7bb860efc693d2312157c8cbebac5e32686b1762d2d3e2be383ffc4254faa3` |
| 20 | `theorem` | [canonicalMap_of](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/canonicalmap-of.md) | 184 | `result-track:81c08c61a34329fbd400a7f0369ed9a4ad913310e68387f6dff6e01bf24202b7` |
| 21 | `theorem` | [canonicalMap_scalar](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/canonicalmap-scalar.md) | 200 | `result-track:7cc1dc462b7d909827060829e576eb53c9a797f1ce839b8f4fd18c272d55c574` |
| 22 | `theorem` | [adicSeries_natural](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/adicseries-natural.md) | 209 | `result-track:7477428385ff7605a8fd73bc3eb24b0c7b696eee422968600cdb04078c394c82` |
| 23 | `theorem` | [canonicalProjection_zero_map](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/canonicalprojection-zero-map.md) | 223 | `result-track:2fa25999761c4d80b0865d36e39fd64ad4b39033e207f2f10d471d039dbe6fbf` |
| 24 | `theorem` | [canonicalMap_injective](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/canonicalmap-injective.md) | 229 | `result-track:cda44c5105ae7ff0a83bacda2a8dfce8ced2361ee8df27e3296a2d0b643058ed` |
| 25 | `def` | [PrimitiveAdditiveTriple.freyCanonicalSectionMap](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/primitiveadditivetriple-freycanonicalsectionmap.md) | 244 | `declaration-track:24bb3d1779911952c36230890dcf64c0bf56f627bac845b3108b4a04c6f49638` |
| 26 | `theorem` | [PrimitiveAdditiveTriple.freyCanonicalSection_baseChange](../../../../CommutativeAlgebra/FreyCanonicalTransport.lean/declarations/primitiveadditivetriple-freycanonicalsection-basechange.md) | 253 | `result-track:6cc080c8f3065c8fe9a4ed948db5bbd58b2d3d402416c2e791fbd88818dd9dce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcd5090e6e97e0f9763d554b8dc8231e81f74c7facf2b99b813d820420c86452 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean","GRWTSK/_verification/specifications/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCanonicalTransport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
