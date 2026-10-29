# Verification target: GRWTSK.Algebra.AffineMap.SourceReconstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffbf648d99ffa4f3e9594fd734d3a0cbf9112493",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AffineMap/SourceReconstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffbf648d99ffa4f3e9594fd734d3a0cbf9112493`.

Source path: `GRWTSK/Algebra/AffineMap/SourceReconstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AffineMap/SourceReconstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Std` — import line 2; external provider; requires a separately pinned dependency.
- `Init.Data.Rat` — import line 3; external provider; requires a separately pinned dependency.
- `Init.GrindInstances.Ring.Rat` — import line 4; external provider; requires a separately pinned dependency.
- [`GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FunctionGluing.Basic`](../../../../../MathematicalLogicAndFoundations/GeneralLogic/FunctionGluingBasic.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Chart](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/chart.md) | 15 | `declaration-track:bec90893b119e4f5cdd34e83a553a171bea7d7d8ae4964a61fcf1e148242b68d` |
| 2 | `def` | [reflected](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/reflected.md) | 19 | `declaration-track:13e92810526200214a51b82a6573068804f79ecfc4e3cf90494c0b430ec6e17c` |
| 3 | `def` | [coordinate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/coordinate.md) | 21 | `declaration-track:e58ae15e84840fd7cb123a1efe8747b4b855bf5ffbb965ccc7e5a91dc18f5c60` |
| 4 | `def` | [reflectChart](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/reflectchart.md) | 23 | `declaration-track:d0a2718f3ed1dc7ccbaac135560f3d33d4bb135ab7fb6c313d55b42ed98fb200` |
| 5 | `theorem` | [reflection_involution](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/reflection-involution.md) | 26 | `result-track:26b000722cae53e71db5afd8da1354f03e4e427ad4081b407ca9deb3cb8de318` |
| 6 | `theorem` | [coordinate_reflection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/coordinate-reflection.md) | 30 | `result-track:f8db0b8e63920f382392a6986984f8b54bcdfe86fe9a7243e7182b957705ca3f` |
| 7 | `theorem` | [chart_involution](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/chart-involution.md) | 35 | `result-track:cf1df30ea63fbcb91c993a6a5394c6347d5f86b42c028fed42399e138ce04b5a` |
| 8 | `structure` | [View](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/view.md) | 42 | `declaration-track:7911c689d8c2ac687e2101771b5018b634ccd97f06db8d8bce350cc88fd7ebf1` |
| 9 | `def` | [encode](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/encode.md) | 46 | `declaration-track:8fa21632f68db24d03bc3c0f9ce152199a39c3bb410d550bdc08f02e5dd7f8fb` |
| 10 | `def` | [decode](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/decode.md) | 47 | `declaration-track:2b28289b108504541ab26fd1cf582b3af34ea9f46f01951976ac5143b3965e3b` |
| 11 | `def` | [reflectView](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/reflectview.md) | 49 | `declaration-track:577100705ec9e3e528db96d69a1d60f13eb3b8bad2b4f07d341f68554e6a379b` |
| 12 | `def` | [observe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/observe.md) | 52 | `declaration-track:0eda9617a50a2a6cf336cdce33b711bf13e406097b23afe4bb61eba48269fd0c` |
| 13 | `theorem` | [decode_encode](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/decode-encode.md) | 55 | `result-track:511324a24726721a4326a2c4f7aa331e893bd4acd85d6fcfd21ba8c2b455c434` |
| 14 | `theorem` | [source_preserved](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/source-preserved.md) | 57 | `result-track:0bebde2bdd6c5fb1953cf60f0196f62ff2cbf66ca6b661f47c95ef9ff35fbad8` |
| 15 | `theorem` | [view_involution](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/view-involution.md) | 60 | `result-track:dc328111f32d7539bd79819bb9284bdc66b8ed876ac006ad6b6d05dd78d4f989` |
| 16 | `theorem` | [observation_reflection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/observation-reflection.md) | 66 | `result-track:00efd883e89abdbb62c56fcb237971ef050cfc65f2def1bc821f02c18c98187c` |
| 17 | `theorem` | [covered_reconstruction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/covered-reconstruction.md) | 73 | `result-track:1f6e4cafecb6396c9b2a4b6b09b4962da6d55741d4242293424ebff9facc6db7` |
| 18 | `def` | [kernel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/kernel.md) | 82 | `declaration-track:d677ae3463eb1d9fa12fc888ba28c2727ba385015a5ef16a04552da9fdc1a571` |
| 19 | `theorem` | [kernel_reflection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/kernel-reflection.md) | 85 | `result-track:34941bfad389dcf922a188e1eb3eb3ba97037e7d2311e7b928f6fadfe8177bd5` |
| 20 | `theorem` | [anchor_control](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/anchor-control.md) | 97 | `result-track:eeeb52cb9f578b720aa1dde5c3daf455daedc35f3afcaa0ccaf9587eb41f83fd` |
| 21 | `def` | [symmetricPolynomial](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/symmetricpolynomial.md) | 104 | `declaration-track:ef5010352a7f50391609e80c64561f0eaab1b962bb5e610528b92eafa8994421` |
| 22 | `theorem` | [polynomial_reflection](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/polynomial-reflection.md) | 106 | `result-track:c8cbe64cbbc2240913a05993867e6c1f133d68b6d2c8cd859894217644bc6003` |
| 23 | `theorem` | [off_center_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/off-center-roots.md) | 111 | `result-track:f835a8853514723e37fe29c9aa6a4c4ec3115379bc54639df1a7607a30abfc66` |
| 24 | `theorem` | [reflected_landmarks](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/reflected-landmarks.md) | 117 | `result-track:16d1e8af6f5df2a09a7bf666578f199c5e1ab97e2cde71146b095090c49e5005` |
| 25 | `theorem` | [conditional_band](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/conditional-band.md) | 123 | `result-track:ed41a2f6cc7f5d31c1590e929263dd6d427aa6a0164919442df4553170157c7d` |
| 26 | `theorem` | [reflection_preserves_centered_square](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SourceReconstruction.lean/declarations/reflection-preserves-centered-square.md) | 128 | `result-track:71b4d04720ec07b02d7b98369a3f294c4282778a758b974a9929520d02cee8ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88105dc298e2b9245532dacc4e741309c06e7bf3119546e99b65f50d1f5ffba5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/AffineMap/SourceReconstruction.lean","GRWTSK/_verification/specifications/Algebra/AffineMap/SourceReconstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
