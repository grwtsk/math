# Verification target: Data Matrix Conj Transpose Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a3306a72ecfc3a22b6df2e1a5f8fb0b98464058",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant95cdba4edaaf9f8449afcdb7d5c09d3cdc38151ff061aaf8d6cd6a384efaf932.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a3306a72ecfc3a22b6df2e1a5f8fb0b98464058`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant95cdba4edaaf9f8449afcdb7d5c09d3cdc38151ff061aaf8d6cd6a384efaf932.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ConjTranspose/Variant95cdba4edaaf9f8449afcdb7d5c09d3cdc38151ff061aaf8d6cd6a384efaf932.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.RingEquiv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.BigOperators` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Module` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pi` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basis` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Mul` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose.md) | 46 | `declaration-track:bfa3b16708a01b856ee36ff9908baf5dc7caf334fb48c44837f726a4b4b9e0ab` |
| 2 | `lemma` | [conjTranspose_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-single.md) | 53 | `result-track:51003e4e26d5a236d008e181724efc7b55f12d69697d1b7e87afe7eec10c41c0` |
| 3 | `theorem` | [diagonal_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/diagonal-conjtranspose.md) | 66 | `result-track:e8de6523a2c8ce5679e2f2d80c2b038363f66cde1cf81a8c6b43a15401c0571d` |
| 4 | `theorem` | [diag_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/diag-conjtranspose.md) | 76 | `result-track:bab07327d71401f5951b06456370991a69e4d07d0164a61fe267d472dd895481` |
| 5 | `theorem` | [star_dotProduct_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/star-dotproduct-star.md) | 90 | `result-track:c0048fa380d084919d8a40ad6a67da7d6661392d7ba0ec16369bae80b246555a` |
| 6 | `theorem` | [star_dotProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/star-dotproduct.md) | 92 | `result-track:c179383d520f3c2706b1df6e38db8bd6bbf08d8de9c1d3d9578140424c30a837` |
| 7 | `theorem` | [dotProduct_star](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/dotproduct-star.md) | 94 | `result-track:8521c4105273e75a12bc9bc094b0f2cc29c53ef643f07c0f22d9b95d18fe7978` |
| 8 | `theorem` | [star_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/star-mulvec.md) | 104 | `result-track:dc388d43b9e0166c6e746a82ad1d53f877471cb6f58a589ae166aa8b9eb83a65` |
| 9 | `theorem` | [star_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/star-vecmul.md) | 108 | `result-track:e8ed257894f48ff9e6d6d05a75e4a5677ee36116f57bb351176fb14b5c8f33a2` |
| 10 | `theorem` | [mulVec_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/mulvec-conjtranspose.md) | 112 | `result-track:4aa53c6de73e9bb427dd621652824b716fcdd137245879df3c319f073c4db843` |
| 11 | `theorem` | [vecMul_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/vecmul-conjtranspose.md) | 116 | `result-track:2d9b861a1fa092c44a7b2d06f31bd8a96e3b04bcd19cf862a5ae16ebb0022bde` |
| 12 | `theorem` | [conjTranspose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-apply.md) | 131 | `result-track:b4b3295a031894ff5f89c5aa4af862eb6d7bfb572413c4a333784da852b129d9` |
| 13 | `theorem` | [conjTranspose_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-conjtranspose.md) | 136 | `result-track:7c9eb1924bb3587b04341f43e61fca49738dfb32c0de54a4e44819f79a3f9064` |
| 14 | `theorem` | [conjTranspose_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-injective.md) | 139 | `result-track:15655a60120c1447300499175fcbf18c34c3f6a269e5ae1f975bdd317c313427` |
| 15 | `theorem` | [conjTranspose_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-inj.md) | 143 | `result-track:44bb5256907635975ba9de9dbf0a868ab7a25a7fc06e06787ebd529ec598f4fb` |
| 16 | `theorem` | [conjTranspose_eq_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-eq-diagonal.md) | 147 | `result-track:baa776cd6e8c4ce9bdec26fdfe58523e6bfd16aaca69c96d47e338cef9562036` |
| 17 | `theorem` | [conjTranspose_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-zero.md) | 154 | `result-track:319b1f2c908b9b9aae27ced80a80a050ccb7de8e1c98792216d1d9505cc67b13` |
| 18 | `theorem` | [conjTranspose_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-eq-zero.md) | 158 | `result-track:07b973a62f3c101b4d311898d6aae0dc396bd1a53c3712db280b6ddaf9011551` |
| 19 | `theorem` | [conjTranspose_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-one.md) | 163 | `result-track:b0c2056ae74c172bd7bbd5f56ece227f931758218d0141eeebfe8aa40e2dae0a` |
| 20 | `theorem` | [conjTranspose_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-eq-one.md) | 168 | `result-track:b91fd9abb68e9ac0af127793d85425bd33b0901d3c3fec89e1ce76b9664483fd` |
| 21 | `theorem` | [conjTranspose_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-natcast.md) | 174 | `result-track:d2f7aee2d74d7a1138fa0652b903808f3e002626637577a037820a9e4a015dd3` |
| 22 | `theorem` | [conjTranspose_eq_natCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-eq-natcast.md) | 179 | `result-track:ed4daaa82ef4743987c7a4c72e4541f544802758cefaead06cac9e1e9e9a6cbd` |
| 23 | `theorem` | [conjTranspose_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-ofnat.md) | 186 | `result-track:b64d47ce4b88f9baa2aead7394db9c00e9940e9566eadf6f0443119f08bffaf1` |
| 24 | `theorem` | [conjTranspose_eq_ofNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-eq-ofnat.md) | 191 | `result-track:5295ed1b144d4bf42d164318736fb03efd302c0f253ac292c59e88202bda1800` |
| 25 | `theorem` | [conjTranspose_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-intcast.md) | 197 | `result-track:964d3185386faaebe89ba823359b1f91d0b22a1030147a321084734a84ff9928` |
| 26 | `theorem` | [conjTranspose_eq_intCast](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-eq-intcast.md) | 202 | `result-track:9c2de0583d51cb3f0328f72c6aae2a2bee378483cc0ba427779cc84b6a810573` |
| 27 | `theorem` | [conjTranspose_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-add.md) | 209 | `result-track:b4d7c0a15c39c1c9cb0e1bf24fa14a89785a0e66c42171a11fed658275e9e846` |
| 28 | `theorem` | [conjTranspose_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-sub.md) | 214 | `result-track:9aca36af17dfc87ad4d572516511ccea79d17778c7c7d0f96beeff303cad3c96` |
| 29 | `theorem` | [conjTranspose_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-smul.md) | 230 | `result-track:78e13127c2b8e8e0099db7904e1f1f6ba69940a36d3ee05d0cf98d6306cb64ed` |
| 30 | `theorem` | [conjTranspose_smul_non_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-smul-non-comm.md) | 235 | `result-track:a8c0030df7a917c710c2e62958987b1ffe609af3c4039dd2d2679407f178c6d8` |
| 31 | `theorem` | [conjTranspose_smul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-smul-self.md) | 240 | `result-track:4b108f9634048d2d0d67733dbfbfa9c3458891d2bec159430b80e91c984df5d8` |
| 32 | `theorem` | [conjTranspose_nsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-nsmul.md) | 245 | `result-track:5e1ae85e7d87fdd9fd6e190b76ffb85ed8032a46d14dd08055abfd16eafe5426` |
| 33 | `theorem` | [conjTranspose_zsmul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-zsmul.md) | 250 | `result-track:21269ffbdd69ba9ca62e9c74e43c0681d5346ca7433d50f74233429913ee2619` |
| 34 | `theorem` | [conjTranspose_natCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-natcast-smul.md) | 255 | `result-track:8636e24ea90d0628e36b3441545dc00a10b2db9c89d78c56353d242c7d2d9f51` |
| 35 | `theorem` | [conjTranspose_ofNat_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-ofnat-smul.md) | 260 | `result-track:d4e34378fb008666d64c86557820a573c628d18f91e16c3d1bded1d59a813e35` |
| 36 | `theorem` | [conjTranspose_intCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-intcast-smul.md) | 266 | `result-track:1ca8a055cb4e24776e28c96172b67950a19af52fed4a4e08e74c18cac1ce8441` |
| 37 | `theorem` | [conjTranspose_inv_natCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-inv-natcast-smul.md) | 271 | `result-track:e243d85a70836cf77bbdbe389974a029b5ca76d26f7459bbeae8b2391709f7ca` |
| 38 | `theorem` | [conjTranspose_inv_ofNat_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-inv-ofnat-smul.md) | 276 | `result-track:bdbb04c970e817b161feca2f910a2aac5e2b7ad7c3a272b8a8adfd128e2f3235` |
| 39 | `theorem` | [conjTranspose_inv_intCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-inv-intcast-smul.md) | 282 | `result-track:32098a484f1f6c3aa88c1b92f291d75bfe8cbf9e77f1d24d1e4adce93950ede8` |
| 40 | `theorem` | [conjTranspose_ratCast_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-ratcast-smul.md) | 287 | `result-track:f28d453c705a580648ff64558a94a31cee7cf071d8c43ca7422aee917563ce16` |
| 41 | `theorem` | [conjTranspose_rat_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-rat-smul.md) | 291 | `result-track:b110f9d88a76758a76a19b3e45a52e0d8c81a04f8c64faa3c394d1e6a39c3626` |
| 42 | `theorem` | [conjTranspose_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-mul.md) | 296 | `result-track:59fd767ab7786ef36dc70c562ae866127d89e12f5db166b8e324f080e065cf7b` |
| 43 | `theorem` | [conjTranspose_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-neg.md) | 301 | `result-track:692ce61d6348bad2d072a9f0f637dc928c48cdee0d0edd0fb9050116bef1015d` |
| 44 | `theorem` | [conjTranspose_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-map.md) | 304 | `result-track:d1353fdc1d432ded16e2de9c7a2543df50af0a1bbaba3c2a76fe3de757206073` |
| 45 | `theorem` | [conjTranspose_eq_transpose_of_trivial](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-eq-transpose-of-trivial.md) | 311 | `result-track:e0808fa675c3fb87bcdd012bfd2948c087f8143b46d2bbe5f829e0215a21a6de` |
| 46 | `def` | [conjTransposeAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtransposeaddequiv.md) | 318 | `declaration-track:6e9fa6ad73e1ae2d272d76b8a3ae734bbb42ee14e200d91fb4da704b88853513` |
| 47 | `theorem` | [conjTransposeAddEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtransposeaddequiv-symm.md) | 326 | `result-track:8f1596ee3d9a7e4af4bb76f386226e603745c9fd9fa118f44ed69d9f57ad9143` |
| 48 | `theorem` | [conjTranspose_list_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-list-sum.md) | 332 | `result-track:6ab49db488c2c184a9eaeb9f52477e3ed94d2b6a0a7da4d513ee686e5f602ef6` |
| 49 | `theorem` | [conjTranspose_multiset_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-multiset-sum.md) | 336 | `result-track:852539bccb62db1bbd4328e08f9107bb2f1cbdf5a4e734d4fa4cf083fe1908ab` |
| 50 | `theorem` | [conjTranspose_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-sum.md) | 340 | `result-track:8fe215b645c0241be5216df27fe5b5505bce4596ec370fffcce4690c1eaa2e26` |
| 51 | `def` | [conjTransposeLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtransposelinearequiv.md) | 348 | `declaration-track:88892353dfad431b36448763a3037009bce12f61f8199bd48c6fa1a329ec22b6` |
| 52 | `theorem` | [conjTransposeLinearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtransposelinearequiv-symm.md) | 353 | `result-track:789758a61609aa3cf348e243e96175d1252761eace5c4ca40d9a0e7e30052193` |
| 53 | `def` | [conjTransposeRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtransposeringequiv.md) | 363 | `declaration-track:37efbb13bd5e1ef49cd038191d7ecc474f3e4fde0559dcd49bd11cbe2a6ff0c0` |
| 54 | `theorem` | [conjTranspose_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-pow.md) | 374 | `result-track:f3578ae6c6d095e9dddd2452d907e26e3b6ca64a9f53ac3c47a0d89252e55d87` |
| 55 | `theorem` | [conjTranspose_list_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-list-prod.md) | 378 | `result-track:7e674eb16afa5c998f257a16bf811d969b94acdbbe127cd279a980e7bb5b93b9` |
| 56 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/instance-source-edition-4.md) | 388 | `declaration-track:e6f36f180900a5d7e4d1faf6d8ea2a1eb2a6e889a07612b532455ce61c08fd27` |
| 57 | `theorem` | [star_eq_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/star-eq-conjtranspose.md) | 390 | `result-track:40915c10e44b626ced5486b561e2af39e6c5c04c8bb18c89558a320fe0c27d59` |
| 58 | `theorem` | [star_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/star-apply.md) | 394 | `result-track:ad3c691d392cd2a10d115091191101ea7f6f78dea610ecae18569dcb097f52cd` |
| 59 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/instance-source-edition-5.md) | 397 | `declaration-track:f0724d0f03ab77bdc8c873332b3f62461db3bd08a77851dae4d90a5c65e28d93` |
| 60 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/instance.md) | 401 | `declaration-track:04c832053606c6f0fa0b5e1a76e9e6d414d739685adb8ee8850c1508fb701763` |
| 61 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/instance-source-edition-2.md) | 404 | `declaration-track:06de9a518db79dac570a9372a889274703f6936d0ace94ebbcbcfee9a078067e` |
| 62 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/instance-source-edition-3.md) | 408 | `declaration-track:57a85d0ed0075bd4f0a7255e202e38b6f2d9f4877e3956694403463777b94e88` |
| 63 | `theorem` | [star_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/star-mul.md) | 413 | `result-track:39d20a80aa149ef2f8f4753690ef863693025d24f854bc019ef8f4720a9a45e3` |
| 64 | `theorem` | [conjTranspose_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-submatrix.md) | 420 | `result-track:fb6ee3daf831abd2c25167a5f839501f9679b1cd55d605130cbefa6ac90d56fd` |
| 65 | `theorem` | [conjTranspose_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixConjTransposeNamespaced.lean/declarations/conjtranspose-reindex.md) | 424 | `result-track:4c50e4386b4fd6aaf034b6ac533eda578213619dd60ffaec09b0fc3557dceb79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63406a6ee90da29b330bb84d49a84e6b1157e0daf45e355eb29e74408f3dddca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ConjTranspose/Variant95cdba4edaaf9f8449afcdb7d5c09d3cdc38151ff061aaf8d6cd6a384efaf932.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ConjTranspose/Variant95cdba4edaaf9f8449afcdb7d5c09d3cdc38151ff061aaf8d6cd6a384efaf932.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
