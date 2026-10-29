# Verification target: Linear Algebra Pi Tensor Product Lifts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c883c430c2da3e822ac57db92cd6e2395523fd2",
  "lexical_observation_count": 101,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c883c430c2da3e822ac57db92cd6e2395523fd2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Multilinear.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Curry` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Eqv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/eqv.md) | 83 | `declaration-track:bd19290d6cc61ec722214251b6e3047df935d77555dbb93e2e017b6ace6d1695` |
| 2 | `def` | [PiTensorProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/pitensorproduct.md) | 101 | `declaration-track:ab179f4ae47c1562ddffded55d46b0b16e4b37f2ce7e32160b76cffe5b7367d8` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/instance.md) | 117 | `declaration-track:1e1fe1d68bae4d77a38a7ae2e22a01c8b226a5eeefe19909c224df50e07b6b82` |
| 4 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/instance-source-edition-2.md) | 123 | `declaration-track:5b69e444c736c68812c9f8a721d1fcfcbcfdcfabb5da20e0bd90b374f95020a8` |
| 5 | `def` | [tprodCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tprodcoeff.md) | 130 | `declaration-track:890aa98b9e8f1eb8d5dd962d64a7ac5c530b5b79f4335c60919abf5e6fd88475` |
| 6 | `theorem` | [zero_tprodCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/zero-tprodcoeff-source-edition-2.md) | 135 | `result-track:a2367b2b13a8ded9f378b1871c00308468641fdf53fc6ae5a7abe9d514594ff1` |
| 7 | `theorem` | [zero_tprodCoeff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/zero-tprodcoeff.md) | 138 | `result-track:8f6a7f7e24105eac4a18119196f4743a0d8fd3a25c53597d91df0c0710c4116d` |
| 8 | `theorem` | [add_tprodCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/add-tprodcoeff.md) | 141 | `result-track:2d36b5061c810bb744d54461280cc9f99de38ab3c203b223a2f1844ccc1608e9` |
| 9 | `theorem` | [add_tprodCoeff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/add-tprodcoeff-source-edition-2.md) | 146 | `result-track:e036f860de7facb94e5d0bc75d41c94dabd49d355a8b1ecad59b3658ff2662f0` |
| 10 | `theorem` | [smul_tprodCoeff_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/smul-tprodcoeff-aux.md) | 150 | `result-track:5abc8ee9a108c1eb441d6501965f48d631dac7a27d9a8ff6d04b8423d66bd3db` |
| 11 | `theorem` | [smul_tprodCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/smul-tprodcoeff.md) | 154 | `result-track:bcccd6457e934cf93d8ca6842ce2f22d62d09e2f48b7a0abcd6f6b1b6fb606bf` |
| 12 | `def` | [liftAddHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/liftaddhom.md) | 164 | `declaration-track:1ef0ee958567934281325fa4c9b1ebe1065320efa22353631b5ef404cd00289b` |
| 13 | `theorem` | [induction_on'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/induction-on-source-edition-2.md) | 191 | `result-track:4e8356779a600fc327f5d9362492747ec7e1a524463d9c2d884ed0e92a6a6d94` |
| 14 | `instance` | [hasSMul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/hassmul.md) | 210 | `declaration-track:ed6dec78cca05cd6ffbef7958b71b59297ab34172752477a2f5ac49a755b5434` |
| 15 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/instance-source-edition-6.md) | 218 | `declaration-track:756b0dc65245e05b3af1dfe52c9d3f975d29a34b1bf9c224ac5f0bcd9f2d7cb5` |
| 16 | `theorem` | [smul_tprodCoeff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/smul-tprodcoeff-source-edition-2.md) | 221 | `result-track:d3f82ae4b29dbfc2bb80c373ab39f9a02f79f152f03deec7d222643b1febace4` |
| 17 | `theorem` | [smul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/smul-add.md) | 224 | `result-track:05870ee6c17e2f399ba048698f69fea47bb5807915bd6006129b6d4b530995a6` |
| 18 | `instance` | [distribMulAction'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/distribmulaction.md) | 227 | `declaration-track:2cbf895c0361a4c69da81eb19d9bb7325380809cd538967d62e7eb4af3a8cf9f` |
| 19 | `instance` | [smulCommClass'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/smulcommclass.md) | 238 | `declaration-track:8feef03c9fd3cf0789bec90efbeda70dbcc617850d94155db7728f6cef3cd214` |
| 20 | `instance` | [isScalarTower'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/isscalartower.md) | 243 | `declaration-track:1474eb88177a465c6d37125af68fd5a334a21a2a7dcac1ff9584b261ad189cbc` |
| 21 | `instance` | [module'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/module.md) | 253 | `declaration-track:91d34faf4e06e5544053d877ed956676d2730d713b21db3a12c5970c783e17e0` |
| 22 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/instance-source-edition-5.md) | 265 | `declaration-track:71629b334b692d9dd9e4a34b84d5403ea25c5adafa48571b0db0ea41a88e1540` |
| 23 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/instance-source-edition-4.md) | 268 | `declaration-track:6a0a8516c2286807c9fc8a530e2bd2adfc366b70d7a896d23ecdf533ef913101` |
| 24 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/instance-source-edition-3.md) | 271 | `declaration-track:61382f0498ed168905bad23ad8898bcf62eeef6a9d02cfc215d49e8fdeb1e16d` |
| 25 | `def` | [tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tprod.md) | 278 | `declaration-track:dd7480230ca3f091e67ff6c35d22a93f41d312a0437d7cc49b433bd0aaa44e87` |
| 26 | `theorem` | [tprod_eq_tprodCoeff_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tprod-eq-tprodcoeff-one.md) | 288 | `result-track:f4a636445f1fd64d4df4950b1ffb3d0dd4fd017237ba9f13772624389499f58f` |
| 27 | `theorem` | [tprodCoeff_eq_smul_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tprodcoeff-eq-smul-tprod.md) | 292 | `result-track:95248a0e2c2904615d0eeadb844e57af015949bbd2901163f401ae7e54363932` |
| 28 | `lemma` | [_root_.FreeAddMonoid.toPiTensorProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/root-freeaddmonoid-topitensorproduct.md) | 300 | `result-track:5a18cd20cb86c0b22bda91ed6fdc62115a0a86ecc225e0dbf537175cc48479b3` |
| 29 | `def` | [lifts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lifts.md) | 312 | `declaration-track:b93f9d1684885b305311c20e7ec30adc4e64ca89fdfd34c11c7db2a146b28491` |
| 30 | `lemma` | [mem_lifts_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/mem-lifts-iff.md) | 319 | `result-track:33691548a7af788b7fdc67b9e01fa2abe82fb28c2b11543449455f5ea5ca7919` |
| 31 | `lemma` | [nonempty_lifts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/nonempty-lifts.md) | 325 | `result-track:3a47dfd68466f2c580a61614656862ada07a642553c3cf502dffe675be6b93b1` |
| 32 | `lemma` | [lifts_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lifts-zero.md) | 333 | `result-track:8904b77c3fce712abc5d20489a74b4aab84cbde22261198d540e75a20f19f5cb` |
| 33 | `lemma` | [lifts_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lifts-add.md) | 339 | `result-track:5172fe117d80cb88a8b7ffa71f51b771f5319cbea62b2453bd843ecf0640cf40` |
| 34 | `lemma` | [lifts_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lifts-smul.md) | 348 | `result-track:62bfc80e269c4dc33a87bb20d4c425ad2009fd2b675335f7eb98d000c40828bc` |
| 35 | `theorem` | [induction_on](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/induction-on.md) | 356 | `result-track:21e14783c5cc522bbf1b8493999c87fa40265311270bd7d0a274412b4d36b050` |
| 36 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/ext.md) | 364 | `result-track:25560ed146599dec70d97615cace2a61a9240ab213b84bf429796d1a6432b93a` |
| 37 | `theorem` | [span_tprod_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/span-tprod-eq-top.md) | 376 | `result-track:f28d2c437f1211b78e9869322187fdc43e7fab0b76cfa853dfdabc197535bead` |
| 38 | `def` | [liftAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/liftaux.md) | 396 | `declaration-track:33ff20fb5d2ff6ded45171fd5af11e4ed3ecf52508769bd04498e14961b2e4a9` |
| 39 | `theorem` | [liftAux_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/liftaux-tprod.md) | 404 | `result-track:7ed4c6a103a7da7300c49926691450dffcc437526094453a4dd681e79ab5159d` |
| 40 | `theorem` | [liftAux_tprodCoeff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/liftaux-tprodcoeff.md) | 419 | `result-track:27ab0955ef4c0368616670c05f176158120966a51a82c6e0615b5cd0bca7e306` |
| 41 | `theorem` | [liftAux.smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/liftaux-smul.md) | 422 | `result-track:0d4aed446d505fc23294ae9be2f20a9e8e6d3dfb91a07ed725b7ed3cd3b93141` |
| 42 | `def` | [lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift.md) | 433 | `declaration-track:eb0c8ea702707d95be24ffb7e210a02c1dd878b35581067b33723346737e31c6` |
| 43 | `theorem` | [lift.tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-tprod.md) | 452 | `result-track:02cb9e922800f624e6cc4e2f7f08c7471eb504f62204f64b1c917dda8a3921f9` |
| 44 | `theorem` | [lift.unique'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-unique.md) | 455 | `result-track:0b4f705d924f851949a4d1991480aebe2ced46b1d504fd952debb61a6f3fca9a` |
| 45 | `theorem` | [lift.unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-unique-source-edition-2.md) | 459 | `result-track:a2c4313463be62e772bdff2f5b7d2f9216b7960f0f85132f6638e353524fad5b` |
| 46 | `theorem` | [lift_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-symm.md) | 464 | `result-track:d2ef76f50bf60ccade77c0fc571c0432dc00d80d3b6efebaad24f72076d99f1c` |
| 47 | `theorem` | [lift_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-tprod-source-edition-2.md) | 468 | `result-track:f7d80220feeabd2d08f0da73d6e57db22973944587d65473438a171e45d636d9` |
| 48 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map.md) | 487 | `declaration-track:18239d6691d6e6709a75b67aecdce7c681c6202e3980937d613323f46dfd0225` |
| 49 | `lemma` | [map_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-tprod.md) | 490 | `result-track:3d5af64198a6b7ee1fb61a991fb7bb99f249731acccde93a2c412d9d67e61aff` |
| 50 | `theorem` | [map_range_eq_span_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-range-eq-span-tprod.md) | 496 | `result-track:7b2e9046383376f7756abf4de963d0b9f32738090175acf9e3b4194122fa45d5` |
| 51 | `def` | [mapIncl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/mapincl.md) | 507 | `declaration-track:a145b8d69df10361167206a8f19b6a24a745d5c0f48b2bfa1732594f1fef253f` |
| 52 | `theorem` | [map_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-comp.md) | 510 | `result-track:09828ed9da3267f5ef86b0010b2bb64dc9ebcaf410ef2369be327d1712e1c193` |
| 53 | `theorem` | [lift_comp_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-comp-map.md) | 514 | `result-track:f0745d99003acdedabb9d9caf2012a26ae767a2ae6cd9ea2fce39a2580ac8bab` |
| 54 | `theorem` | [map_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-id.md) | 523 | `result-track:9f04cff6a09e1f6faae483c9a5f85d340425592e6b07505813179c2817238f54` |
| 55 | `theorem` | [map_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-one.md) | 528 | `result-track:f44cf283dba20c7b90eb9bc8e2e0f37fefc8307df4d39640f93384f4c3e81931` |
| 56 | `theorem` | [map_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-mul.md) | 531 | `result-track:e3c155804c5a547ef6ed3f1691b876168abc31dc67bedad65750972d235cca7c` |
| 57 | `def` | [mapMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/mapmonoidhom.md) | 537 | `declaration-track:a8e7b27aea7492081bf11ee2de80298ee3f7fd390302c792e61a350cba0c1c81` |
| 58 | `theorem` | [map_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-pow.md) | 543 | `result-track:e29a19b1fef2a4275662de53fd4d1cf11ebe189924fb7b1a7c090f90ae7697cc` |
| 59 | `theorem` | [map_add_smul_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-add-smul-aux.md) | 547 | `result-track:e4333a73834ad2345104a44caf0c1c7d74e60cf0c19c578412117f2092dc5de2` |
| 60 | `theorem` | [map_update_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-update-add.md) | 553 | `result-track:ed3e1ca4c7ffcf41ec70881abb40808de4a366ff5f58fe34df6a3df899ed73c3` |
| 61 | `theorem` | [map_update_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-update-smul.md) | 562 | `result-track:4597f4e289a36f45b6a4eee00d332ea652767e25aeef48ed7ccfeabbf70e80df` |
| 62 | `def` | [mapMultilinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/mapmultilinear.md) | 576 | `declaration-track:af223d3d00ef37980a3c15cd0f4c34fb7f3bbf2b30b4af2ea90b5d4eca5dc709` |
| 63 | `def` | [piTensorHomMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/pitensorhommap-source-edition-2.md) | 593 | `declaration-track:cc1ddf9eee6fe8991e0f960fe7aa6a02f720532d596cc52effe0705e9bb7d8d9` |
| 64 | `lemma` | [piTensorHomMap_tprod_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/pitensorhommap-tprod-tprod.md) | 596 | `result-track:6ffa4ec4711be45e43b6b4720bb2203130661023d72cb410f26988a41179c741` |
| 65 | `lemma` | [piTensorHomMap_tprod_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/pitensorhommap-tprod-eq-map.md) | 600 | `result-track:c3698f7de4962ad957a123b6cf52b095d12814377ae1f5de59efc34667033001` |
| 66 | `def` | [congr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/congr.md) | 609 | `declaration-track:09622a5c716634b11b435db4299257fc7bba455d41f00e501eafaa8f04f55b9b` |
| 67 | `theorem` | [congr_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/congr-tprod.md) | 618 | `result-track:49044848d9acb1f5b4496eb6394feeaf0fbe66b416e703a0193b1875a2f12c9a` |
| 68 | `theorem` | [congr_symm_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/congr-symm-tprod.md) | 623 | `result-track:1500757c3efa14ae0911605b99bfc7a3b9bb04f9c862353835aceff133946805` |
| 69 | `def` | [map₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-source-edition-2.md) | 634 | `declaration-track:f974a3e425d16b227e2d15b31f6c39cb715ffe208c8041af346cd7788351f3af` |
| 70 | `lemma` | [map₂_tprod_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-tprod-tprod.md) | 638 | `result-track:deabc191e8724e8be1caa4ecaf395d6f1d358d2f74818a23f102c0b1b5231d4e` |
| 71 | `def` | [piTensorHomMapFun₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/pitensorhommapfun.md) | 646 | `declaration-track:021043362784600e030c51ec3a0cabc54e305e29f3013882273b95ac8e283fa4` |
| 72 | `theorem` | [piTensorHomMapFun₂_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/pitensorhommapfun-add.md) | 651 | `result-track:e207800f2e50fa3f4f3c6dc342eadbe90b0f082a0cbf57d2beb39c61f0bcddba` |
| 73 | `theorem` | [piTensorHomMapFun₂_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/pitensorhommapfun-smul.md) | 656 | `result-track:d217e17be39b4fc4458ea14086d1672de370fa45c0f61072f52d910a0494d277` |
| 74 | `def` | [piTensorHomMap₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/pitensorhommap.md) | 668 | `declaration-track:0140e5a3f53e2f33eb598e748eefd016f1967f4a6f6d95e9e7f01896fb470b20` |
| 75 | `lemma` | [piTensorHomMap₂_tprod_tprod_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/pitensorhommap-tprod-tprod-tprod.md) | 674 | `result-track:27143e2514c73521b28544530262250fcf8a89749d7f15648ab29fdee3532f16` |
| 76 | `def` | [reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/reindex.md) | 687 | `declaration-track:6fb2954a47a686de4d4ada3d6cd87740d365fe975de6eb0133a0b3dc522c4bc0` |
| 77 | `theorem` | [reindex_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/reindex-tprod.md) | 700 | `result-track:a2e457b5816c6e56bc13a4fb6e2073c5fde1c13601a6be4fa4d228efe99a8609` |
| 78 | `theorem` | [reindex_comp_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/reindex-comp-tprod.md) | 706 | `result-track:2bd7bce7a362f66926a52526ea637348b114186b2ebfb23c112c28eacb73110b` |
| 79 | `theorem` | [lift_comp_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-comp-reindex.md) | 711 | `result-track:5eeea0c9ee29de76bf0a9f7b257430dcce8e3d8390ae8d567c6a03ed21153a4d` |
| 80 | `theorem` | [lift_comp_reindex_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-comp-reindex-symm.md) | 716 | `result-track:a9a4715d0cdb3fe4611229817b4795373af07c1b09bc4d368276b8d6532e604a` |
| 81 | `theorem` | [lift_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-reindex.md) | 720 | `result-track:ce2777a13089a3f84b754bda68b7ea8f296852e9e88e3bb63c40559bc4d202de` |
| 82 | `theorem` | [lift_reindex_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/lift-reindex-symm.md) | 726 | `result-track:4615057f79e61c3a249f7006d0ea22bd89c65d44687e3d5e840075ae4b69d7e8` |
| 83 | `theorem` | [reindex_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/reindex-trans.md) | 732 | `result-track:ad4e72a58309a39aebbfaddb1929ef83ba99f6cb97cea19ac6206b3125e55b48` |
| 84 | `theorem` | [reindex_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/reindex-reindex.md) | 741 | `result-track:79460a03946eb25e59ce48a8235272da6be16302cd722befb393eb400e199abe` |
| 85 | `theorem` | [reindex_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/reindex-symm.md) | 747 | `result-track:45f8bd3b1939d43fee8d863d999d329bc5dde34bc7f651f3becbad7e1ed60ef3` |
| 86 | `theorem` | [reindex_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/reindex-refl.md) | 753 | `result-track:2d801586e4bda79d8cfab4582140373a45b06ec5a742f6d5de2d1b0a9d7f11a9` |
| 87 | `theorem` | [map_comp_reindex_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-comp-reindex-eq.md) | 767 | `result-track:601737292ce594fa9863117b69744f24eee6569dbb2eb0a9e00d5c26a71cdd9c` |
| 88 | `theorem` | [map_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-reindex.md) | 773 | `result-track:cf7e90e548c86252bbb234d22c619edb355f1407c14b6251b0c198872341b4d6` |
| 89 | `theorem` | [map_comp_reindex_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-comp-reindex-symm.md) | 777 | `result-track:5af16452901195ef6f9c07f2ce01d467b3f941ce5865bc4de0b1364a78829968` |
| 90 | `theorem` | [map_reindex_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/map-reindex-symm.md) | 784 | `result-track:a5fe317c294e29ababfd205dc32fc384f4bab7fbd7fa7d9449411343401cabf5` |
| 91 | `def` | [isEmptyEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/isemptyequiv.md) | 793 | `declaration-track:5efc67dcce4aa2249ccbba763eae4d35962736b7282386df25218e780d9b261a` |
| 92 | `theorem` | [isEmptyEquiv_apply_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/isemptyequiv-apply-tprod.md) | 813 | `result-track:20c0d6d1e57e15c9595f54087b70e001a0e85da7c81356983f950fbaa94caab0` |
| 93 | `def` | [subsingletonEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/subsingletonequiv.md) | 823 | `declaration-track:ed50a47a707484632a1b1c4dd397dd4582ea0feafa896bee6e40f496f167e14b` |
| 94 | `theorem` | [subsingletonEquiv_apply_tprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/subsingletonequiv-apply-tprod.md) | 844 | `result-track:826997e23f7cb7f240263b1f8e7dc86da04eabf4323f649f28753184943e4b72` |
| 95 | `def` | [tmulEquivDep](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tmulequivdep.md) | 857 | `declaration-track:06e0f08711e522d5cbd67ac502d22645e2c76fc06abb6dfec25b2ead6d4d8318` |
| 96 | `lemma` | [tmulEquivDep_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tmulequivdep-apply.md) | 875 | `result-track:3ae6a83b037ea918d37f537c78a38353b1566caab5e9d91aa3c5e0b465858402` |
| 97 | `lemma` | [tmulEquivDep_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tmulequivdep-symm-apply.md) | 882 | `result-track:60cc762d13230a9889b9dfbdf580f4b61dcaf2a881b4eaecd4472e1541f6734c` |
| 98 | `def` | [tmulEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tmulequiv.md) | 895 | `declaration-track:71321a27d7482f80ab1348baa4b33e48805bcefada526e826246cce1916eb0c8` |
| 99 | `theorem` | [tmulEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tmulequiv-apply.md) | 900 | `result-track:ba6620bb0e2a71af46f7a895e9c45bea9bb8d1ae67bc0356a536c736b35218b4` |
| 100 | `theorem` | [tmulEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/tmulequiv-symm-apply.md) | 905 | `result-track:a449ff28acbf1ae24156131a5c29a54aa85f079a12e3f12673a1876f0c695e7d` |
| 101 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiTensorProductLifts.lean/declarations/instance-source-edition-7.md) | 931 | `declaration-track:fa45764a1f6fece941cd9dbdd92d8dba424ef9bae5de58225f2c35446eb9178e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23a4ad02a342a1580338ddbd39193daf4358a12ce2cff5fe00c2161fba1549be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PiTensorProduct/Variant8dd5eefc9d990c60f9637337d4e88f56bb73c51f3cfe0ba877fb9557f627a5cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
