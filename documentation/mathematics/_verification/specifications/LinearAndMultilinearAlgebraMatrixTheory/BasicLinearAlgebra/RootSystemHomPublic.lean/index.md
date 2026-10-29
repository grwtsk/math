# Verification target: Root System Hom Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74980505f91545ca7a800653b57a4baacaeeff25",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74980505f91545ca7a800653b57a4baacaeeff25`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean.json)

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
| 1 | `structure` | [Hom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/hom.md) | 64 | `declaration-track:368619227577bde6ac20f18b3ff22e9a92ac54fa7d8e9e37740cb14fc55acf5a` |
| 2 | `lemma` | [pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/pairing.md) | 80 | `result-track:b8667e928b1f759b1e60a31bd42acb6c7fa217dbc965f41ddbe530af5ae04cd6` |
| 3 | `lemma` | [weight_coweight_transpose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weight-coweight-transpose-apply.md) | 91 | `result-track:02e340223c8f8f2837d48956c32758b08c55d2d109202d007c088bd0fe3db60d` |
| 4 | `lemma` | [root_weightMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/root-weightmap-apply.md) | 97 | `result-track:b42366633ddc39a4b29387c03d4ddd9bc86e8ff2984b712469b184083187528d` |
| 5 | `lemma` | [coroot_coweightMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coroot-coweightmap-apply.md) | 103 | `result-track:6e26ebcc08a8e4bb72df31ea70bdfaa9e9ccca0458702900c30852fc9f7124a0` |
| 6 | `def` | [id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/id.md) | 111 | `declaration-track:8fdd28c1eca7244a98ad10b92bafc75bf65d0811275c6a7ff0a05576dd5d0b08` |
| 7 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/comp.md) | 121 | `declaration-track:e5c444b22b34339065bafbcbe265f03f65f22f159ca7665043528e7ce65aada8` |
| 8 | `lemma` | [id_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/id-comp-source-edition-2.md) | 144 | `result-track:ef7628de56395bb0290f623e336a4efda44bf7e00a17e2ee200a9eeb86030233` |
| 9 | `lemma` | [comp_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/comp-id-source-edition-2.md) | 151 | `result-track:a65f6479772f42dd8053aed97530b13630f651a46ca211ff2e978f30460786b0` |
| 10 | `lemma` | [comp_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/comp-assoc-source-edition-2.md) | 158 | `result-track:f0a5f3fce05f938c6541a8f451605ca1bf740a3b271bc02ee9d57d7466985b13` |
| 11 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/instance-source-edition-3.md) | 167 | `declaration-track:6879af41be96f8d58d13822f3c3abef6fa338c1a1b089bcaee6d2aab776305b2` |
| 12 | `lemma` | [weightMap_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightmap-one.md) | 175 | `result-track:d6f95123e6ff9d7af8cf180a2644567c9b7d659f4ba802136be03769c705b98d` |
| 13 | `lemma` | [coweightMap_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightmap-one.md) | 180 | `result-track:0f9604c444e5672a5fcc57b0b83ce01e7b2a0eef1733ac4e856028241c46c7a0` |
| 14 | `lemma` | [indexEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/indexequiv-one.md) | 185 | `result-track:29330575648bef34e71be3226f07fbc34ff1e0ee3f4ae8e93f964869d91224f6` |
| 15 | `lemma` | [weightMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightmap-mul.md) | 190 | `result-track:4391afcfa898074303f804358cc29b790158bdfcd2f7b673c7492652723f22d0` |
| 16 | `lemma` | [coweightMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightmap-mul.md) | 195 | `result-track:89de63d3d951628809c6913553bad4f48359219aafdf4ad2e24a0bad4d9108f1` |
| 17 | `lemma` | [indexEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/indexequiv-mul.md) | 200 | `result-track:987541a5f703b84fb9133891c467a2d94856efaf486beed082eaaf2a404d3b54` |
| 18 | `abbrev` | [_root_.RootPairing.End](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/root-rootpairing-end.md) | 205 | `declaration-track:8469c185a23f3b2ee221c84bd5a7ac2ca2f96be2dece787d9361abb4a6fa6c0d` |
| 19 | `def` | [weightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weighthom-source-edition-2.md) | 208 | `declaration-track:566858f69855cf1cfb9e2b3626737972bd109599d383c7cf602117b86fdd9904` |
| 20 | `lemma` | [weightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weighthom-injective-source-edition-2.md) | 213 | `result-track:82f4a1065895c751e7bf0be6b06a59ab8245c35e2610e1b3a6e5547313b44963` |
| 21 | `def` | [coweightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweighthom.md) | 225 | `declaration-track:00b38c23fbf77bbf8f618c309e4b3b01a40b2d0a9d9a0c0723c7bbf74b038817` |
| 22 | `lemma` | [coweightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweighthom-injective-source-edition-2.md) | 232 | `result-track:948ea7f5306d8addbe0e9426f396a8ef6f653da71db209f7d4cafe940e1b21c7` |
| 23 | `def` | [indexHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/indexhom.md) | 256 | `declaration-track:070575c846c1958b1f23e45e9c4f1c097de6f07420333d8a6623066f35532447` |
| 24 | `structure` | [Equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/equiv.md) | 272 | `declaration-track:288c91b279084694a3b78f7e49bb0181c1a974521ecbebf659fc4ef637ac9612` |
| 25 | `def` | [weightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightequiv.md) | 286 | `declaration-track:9f1fb9b4b0c2dc9505fb3c45181fcfecce835001ab755b889a7270e5b8db2c5b` |
| 26 | `lemma` | [weightEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightequiv-apply.md) | 290 | `result-track:f7d25bf18933d2cb6909dea364d4f48dbc9d8b302df24d68acd9719132537af2` |
| 27 | `lemma` | [weightEquiv_symm_weightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightequiv-symm-weightmap.md) | 295 | `result-track:eb2e57c73adb33ffd385e401a445e0de36ffc91683e83aae0cdad941931abf8b` |
| 28 | `lemma` | [weightMap_weightEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightmap-weightequiv-symm.md) | 300 | `result-track:13bbb5dce64e444a411cc34433408938c91ad24f1eb13cf3b4bf64688fd563c2` |
| 29 | `def` | [coweightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightequiv.md) | 306 | `declaration-track:30ab65deb775a1bfb185fb63952d60537b4ea94cbf32154f51755e80b8be1a59` |
| 30 | `lemma` | [coweightEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightequiv-apply.md) | 310 | `result-track:941d445ef4ac5dba3803ca750544c989e8f50cc8dfc594c12b0f83f21a83c457` |
| 31 | `lemma` | [coweightEquiv_symm_coweightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightequiv-symm-coweightmap.md) | 315 | `result-track:32690c82697a3ef715362dfed6d091a3693784d00c79c11cb2b2980234dff679` |
| 32 | `lemma` | [coweightMap_coweightEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightmap-coweightequiv-symm.md) | 320 | `result-track:acf20b8999d03d52314385c6038ce0b4644451e1d55b6fce33901786877ef153` |
| 33 | `def` | [id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/id-source-edition-2.md) | 327 | `declaration-track:a30dee587afe0572384b8fc35f347be3c35f2ddee6990155a51fc3643119f524` |
| 34 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/comp-source-edition-2.md) | 333 | `declaration-track:eb29bfbfe15503ef8a3ec4d8fc25fbe22c9dacd8ac884927bb79ea53cd3c7e1b` |
| 35 | `lemma` | [toHom_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/tohom-comp.md) | 346 | `result-track:3d2f2a3fe3eb15d1acfc6a4d4fc68e5519ff547e520449b4e3709e5513f352c9` |
| 36 | `lemma` | [id_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/id-comp.md) | 354 | `result-track:92ce8283209ce7fe9a839d9c22e6d1a979e17295c1f708f070674a33bec5b6fe` |
| 37 | `lemma` | [comp_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/comp-id.md) | 361 | `result-track:6f2d7de1610027a4af8c7e3785156e270382e4fe3e22ad42991bf2dbc6694dd5` |
| 38 | `lemma` | [comp_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/comp-assoc.md) | 368 | `result-track:ba5bdcc8a1ff2f0cdd7aa6580a2708a682048e37be962cb3a5d8b20ab052ab01` |
| 39 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/instance-source-edition-7.md) | 377 | `declaration-track:9fbe322c5f95236b08e48c8cb6814f1e6b841ce026c11cf58a26cc8f1857492d` |
| 40 | `lemma` | [weightEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightequiv-one.md) | 385 | `result-track:e2c963725e6fb8c8752921a217fa65ed8dd32201b3d0c5b97cfc3b74e9dcf839` |
| 41 | `lemma` | [coweightEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightequiv-one.md) | 390 | `result-track:30d415fd993c00bb0af967b1a1c91aa217ba80ad98aa7e6d1f006e17e8bea4c6` |
| 42 | `lemma` | [toHom_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/tohom-one.md) | 395 | `result-track:5e95a805379812622980f2671e1d07e0a3812bd00009b7d44409c63ce378007c` |
| 43 | `lemma` | [mul_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/mul-eq-comp.md) | 400 | `result-track:ce4293684da6fc3b60e2111ff31f6e5a1166d1c67123c91fca1cefb2ac483baa` |
| 44 | `lemma` | [weightEquiv_comp_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightequiv-comp-tolin.md) | 405 | `result-track:ea1704923b61b738e34dee85fe556be980e35ad14eb3f2b8d51b16ea2a34f054` |
| 45 | `lemma` | [weightEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightequiv-mul.md) | 410 | `result-track:02b8aee9bf045f93e7beb6a0fc783b09391129d7ab8f812082b79f2297d486df` |
| 46 | `lemma` | [coweightEquiv_comp_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightequiv-comp-tolin.md) | 415 | `result-track:10bab1ffeab2f728666f749ea69dadf6c32f29edb8e3504b5fe6fad4cc32a942` |
| 47 | `lemma` | [coweightEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightequiv-mul.md) | 420 | `result-track:9abbd4b8c5a0821b04053f5ceff173548786c12cccf152fd9da89580cfb176f9` |
| 48 | `def` | [symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/symm.md) | 425 | `declaration-track:54ab1be05a8b66ebd3bc517692e8f2d4fcc347d9aa77874ce5077be4010a1e21` |
| 49 | `lemma` | [inv_weightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/inv-weightmap.md) | 464 | `result-track:2cdbb2f9a53718ea01952dd551daad05a98665690a073fac0ee95bc0085e8f15` |
| 50 | `lemma` | [inv_coweightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/inv-coweightmap.md) | 470 | `result-track:1dfe6b7cdb234660b7b3e29232f434206c471fa686e61fecddf0da0c0601ee88` |
| 51 | `lemma` | [inv_indexEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/inv-indexequiv.md) | 476 | `result-track:f56db138e675621125cbbc9c21f60bf7f9650f2d3ae969d9ffc9c43dce11a081` |
| 52 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/instance.md) | 482 | `declaration-track:3a4d724274e09de4084fe7c57f47f5f87ecd83ed8f4107f807e5f3f3bfa79102` |
| 53 | `def` | [mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/mk.md) | 499 | `declaration-track:6dfb81c421da8adf584ad0a8615baa1db612c7bf6d2e4afaa72e3ed285a0bbfa` |
| 54 | `lemma` | [toLinearMap_weightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/tolinearmap-weightequiv.md) | 523 | `result-track:f459fc742ae1ddd592a0c1c05860c3c730828f2d775f412f01ad45e8441320a5` |
| 55 | `lemma` | [coroot'_weightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coroot-weightequiv.md) | 527 | `result-track:63361a08aefe245f19d332991662222496fbfd2aa1a107d7d1d26a27bd4165cb` |
| 56 | `lemma` | [root'_coweightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/root-coweightequiv.md) | 533 | `result-track:87ad65708769d1dc5f6d7207096c8f1f56f2da53e0f52bb23d8ca052331bcdcd` |
| 57 | `lemma` | [weightEquiv_reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightequiv-reflection.md) | 538 | `result-track:a75fc7c1d52db233439934df6021c3f1db16cf73b6905a15a89eb50955e105a1` |
| 58 | `lemma` | [coweightEquiv_coreflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightequiv-coreflection.md) | 543 | `result-track:046d178030b955b9f27653b643d0ffc68c54b0532ddf21ee8f3227d4a3bb4088` |
| 59 | `lemma` | [weightEquiv_symm_conj_reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightequiv-symm-conj-reflection.md) | 551 | `result-track:f4e1b94f8db856c601ad13c0e13e91472847aa295bd697f7b7af78eae30b0893` |
| 60 | `lemma` | [coweightEquiv_conj_coreflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightequiv-conj-coreflection.md) | 557 | `result-track:08aee6f980284d4d8f7e9620f0a3c5ccdaf08dbafcbf8e1e88996d3d57a7e2a6` |
| 61 | `abbrev` | [Aut](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/aut.md) | 566 | `declaration-track:f54056e444a50fb7d0d9c44b81951f512eb47eb35e1a882c2167f9310f56a715` |
| 62 | `def` | [toEndUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/toendunit.md) | 572 | `declaration-track:723f181e8a1cb8af039286259e8b426565bd1523b1b648eb1389c177d5f83ca7` |
| 63 | `lemma` | [toEndUnit_val](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/toendunit-val.md) | 606 | `result-track:f651240cf4a6088ba9d3a110de0910ce6f97d6292872543e77673c70fba1cb31` |
| 64 | `lemma` | [toEndUnit_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/toendunit-inv.md) | 609 | `result-track:5cf5ad95cc9f821a9cdc6482e02f2cf6b21936325854eb84f4a29aac6d317783` |
| 65 | `def` | [weightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weighthom.md) | 615 | `declaration-track:41d483a43bbb840839949e9f305f8ee6eac2d64579d5fe654013f23bb41c0be5` |
| 66 | `lemma` | [weightHom_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weighthom-tolinearmap.md) | 620 | `result-track:5bfc6bd9d000cbc74b76af176e0b63bd70745b3e107f11fc182b689b8cc28077` |
| 67 | `lemma` | [weightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weighthom-injective.md) | 624 | `result-track:7799d6368225a0c285bd98f7303446d6073351892dfc4f20bca607cabb9646c0` |
| 68 | `lemma` | [weightEquiv_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/weightequiv-inv.md) | 633 | `result-track:2c9fd0c0f4cb45c133d7de0ed60c89a30df76452faed4bfb117e980ada76a847` |
| 69 | `def` | [coweightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweighthom-source-edition-2.md) | 639 | `declaration-track:6ec25c25246df458a9ec84700b2a45efd4155720b45365b4cab4f93079a1e59d` |
| 70 | `lemma` | [coweightHom_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweighthom-tolinearmap.md) | 648 | `result-track:64391543f8ab5ba73babadc2c29172f59ea2031bfb3084c90ea9d77c539cc7b2` |
| 71 | `lemma` | [coweightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweighthom-injective.md) | 653 | `result-track:3ba3d34c4753d1d5c785b0b2804465777e29c83036b835bdc111c6d743cb3075` |
| 72 | `lemma` | [coweightHom_op](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweighthom-op.md) | 664 | `result-track:dd67bace403aae92e9cf2f170397db3f04c75a2da19dc64897c5114bc5f5c4af` |
| 73 | `lemma` | [coweightEquiv_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/coweightequiv-inv.md) | 669 | `result-track:7c461a458c3969d7980ad7cb43af0b02b4e7898b6fadf10743d5c59aac1e6eab` |
| 74 | `def` | [indexHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/indexhom-source-edition-2.md) | 675 | `declaration-track:42a4adcb30222d04738e1b28245b768d06c0a1f3fbe3b5356ae264aac4cf0380` |
| 75 | `lemma` | [indexEquiv_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/indexequiv-inv.md) | 681 | `result-track:b17accd1c30b1f4a7b2d975c02d4cc447c590c959c8aa6a0aae41826c3ba4871` |
| 76 | `def` | [reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/reflection.md) | 686 | `declaration-track:bae2f6526b0c0c1cb190ec56c5ee7ad8bf9652abf20f798bdd5f710ace9ecc4c` |
| 77 | `lemma` | [reflection_weightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/reflection-weightequiv.md) | 702 | `result-track:4ac56d1f83d160aeb39bfbea1455cb6061370944d545b74d8eb9ab223be0052d` |
| 78 | `lemma` | [reflection_coweightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/reflection-coweightequiv.md) | 707 | `result-track:e2d6eaa2ba61ad89513d072ae2e8bb23b6c720338d3e9741685b1d586f13ba6c` |
| 79 | `lemma` | [reflection_indexEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/reflection-indexequiv.md) | 712 | `result-track:88f0fc6dbde0e1679d71a9298c94c335f432e6066db71b69c7f3d778c5f7814b` |
| 80 | `lemma` | [reflection_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/reflection-inv.md) | 717 | `result-track:26a7b7aff60978d71ce6b415a2e7eaa6d86cb37b7118878b90ca06bde860b59b` |
| 81 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/instance-source-edition-5.md) | 724 | `declaration-track:7f989cad1815c1f40312d2ef5ae4e8613134c32aaf2d006963f7565fc72f69f0` |
| 82 | `lemma` | [reflection_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/reflection-smul.md) | 731 | `result-track:4110eca34a0dbf37e0ceb5d16e5c6fdd70861247e4121f0dad48a3f621e12c2a` |
| 83 | `lemma` | [root_indexEquiv_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/root-indexequiv-eq-smul.md) | 733 | `result-track:5180d15440a91f3351d152ec44c006765ff6639010d0e0bb426605ac267343f3` |
| 84 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/instance-source-edition-8.md) | 738 | `declaration-track:b7a37d280bd0c25a0a754ec247b680bab6a37a5115abbe20ce4a558aa6ba5dde` |
| 85 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/instance-source-edition-4.md) | 747 | `declaration-track:7ba06c557029a3f05aaeb3500385f07d09f4511582b3f64b463ff1a55eb414bb` |
| 86 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/instance-source-edition-6.md) | 751 | `declaration-track:9ae30abe83e34601ccc8ee1fedb6fd246590b92656c5d1697be6d642cdd4d351` |
| 87 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHomPublic.lean/declarations/instance-source-edition-2.md) | 756 | `declaration-track:510d7ec65bc7c8ef47d64b1b4e433c9799d62ccd5b2b5222b773c06d37f3b3c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c27f81be72bdb66cec9b6c004c5c3f95fa62774bb02bb2cd6548b83a58a9ea1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Hom/Variant55011ef7647bad1e525f38288f3c19e6b50c38c1185545c63474fd9f9c8016ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
