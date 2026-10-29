# Verification target: Graded Algebra Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24cc4f3b310721bad915edd0c40ab80caa117080",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24cc4f3b310721bad915edd0c40ab80caa117080`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Internal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GradedRing](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedring.md) | 65 | `declaration-track:eda8e9a26eb3e2463ca1ac09f5f1776b4c8af078a658135f28788a40411792e2` |
| 2 | `def` | [decomposeRingEquiv](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/decomposeringequiv.md) | 74 | `declaration-track:322dfafb14a7fd06c2f2cb58ab0709deda62741f9b15ad77afa4666744e0b52d` |
| 3 | `theorem` | [decompose_one](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/decompose-one.md) | 82 | `result-track:3434bd41c3394a76e7fd534f6510593f36c3fc740f4b46d9cbb871eedcc587e1` |
| 4 | `theorem` | [decompose_symm_one](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/decompose-symm-one.md) | 87 | `result-track:4e24171b992abc9a7a92361aa120a81bd10a9844856eb6b4ed662da888657f5d` |
| 5 | `theorem` | [decompose_mul](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/decompose-mul.md) | 92 | `result-track:56099b50ed0d49826a9d373718761180fa00e728d0d83912a62bf39ad80d7446` |
| 6 | `theorem` | [decompose_symm_mul](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/decompose-symm-mul.md) | 97 | `result-track:50b74ea7fcb1a8467be1418eff2e2b405640ee511f0bb49b7d31f693155cf07d` |
| 7 | `def` | [GradedRing.proj](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedring-proj.md) | 105 | `declaration-track:56ace6e0d80f6310fc3d0e7d135b4543cd71bda6ab1cc5b4a0e8f7665e86fa0e` |
| 8 | `theorem` | [GradedRing.proj_apply](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedring-proj-apply.md) | 112 | `result-track:eddd6ab64dbc369c8e3886425219e3533f5e3d7b8fe499b9f8d3f0a49f25737d` |
| 9 | `theorem` | [GradedRing.proj_recompose](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedring-proj-recompose.md) | 117 | `result-track:873deac3c5074e2d61565161893ec4bc8a7dcf0c662106070cebcc0c3e081efc` |
| 10 | `theorem` | [GradedRing.mem_support_iff](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedring-mem-support-iff.md) | 122 | `result-track:4969ffe2d5e96908ef8ba06bb9a7421781df0f29cb02c09bcddce7dc1d466341` |
| 11 | `theorem` | [coe_decompose_mul_add_of_left_mem](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/coe-decompose-mul-add-of-left-mem.md) | 139 | `result-track:42edc6b61c6f10665f54113a4fb10b867a63bde1b766c56056f0b685c399f6fa` |
| 12 | `theorem` | [coe_decompose_mul_add_of_right_mem](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/coe-decompose-mul-add-of-right-mem.md) | 145 | `result-track:a8fafbd7957cb7bff3a77a2dc660d2a7868d8e797588d9414626dfda417cc33d` |
| 13 | `theorem` | [decompose_mul_add_left](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/decompose-mul-add-left.md) | 151 | `result-track:cc32d587f687e457f4cfd9ebe0cf2a96b2d58386f247afcc0288efa3c59a2d98` |
| 14 | `theorem` | [decompose_mul_add_right](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/decompose-mul-add-right.md) | 157 | `result-track:5c4a23f057d9bfe13cb8e0444a90eed84a484dd5df0186c1b5e8c5813cc710d2` |
| 15 | `def` | [GradedAlgebra](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedalgebra.md) | 176 | `declaration-track:69986036ea6d875f436c10b02b6bd156f14c2575574aa5705ac7d0887d7d8d8f` |
| 16 | `def` | [GradedAlgebra.ofAlgHom](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedalgebra-ofalghom.md) | 186 | `declaration-track:46b38e113d8c43c2ed9659e92afb98b1568ad016537aaa99636246fe2775e878` |
| 17 | `def` | [decomposeAlgEquiv](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/decomposealgequiv.md) | 207 | `declaration-track:2691f25862da46d187f8346e226e4b4f5b3e113c01d0127ad563ee03e2b5aba5` |
| 18 | `def` | [GradedAlgebra.proj](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedalgebra-proj.md) | 220 | `declaration-track:5c91fc5d3bafa79017a50921b6744855a54f9a940bd45333fc8f0c2abe3834bc` |
| 19 | `theorem` | [GradedAlgebra.proj_apply](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedalgebra-proj-apply.md) | 225 | `result-track:d223887dfc53897c16b37b8f45580c331a3939bf30b801f7f992768f089e95fc` |
| 20 | `theorem` | [GradedAlgebra.proj_recompose](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedalgebra-proj-recompose.md) | 230 | `result-track:3beabac631960c171bda400f4ecbf3c2e4536d61a80504542d0e216aec60806c` |
| 21 | `theorem` | [GradedAlgebra.mem_support_iff](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedalgebra-mem-support-iff.md) | 235 | `result-track:43330c7b3ee3c09d0c2f111a63c0ff4007eef2199aea3eb9db128ab82c5cdcd8` |
| 22 | `def` | [GradedRing.projZeroRingHom](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/gradedring-projzeroringhom.md) | 256 | `declaration-track:76b2fb44b33b01be474702faec4441f797559e4f0f13d7ecd4fa7bdcb6928167` |
| 23 | `theorem` | [coe_decompose_mul_of_left_mem_of_not_le](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/coe-decompose-mul-of-left-mem-of-not-le.md) | 298 | `result-track:87a2cef5f767541ab56e5bb2b6756bf38cc949961ab7f6cd7949169574fc7792` |
| 24 | `theorem` | [coe_decompose_mul_of_right_mem_of_not_le](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/coe-decompose-mul-of-right-mem-of-not-le.md) | 304 | `result-track:21cd6c0b7d7a9b94732c380faf075a3e984ea4b99a40499747a0f4ea21d018a6` |
| 25 | `theorem` | [coe_decompose_mul_of_left_mem_of_le](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/coe-decompose-mul-of-left-mem-of-le.md) | 312 | `result-track:6cd677fc3cfa65eb22d4103b447f0ae05c14adb2e0dbdd59d213d86212b64969` |
| 26 | `theorem` | [coe_decompose_mul_of_right_mem_of_le](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/coe-decompose-mul-of-right-mem-of-le.md) | 318 | `result-track:c174b2f0ac67d454d0a94684ab8a27f86659f61edcf207c61f21bb1ab9eb56c7` |
| 27 | `theorem` | [coe_decompose_mul_of_left_mem](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/coe-decompose-mul-of-left-mem.md) | 324 | `result-track:a98dd92a6cf3c2ae9fe01ede73b28be5b374852d9e5e6814628e109076663f7e` |
| 28 | `theorem` | [coe_decompose_mul_of_right_mem](../../../../CommutativeAlgebra/GradedAlgebraBasic.lean/declarations/coe-decompose-mul-of-right-mem.md) | 330 | `result-track:f6e6a7e9b465a6ffa33dab85a381a89eeb176418701a1d8d2ad4b6a2b58ca230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85dd25db92602e87f4643f129d960109c8ecd04aeab883cb377b07676d09b852 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
