# Verification target: GRWTSK.Topology.GeneralTopology.Units.Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2180510bcad318116d034f1905b47542dc70b3f1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2180510bcad318116d034f1905b47542dc70b3f1`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Normed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Ideal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Nonunits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [add](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/add--e6c58c27f370e07de7cf262b.md) | 43 | `declaration-track:e6c58c27f370e07de7cf262bcb7dc06935925a69258d79ad2b94ec32246047be` |
| 2 | `def` | [ofNearby](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/ofnearby--feef8f4f4054d16f5d9d2741.md) | 58 | `declaration-track:feef8f4f4054d16f5d9d27412302e56ea291dede495427e5ea578f7bcc76680c` |
| 3 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/isopen--3140193260d7c62f6d539d69.md) | 63 | `result-track:3140193260d7c62f6d539d69901103bbe74835a5a6d8bc9ad92c017be23829a5` |
| 4 | `theorem` | [nhds](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/nhds--cb09e81199ebc6fb0a07c8a7.md) | 71 | `result-track:cb09e81199ebc6fb0a07c8a70bb320f9d1366c284f941f173f525bc4162da207` |
| 5 | `theorem` | [subset_compl_ball](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/subset-compl-ball--207808f99b9fe58baff74ee9.md) | 80 | `result-track:207808f99b9fe58baff74ee97b5aaa11cad091ec109aad9d90842a9c52e83465` |
| 6 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/isclosed--58401e2006743dda70b48ac1.md) | 84 | `result-track:58401e2006743dda70b48ac17c19f44142fbe58405953aafdc8c4d05b5b35e48` |
| 7 | `theorem` | [inverse_one_sub](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-one-sub--2d5b338c810e66ab39cd6f84.md) | 93 | `result-track:2d5b338c810e66ab39cd6f8440354628679772521e57b95ef9c860c7378cecd2` |
| 8 | `theorem` | [inverse_add](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-add--0c68a9693639bee63309a77c.md) | 98 | `result-track:0c68a9693639bee63309a77cd5b8c3e770d236818a666639075f1346026dbdd1` |
| 9 | `theorem` | [inverse_one_sub_nth_order'](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-one-sub-nth-order--35c8560976244779ac73c4a2.md) | 107 | `result-track:35c8560976244779ac73c4a273214d655afcc0d629c378269f15970de679cfc5` |
| 10 | `theorem` | [inverse_one_sub_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-one-sub-nth-order--85467bfa5eae13a391a082ba.md) | 115 | `result-track:85467bfa5eae13a391a082ba56b028657ff467a0d380676629db9f36e77b6c42` |
| 11 | `theorem` | [inverse_add_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-add-nth-order--805669c56472575382e23461.md) | 125 | `result-track:805669c56472575382e234619d8e8c0f3439d0cf7d879ce119036f8cb5d9192c` |
| 12 | `theorem` | [inverse_one_sub_norm](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-one-sub-norm--3c8ca4e7d89aea293dac8848.md) | 135 | `result-track:3c8ca4e7d89aea293dac88485b8840556127038e60bb9ac8a1588ac2a04f4170` |
| 13 | `theorem` | [inverse_add_norm](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-add-norm--dfd01eba5aabbcbdd60ba15b.md) | 150 | `result-track:dfd01eba5aabbcbdd60ba15ba4db8d04650813f37938400709bae6a49c361a7f` |
| 14 | `theorem` | [inverse_add_norm_diff_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-add-norm-diff-nth-order--39f856d43aa41c29015bafae.md) | 160 | `result-track:39f856d43aa41c29015bafae605c6c8b50893bb8b4c61c4e87a5af557f6d5861` |
| 15 | `theorem` | [inverse_add_norm_diff_first_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-add-norm-diff-first-order--35c7c5c18ebd7338797fb89d.md) | 170 | `result-track:35c7c5c18ebd7338797fb89d5dd2dd9f5f8d95395114fbb5e2d93db63c176f96` |
| 16 | `theorem` | [inverse_add_norm_diff_second_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-add-norm-diff-second-order--04057d9f2816f8b95adb0425.md) | 175 | `result-track:04057d9f2816f8b95adb0425824cd35be618114321c0af77a67772e50f111bd4` |
| 17 | `theorem` | [inverse_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/inverse-continuousat--8e62a3554739245716caf0c1.md) | 182 | `result-track:8e62a3554739245716caf0c11dac45a77d8a746b80fda08de4da49ee5d32d060` |
| 18 | `theorem` | [isOpenEmbedding_val](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/isopenembedding-val--40346d721f92fa9b4f38da1e.md) | 199 | `result-track:40346d721f92fa9b4f38da1ec5d0e3c8cd959de3b34eb897609c7ca02a9408fa` |
| 19 | `theorem` | [isOpenMap_val](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/isopenmap-val--308accb521e3a7567ec1d681.md) | 206 | `result-track:308accb521e3a7567ec1d681a57432c4fbb1189e04e5a38c547ac72ccb0fd883` |
| 20 | `theorem` | [eq_top_of_norm_lt_one](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/eq-top-of-norm-lt-one--36d0469150981810146120af.md) | 214 | `result-track:36d0469150981810146120affb4f26631d87f02fcb9484c7f314680c05adfabb` |
| 21 | `theorem` | [closure_ne_top](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/closure-ne-top--c027898681125fca1c78fa61.md) | 221 | `result-track:c027898681125fca1c78fa6135811ec1f844af88c7fbdb5f4567ea0455efb5d0` |
| 22 | `theorem` | [IsMaximal.closure_eq](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/ismaximal-closure-eq--332bd4d4d1583fe3dd4f18f5.md) | 227 | `result-track:332bd4d4d1583fe3dd4f18f5fb2bee4cddbe2e9afd69f4ec675f77cf2b535e00` |
| 23 | `instance` | [IsMaximal.isClosed](../../../../../mathematics/Topology/GeneralTopology/Units/Variant133521864e1a0857775c5340e1e7cbf3e6b7954c3ac9045b9a8b3d7386627de8.lean/declarations/ismaximal-isclosed--2433e0653558386fc0ddd9f6.md) | 231 | `declaration-track:2433e0653558386fc0ddd9f60aaabfcd0a52c97034ce88b68c945130dc42f7cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
