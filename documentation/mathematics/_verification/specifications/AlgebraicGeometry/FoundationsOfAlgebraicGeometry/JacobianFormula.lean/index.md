# Verification target: Jacobian Formula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40ba44ca762a4798015e4d3acc0ee5bdf3cd8660",
  "lexical_observation_count": 135,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40ba44ca762a4798015e4d3acc0ee5bdf3cd8660`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Formula/Variant1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Formula` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.EllipticCurve.Jacobian.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/macro.md) | 67 | `declaration-track:3995f1d0c46ab48819306de15c1bfedb80af780af3bd21ac98ea459a15229add` |
| 2 | `def` | [negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negy.md) | 85 | `declaration-track:eada78c979502a7950a434be77766dbdda12942e24caf5ee0d53734d53bb4a5b` |
| 3 | `lemma` | [negY_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negy-eq.md) | 88 | `result-track:8f0728961b893fd244c5c644bb75c2a9eb16ea54ad6289404e26259f1c5b9431` |
| 4 | `lemma` | [negY_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negy-smul.md) | 91 | `result-track:d8cc84be074b544b9e64adfa47b2ec98de1d4b3aa101c2fc48242a031a93082e` |
| 5 | `lemma` | [negY_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negy-of-z-eq-zero.md) | 95 | `result-track:4f1ab73e779a312493a5569ed5e0c2e3112e7bcaa5a5d2bf617db860dd57ca0d` |
| 6 | `lemma` | [negY_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negy-of-z-ne-zero.md) | 98 | `result-track:6f9c08d685e600b9afafcc2a2d2c38e328ad2cab3afa700aad6c05a07c4a93f8` |
| 7 | `lemma` | [Y_sub_Y_mul_Y_sub_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/y-sub-y-mul-y-sub-negy.md) | 103 | `result-track:cfd4fd38084f1ac6f55750261b315cbcee4a55c60944f74c88572103ade8c057` |
| 8 | `lemma` | [Y_eq_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/y-eq-of-y-ne-source-edition-2.md) | 111 | `result-track:92b9734f4a81221f38c56a8a50c888bc77102e4a35aa518526dbf7e02985bb38` |
| 9 | `lemma` | [Y_eq_of_Y_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/y-eq-of-y-ne.md) | 117 | `result-track:2129378b945bc2cac9456c92dfc22b1dea72c5cbf085449a7b409eb7865b9396` |
| 10 | `lemma` | [Y_eq_iff'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/y-eq-iff.md) | 123 | `result-track:20e23ac1e6bf9d40a0d11e3dd71d58b2a822e6adadf9fa483a0746b50da09cda` |
| 11 | `lemma` | [Y_sub_Y_add_Y_sub_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/y-sub-y-add-y-sub-negy.md) | 128 | `result-track:c09541c4f279627e99bb1847df897813a42a1c5fe625fc523693b1f94904df66` |
| 12 | `lemma` | [Y_ne_negY_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/y-ne-negy-of-y-ne.md) | 133 | `result-track:5e9df80988ce76ddcb32bb49eb17c29b7ee56ce7f6548409baea9ca81a610612` |
| 13 | `lemma` | [Y_ne_negY_of_Y_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/y-ne-negy-of-y-ne-source-edition-2.md) | 141 | `result-track:796649bc888c9e6b46906a421394abdcf789a2f3b8dcdc1d0f1e300169e8a47a` |
| 14 | `lemma` | [Y_eq_negY_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/y-eq-negy-of-y-eq.md) | 149 | `result-track:e9c534eff7529600f8195aa2bddc21314729a6cb4bdc73944d4517951963b56f` |
| 15 | `lemma` | [nonsingular_iff_of_Y_eq_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/nonsingular-iff-of-y-eq-negy.md) | 155 | `result-track:a65923b7916aa91c5eb6d7dd353f6605cb28f268273fbd3c4d2bac424da9d4d7` |
| 16 | `def` | [dblU](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblu.md) | 167 | `declaration-track:93f86cec759d48b474dee9e9354f57c6be04f2729119e97118cac41a7b796d52` |
| 17 | `lemma` | [dblU_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblu-eq.md) | 170 | `result-track:3fa0ad0e019a33546076dbb4eece94283e2ececae252bd1e9c2221f33baeefbc` |
| 18 | `lemma` | [dblU_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblu-smul.md) | 174 | `result-track:b8a303f8f735388c7f0469f5ab19279083c972b9e97f361993c93bcbd8436ef1` |
| 19 | `lemma` | [dblU_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblu-of-z-eq-zero.md) | 178 | `result-track:a49d88aee51741d8428b5b5b1f03ce28dc1dacf10ba5fa3afaa14fbfa4d70780` |
| 20 | `lemma` | [dblU_ne_zero_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblu-ne-zero-of-y-eq.md) | 182 | `result-track:4fc5605788d0f243d62be7b4c9ea686970d887f382054c7f83895ef04ec24750` |
| 21 | `lemma` | [isUnit_dblU_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/isunit-dblu-of-y-eq.md) | 187 | `result-track:95e4952eb572c87285e3ee79d19b6e10c4a88ef670dec6075a33ebaf54234581` |
| 22 | `def` | [dblZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblz.md) | 195 | `declaration-track:b48d31f33bb9bd3ccd731b98dc40773119dd3e9424510db08855dd794edc74f2` |
| 23 | `lemma` | [dblZ_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblz-smul.md) | 198 | `result-track:2a4a749881840c32359101f4f6eb0818ea207923414d6a173b2af8affa6fa99d` |
| 24 | `lemma` | [dblZ_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblz-of-z-eq-zero.md) | 202 | `result-track:f3262f4a766a2a147355564595c70cfd99117ecf111327a4ef68b504bbfa00ac` |
| 25 | `lemma` | [dblZ_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblz-of-y-eq.md) | 205 | `result-track:9904f0845a9087a3395ebc31ececec0457ba809c7f734825209532cac7209378` |
| 26 | `lemma` | [dblZ_ne_zero_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblz-ne-zero-of-y-ne.md) | 210 | `result-track:51cd031aeb1a26233b789f08d117e5b97dae66441463bcaed9daa8057b249d5d` |
| 27 | `lemma` | [isUnit_dblZ_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/isunit-dblz-of-y-ne.md) | 215 | `result-track:66565e12075022d952a20c0e67955708b2f665d9271294988ed7652e7e10685d` |
| 28 | `lemma` | [dblZ_ne_zero_of_Y_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblz-ne-zero-of-y-ne-source-edition-2.md) | 219 | `result-track:5bc822b0974bffae7bdc877abb4a0cb125dfa42761c8ac2325fa5ec3d46b729d` |
| 29 | `lemma` | [isUnit_dblZ_of_Y_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/isunit-dblz-of-y-ne-source-edition-2.md) | 224 | `result-track:dbb118ce2175e66f7001b311927eb1c593fbf03104767e173ca046e613263832` |
| 30 | `lemma` | [toAffine_slope_of_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/toaffine-slope-of-eq.md) | 229 | `result-track:c381e82e9271b55f14f521c3fc355bb14f0a9a18977e24a81817940221ee1f61` |
| 31 | `def` | [dblX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblx.md) | 243 | `declaration-track:c9ac5e9b17b0cf108b6788fee767c92c8b59692d565e539bc1e3ee1178e2510b` |
| 32 | `lemma` | [dblX_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblx-smul.md) | 247 | `result-track:fc5ddd1d96c326feb0450f24ffaa82051587d31b8500d3b6c40cdb555afbf9de` |
| 33 | `lemma` | [dblX_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblx-of-z-eq-zero.md) | 251 | `result-track:c436ede447a5035a600ff93e42196c8c091dad5a7147298dd859b37fc92b52ec` |
| 34 | `lemma` | [dblX_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblx-of-y-eq.md) | 256 | `result-track:b824e5bb217dcc1b4d9fd3b14d02035a8771797218039c513f32d6f599b2ae28` |
| 35 | `lemma` | [toAffine_addX_of_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/toaffine-addx-of-eq.md) | 262 | `result-track:970d2bb6b793740d653ba85174af548bf8f7936106bbfe9db4992e990340c00c` |
| 36 | `lemma` | [dblX_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblx-of-z-ne-zero.md) | 268 | `result-track:33c60ad72ca15074810f5bd5a7566d76e98864b996085395324fcb7fee2d68d6` |
| 37 | `def` | [negDblY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negdbly.md) | 278 | `declaration-track:89089f50198f7b01065d27f3bdefd765b321c8ca2ed7079062e4a8bd6d6aa8bb` |
| 38 | `lemma` | [negDblY_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negdbly-smul.md) | 281 | `result-track:ddd1cda3f63d22d09090cab042d639a06d8b24068f2b7e0bf06ad8d17b71e898` |
| 39 | `lemma` | [negDblY_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negdbly-of-z-eq-zero.md) | 285 | `result-track:ff5d096089de7d0ff2618b44146028dfc2bbcfa87fe9b4cc9d8470e0a60791aa` |
| 40 | `lemma` | [negDblY_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negdbly-of-y-eq.md) | 291 | `result-track:6a486b109f23e48c16670e2023004410e4b0acd515882b0a29bebba6e310f637` |
| 41 | `lemma` | [toAffine_negAddY_of_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/toaffine-negaddy-of-eq.md) | 297 | `result-track:a629519f64b41c0405dbad5d7c8e2fce1144a06afb90c4e7787b116404f66a3e` |
| 42 | `lemma` | [negDblY_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negdbly-of-z-ne-zero.md) | 305 | `result-track:7f332be84e400e027a0222858abdb663bce75596aa4b0cfd258517e1df9e8ede` |
| 43 | `def` | [dblY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dbly.md) | 316 | `declaration-track:c1301865a53757c84141c7c1c3df056e2fd806f353f044dc91de701e25609a6b` |
| 44 | `lemma` | [dblY_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dbly-smul.md) | 319 | `result-track:e8419f357c63dbd89d7992ad83a71eccc20fc5f59d87a7c370b4f6f4a66db727` |
| 45 | `lemma` | [dblY_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dbly-of-z-eq-zero.md) | 323 | `result-track:0c3d31dea204399e173acf19658267cf9dc954f782ef7d6f121c6793dfbc3c11` |
| 46 | `lemma` | [dblY_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dbly-of-y-eq.md) | 328 | `result-track:ae9887669fe5a030c56d471ce2db1cb416ab6637607efed8ec0f2eeb13b86072` |
| 47 | `lemma` | [dblY_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dbly-of-z-ne-zero.md) | 334 | `result-track:54ac5ef997fa7e9aaa6dff81a0687a1b05db4f46970487169e7e27a48caf3132` |
| 48 | `def` | [dblXYZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblxyz.md) | 344 | `declaration-track:e56017c510e35078368f81aed9a40ddf73b967c28ddc1d156428611523cc204a` |
| 49 | `lemma` | [dblXYZ_X](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblxyz-x.md) | 347 | `result-track:193d0c9d1e74085bd21dee01eefd97b0c78b52b600b5406b39792adcadb7a831` |
| 50 | `lemma` | [dblXYZ_Y](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblxyz-y.md) | 350 | `result-track:d09baa890f68b6356014aa641139eee4911b93a0733e276d359034f640cf5df9` |
| 51 | `lemma` | [dblXYZ_Z](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblxyz-z.md) | 353 | `result-track:b19bc5f0f5de4973f1401c255ea3b4fbf46e3d4beee94d0797d679e978bda1b0` |
| 52 | `lemma` | [dblXYZ_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblxyz-smul.md) | 356 | `result-track:0e05065a8513dc816af5f0af9054730ffc4532d94057a3aae15977a396b1e27b` |
| 53 | `lemma` | [dblXYZ_of_Z_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblxyz-of-z-eq-zero.md) | 359 | `result-track:cac65618c60eea09164e19fb645107b47e0c6ace93b886b3e36d53e5a914133a` |
| 54 | `lemma` | [dblXYZ_of_Y_eq'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblxyz-of-y-eq-source-edition-2.md) | 364 | `result-track:5b2a4379a55e4603e514a60fc9e2d174c73464d2ddde3c835b4fa27dbd732ed9` |
| 55 | `lemma` | [dblXYZ_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblxyz-of-y-eq.md) | 370 | `result-track:01ea224a333c5c2ecc070bf5c54a4eb4aae761db1df1d658e46280f9d28017f4` |
| 56 | `lemma` | [dblXYZ_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/dblxyz-of-z-ne-zero.md) | 375 | `result-track:5c1f73c92f5b25d4261e8b468b011828570ffc94fb8f6922fd9bdfb93638bde6` |
| 57 | `def` | [addU](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addu.md) | 394 | `declaration-track:d86968aa43f52d6366e6be9e148aff3d2b26838445bb344265e21241bad9153b` |
| 58 | `lemma` | [addU_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addu-smul.md) | 397 | `result-track:3e1f88a39d949b2ec722c6fa39f9740180323a0e374540bb54f912be62ab6541` |
| 59 | `lemma` | [addU_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addu-of-z-eq-zero-left.md) | 402 | `result-track:7403394dd7252f0b13edf4d46fc5d2b5b41387d1c5d1cf8d96474683052e03bd` |
| 60 | `lemma` | [addU_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addu-of-z-eq-zero-right.md) | 405 | `result-track:8cab3737be34211ab3a074fbe10680daf57e194e61f636a09336258c22c507f7` |
| 61 | `lemma` | [addU_ne_zero_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addu-ne-zero-of-y-ne.md) | 408 | `result-track:b5c62e001f9b683fd13dfecc5a723a70c8acb743f1028e81096ec5a7f0da2096` |
| 62 | `lemma` | [isUnit_addU_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/isunit-addu-of-y-ne.md) | 412 | `result-track:02c4a59e1bd9622daa7af4fd8354640397bbdbe6e8d3aae2a55c8c837755e5de` |
| 63 | `def` | [addZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addz.md) | 420 | `declaration-track:610914e381666ad60a5b5e1fe6ee451d4b13b433e38bff1a5055437ead624b85` |
| 64 | `lemma` | [addZ_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addz-smul.md) | 423 | `result-track:49931a84ab8f11af49fd57f071f059371b4be423e7de95eeba695b12a00a8f71` |
| 65 | `lemma` | [addZ_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addz-self.md) | 427 | `result-track:7b8d957d6053dcba8c0edeae77b3aedb69a0b9cdb40d2274660026d3233ac129` |
| 66 | `lemma` | [addZ_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addz-of-z-eq-zero-left.md) | 430 | `result-track:2d049fb7c4a93409055a72a215b857e1bdb3e13ce682aa36d4a447d3bd98d2f0` |
| 67 | `lemma` | [addZ_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addz-of-z-eq-zero-right.md) | 434 | `result-track:5e668e09636c53c18b84f8276c0f5ab89306b0f1266c4b98883276d0717e9227` |
| 68 | `lemma` | [addZ_of_X_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addz-of-x-eq.md) | 439 | `result-track:6f8015ecfbc96ca112466e4e6d621d286353f21206a2daa8bbdca32eb82cb23d` |
| 69 | `lemma` | [addZ_ne_zero_of_X_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addz-ne-zero-of-x-ne.md) | 442 | `result-track:6c9c7876347c43b3f28c95147ab5200e80f0949f20ec3e113587cca1df72826a` |
| 70 | `lemma` | [isUnit_addZ_of_X_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/isunit-addz-of-x-ne.md) | 445 | `result-track:2ef2ec47db49ddf7245e02de4ce4eb5cd7b858e14cebcfa88a606fc44e8d497c` |
| 71 | `lemma` | [toAffine_slope_of_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/toaffine-slope-of-ne.md) | 449 | `result-track:efd848144db0ab1f5c65a8914229ed808cbf97ac7a2629b87a5e5e21d1d6f43d` |
| 72 | `def` | [addX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx.md) | 464 | `declaration-track:7b33c993d94b2654b3767857da2d8d331aea4a22b11a32a67ef4f7a9d87cdd33` |
| 73 | `lemma` | [addX_eq'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx-eq-source-edition-2.md) | 471 | `result-track:ee0f145e732eeff02d9eae1b1cfa9fa611ef6a45caf6660a6bd395cd3d307729` |
| 74 | `lemma` | [addX_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx-eq.md) | 480 | `result-track:9c61a7c2663289cc5cdcb579078e409f6041ea2d79f72d17f6bb330bc31fe42f` |
| 75 | `lemma` | [addX_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx-smul.md) | 488 | `result-track:4989870164f63c0dd331f6c9c38eba4cfe3fe7a6f712b76e2597a9034635ad90` |
| 76 | `lemma` | [addX_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx-self.md) | 493 | `result-track:7e54b1492c5ec992703d5b4281667246932a6f1ad5e8ff3ac7c86ec32f674f4a` |
| 77 | `lemma` | [addX_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx-of-z-eq-zero-left.md) | 496 | `result-track:883a2a956bcdf507fe606134344358cee91e484c7f6048dc31571c58ba112e26` |
| 78 | `lemma` | [addX_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx-of-z-eq-zero-right.md) | 501 | `result-track:43c31163dbe7fd6e1839285a611272cf5a34edce4845168532e103dd8b4b3e55` |
| 79 | `lemma` | [addX_of_X_eq'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx-of-x-eq-source-edition-2.md) | 506 | `result-track:d8160fa9c85d84d73ed11a3c0c5588cb690eddf5c437c78d3920c78947ebb0ab` |
| 80 | `lemma` | [addX_of_X_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx-of-x-eq.md) | 512 | `result-track:d2d4e222eb85231ca2cd7450ebf985919a0d829b602dedf68943f8b8a9e6bde8` |
| 81 | `lemma` | [toAffine_addX_of_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/toaffine-addx-of-ne.md) | 517 | `result-track:8cc8349c878d71cab82e2ce7d0c2371e16542bd8f34f4ad34b8190e5d10fce0e` |
| 82 | `lemma` | [addX_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addx-of-z-ne-zero.md) | 524 | `result-track:b664b5eaa38ddd51a44dc31fca196b04ff4a1fdeabbb6b71e52e05c43569b865` |
| 83 | `def` | [negAddY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy.md) | 536 | `declaration-track:999defac799895dddfcb75bd93e5b8efc5c7494769b436ab54af1f3c09a78a18` |
| 84 | `lemma` | [negAddY_eq'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy-eq.md) | 548 | `result-track:ddbf168e64e14c52461814632ecae9bf1bf942574230a79f533ca4b70b67f9cc` |
| 85 | `lemma` | [negAddY_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy-eq-source-edition-2.md) | 554 | `result-track:f0ae266afb5ecf30f221e4bb9ecbbcb06ac283969b4202016730694033620993` |
| 86 | `lemma` | [negAddY_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy-smul.md) | 559 | `result-track:d70c220dcb8190d0e713b8db0c2e3cdd636e3b8fd30ab26f96f110151982d3d2` |
| 87 | `lemma` | [negAddY_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy-self.md) | 564 | `result-track:e993bcc541dab6161ed6004355e5e84a712c7774623037f35599a04cd54185e8` |
| 88 | `lemma` | [negAddY_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy-of-z-eq-zero-left.md) | 568 | `result-track:47144dfa0f72874f86e53c07188ab3a7d05c9e529e9af4e12da2b4c5f4887358` |
| 89 | `lemma` | [negAddY_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy-of-z-eq-zero-right.md) | 573 | `result-track:76472c600c14654893b0b59c942cf83ccd0d9a1a7f1c99f68629bdb4089d81d1` |
| 90 | `lemma` | [negAddY_of_X_eq'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy-of-x-eq-source-edition-2.md) | 578 | `result-track:af51af8e3863f9f75fb576d58fdc60005dbc596d16290038a3767700309a170a` |
| 91 | `lemma` | [negAddY_of_X_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy-of-x-eq.md) | 584 | `result-track:56953d3f115f4fe9c3239dcd6ae0c4a93de3c8227f90d591f4521068cde300f8` |
| 92 | `lemma` | [toAffine_negAddY_of_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/toaffine-negaddy-of-ne.md) | 589 | `result-track:784403717db1b3467b476bdd8518a01d649b93197ed68b6dcfd2a66f717a8c6f` |
| 93 | `lemma` | [negAddY_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/negaddy-of-z-ne-zero.md) | 600 | `result-track:dc6091e61f4f09bce2489a63a78af416a8d773ac28d86c636053d7478c77ecda` |
| 94 | `def` | [addY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addy.md) | 612 | `declaration-track:38a63b6869243d2c8d800107893e58ab4bf96f0aae63248bd6c335e0f4bc9c64` |
| 95 | `lemma` | [addY_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addy-smul.md) | 615 | `result-track:e8302157ce5ba4df1010d40bfa957f3916ea5237e1e508e4046947648d9a92ee` |
| 96 | `lemma` | [addY_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addy-self.md) | 620 | `result-track:9a0d157572a0e052f6864d6d8800852a8d839f7108029c2f612e1e6cfaf2b0f0` |
| 97 | `lemma` | [addY_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addy-of-z-eq-zero-left.md) | 624 | `result-track:c3c588a2d1c133c823c1ded776d78ae0a2fdbd3850db2f22c1549585e7765204` |
| 98 | `lemma` | [addY_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addy-of-z-eq-zero-right.md) | 630 | `result-track:113c471ffe7b055e080859225ee86a93df2f706f81d6b65e1b1e861fc68d22db` |
| 99 | `lemma` | [addY_of_X_eq'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addy-of-x-eq-source-edition-2.md) | 636 | `result-track:b9a8118b7233b2a0149c5e8a10b87f350e7a881a51feae39e7f5d28edfa47a31` |
| 100 | `lemma` | [addY_of_X_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addy-of-x-eq.md) | 642 | `result-track:ac51c54240d0f8a7e5f49c7a811049756f1bcb36e43c34bb61e5bc005184d272` |
| 101 | `lemma` | [addY_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addy-of-z-ne-zero.md) | 647 | `result-track:223bcec7e4274208c5d857d1e0aef42a06f666ccf6309bed034393a7a517a7e4` |
| 102 | `def` | [addXYZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz.md) | 659 | `declaration-track:4471bcce08abe45fc263ece7142447e301a74365861edf4a6ebb603f7d5caef7` |
| 103 | `lemma` | [addXYZ_X](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz-x.md) | 662 | `result-track:aec8a6710bb406d9b5bfd679ecbb50108804cec4f2b99f3765f65885da261a5a` |
| 104 | `lemma` | [addXYZ_Y](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz-y.md) | 665 | `result-track:66228c32064eddf48345e2f689ee910c661413992979cb8f01ba6dcc3183f3b6` |
| 105 | `lemma` | [addXYZ_Z](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz-z.md) | 668 | `result-track:b3c82e996b5f6686929b2678b16ed5472347c1e9352f87a445ed843b39a298c3` |
| 106 | `lemma` | [addXYZ_smul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz-smul.md) | 671 | `result-track:2879f9c699a45067acbbb4e7975ce45ea537e2615eab8d2d8f1066e6b9c81d82` |
| 107 | `lemma` | [addXYZ_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz-self.md) | 675 | `result-track:a2987e9564f83c6e9dd4d8291106b6ed239ddb905a5904fd5cadc453c08992fa` |
| 108 | `lemma` | [addXYZ_of_Z_eq_zero_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz-of-z-eq-zero-left.md) | 678 | `result-track:1f79e9564554afe881b9ad53a6e82f499239bb275f88b1425d498d3a7427c6e5` |
| 109 | `lemma` | [addXYZ_of_Z_eq_zero_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz-of-z-eq-zero-right.md) | 683 | `result-track:c37da83d9fb54b9c0a567b1cb78fd30d7c86db1b9c07ea1675743c2279503f16` |
| 110 | `lemma` | [addXYZ_of_X_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz-of-x-eq.md) | 688 | `result-track:54918e1ab134fc3eef552bceca72dbc9e17ea21d42389492af771eec986a5f6a` |
| 111 | `lemma` | [addXYZ_of_Z_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/addxyz-of-z-ne-zero.md) | 694 | `result-track:57da98726695cca8e25b568da303552e5016f3617cd155fa1917b66575b5796e` |
| 112 | `lemma` | [map_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-negy.md) | 710 | `result-track:10128602fa06b83efdcec0470893c4535f3137fcd1a802f484617e45f804e0d5` |
| 113 | `lemma` | [map_dblU](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-dblu.md) | 715 | `result-track:dabbac67234d1f68f3b8777efe6e886fe6a8582ec42dda3a6776d56659ffefc1` |
| 114 | `lemma` | [map_dblZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-dblz.md) | 720 | `result-track:f181e6fded92c9c6f0e0827296a8677af8a5db186c40e5a75067e298ea531140` |
| 115 | `lemma` | [map_dblX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-dblx.md) | 725 | `result-track:00e3f22aab92d76d051fd1b8b0d9e3251708b39083563417464174c169383c1c` |
| 116 | `lemma` | [map_negDblY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-negdbly.md) | 730 | `result-track:7710475dd7858f75eafdbcc2575ccef1a21617c507c620c659d0fd30ed18645c` |
| 117 | `lemma` | [map_dblY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-dbly.md) | 735 | `result-track:a9e475cb5f5ea25f757b69bc3099f1701268a7c0fb5ead1a00927aa47ff6427a` |
| 118 | `lemma` | [map_dblXYZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-dblxyz.md) | 740 | `result-track:4b5037cfa8a654e2d024cf42a78f25771660c168215b9cd6ff23f6e5149a5117` |
| 119 | `lemma` | [map_addU](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-addu.md) | 744 | `result-track:814af5df78f9871edf7db5b66f94dff6a30c6d9f9dab2b2fb1239e040c4ebd7c` |
| 120 | `lemma` | [map_addZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-addz.md) | 749 | `result-track:7fdeab59a46f4d4e5e41f928d7f54ce15c08ca53d865eed26a891e8e4585e836` |
| 121 | `lemma` | [map_addX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-addx.md) | 754 | `result-track:d95e6298a7211fe082523ea04cd5bbc28346a720dc9e4f1842a5ffdcf9fa1fc5` |
| 122 | `lemma` | [map_negAddY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-negaddy.md) | 759 | `result-track:2a8ac3ea13088ed73ddf896580bcc6fd5043630be93e2f0a4c15f52baace806c` |
| 123 | `lemma` | [map_addY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-addy.md) | 764 | `result-track:5736e4904b9e7cfbe8fe11642fc783c47788d5d91af8867e4d926c565bc2b52e` |
| 124 | `lemma` | [map_addXYZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/map-addxyz.md) | 769 | `result-track:5655ff023d6ea0e8475f17fdea808f8f6005d3085f388d7b1fa85d381701c5e6` |
| 125 | `lemma` | [baseChange_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-negy.md) | 775 | `result-track:b2aefa073f7689d3a3a726b4375edc1076c8af8ffdddcc6ac51b771db7d98f98` |
| 126 | `lemma` | [baseChange_dblU](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-dblu.md) | 779 | `result-track:7a2c88a8be0bf17ffbd4d93190b70b5b5fdb9ad07b3e7c440ef4b4ab9d23377c` |
| 127 | `lemma` | [baseChange_dblZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-dblz.md) | 783 | `result-track:43e8cb11dd6e86d60952442119ce4912d2663e6bf1c4dd37d65864dee5a6da1d` |
| 128 | `lemma` | [baseChange_dblX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-dblx.md) | 787 | `result-track:e3c9bbc7f8a0fa114a4e054b576cccb739f0d14787c16c4c111f56c450f062fe` |
| 129 | `lemma` | [baseChange_negDblY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-negdbly.md) | 791 | `result-track:8016f90251484bdbbe1b9e99c2de35c2f0ad157d66bc0d223bc39edc4ed8c45f` |
| 130 | `lemma` | [baseChange_dblY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-dbly.md) | 795 | `result-track:c4d9ffee1f6104021af76f7e9e8da168d86ced03237709587bc41a8c8e787da8` |
| 131 | `lemma` | [baseChange_dblXYZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-dblxyz.md) | 799 | `result-track:ffd4d41711bca338ebc92983669bda31920b3df5d45a3defbcbe771d0cc2fe8f` |
| 132 | `lemma` | [baseChange_addX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-addx.md) | 803 | `result-track:a9a837ec3491655d318e248e269bfb7baf034cd9cad025dc2b3b4ae20b2d76d8` |
| 133 | `lemma` | [baseChange_negAddY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-negaddy.md) | 807 | `result-track:840cc2903e52522f034c3a2e1a03f473fe1204d4fa7ef79976b4bf5dac526a27` |
| 134 | `lemma` | [baseChange_addY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-addy.md) | 811 | `result-track:a55eaeb330a8c83893af7382e558b6eb5ed2cc350e8ceb9aa563dde201658a5a` |
| 135 | `lemma` | [baseChange_addXYZ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/JacobianFormula.lean/declarations/basechange-addxyz.md) | 815 | `result-track:5ef98574792b066ff00ba700f87da019d8106be35a727e565fd68c6231cb0635` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b5c8d9e988f20d785fb04a74ae62b04b10508e8e82f0076af9a0dd0914b6890 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Formula/Variant1c386b5fe9140a231f8b7ba3d22e4ebfed1c3bac743de9cd6de438268524d73c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
