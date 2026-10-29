# Verification target: Group With Zero Commute Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78bea99160d8dedd8868ea1c159063594a28ba61",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Commute/Variantba5420682924de857c99c95f019c143e4322282ae6ed6843ad4ab106a3ec56ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78bea99160d8dedd8868ea1c159063594a28ba61`.

Source path: `GRWTSK/Algebra/Commute/Variantba5420682924de857c99c95f019c143e4322282ae6ed6843ad4ab106a3ec56ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Commute/Variantba5420682924de857c99c95f019c143e4322282ae6ed6843ad4ab106a3ec56ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Semiconj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mul_inverse_rev'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/mul-inverse-rev-source-edition-2.md) | 34 | `result-track:eea3ed7e1b60ee70c6401897e339f32c05cff5170e4bfa84fc0778a4e9e2bde7` |
| 2 | `theorem` | [mul_inverse_rev](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/mul-inverse-rev.md) | 44 | `result-track:e45d955474ee1a503d2ade19e2c859d895c8c48d6f36e3afaa6f7176d18129e4` |
| 3 | `theorem` | [Commute.ring_inverse_ring_inverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/commute-ring-inverse-ring-inverse.md) | 51 | `result-track:49f791303e187a4ea6b0baffdb66352356713cf04b5d612eb88163ab697dbf75` |
| 4 | `theorem` | [zero_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/zero-right.md) | 60 | `result-track:e3f890ed53600bc00f223675d531805521d72de3342a85870e8bcbfac09f4fa7` |
| 5 | `theorem` | [zero_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/zero-left.md) | 65 | `result-track:78d08e24ddc58fe96cdbeaa5113401a1206e8621fcc7f3a0534c1fb0978a699a` |
| 6 | `theorem` | [inv_left_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/inv-left-iff.md) | 72 | `result-track:fb6c5b775d2aea303fcbc3994fb687487f623dc052a27cde2f79b947042aff8a` |
| 7 | `theorem` | [inv_left₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/inv-left.md) | 76 | `result-track:23f0ba131c55a3fd7d717b6faf1280689e04eb285a2dc09c2ad0c56d55d85fa2` |
| 8 | `theorem` | [inv_right_iff₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/inv-right-iff.md) | 81 | `result-track:1aca7de5329663de2ddbddfeb4f06aba3dd7fb1dcf3d032578be81706b89981d` |
| 9 | `theorem` | [inv_right₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/inv-right.md) | 85 | `result-track:23d904f4e4186aa45db5a0b193cde5c43bb861649cc5b3e7150c0a514b4060f7` |
| 10 | `theorem` | [div_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/div-right.md) | 90 | `result-track:36b944f9ac698c008b378098396ccf15477f939c6c26ceab366f43f3d3fb2197` |
| 11 | `theorem` | [div_left](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroCommuteNamespaced.lean/declarations/div-left.md) | 95 | `result-track:efa8e79e84f67fdfe9fc9b4a2c0bb0dd2c7db8855fa6b39699e0d90127b13cc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6b2daa10eece30fa43b087cf364cfa1b7c47a992402c98bc96fe67b66a1ada9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Commute/Variantba5420682924de857c99c95f019c143e4322282ae6ed6843ad4ab106a3ec56ef.lean","GRWTSK/_verification/specifications/Algebra/Commute/Variantba5420682924de857c99c95f019c143e4322282ae6ed6843ad4ab106a3ec56ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
