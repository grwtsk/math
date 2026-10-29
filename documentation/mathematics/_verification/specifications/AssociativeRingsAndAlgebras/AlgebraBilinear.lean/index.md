# Verification target: Algebra Bilinear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21191c3bd17ca3280441b9068e48385f14d9f69f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21191c3bd17ca3280441b9068e48385f14d9f69f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Iterate` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.NonUnitalAlg` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mul-source-edition-2.md) | 34 | `declaration-track:89c5e8b0b1b143130e07a69bccb3497e4cae75adf9b28f1eb09f218220067448` |
| 2 | `def` | [mul'](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mul.md) | 39 | `declaration-track:2662c041df9e26046ca5bc719aaa73950618507312b7ce03194a9d6557f4beae` |
| 3 | `def` | [mulLeft](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleft.md) | 46 | `declaration-track:2055b4328bef0270e3e01750374a105b8aeca9b47214d497ff8002d85301419f` |
| 4 | `def` | [mulRight](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulright.md) | 51 | `declaration-track:03c23fcb80d17cab47df8793b4bd804f2f73cbafc4ab21a5dc6ac61aa45ce1f9` |
| 5 | `def` | [mulLeftRight](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleftright.md) | 56 | `declaration-track:3225ebeeed8d9ad65bbf03ccf52aa825c17674f2a9d033f8c70ccfd1665ae8b4` |
| 6 | `theorem` | [mulLeft_toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleft-toaddmonoidhom.md) | 61 | `result-track:9c21f1406b33bf8f38a635e09240d28c1264c7dd6b5119da80f4e02f2e81aeb9` |
| 7 | `theorem` | [mulRight_toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulright-toaddmonoidhom.md) | 66 | `result-track:2dcb973461f288d9eceba8c32eef2b99a2c21e5b482e74404b68d1c9cc21166a` |
| 8 | `theorem` | [mul_apply'](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mul-apply.md) | 73 | `result-track:a001a8dfd24f523d5c7efac05890c541df3a190d04001d870bd211df7513ad30` |
| 9 | `theorem` | [mulLeft_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleft-apply.md) | 78 | `result-track:a08a73dd1a01b472c56e61084400fe8bd5383675203fc1ca9651aca6cc58f7a9` |
| 10 | `theorem` | [mulRight_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulright-apply.md) | 83 | `result-track:a3702003b1fb2e042560eb4c2713035d0d461021ee59fb1702ae600fbea95c96` |
| 11 | `theorem` | [mulLeftRight_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleftright-apply.md) | 88 | `result-track:c86e09e6deaf9dce20b475d490484ab03d49208823b1310c53000cb53a650fad` |
| 12 | `theorem` | [mul'_apply](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mul-apply-source-edition-2.md) | 93 | `result-track:ed0fbae69d71464aaad8913d83091fa8842b93f50286c2766b824f7b7f323027` |
| 13 | `theorem` | [mulLeft_zero_eq_zero](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleft-zero-eq-zero.md) | 98 | `result-track:77ca6735651673cd1142da44f5867a807df2e1b52d73f64e529af2bb928f004f` |
| 14 | `theorem` | [mulRight_zero_eq_zero](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulright-zero-eq-zero.md) | 103 | `result-track:ee92a8c9b8757f284fb2b5296c7bb7017c0ca921ff87e75f8b54757754faa23a` |
| 15 | `def` | [_root_.NonUnitalAlgHom.lmul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/root-nonunitalalghom-lmul.md) | 117 | `declaration-track:22452cb442b23f49a74b3377b4daaa8e29461ecafb60949de8d7c96406351448` |
| 16 | `theorem` | [_root_.NonUnitalAlgHom.coe_lmul_eq_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/root-nonunitalalghom-coe-lmul-eq-mul.md) | 131 | `result-track:0933d5349d0aff821d6bf391ebfd6f962c4fba1412dfaddfff0d22e84d3e8ba9` |
| 17 | `theorem` | [commute_mulLeft_right](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/commute-mulleft-right.md) | 135 | `result-track:8ba23941cec3c66e0cdc0cf2ec76d6ebfb9daa1b9a7b75e4e6ad40f9007eba60` |
| 18 | `theorem` | [mulLeft_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleft-mul.md) | 141 | `result-track:70c74a5ac02e2d6607418d9acab882269bd7d69c4d7398f9d7dfc4c1118271e6` |
| 19 | `theorem` | [mulRight_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulright-mul.md) | 147 | `result-track:8d85dcdb65f447525f5b824ac88bd9ca3a66dfbf81bfd0f6c1b5951824f0e59e` |
| 20 | `def` | [_root_.Algebra.lmul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/root-algebra-lmul.md) | 162 | `declaration-track:9ca8c81591d193e23d77d4439fb0cd18cac6be906613aa4c65a6541ccb53ec85` |
| 21 | `theorem` | [_root_.Algebra.coe_lmul_eq_mul](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/root-algebra-coe-lmul-eq-mul.md) | 183 | `result-track:a4f7e6ae0faa79a02e802821ac6b729b9ede819cde66f2bf92972e64a1ad0237` |
| 22 | `theorem` | [mulLeft_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleft-eq-zero-iff.md) | 188 | `result-track:6c0cdeeb6940870e1c5c00c5d184fb26cdc68ffa353c8ac755606fb259f8d827` |
| 23 | `theorem` | [mulRight_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulright-eq-zero-iff.md) | 197 | `result-track:425abdeb7f528867b95cbeab90dc8d430aaacf54d359fa78f3c76519fc3cad72` |
| 24 | `theorem` | [mulLeft_one](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleft-one.md) | 206 | `result-track:a849441cc198677a688229f18b7d5b9ba0fd16af76f5e9a989fc82f66842c0b1` |
| 25 | `theorem` | [mulRight_one](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulright-one.md) | 212 | `result-track:b5fac149321039af6b6a488058c5dd785f5ecf44ca1446771576df9f347fbdc3` |
| 26 | `theorem` | [pow_mulLeft](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/pow-mulleft.md) | 218 | `result-track:d5e122607a4e4e9e57104fb32ec12429c48f7eeb6a60f5bd3ebe235ca0b8a4af` |
| 27 | `theorem` | [pow_mulRight](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/pow-mulright.md) | 223 | `result-track:39cde43812164ea6d57bc80006d1a75d9972459eb6f7d8bf2528715dcd01f479` |
| 28 | `theorem` | [mulLeft_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulleft-injective.md) | 235 | `result-track:6b498be787e2557cd7bb894319a5d57153341dd220900be1b44ef3e95dd9b756` |
| 29 | `theorem` | [mulRight_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mulright-injective.md) | 242 | `result-track:905d49fd8bd3273d2076101856280279fe449a307012d08618885e4a899d671e` |
| 30 | `theorem` | [mul_injective](../../../../AssociativeRingsAndAlgebras/AlgebraBilinear.lean/declarations/mul-injective.md) | 249 | `result-track:4cb0dcfe2fe286c467f38f89a8edf41ae9289289e6a4160183ebf1b659be5ca7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee13fecfcd0015c347dbaa966ef7acf19b4495ba2fa3bf5359291b425e92bd06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bilinear/Variant5ed053dbedb6c1d5d462d16157e7de39c7deace063efb322d932e6c7d14c0225.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
