# Verification target: Operator Norm Mul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ed221011e163658539a5afae02b4603d803afbf",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OperatorNormMul.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OperatorNormMul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ed221011e163658539a5afae02b4603d803afbf`.

Source path: `GRWTSK/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Bilinear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mul](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/mul-source-edition-2.md) | 37 | `declaration-track:407637f13ac97892e19db4067edaff5961b1f1227205f46783b0b24497cb7c30` |
| 2 | `theorem` | [mul_apply'](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/mul-apply.md) | 41 | `result-track:b32719d7c8c46faef0438206deade1f356a4e79777a1f2de766d3cdc50e8dee4` |
| 3 | `theorem` | [opNorm_mul_apply_le](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-mul-apply-le.md) | 45 | `result-track:cc833f28e3a6414e425255f604ca3335525dbdc40cd5a82b0a4b858f8acc8b1e` |
| 4 | `theorem` | [opNorm_mul_le](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-mul-le.md) | 49 | `result-track:a07eba239fc6f66d5361fcdaf32986229ea5a4c04f6685ec469107539503a50a` |
| 5 | `def` | [_root_.NonUnitalAlgHom.Lmul](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/root-nonunitalalghom-lmul.md) | 61 | `declaration-track:cbe41c8b94f9f7f5b065ec8695fbb542782297617dadb84cb8f438d5dce2ed0f` |
| 6 | `theorem` | [_root_.NonUnitalAlgHom.coe_Lmul](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/root-nonunitalalghom-coe-lmul.md) | 68 | `result-track:89788fe4b2d0ed0b5928cd3bfb825b765aa497960eafc58176ec94a38db76492` |
| 7 | `def` | [mulLeftRight](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/mulleftright.md) | 74 | `declaration-track:c10a51c8e1d8c642837faaef8853283ce937578caf44c2fb533dd4603a05d422` |
| 8 | `theorem` | [mulLeftRight_apply](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/mulleftright-apply.md) | 78 | `result-track:85b3c6b36d3e14d326b7de8a7829db43e91d441315354fb073c59becb8bbe72b` |
| 9 | `theorem` | [opNorm_mulLeftRight_apply_apply_le](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-mulleftright-apply-apply-le.md) | 81 | `result-track:548d5282100de4b937bf2f4aac5b226d9e8a69c280e7db31831274190d59d8fb` |
| 10 | `theorem` | [opNorm_mulLeftRight_apply_le](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-mulleftright-apply-le.md) | 88 | `result-track:0a7e0a0419c7beea9f8cb925bb6c88026cd5d721f56022439a62c3af92cee273` |
| 11 | `theorem` | [opNorm_mulLeftRight_le](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-mulleftright-le.md) | 91 | `result-track:8bb84e3a2a7dfad120656a0f9eefaa192f0a8da549c107e569f22849e889aeef` |
| 12 | `class` | [_root_.RegularNormedAlgebra](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/root-regularnormedalgebra.md) | 104 | `declaration-track:f23db8e8de818b051f9f2933cac59fc9a92db3d056848c6ef8695fe68728d9d1` |
| 13 | `instance` | [_root_.NormedAlgebra.instRegularNormedAlgebra](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/root-normedalgebra-instregularnormedalgebra.md) | 109 | `declaration-track:55abb1d492dc1adfa88c423c3276bd052bdaadce37a6e242f9791e0779caec3a` |
| 14 | `lemma` | [isometry_mul](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/isometry-mul.md) | 118 | `result-track:eefa52f5b45b21a9a1ab08fd194c149a679c05c4781d2fa789a155d00917a901` |
| 15 | `lemma` | [opNorm_mul_apply](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-mul-apply.md) | 122 | `result-track:0e821645db923e7e637793ce2faebe0e1493198d6fef739736e9395606ab5fed` |
| 16 | `lemma` | [opNNNorm_mul_apply](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnnnorm-mul-apply.md) | 127 | `result-track:1e6e2b0a39f2b8180094aec97a933867bd249395d449c02a81b11932fed3226c` |
| 17 | `def` | [mulₗᵢ](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/mul.md) | 133 | `declaration-track:1294f4d3a176b696e6af5fc300757c32ba120a0cfee633de105ea293c835efbf` |
| 18 | `theorem` | [coe_mulₗᵢ](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/coe-mul.md) | 138 | `result-track:72137e7e3e2c0035abcc3e2af2bcaad9879653a4c488641c49f9fd9e4dde0b2f` |
| 19 | `lemma` | [flip_mul](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/flip-mul.md) | 147 | `result-track:1f1d067f52a7df002ba55a4f99e2b422cc88666e4741396e96b54b3fa7fb6da7` |
| 20 | `def` | [ring_lmap_equiv_selfₗ](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/ring-lmap-equiv-self-source-edition-2.md) | 157 | `declaration-track:75578f112c39407be2149f6e640f85327e94e89bff0837b1f41e487329db06e6` |
| 21 | `def` | [ring_lmap_equiv_self](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/ring-lmap-equiv-self.md) | 167 | `declaration-track:6c9b78996193618ba46338002d4ef010f4bf85a443058fa85c6df0b57674cdff` |
| 22 | `def` | [lsmul](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/lsmul.md) | 186 | `declaration-track:d75f4b48d70f9cbfe6c1ff41aba52aa0539a87f366933ab40558d7e6ba76303f` |
| 23 | `theorem` | [lsmul_apply](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/lsmul-apply.md) | 191 | `result-track:7644fe287b58f4b21217c9ed4026becdd21b7db1164940833ff9a437d16630da` |
| 24 | `theorem` | [norm_toSpanSingleton](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/norm-tospansingleton.md) | 196 | `result-track:dcd4700d253dd1cf3d136952b459e0583bd7726238e481fa4444c2ff21fdd1e2` |
| 25 | `theorem` | [opNorm_lsmul_apply_le](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-lsmul-apply-le.md) | 203 | `result-track:ae5e9de8c9a57caa23ff4e4fd2587622457f90acf5f66819aefc4e2647c55130` |
| 26 | `theorem` | [opNorm_lsmul_le](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-lsmul-le.md) | 208 | `result-track:39dca89b90e3cef4388e1866435b4602e743efc071894da168efe9071ebb1a97` |
| 27 | `theorem` | [opNorm_mul](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-mul.md) | 232 | `result-track:8e86886cd9dde7c435d455112d0ed23aeabe5c9bd4e7c73dedcfcbbebf1f783d` |
| 28 | `theorem` | [opNNNorm_mul](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnnnorm-mul.md) | 237 | `result-track:6621bfb6e6dc2d7e8e7adb14079f13538ed058ecfbce24b20c40f553010b0296` |
| 29 | `theorem` | [opNorm_lsmul](../../../../FunctionalAnalysis/OperatorNormMul.lean/declarations/opnorm-lsmul.md) | 247 | `result-track:74fa9218d2d030c83df4ee818f942259564a31bbe51aa66dc19c18e3e7627bf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1e5071b9cbdfd78bc95e79245b8e627ff72b63b511e9f3fdc2ee0a01ad6b409 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean","GRWTSK/_verification/specifications/Analysis/Mul/Variant5ab0b276660075c202f24d0ca03465402c94c3d36d1c92968b73d76ba6b3fb88.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
