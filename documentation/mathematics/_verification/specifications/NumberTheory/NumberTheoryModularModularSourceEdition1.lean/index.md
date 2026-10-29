# Verification target: Number Theory Modular Modular Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3d7a1c1cadb2ffa54e03513d5308040ea6b9b84",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3d7a1c1cadb2ffa54e03513d5308040ea6b9b84`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FiniteDimension` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/macro.md) | 73 | `declaration-track:08546990c9674511b436ffec42fc5cc19e3ca77c5b25c32813b69940142ebe0b` |
| 2 | `theorem` | [bottom_row_coprime](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/bottom-row-coprime.md) | 86 | `result-track:f53b1d0f13ecafea691481e264e1f5906484c8cdb0898d0486f7432a54def201` |
| 3 | `theorem` | [bottom_row_surj](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/bottom-row-surj.md) | 95 | `result-track:9ac4d5c2d38ec4b3f71dee2396c5460448b4e9bbd76f020b9bc09489c103bf6c` |
| 4 | `theorem` | [tendsto_normSq_coprime_pair](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/tendsto-normsq-coprime-pair.md) | 118 | `result-track:1a82ff9e74beb8ae20f8002861d192e42267394aca07718f2fcb3fc5266459c5` |
| 5 | `def` | [lcRow0](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/lcrow0.md) | 169 | `declaration-track:bee78bfcf354cc53d960db6de286d17523cc937823dd3a30d310e28d03b13cdd` |
| 6 | `theorem` | [lcRow0_apply](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/lcrow0-apply.md) | 176 | `result-track:19a8a8e3f8ebc555645aa95b3b2077d1d813937e0b2a4f784dd9201cb8b7e3d6` |
| 7 | `def` | [lcRow0Extend](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/lcrow0extend.md) | 184 | `declaration-track:d3b489ec93ffb6602809e40ade86093e3a0ace8c268f77accbe7dda83fd72c65` |
| 8 | `theorem` | [tendsto_lcRow0](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/tendsto-lcrow0.md) | 198 | `result-track:c5eb0014f4e73478060efdf64a3847c7a0691c582d783ad64bace88c389fe889` |
| 9 | `theorem` | [smul_eq_lcRow0_add](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/smul-eq-lcrow0-add.md) | 241 | `result-track:7421aa6cf484535135df38b1a2d78164361a57f3bf0694c99237ac4da278b643` |
| 10 | `theorem` | [tendsto_abs_re_smul](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/tendsto-abs-re-smul.md) | 257 | `result-track:8076e57c80c73913ba368f3bea767692f9f8da5e316b751cc71cc1e23dda2ed1` |
| 11 | `theorem` | [exists_max_im](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/exists-max-im.md) | 287 | `result-track:bdce5f0df3cf96914a013c9a609be956fdfbc96a1064971b55fcd282f9387b53` |
| 12 | `theorem` | [exists_row_one_eq_and_min_re](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/exists-row-one-eq-and-min-re.md) | 305 | `result-track:e697e3cd9b3375ad5338ab2fc3edcc26e24d5f47392b3907cb94f2f2223176e0` |
| 13 | `theorem` | [coe_T_zpow_smul_eq](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/coe-t-zpow-smul-eq.md) | 320 | `result-track:8448b57650e3a96501f9dd9297cda8140006d062ba722517a5ef70c43d695997` |
| 14 | `theorem` | [re_T_zpow_smul](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/re-t-zpow-smul.md) | 325 | `result-track:cb429a8429888185225c96d0c0b906c598173c09814738fb77e6b0e191b16eb6` |
| 15 | `theorem` | [im_T_zpow_smul](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/im-t-zpow-smul.md) | 329 | `result-track:480ca35a7247b03c7f8e9b288a407817ed779a651aed9a65e32eb5e68472b78e` |
| 16 | `theorem` | [re_T_smul](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/re-t-smul.md) | 333 | `result-track:076945f131ac6dfd02140f85bd18992c9ee8136f34d77440b6df63143356d147` |
| 17 | `theorem` | [im_T_smul](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/im-t-smul.md) | 336 | `result-track:840bf77d9238890310355a08fb1867caf83af4267aac1080dab0ddd3a135f58a` |
| 18 | `theorem` | [re_T_inv_smul](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/re-t-inv-smul.md) | 339 | `result-track:47e5a41bf0ddcf7944792054a2a6f9940ec296588eb0c5b4587faadcd427dcdd` |
| 19 | `theorem` | [im_T_inv_smul](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/im-t-inv-smul.md) | 342 | `result-track:679e3d19828102bbdad60e714dbb17abdaac4dc11695860d35d639ad715718ee` |
| 20 | `theorem` | [exists_eq_T_zpow_of_c_eq_zero](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/exists-eq-t-zpow-of-c-eq-zero.md) | 348 | `result-track:e9f5c1845a82153e7196935dfec455726b48332b51744bbbcc21bd49ad71e679` |
| 21 | `theorem` | [g_eq_of_c_eq_one](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/g-eq-of-c-eq-one.md) | 364 | `result-track:670fce8fd12ea1ce674050ce37d4a2ea87810e514cfc6f8115b94e9e52a755f6` |
| 22 | `theorem` | [normSq_S_smul_lt_one](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/normsq-s-smul-lt-one.md) | 376 | `result-track:ac07823aee2e6dcc0c5f8437ce54bee1973e983e92508c27224a0f923980be5c` |
| 23 | `theorem` | [im_lt_im_S_smul](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/im-lt-im-s-smul.md) | 381 | `result-track:31ebbecbe2dc130f79eea3a26b36d49ca8f229920dd50fdce1d7d378d9735d6e` |
| 24 | `def` | [fd](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/fd.md) | 392 | `declaration-track:7d683dc46fda7dcc2fffc1c9b6fae6924b4bbe5fa39c791d2ef55380558d49c6` |
| 25 | `def` | [fdo](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/fdo.md) | 397 | `declaration-track:4aaa02562491aecd8d4741d4e2ab687e9d73783cfd060f8824b289db21cfd17f` |
| 26 | `theorem` | [abs_two_mul_re_lt_one_of_mem_fdo](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/abs-two-mul-re-lt-one-of-mem-fdo.md) | 409 | `result-track:15eb228246d9068b54aab3019d4a53ea73a6a5735e8e1d3485752f3c57c3c38d` |
| 27 | `theorem` | [three_lt_four_mul_im_sq_of_mem_fdo](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/three-lt-four-mul-im-sq-of-mem-fdo.md) | 414 | `result-track:7a74248ed0b3a4520c12aec0858c90e93eb2d03770e5133197f4d108e75995cb` |
| 28 | `theorem` | [one_lt_normSq_T_zpow_smul](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/one-lt-normsq-t-zpow-smul.md) | 422 | `result-track:287fbb857d156ab7f6268b0718cdd49b6babeac9dad319fc12a1116d81f357c0` |
| 29 | `theorem` | [eq_zero_of_mem_fdo_of_T_zpow_mem_fdo](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/eq-zero-of-mem-fdo-of-t-zpow-mem-fdo.md) | 429 | `result-track:535f039cf9226fa7a192db15b03d9c7cc7136936d4a5d048a7551f32f2f93c7a` |
| 30 | `theorem` | [exists_smul_mem_fd](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/exists-smul-mem-fd.md) | 443 | `result-track:a9efcc4a60f1ea026087e998a8b19af627aa99839d924b8b73f2672bfece203b` |
| 31 | `theorem` | [abs_c_le_one](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/abs-c-le-one.md) | 478 | `result-track:08f504aaf97aa86e1e9abf13f4ed6617b096042ae784faf2a81a9423c40ab009` |
| 32 | `theorem` | [c_eq_zero](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/c-eq-zero.md) | 513 | `result-track:191f21a65df0c7fae4d57275e32c66d80add8cf27ef3f0f09eba58fd4ec7fc9e` |
| 33 | `theorem` | [eq_smul_self_of_mem_fdo_mem_fdo](../../../../NumberTheory/NumberTheoryModularModularSourceEdition1.lean/declarations/eq-smul-self-of-mem-fdo-mem-fdo.md) | 536 | `result-track:231ae709bf0ef677adeb7777e2e0d1390f9249da90729917264d7ea13849416e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49563284e6ed2c69c924cb64e6adabf96f0af9937ab34e23a1c6562cf2eb2fa0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Modular/Variant7040cc4006f4666ee0dd6ba84c65a0210a05343f8566ddb72747e5035c842db6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
