# Verification target: Lagrange Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20da6377b619e0fb89a973cd5127464ccb1cf0fd",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantbcb91f945a7194a6fb952428ae02d3d65466cbd34f7267a783640d5c6cc7e4d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20da6377b619e0fb89a973cd5127464ccb1cf0fd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantbcb91f945a7194a6fb952428ae02d3d65466cbd34f7267a783640d5c6cc7e4d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lagrange/Variantbcb91f945a7194a6fb952428ae02d3d65466cbd34f7267a783640d5c6cc7e4d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Vandermonde` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_zero_of_degree_lt_of_eval_finset_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-zero-of-degree-lt-of-eval-finset-eq-zero.md) | 52 | `result-track:e6842da2e9c14f60dd9f69eab4528b1875087329f84a4cfb9dbcd6600d6b3834` |
| 2 | `theorem` | [eq_of_degree_sub_lt_of_eval_finset_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-of-degree-sub-lt-of-eval-finset-eq.md) | 63 | `result-track:009437936db9299f6acdf6dacbe2a5746e2291d3832a8c5dffd7c00b5b185749` |
| 3 | `theorem` | [eq_of_degrees_lt_of_eval_finset_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-of-degrees-lt-of-eval-finset-eq.md) | 71 | `result-track:f5230283941ad0f6175d5bbaf955cfa1fdc5d34c7ecdf12ff9c66711480d04fb` |
| 4 | `theorem` | [eq_of_degree_le_of_eval_finset_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-of-degree-le-of-eval-finset-eq.md) | 82 | `result-track:8c789b8dc0f9fa46ae8626276c553b8a0c879f1728fe094d73078c57df906557` |
| 5 | `theorem` | [eq_zero_of_degree_lt_of_eval_index_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-zero-of-degree-lt-of-eval-index-eq-zero.md) | 101 | `result-track:ef2937f6d80daa446ac597b36686e34be815711b7ff53abfda2b124628609a98` |
| 6 | `theorem` | [eq_of_degree_sub_lt_of_eval_index_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-of-degree-sub-lt-of-eval-index-eq.md) | 111 | `result-track:26e8a4970430c134b9712340e110a4f12ba46d416296be1a6389e74f024e869b` |
| 7 | `theorem` | [eq_of_degrees_lt_of_eval_index_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-of-degrees-lt-of-eval-index-eq.md) | 120 | `result-track:fb549cd36ca45e97ae54752e3b9d298218d595177818741788a9ea122f5cf472` |
| 8 | `theorem` | [eq_of_degree_le_of_eval_index_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-of-degree-le-of-eval-index-eq.md) | 127 | `result-track:28d7c3d17376bd8f4215866f824ecb018c1d6705d972bd452838d4caeda41c4e` |
| 9 | `def` | [basisDivisor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basisdivisor.md) | 159 | `declaration-track:e22c65e4e09933a638a26250d2d44fcf9feb5938532b4682206969da36fca40c` |
| 10 | `theorem` | [basisDivisor_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basisdivisor-self.md) | 163 | `result-track:6e5c9c623549e920756dff0e5d926a8e8a604afd430cf9dcf0075fb7c3918998` |
| 11 | `theorem` | [basisDivisor_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basisdivisor-inj.md) | 167 | `result-track:6fca3463aaddfc6fd91101adfe576d29c76030f3d72891adce82d2a66a508b8c` |
| 12 | `theorem` | [basisDivisor_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basisdivisor-eq-zero-iff.md) | 174 | `result-track:ce232597ef3252d845df6c4fda713d3795bf7bb17256da71c4cc3691007bccce` |
| 13 | `theorem` | [basisDivisor_ne_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basisdivisor-ne-zero-iff.md) | 178 | `result-track:a7c848db53eb3c7369f19df83ed158b5e83e29dd31a73646a2e5d1b8f146fa45` |
| 14 | `theorem` | [degree_basisDivisor_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/degree-basisdivisor-of-ne.md) | 182 | `result-track:0bc3dbc9a6083dcc86e5bfd4a41100e8f349540a1053c7cb3a8f261552ac58b5` |
| 15 | `theorem` | [degree_basisDivisor_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/degree-basisdivisor-self.md) | 188 | `result-track:84296d1892a49c9ef6de2788b67ca18c55f73b9dee14e0aabf1876324462aa4d` |
| 16 | `theorem` | [natDegree_basisDivisor_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/natdegree-basisdivisor-self.md) | 192 | `result-track:35294195031f629b26955cc156d54e30988f0a6f20c52f82eff6ba87e3d92c08` |
| 17 | `theorem` | [natDegree_basisDivisor_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/natdegree-basisdivisor-of-ne.md) | 196 | `result-track:d21d1726e11995bd3d2d56ebe6e94b3c45247061cdaf8c5a3bb9ebb379812e6f` |
| 18 | `theorem` | [eval_basisDivisor_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-basisdivisor-right.md) | 201 | `result-track:d404ac15410fdb24c31ecb8ceb9a3feb508cc3d67694592e5596c809ed792cc2` |
| 19 | `theorem` | [eval_basisDivisor_left_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-basisdivisor-left-of-ne.md) | 205 | `result-track:b843988fc3478b49845b39abc0be6890848fa76d2a2f680426c6336fee37fcae` |
| 20 | `def` | [basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basis.md) | 221 | `declaration-track:1bbc4ddfca206217f5dd13dcddff8ecd52a16116b60f4bb3deb8614addc01463` |
| 21 | `theorem` | [basis_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basis-empty.md) | 226 | `result-track:74035699125d3ec99b69d5d790cd5c58baff94b42595910241cef02b8bf9645e` |
| 22 | `theorem` | [basis_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basis-singleton.md) | 231 | `result-track:b304c5f9e0fdffa77b5d2bf48a841c5d0633e3ce93ffa7ba447510dc84686888` |
| 23 | `theorem` | [basis_pair_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basis-pair-left.md) | 236 | `result-track:fbf45962f16993de682b97f75fc6e59e3404e0f82a0ca1c8837aca79be473ec3` |
| 24 | `theorem` | [basis_pair_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basis-pair-right.md) | 242 | `result-track:a3f77917a20ea4c231e129de9203b8916b1793b508eb038c3272c3a21e077898` |
| 25 | `theorem` | [basis_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basis-ne-zero.md) | 247 | `result-track:9e9f89ca9b7cb3ce942c5b9aa4e81465fa794928b07cb76da78efaa059ae3b39` |
| 26 | `theorem` | [eval_basis_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-basis-self.md) | 255 | `result-track:73d82c0c3727b67ca54fa97dcdee5204deb795502eeff3d58a333648ec52ae81` |
| 27 | `theorem` | [eval_basis_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-basis-of-ne.md) | 265 | `result-track:a0d94654c251655e63e592c2277d6ae1b8882be10cf4384fc452a10f45643519` |
| 28 | `theorem` | [natDegree_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/natdegree-basis.md) | 271 | `result-track:de3b96c8639036627920ba6500c68f5c77dd57ad8188fee20ba8d3be6701e620` |
| 29 | `theorem` | [degree_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/degree-basis.md) | 283 | `result-track:f3e06a0e60473a34ac9d472ff65e99f02292dabcbc1c48f11c6b35e3894952c9` |
| 30 | `theorem` | [sum_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/sum-basis.md) | 289 | `result-track:a4de993db7c396a80d9f866eccd2d0209b4f25dc3ce9f2da3bd13749c769514d` |
| 31 | `theorem` | [basisDivisor_add_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basisdivisor-add-symm.md) | 306 | `result-track:183b1944ae9eb54ecb40bf52916f12c437f5f737fc986e53b9db79d8a713340f` |
| 32 | `def` | [interpolate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/interpolate.md) | 326 | `declaration-track:b5f6c47b12c97bcf23e2063408837d2d21e0a3faa0b4daa4da92b2e3ea50a139` |
| 33 | `theorem` | [interpolate_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/interpolate-empty.md) | 340 | `result-track:e4cb916d6d8bb18275db32a598c145d8fb78d68cd91df0e6c2420d47f6c9a8a6` |
| 34 | `theorem` | [interpolate_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/interpolate-singleton.md) | 345 | `result-track:84f3fef41c35f2c2bb4252c9b07c146f4b50877b8681fd7b75731861fa59ff35` |
| 35 | `theorem` | [interpolate_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/interpolate-one.md) | 349 | `result-track:b13e4056173a763f2978c015911bf1d04a371f6e6e90aafafb4bbb522297c5ea` |
| 36 | `theorem` | [eval_interpolate_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-interpolate-at-node.md) | 354 | `result-track:78b42adb810fa53eee3f6913726a8ac470d1e25c5f7d3a3442c83c6fb6c5f88f` |
| 37 | `theorem` | [degree_interpolate_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/degree-interpolate-le.md) | 362 | `result-track:847d6ef7a1502f5c59f78dd8d58dfec784633735cbe4d312ed721815a42b8969` |
| 38 | `theorem` | [degree_interpolate_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/degree-interpolate-lt.md) | 374 | `result-track:1eca6e41bdec959e78c36c9a5c3ddcf9e6ea7464939ecf5e52d880115805ec00` |
| 39 | `theorem` | [degree_interpolate_erase_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/degree-interpolate-erase-lt.md) | 384 | `result-track:a39d05d47fd3ab34faa3bf3c6ba89244711eb02c1805b133e09a79ee95f2aff3` |
| 40 | `theorem` | [values_eq_on_of_interpolate_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/values-eq-on-of-interpolate-eq.md) | 390 | `result-track:1e1cd6a960c5041b6999a4b64a45402edc02ba41a7919888bae5529a18ce7fb2` |
| 41 | `theorem` | [interpolate_eq_of_values_eq_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/interpolate-eq-of-values-eq-on.md) | 395 | `result-track:ee1e3147d5c496dee52ea21fbfa2c854974ce2bf815793eaa1752b0a22a532da` |
| 42 | `theorem` | [interpolate_eq_iff_values_eq_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/interpolate-eq-iff-values-eq-on.md) | 400 | `result-track:7a4c5accab7117290b3618a8538c29d8d0456b3da39146dcdebaa03d907a41eb` |
| 43 | `theorem` | [eq_interpolate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-interpolate.md) | 405 | `result-track:a841ae573ccb68a824c24480e4cd84321a3d183bc498afa3cfa8b39ab9b757fb` |
| 44 | `theorem` | [eq_interpolate_of_eval_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-interpolate-of-eval-eq.md) | 411 | `result-track:86128bee5933757bda2b413fa95d2a0f2161befa5022c25381f2333d526a8962` |
| 45 | `theorem` | [eq_interpolate_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eq-interpolate-iff.md) | 420 | `result-track:3d179d2d5d0b1ddc0b2a3bf111fc2ecb4d7fd33580dfc056471686d7bd7e30b6` |
| 46 | `def` | [funEquivDegreeLT](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/funequivdegreelt.md) | 430 | `declaration-track:8bf8fac80066de8d9b84d798499549bd414b2f5f2bc0ff4a3fdf6a68afce5340` |
| 47 | `theorem` | [interpolate_eq_sum_interpolate_insert_sdiff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/interpolate-eq-sum-interpolate-insert-sdiff.md) | 451 | `result-track:dc78bf2911ed85741dd9333c34eb9cfe16e78ee1e92f37855b8031be01c02e9d` |
| 48 | `theorem` | [interpolate_eq_add_interpolate_erase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/interpolate-eq-add-interpolate-erase.md) | 488 | `result-track:00c6a5bc7ba3e654bdc9dbd4285f3add5d433796d1c70112ad083fa37ccd06fb` |
| 49 | `def` | [nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodal.md) | 518 | `declaration-track:c05309ecdf89ca76be4434ec923b1f17cd618983aa9c90ea6d9fdb8ef1287f5c` |
| 50 | `theorem` | [nodal_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodal-eq.md) | 522 | `result-track:8a0d905c120cf77bb88482381ad225dcae1998e9ebdd2c6844334527a628b092` |
| 51 | `theorem` | [nodal_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodal-empty.md) | 527 | `result-track:a9660b49388732c501f0684b6cefbadc4ff638f01af2cf5ba35cdecfe90d89e5` |
| 52 | `theorem` | [degree_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/degree-nodal.md) | 532 | `result-track:0f0cd4d49eccd9eb008f5e3f9133f86ce1fb41edd4978e23934d48c0c5fcad85` |
| 53 | `theorem` | [nodal_monic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodal-monic.md) | 536 | `result-track:d420a8d30e1729c490c32fca96c4dc0b2e3319ddc25a3791276946eb68805841` |
| 54 | `theorem` | [eval_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-nodal.md) | 539 | `result-track:10eab31dc8d443518962ecd796f716a702c64618aa1733ade7f1884e52786b39` |
| 55 | `theorem` | [eval_nodal_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-nodal-at-node.md) | 543 | `result-track:640f3d101c43c36d1328f0ee67bf904cb8ac22e31a7a57dc96930756f9906d17` |
| 56 | `theorem` | [eval_nodal_not_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-nodal-not-at-node.md) | 548 | `result-track:b9ffbf9e42d13190f5fb7fd89d02fe8fd71997da5a549bc46da45d5c273d7e3b` |
| 57 | `theorem` | [nodal_eq_mul_nodal_erase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodal-eq-mul-nodal-erase.md) | 553 | `result-track:b3b036ff4c75df1a76f2ecdc72747f3a80edf754643eb93a2d6ce021aa195259` |
| 58 | `theorem` | [X_sub_C_dvd_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/x-sub-c-dvd-nodal.md) | 558 | `result-track:e03f942f9565877ef01791c3ad3c4ee4fc8319df472eaa780650f3892080384b` |
| 59 | `theorem` | [nodal_erase_eq_nodal_div](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodal-erase-eq-nodal-div.md) | 565 | `result-track:0998fae648ce1f3e904100642d8d1bd5542825c5f2b0c06279a9e42c5444e0bf` |
| 60 | `theorem` | [nodal_insert_eq_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodal-insert-eq-nodal.md) | 571 | `result-track:7a53db91832f5bb9193546e71126470fcceea32f356bac2d83aa3789e99a2613` |
| 61 | `theorem` | [derivative_nodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/derivative-nodal.md) | 575 | `result-track:365b035218938630457e6b72681aad0991d399665ecc0bdbbe986b895fbe32f4` |
| 62 | `theorem` | [eval_nodal_derivative_eval_node_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-nodal-derivative-eval-node-eq.md) | 585 | `result-track:13ce321d12c1d88c23b6955b66708eed71a2a762c8900d98ffe596a610bf0b96` |
| 63 | `def` | [nodalWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodalweight.md) | 594 | `declaration-track:0207ca30a5f0e474114bd0b68e25b969c5fe36669311cfbbe0bd8e46c5b6c7d8` |
| 64 | `theorem` | [nodalWeight_eq_eval_nodal_erase_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodalweight-eq-eval-nodal-erase-inv.md) | 598 | `result-track:11e8e9e865c46753b8a5c138ffc8ad5bf955d795241f88de1146cc31b57ef7ea` |
| 65 | `theorem` | [nodalWeight_eq_eval_nodal_derative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodalweight-eq-eval-nodal-derative.md) | 603 | `result-track:c420136d2709d9521a5fd48df2a5246757218efe81edf51629c8a440b1315a7f` |
| 66 | `theorem` | [nodalWeight_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodalweight-ne-zero.md) | 608 | `result-track:ba4f687f404608466417197daba307b19e22f0ced67aa9c1ef76e792a71ecf31` |
| 67 | `theorem` | [basis_eq_prod_sub_inv_mul_nodal_div](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/basis-eq-prod-sub-inv-mul-nodal-div.md) | 615 | `result-track:db0dafc0fa4c0c511469cb6b76804d2ccf44d8ae4bc77cec63bf2bc994bb8419` |
| 68 | `theorem` | [eval_basis_not_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-basis-not-at-node.md) | 621 | `result-track:f65f6e6680086d8cd8d493d784363d33086085ae9fad81580d62807b26e6d593` |
| 69 | `theorem` | [interpolate_eq_nodalWeight_mul_nodal_div_X_sub_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/interpolate-eq-nodalweight-mul-nodal-div-x-sub-c.md) | 628 | `result-track:7fe9b5f3d7541b1848f80bc42cd846529e07fd9204c8c759bf38864b223a07dc` |
| 70 | `theorem` | [eval_interpolate_not_at_node](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-interpolate-not-at-node.md) | 635 | `result-track:cb8e8ddb2545f7cefb6f582bbdc9c8c22ac4aa597058ef7cc8371584fe6a3054` |
| 71 | `theorem` | [sum_nodalWeight_mul_inv_sub_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/sum-nodalweight-mul-inv-sub-ne-zero.md) | 643 | `result-track:d2cbc5918f5634e304a07369a1bcedfe45081abe6205fe05979a8d1eb70bd135` |
| 72 | `theorem` | [eval_interpolate_not_at_node'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/eval-interpolate-not-at-node-source-edition-2.md) | 651 | `result-track:daeaaa97b659816335f7beb716fad10cffe015c4548660ebd5533c765204c0b2` |
| 73 | `theorem` | [nodal_subgroup_eq_X_pow_card_sub_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LagrangeNamespaced.lean/declarations/nodal-subgroup-eq-x-pow-card-sub-one.md) | 662 | `result-track:220277bfb50967a608e4316b2585e46092031aa993d62ee9e4f5364348fb34f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d6c545d5c0186631057cd034026414bfe6f4c547bbd627ecda5077fee02dbfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lagrange/Variantbcb91f945a7194a6fb952428ae02d3d65466cbd34f7267a783640d5c6cc7e4d7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lagrange/Variantbcb91f945a7194a6fb952428ae02d3d65466cbd34f7267a783640d5c6cc7e4d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
