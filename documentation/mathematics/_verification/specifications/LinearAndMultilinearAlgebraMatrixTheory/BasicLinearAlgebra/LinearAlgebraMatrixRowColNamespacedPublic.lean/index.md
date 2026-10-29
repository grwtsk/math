# Verification target: Linear Algebra Matrix Row Col Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09a8f85f8f04592bbae9dfe9dc64635acdcb53d3",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09a8f85f8f04592bbae9dfe9dc64635acdcb53d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replicateCol](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol.md) | 47 | `declaration-track:2cc6d362b457ab2cac1e94d2d4a684e24372ce79374bfe7dc7851196190f1874` |
| 2 | `theorem` | [replicateCol_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol-apply.md) | 52 | `result-track:8d0afa37a1dec5548e8763825db7bf11ea27218a28e15df638a7d23e4e1cf15c` |
| 3 | `def` | [replicateRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow.md) | 60 | `declaration-track:4e7188c04a48dfa829315bae96deed08bc537fb459fb06b27bb5c34b13b82a69` |
| 4 | `theorem` | [replicateRow_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-apply.md) | 67 | `result-track:3ef5aee902bf1b2c34aeb78d212cf25c63085a98b2a8b562f990162be821a6ac` |
| 5 | `theorem` | [vecMulVec_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/vecmulvec-one.md) | 71 | `result-track:83d177655a522b367e6ed183ea01cb7d552102580e2baf0db7dca1335890f0a3` |
| 6 | `theorem` | [one_vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/one-vecmulvec.md) | 76 | `result-track:f9305cc96fa8f563d23bd090a0b87d92f0d329f5b28aec97387195f63f55cdb9` |
| 7 | `theorem` | [replicateCol_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol-injective.md) | 80 | `result-track:5718bdbd24b48e32d64bcae2ab6dca52369c94a29402720335833c3b12c5336c` |
| 8 | `theorem` | [replicateCol_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol-inj.md) | 85 | `result-track:a1e2884cc9885ba84b143e5a827c4cb69b5677bed8718c761346e5c3dccf1e26` |
| 9 | `theorem` | [replicateCol_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol-zero.md) | 89 | `result-track:14329086b69efe729cc76631af945a15af213e63644d0da9dab0cd4afaa2dc77` |
| 10 | `theorem` | [replicateCol_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol-eq-zero.md) | 91 | `result-track:d09bfef8e6cdef24ada8c410ba10ceb7fdc28ddf18a65c0993318563d517cb0a` |
| 11 | `theorem` | [replicateCol_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol-add.md) | 96 | `result-track:b5566d5e2b4ead06c1d1d6dbc4bda74c70e8d14359aca905b8c7dde87ed337cd` |
| 12 | `theorem` | [replicateCol_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol-smul.md) | 102 | `result-track:93f53226733d2f69fb7874bcf016ef07c23c467f7133e5e2d3a7fa6aa5b3f64b` |
| 13 | `theorem` | [replicateRow_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-injective.md) | 107 | `result-track:516e10d9048b9e8da4feaa9f68466585fa2ce0f86e50f2db9c8725b4c2fe465b` |
| 14 | `theorem` | [replicateRow_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-inj.md) | 112 | `result-track:9a357f7a723af70c8fc8e39bfd5902cb30691e6cc6f9a82133e5580da4a724f2` |
| 15 | `theorem` | [replicateRow_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-zero.md) | 116 | `result-track:e41f48849e55e1ae5c3d30b281334871db040cbacbd64566e367764fc63418b0` |
| 16 | `theorem` | [replicateRow_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-eq-zero.md) | 118 | `result-track:f44067da558ecfac00d657088b5ceb346d04924b6d05d783f310714e15bd2007` |
| 17 | `theorem` | [replicateRow_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-add.md) | 123 | `result-track:41f489002ee6bff8470e8fbcdfd9265fbbbde483d30eb326834ba93a4698ebd4` |
| 18 | `theorem` | [replicateRow_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-smul.md) | 129 | `result-track:97a1916258ec70f51d1499e6e27c9d7ad0e42cb8320502bd519ffba0d265640f` |
| 19 | `theorem` | [transpose_replicateCol](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/transpose-replicatecol.md) | 135 | `result-track:7fdfba82cc21586659f39d46e7274218d502cae2ffe8de64c4df882bb30a3b54` |
| 20 | `theorem` | [transpose_replicateRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/transpose-replicaterow.md) | 140 | `result-track:b755eae6abbfa789bbdceb8de919759a07f3d56e951588a7e3bcbd11d398b7b5` |
| 21 | `theorem` | [conjTranspose_replicateCol](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/conjtranspose-replicatecol.md) | 145 | `result-track:9311a30e9f6ae5a266744831991563f0f841ae05f037e940b49c5a5aa7fae7b9` |
| 22 | `theorem` | [conjTranspose_replicateRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/conjtranspose-replicaterow.md) | 151 | `result-track:223243c237b41b0bbeba4a0b4b231b9d6a5b1a22278ae6415ad7cc02856f0952` |
| 23 | `theorem` | [replicateRow_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-vecmul.md) | 157 | `result-track:79fc16100b7043921778bb6c7dee2cc70a1d116aa6bb2f2d5afbd32bba065417` |
| 24 | `theorem` | [replicateCol_vecMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol-vecmul.md) | 162 | `result-track:a0d7035c8aa406c7681de1018130e9b54548f84ad2d1843a5bdd943d7d70ac34` |
| 25 | `theorem` | [replicateCol_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicatecol-mulvec.md) | 168 | `result-track:bb5e82b8b29bf9ab669147cc6b9599713ef74fe9fa73b7cf2818000946442c9b` |
| 26 | `theorem` | [replicateRow_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-mulvec.md) | 173 | `result-track:9e84b3b3544bee6d8c838a564c8fc5fcbb178b7b8730907cb3ce388ef628d7ea` |
| 27 | `theorem` | [replicateRow_mulVec_eq_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-mulvec-eq-const.md) | 178 | `result-track:ab64e3b665cc6b79f29b8da1195c0f607e5ea2e70bcbe5b1891eb84d16e35bb9` |
| 28 | `theorem` | [mulVec_replicateCol_eq_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/mulvec-replicatecol-eq-const.md) | 181 | `result-track:fc888a971fd4dfcfa1b3fc0240281147f4555c5d23a28d15b759cf3b27386e07` |
| 29 | `theorem` | [replicateRow_mul_replicateCol](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-mul-replicatecol.md) | 184 | `result-track:b4ceedda8505fed52c7f5b6a3f48f501d815ae5f3f6c44e02801b8aa2712c895` |
| 30 | `theorem` | [replicateRow_mul_replicateCol_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/replicaterow-mul-replicatecol-apply.md) | 189 | `result-track:1473a6b5b995d7f82740c76c06d9cacb22d2ad137d06ed38f0387e0de77e67c3` |
| 31 | `theorem` | [diag_replicateCol_mul_replicateRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/diag-replicatecol-mul-replicaterow.md) | 194 | `result-track:a5045b56a86d44f243a37906d471d80a4bc753b2303e55f2e0ab7c6c59edd116` |
| 32 | `theorem` | [vecMulVec_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/vecmulvec-eq.md) | 201 | `result-track:fb3d62c958e028d49237976b90b964f6b123cdfd6de53624c46162a9d43e177c` |
| 33 | `def` | [updateRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow.md) | 209 | `declaration-track:2e677805f9aa79c76c0a61a0f9e7af6903fd6c3301758be40c60cb31711f2703` |
| 34 | `def` | [updateCol](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol.md) | 213 | `declaration-track:9220f8ecf2d5ed7dfaf674d329a6dbb5b66b203fb1b6ecd9c6748ce24f47f1b2` |
| 35 | `theorem` | [updateRow_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-self.md) | 219 | `result-track:f0f6474628153cad3c7b697d520ad0c684c6822e31c5f1ff8db72e7595510a2d` |
| 36 | `theorem` | [updateCol_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-self.md) | 223 | `result-track:d51e557fa7dc087e575eed50d7dea20484a9ef55536308dea9ef7bce06fd8de8` |
| 37 | `theorem` | [updateRow_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-ne.md) | 227 | `result-track:a71a12b43309feb2403dd833e91da69446cbcaf4807991a9cea9b31cf198f4fe` |
| 38 | `theorem` | [updateCol_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-ne.md) | 231 | `result-track:d53f5f2e66fcab0e9ed70d89ecffb45e1e0d240c2ddcb3f0ff90e1f9f398994a` |
| 39 | `theorem` | [updateRow_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-apply.md) | 235 | `result-track:af90ea7ba0aaea355f26873a60d5bfeeca8a3bfbd350c89a15d03c0124ea4719` |
| 40 | `theorem` | [updateCol_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-apply.md) | 241 | `result-track:c96b16c4b41a75fb03c4e2b353ddd1dfef6f89663ff45e125ddc6a61440e18bf` |
| 41 | `theorem` | [updateCol_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-subsingleton.md) | 248 | `result-track:774bf2cda4c4cb204a5dd6747d9c404cc664a2ed0efaf3749b797bbc39c99c73` |
| 42 | `theorem` | [updateRow_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-subsingleton.md) | 254 | `result-track:0ab2b477853eab97fd9bd9c41bd31640c614c4d352ad4f862a13cf5db2687fd3` |
| 43 | `theorem` | [map_updateRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/map-updaterow.md) | 259 | `result-track:d7edba770935d299a853fbcc65d92c1d1c40a94162f045e863c7a0d4659d9fae` |
| 44 | `theorem` | [map_updateCol](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/map-updatecol.md) | 265 | `result-track:196b850083d4ee93f73ebfc058a1bcc3e75bb132bb42a001174d2492f2f4ac1a` |
| 45 | `theorem` | [updateRow_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-transpose.md) | 271 | `result-track:0e9472cb6db84d96178f230af5a662519b8e157d5cf3895f4c76325b4061029f` |
| 46 | `theorem` | [updateCol_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-transpose.md) | 276 | `result-track:20a4425da3387401e4dcb8d73d992343a7b3249e15b61227336b975d61471b90` |
| 47 | `theorem` | [updateRow_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-conjtranspose.md) | 281 | `result-track:8e725c370e3c040f548cdc6065ded10d2d86abfe8fd11567c8f423d87fde40b7` |
| 48 | `theorem` | [updateCol_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-conjtranspose.md) | 287 | `result-track:de14892e690fb2002db275fd3ab286b8c3a20fab85c198c31b7cb4d5c66d5c5e` |
| 49 | `theorem` | [updateRow_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-eq-self.md) | 294 | `result-track:68c4a3ed837ecd4dba48865e98d536667724f6bc982c4df6e2bc43793920fca5` |
| 50 | `theorem` | [updateCol_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-eq-self.md) | 298 | `result-track:a2ae91b3a4ff7a06f22492f439054b0330af73bc8ee11de9909fbe118d9c0fe3` |
| 51 | `theorem` | [updateRow_zero_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-zero-zero.md) | 303 | `result-track:013558ba370e670d9b496b84faae797ef01bb37ec9c7c98a489022eda399c097` |
| 52 | `theorem` | [updateCol_zero_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-zero-zero.md) | 308 | `result-track:e57f6d1f69d0f152c4c51f78914b71257d75f4e7831c1899e22477744d6b01ab` |
| 53 | `theorem` | [diagonal_updateCol_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/diagonal-updatecol-single.md) | 312 | `result-track:58dd18cfcdaf8d5f9b798628488aeae5bb37f2c1df57dc7f644d4b9fa8a770f0` |
| 54 | `theorem` | [diagonal_updateRow_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/diagonal-updaterow-single.md) | 325 | `result-track:42707f1701ae4fdb0a8353f7313d291f3176abefd56aa4676348af9b8a120825` |
| 55 | `theorem` | [updateRow_idem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-idem.md) | 330 | `result-track:6006592ae995cf70bda31440f42fb216ecdff3a402904e460704b05627faccae` |
| 56 | `theorem` | [updateRow_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-comm.md) | 333 | `result-track:96c65c5d5027d0dbf406255c9905f221646777ae41ac10329590b2fe1b3ba8f3` |
| 57 | `theorem` | [updateCol_idem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-idem.md) | 338 | `result-track:40366bce4597b6f76201920db95d69c9ab6a4c7ecdcf926d6e658703cee5bb6c` |
| 58 | `theorem` | [updateCol_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-comm.md) | 342 | `result-track:ba7d0e0052c8007466d472f3db3cf78a0533f583c7ffb0a8da86cdfe5a03bec3` |
| 59 | `theorem` | [updateRow_submatrix_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-submatrix-equiv.md) | 349 | `result-track:f5c4b76dd22882382fca1bb8cb7df33d12a9ca43681d3f5167b92456b11100ca` |
| 60 | `theorem` | [submatrix_updateRow_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/submatrix-updaterow-equiv.md) | 355 | `result-track:de19d568d34c368e0241bbf37730a0d50c2ec88483184a97cb0e948bb35de332` |
| 61 | `theorem` | [updateCol_submatrix_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-submatrix-equiv.md) | 360 | `result-track:9c77c08f443e9b114b3e0cc8d4d5dc2654777baf4eaaeea39f9a13d2ac1336ae` |
| 62 | `theorem` | [submatrix_updateCol_equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/submatrix-updatecol-equiv.md) | 366 | `result-track:423c325837dbc338a2a84dd8712f0a1faedca0d652913694b115518d671c0bf1` |
| 63 | `theorem` | [updateRow_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-reindex.md) | 374 | `result-track:2eaf7f339be60e8914d9d8f5a080f0a87030d97be4e4dc5cc0d6727205d00af6` |
| 64 | `theorem` | [reindex_updateRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/reindex-updaterow.md) | 379 | `result-track:a1fdd088ca4aab1e5d6c0807539adb13f3127335c8a05762e000e0a312cc47d9` |
| 65 | `theorem` | [updateCol_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updatecol-reindex.md) | 384 | `result-track:bea330fcc6ae0076de9567e812e7803faedc7f78dcb26cee8a3758125c1cfed6` |
| 66 | `theorem` | [reindex_updateCol](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/reindex-updatecol.md) | 389 | `result-track:abc3543f0bdd60e01ddab64a6f97dbbe745865d495e63e2763e939c58e148249` |
| 67 | `theorem` | [single_eq_updateRow_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/single-eq-updaterow-zero.md) | 394 | `result-track:b20430e2961080c43d93f5c2b977ea8fd55dd891b593ffcfbfeaa1e2b17bfcc3` |
| 68 | `theorem` | [single_eq_updateCol_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/single-eq-updatecol-zero.md) | 398 | `result-track:7e304f86f67c5898b50f5eb66700c8a5d25622070b01bb99de77d3b7128b55fb` |
| 69 | `theorem` | [updateRow_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-mulvec.md) | 404 | `result-track:d100d57f04db5ce2c9e52d918a20e7e42245514d53ebd0c96b3405a17da1fc8f` |
| 70 | `theorem` | [vecMul_updateCol](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/vecmul-updatecol.md) | 412 | `result-track:0691f905e7a8fc0cb1d3f00120d8bebb6f1a03c9ccb9f4384d87f9a7ff0ff7e3` |
| 71 | `theorem` | [update_vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/update-vecmulvec.md) | 420 | `result-track:410146586b9a788e52e555eeff62a6b61e60e10713e3111eb2f18c233b88d62e` |
| 72 | `theorem` | [vecMulVec_update](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/vecmulvec-update.md) | 427 | `result-track:92ed2463600fc12e65e74e037a8519f39438696077e2c5f60c2a84af8f8e2d23` |
| 73 | `theorem` | [updateRow_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-mul.md) | 434 | `result-track:941b21e3419e49644c49dd9812eb8d1b01a7ed0d04ea6f4253f433e460158033` |
| 74 | `theorem` | [mul_updateCol](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/mul-updatecol.md) | 442 | `result-track:10c2079f6ae1fb7a410acb6ffb2ce50411f65d5599f1f8af2b0c7caf069ffe5f` |
| 75 | `theorem` | [mul_single_eq_updateCol_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/mul-single-eq-updatecol-zero.md) | 451 | `result-track:357377dc2440ae14011e80fda33804772c7aee490a2733b64a3a0b734bb6ede9` |
| 76 | `theorem` | [single_mul_eq_updateRow_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/single-mul-eq-updaterow-zero.md) | 457 | `result-track:dae87eadbdfc1a42136319e9d2154b6910809262ac1cd7da5ce506c06b679e2a` |
| 77 | `theorem` | [updateRow_zero_mul_updateCol_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixRowColNamespacedPublic.lean/declarations/updaterow-zero-mul-updatecol-zero.md) | 465 | `result-track:84dbc18729a50301356e268acfa0ba0a8696c10c605891a275839237b8fb7605` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=870f7b5fc54ac489d7fcc133953c005014529da6ccaeb2a2e050ef4f0c9af6ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
