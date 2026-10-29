# Verification target: Semiring Inverse Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08c53f1e8099795eb4464912bce05c1c3bf6157f",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08c53f1e8099795eb4464912bce05c1c3bf6157f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Option` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.RowCol` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [detp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp.md) | 35 | `declaration-track:4c0fe9619ae38b43cb3f884578db41a3825cbe3c0d7a01534a727d190ebe7544` |
| 2 | `lemma` | [detp_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-transpose.md) | 37 | `result-track:570f9dbb8e9ef25f422eea3f8768b3e0c15b0532bd3fe1e29edf488f0ef47922` |
| 3 | `lemma` | [detp_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-zero.md) | 40 | `result-track:a56c3a61e600ff9bc99783c0027699615332617a8b0bfc70f4cfa5469cf46a3b` |
| 4 | `lemma` | [detp_one_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-one-diagonal.md) | 43 | `result-track:178c877c7fb730f919427d69327bc2b723c54a5dc33735ad4f0285b266d444ff` |
| 5 | `lemma` | [detp_one_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-one-one.md) | 52 | `result-track:34c9ed33d184a138dfd3d7a05404c9b7e86ae920e571fcf099ba735d21892420` |
| 6 | `lemma` | [detp_neg_one_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-neg-one-diagonal.md) | 56 | `result-track:ac7bd8c9faa3ead5783a22416379bcdc68fb74568059205bc89c3d9f411d7aa3` |
| 7 | `lemma` | [detp_neg_one_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-neg-one-one.md) | 67 | `result-track:6c22b962f677e33df39a1e77881bee1d26557e8b58879dfc42238b52ff6d06af` |
| 8 | `lemma` | [detp_one_of_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-one-of-isempty.md) | 70 | `result-track:28bca5da4b087c169a2d8d0e819b2ff6c7307a7c99d86b17c12b5405d4dc3600` |
| 9 | `lemma` | [detp_neg_one_of_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-neg-one-of-isempty.md) | 73 | `result-track:3db9ab8ec16425abc485baaf6bdc99e1615bcfcb1bdb5144473394689e6e9e46` |
| 10 | `lemma` | [detp_submatrix_equiv_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-submatrix-equiv-equiv.md) | 78 | `result-track:24e990c2d450bb51968681fa233a7274b114ed44eec6c63b14eccf9fc711dece` |
| 11 | `lemma` | [detp_submatrix_equiv_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-submatrix-equiv-self.md) | 82 | `result-track:5e140f7e020ef08f911d6e05c33a2d7c1fffbf3515aa9ebfcfb0ff954c89bebc` |
| 12 | `lemma` | [detp_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-smul.md) | 85 | `result-track:49f119f55e900b32086707ff8f694ed45a9ff7d3ae2f64da06086ddac8f63eda` |
| 13 | `lemma` | [detp_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-map.md) | 88 | `result-track:faa49e01a2912be421f2f324f0dce48283074227aedcb17655304b661cd962f5` |
| 14 | `def` | [IsDetpBalanced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced.md) | 94 | `declaration-track:a54e7bceb8493fa4c0302e902578f7a812b722ee2c723bce290c63d31906992c` |
| 15 | `lemma` | [IsDetpBalanced.refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-refl.md) | 97 | `result-track:9ddb48f1df446097a31a5be9224df652b1ad63c8240766bcc7f04be0922f8480` |
| 16 | `lemma` | [IsDetpBalanced.of_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-of-eq.md) | 101 | `result-track:f638b075184f21331885864e8e1de6bbc2fcdc112a64a978d167428f15fd63d0` |
| 17 | `lemma` | [IsDetpBalanced.symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-symm.md) | 104 | `result-track:b751bcee8fcd454ed8c24f54c7d731644ff1bf612206a70b4868cc44e77ffba1` |
| 18 | `lemma` | [IsDetpBalanced_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-comm.md) | 106 | `result-track:01c07ac1fc953bbf671e7c55955c7a391be4cf67fbfe0af1c204a8594e32e279` |
| 19 | `lemma` | [IsDetpBalanced.trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-trans.md) | 108 | `result-track:1f78383cb9c69e3a16d6131790b5d8c45443b9297eee9fa0b803b4b67eada411` |
| 20 | `lemma` | [IsDetpBalanced.mul_add_mul_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-mul-add-mul-eq.md) | 115 | `result-track:225542de9c1065fd995a8a9304febe0749539858dcf1a40f6232f4a5580c85f9` |
| 21 | `lemma` | [isDetpBalanced_transpose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-transpose-iff.md) | 123 | `result-track:5863ec561107a59e58b9f3ddcee238da9910db3dd98b08c6fec8ec3af9ee8152` |
| 22 | `lemma` | [IsDetpBalanced.submatrix_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-submatrix-equiv.md) | 128 | `result-track:1f84ebd8559bf4661fa30d648fbc9a903f584719607f8555c1d0b6b0ef5aa507` |
| 23 | `lemma` | [isDetpBalanced_submatrix_equiv_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-submatrix-equiv-iff.md) | 133 | `result-track:2bf8099bd86628ac7f680876888187bff338c23d6698177bb4b30b4517175c3a` |
| 24 | `lemma` | [IsDetpBalanced.smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-smul.md) | 138 | `result-track:cb1c706b232b31d353e51274b78d5c971b61c3e4d60a52e4eaca2a6aafe2ae5d` |
| 25 | `def` | [Nonsingular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/nonsingular.md) | 148 | `declaration-track:20e51d700481de5c22022e29b2eba1143e5e65df388756fe24e02bc205aea647` |
| 26 | `lemma` | [Nonsingular.eq_of_IsDetpBalanced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/nonsingular-eq-of-isdetpbalanced.md) | 150 | `result-track:45c86a455a3b13beabd1efde462c437f99fedbf2c2d20544083e6fe2dc879a34` |
| 27 | `lemma` | [IsDetpBalanced.eq_of_nonsingular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-eq-of-nonsingular.md) | 153 | `result-track:7e550953b4b0364c9fa34eb9a1504551ad67b22613d1c148e65362daa984f84e` |
| 28 | `lemma` | [nonsingular_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/nonsingular-one.md) | 156 | `result-track:3639bcfcb160f1c003b9d3519a6b5c0271473fd9261ee79af907d2bb3888f394` |
| 29 | `lemma` | [Nonsingular.of_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/nonsingular-of-isempty.md) | 160 | `result-track:86fcb9cad8866abaafd8d482c631491ac6c96d9e4d502e9db397ed2c03da6c12` |
| 30 | `lemma` | [nonsingular_transpose_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/nonsingular-transpose-iff.md) | 163 | `result-track:d8600f090c74e69145a78e7f817059681fad7053f826e11148c222ff1c5d54c6` |
| 31 | `lemma` | [nonsingular_submatrix_equiv_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/nonsingular-submatrix-equiv-iff.md) | 167 | `result-track:18382334866981a24e76a64599bb25d1454ba1caa522bee8a1a3af1a883cd737` |
| 32 | `lemma` | [detp_eq_of_row_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-eq-of-row-eq.md) | 172 | `result-track:bb14b244ee881098d0e77fef0694ce3346dfd786fdf9196c475370b3aed62474` |
| 33 | `lemma` | [detp_eq_of_col_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-eq-of-col-eq.md) | 180 | `result-track:1cbbc09550a79d75dda458b241aca46f595c6a2a6bc483cc7e863595273cdbc7` |
| 34 | `lemma` | [detp_eq_of_row_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-eq-of-row-eq-zero.md) | 184 | `result-track:74ac6cdfec7c603984bb5be100a6f616045e02729996a67b5ec70e6da0e1107c` |
| 35 | `lemma` | [detp_eq_of_col_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-eq-of-col-eq-zero.md) | 187 | `result-track:baf52d1be0a50a7844f57600d4332a230164a91f26596188aa5bcd3e3fc94ef9` |
| 36 | `lemma` | [IsDetpBalanced.submatrix_of_card_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isdetpbalanced-submatrix-of-card-le.md) | 192 | `result-track:1e8bff2af75a9a0848edf25b5367be1d918258ea9ddb1c9f6bb1268a1fb94457` |
| 37 | `def` | [adjp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/adjp.md) | 210 | `declaration-track:b77c7a197a10274426e32ee6db5dbd71a7303cc318a6c9a40b3b78bfa4916df3` |
| 38 | `lemma` | [adjp_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/adjp-apply.md) | 213 | `result-track:89d67e39c91e2d18bb66a4f07c58e783e2440f2aec74192dc5d41b02c73dfcb5` |
| 39 | `lemma` | [adjp_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/adjp-transpose.md) | 217 | `result-track:08a97e706e9b42e0badf221ec2d23682c6e954b83c27601e6d811acc4fbd147e` |
| 40 | `lemma` | [adjp_none_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/adjp-none-right.md) | 220 | `result-track:bb5f0e00722512082efb89940137d4bbaff6cb057c0736f95f207c4280cf4997` |
| 41 | `lemma` | [adjp_none_none](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/adjp-none-none.md) | 231 | `result-track:42ff46cc4e0dd4f9690ec350b9ef778f3e334092f8eb34a47e68e05a0ac55e95` |
| 42 | `lemma` | [adjp_some_none](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/adjp-some-none.md) | 235 | `result-track:40321b31633edc44fb2d20c4dcc9f9fec822b781492206a5355def26506838cb` |
| 43 | `lemma` | [adjp_none_some](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/adjp-none-some.md) | 241 | `result-track:273bef73bb2824ece29d4b5dcc9ce0e625ef0bd0c07ecd01ae7ddd28f0198dff` |
| 44 | `theorem` | [detp_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-mul.md) | 245 | `result-track:8b701e01571dccf81be002f187fd21228a48bd38b73b7023055a2dcfe7110b99` |
| 45 | `theorem` | [mul_adjp_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/mul-adjp-apply-eq.md) | 285 | `result-track:80cfaa3293562d9aa74d44f8b6301998289c6f271489bf9e02753ed1a98b92c8` |
| 46 | `theorem` | [mul_adjp_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/mul-adjp-apply-ne.md) | 292 | `result-track:e379e29b505289fba39977a89d73b36ebe0e3664ef21e55dd1b49d0f8710848f` |
| 47 | `theorem` | [adjp_mul_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/adjp-mul-apply-eq.md) | 300 | `result-track:129d641767901a82af84f32e485e920e95e9f0f64f3651d525b121415a67c13d` |
| 48 | `theorem` | [adjp_mul_apply_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/adjp-mul-apply-ne.md) | 303 | `result-track:7abef1d7f6f6dd84cd15ab44b32da73a1f2048964a263b4a9ef03e5ed0adb996` |
| 49 | `theorem` | [mul_adjp_add_detp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/mul-adjp-add-detp.md) | 307 | `result-track:9203d4542aadd900192dbef59c8c96d7f6a4323cb11afc9307d64987b007759c` |
| 50 | `lemma` | [detp_option_expand_row_none](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-option-expand-row-none.md) | 314 | `result-track:73e28fd940cc71d6331c14959536e96772ce326a222cb3d256be2be673ba8187` |
| 51 | `theorem` | [isAddUnit_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isaddunit-mul.md) | 322 | `result-track:11de0fdf6ccddb4cb399a228c4598d60dd7e9bd610e346af98c3e02fe6844826` |
| 52 | `theorem` | [isAddUnit_detp_mul_detp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isaddunit-detp-mul-detp.md) | 328 | `result-track:566f0fc02320802699b40fdee52b55697e98e672d9858c0f64a036dcc5f2aa00` |
| 53 | `theorem` | [isAddUnit_detp_smul_mul_adjp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/isaddunit-detp-smul-mul-adjp.md) | 345 | `result-track:bc1d3ad513b7af2d0b319a7928757cd1bdddc939499ad72e3410d60650ccc0ae` |
| 54 | `theorem` | [detp_smul_add_adjp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-smul-add-adjp.md) | 370 | `result-track:b842b077204010b6f0e25712b2b5614e02c596d8da02e0e95e948860138e5484` |
| 55 | `theorem` | [detp_smul_adjp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/detp-smul-adjp.md) | 376 | `result-track:74293a856961db7f453f3e7abb3e48dca7b914718a7074b6a677ee22011b8db9` |
| 56 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SemiringInversePublic.lean/declarations/instance.md) | 387 | `declaration-track:97113837fa0cc9b23691995b0f02b273e3daa5d2327a34d23b3ce55352b9f394` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=629a5c5ce5d04b190eef99c1a4e95e4c5e64419d96cbd7433f98a7ef6180b8fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/SemiringInverse/Variant47f30d841c0ae9839f22278bb3e7db1f8ef207a740f6823421e01d20590f3844.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
