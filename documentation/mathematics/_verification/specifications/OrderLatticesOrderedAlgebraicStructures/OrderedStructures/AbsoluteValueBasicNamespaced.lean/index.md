# Verification target: Absolute Value Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc85d03cd226975ad22321ca65f5e52696090534",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7ad84c2a1b4b856d7d312874ffca99d0bf1f3bf06e9d4881cb2e669c00fd0a5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc85d03cd226975ad22321ca65f5e52696090534`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7ad84c2a1b4b856d7d312874ffca99d0bf1f3bf06e9d4881cb2e669c00fd0a5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant7ad84c2a1b4b856d7d312874ffca99d0bf1f3bf06e9d4881cb2e669c00fd0a5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Abs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/absolutevalue.md) | 40 | `declaration-track:206f81f0264bcc819187d043890a10e225c9f7608d9570330aba27d9f6d94078` |
| 2 | `instance` | [funLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/funlike.md) | 59 | `declaration-track:b98bcc24eb9d097be4f3dfafce7a973aecce4d5f2489903ae4c645354faefaae` |
| 3 | `instance` | [zeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/zerohomclass.md) | 63 | `declaration-track:78ad6977c95c1bc82b6b16959e888799df408d1109f7b38042e0906b90a0fac7` |
| 4 | `instance` | [mulHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/mulhomclass.md) | 66 | `declaration-track:f331bff1db4fccd0e4ab6a63a25f3eb21063eec983ec09f571a1f4450303b370` |
| 5 | `instance` | [nonnegHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/nonneghomclass.md) | 69 | `declaration-track:a987ecedecb3e0781d2626aa3ac88c43d1024e4abdf38dd4b7c693d9cabe6606` |
| 6 | `instance` | [subadditiveHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/subadditivehomclass.md) | 72 | `declaration-track:a8ee705861529554be1816132f3044679fbf2f5d968edf9f88af5f6c889bff84` |
| 7 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/coe-mk.md) | 76 | `result-track:9a1e3de95db2724922688572399bcda70afbfd58c99e825785a8ac65b04e00ab` |
| 8 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/ext.md) | 80 | `result-track:29d33dfff754116d66625a21fd94ab2c6138ac3608c75565691d7346f1535edd` |
| 9 | `def` | [Simps.apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/simps-apply.md) | 84 | `declaration-track:57203d4de4b9ac2b641d243d0e0ebb258c71830fc42d140c9c970364d9e902ab` |
| 10 | `theorem` | [coe_toMulHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/coe-tomulhom.md) | 90 | `result-track:ce3638729aa95308cb92a7e58d1bfbf970ce7c795f2f52db8f69908e3209bc7d` |
| 11 | `theorem` | [nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/nonneg.md) | 94 | `result-track:a23f51a324be66427a68dea96885e89b49d42a1ac5079f75650a032843c3665c` |
| 12 | `theorem` | [eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/eq-zero.md) | 98 | `result-track:75692985f304b727673f96effa187aad08de364f454915e6e7e168f16ae9973e` |
| 13 | `theorem` | [add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/add-le.md) | 102 | `result-track:a7f29f19125192912b9a2e8934586d52c439659eaf7dedf0ccd77f3f40f98e57` |
| 14 | `lemma` | [listSum_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/listsum-le.md) | 106 | `result-track:f26b6452ecd0a8491864b05b68a777a93e45f2d50e8719e44ea365cb06baa2e2` |
| 15 | `theorem` | [map_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/map-mul.md) | 112 | `result-track:d172f454cd64a5692e8ce8ee63051614227ab8670f727bcd61c781eec4e68fb6` |
| 16 | `theorem` | [ne_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/ne-zero-iff.md) | 115 | `result-track:8b8e1465bd02da4a5c42bb5dcc20ee42ae9bb948d23e526e6dabb20247f9d086` |
| 17 | `theorem` | [pos_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/pos-iff.md) | 120 | `result-track:cee25ff37f238ccafe0c36d54616f05f0dd09f991c809122d3453e2fee337782` |
| 18 | `theorem` | [map_one_of_isLeftRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/map-one-of-isleftregular.md) | 124 | `result-track:3236973bb2c4ad60c06ebe8cd356e739f0b2a83d9905d03a3704f735ec51fb68` |
| 19 | `theorem` | [map_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/map-zero.md) | 128 | `result-track:29722d7f41f94c8bcca961b74decf9e978aefd0e7bb6b5f2c57c11a71c765ba1` |
| 20 | `theorem` | [sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/sub-le.md) | 137 | `result-track:28168fae6172f684ea4ac3f1679e0214d512da6a7659e48896ae5d578f44e6b7` |
| 21 | `theorem` | [map_sub_eq_zero_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/map-sub-eq-zero-iff.md) | 141 | `result-track:78d928bb31ccc2ee3ca346f837993d0b4c0c21646c58f5fed2ba47f984af1ed8` |
| 22 | `theorem` | [map_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/map-one.md) | 156 | `result-track:97b443d3894d752490b99d9d8a43b2c0e83f8eca7363a548d890420418d442e6` |
| 23 | `instance` | [monoidWithZeroHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/monoidwithzerohomclass.md) | 159 | `declaration-track:fb96b60a0ea46ef3d057de4bb98d3a7f1e1479f9eed6ee8821ded32a6a6432e7` |
| 24 | `def` | [toMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/tomonoidwithzerohom.md) | 165 | `declaration-track:2e1d62069c67a51bc02730eaf16ef0d576dde34948da7354ec5f7dd99962ebcd` |
| 25 | `theorem` | [coe_toMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/coe-tomonoidwithzerohom.md) | 169 | `result-track:d5d1e7a247b6acca75dc5008b12d24b188316988402ef9d7c20fca998c074a12` |
| 26 | `def` | [toMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/tomonoidhom.md) | 173 | `declaration-track:c0ba95ba811883cbde42f8fe1b498a19dfeb8db4ff384ab38328f0515c144d94` |
| 27 | `theorem` | [coe_toMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/coe-tomonoidhom.md) | 177 | `result-track:b7b002f7e2c2b0a233fa3bc051cc4b8d25dca9015a890092ea4ef0849069e4d0` |
| 28 | `theorem` | [map_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/map-pow.md) | 181 | `result-track:d4300e60a202f45bdc36c93f7e9ab2b5fcca5e264e8b82763f4a4ed448952a61` |
| 29 | `lemma` | [apply_nat_le_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/apply-nat-le-self.md) | 186 | `result-track:e2c40b97f181422c9cc3c872a953cba97a2c6dc20f23d10bcc61c220d674fc88` |
| 30 | `theorem` | [le_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/le-sub.md) | 212 | `result-track:abf07964fe099a31761bd49964019e76f464b16db515c9856a99cf9b96bd435c` |
| 31 | `theorem` | [map_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/map-neg.md) | 225 | `result-track:844bec5099b99fa743765a93c12c9574bdbbbcea78692f6233915e810fec039a` |
| 32 | `theorem` | [map_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/map-sub.md) | 231 | `result-track:46667730241d3b6ebb38b41f0584970c9a1cc645e2b7108a10961b660d86aa34` |
| 33 | `theorem` | [le_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/le-add.md) | 235 | `result-track:43059975b0816bda3563a0a12f3252250c98aa558558c39d4cbb26c709943e99` |
| 34 | `lemma` | [sub_le_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/sub-le-add.md) | 240 | `result-track:c91d0d20e09b0ce450d61d04902ceefe45a793429a2c457f4f3428a6666e5989` |
| 35 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 243 | `declaration-track:d54d3e4041fe223927157e2143fab0f307b72c525e648c67c101b44f978452b7` |
| 36 | `lemma` | [apply_natAbs_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/apply-natabs-eq.md) | 250 | `result-track:0f15fb0132ba348e9c2d40a72886aa271e83d123744bee27ddb099faac2b55e9` |
| 37 | `lemma` | [eq_on_nat_iff_eq_on_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/eq-on-nat-iff-eq-on-int.md) | 256 | `result-track:3b8d223789ca67a607e1222ba9e275c98c7231c1b762f661c633eae89562e167` |
| 38 | `def` | [abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abs.md) | 270 | `declaration-track:8a8662ddc1cd9f15098410fd9cdbcd04f6726316bcdc7cfbefbf4de233d3aed6` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/instance.md) | 277 | `declaration-track:7e137244c744d61e6c902d3d60ea431bfff8de8a64c9acaf019c5e43cdbb38ec` |
| 40 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abs-abv-sub-le-abv-sub-source-edition-2.md) | 288 | `result-track:d90a852aafb8502acd0f126688018a7cae841bd862e61a01f72cef15b6b817ce` |
| 41 | `def` | [trivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/trivial.md) | 300 | `declaration-track:d84402617fa17766574a095a95316a23e590eb15deba76ede1bec12b75fe374a` |
| 42 | `lemma` | [trivial_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/trivial-apply.md) | 319 | `result-track:0e300b9a46d3e526f594d09c6517bc1e38d86b7813622c02bc8988d9384d186f` |
| 43 | `def` | [IsNontrivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/isnontrivial.md) | 335 | `declaration-track:2fcc583a4c3eab9d37dc5f8914bcda2a96b97738a2dc408cce21e368a482bf70` |
| 44 | `lemma` | [isNontrivial_iff_ne_trivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/isnontrivial-iff-ne-trivial.md) | 338 | `result-track:6a2b100ad4419b6a6f6d2fb3b0ae4bd29681b0fb3463afe3894c18b182122026` |
| 45 | `lemma` | [not_isNontrivial_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/not-isnontrivial-iff.md) | 350 | `result-track:f572be1fc7b8e2972d261611618a051bc6cd6eb069a2d83545d6a9b2fbb5bc4e` |
| 46 | `lemma` | [not_isNontrivial_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/not-isnontrivial-apply.md) | 358 | `result-track:ff25797aa6ce7fe4c23b88cb4adcbae2ca6d107657883168754ba180773327ac` |
| 47 | `lemma` | [IsNontrivial.exists_abv_gt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/isnontrivial-exists-abv-gt-one.md) | 369 | `result-track:cb5ad6040f52575ebbc9eb598a701acb30bae667b8654a8f8eab27e153d4b604` |
| 48 | `lemma` | [IsNontrivial.exists_abv_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/isnontrivial-exists-abv-lt-one.md) | 377 | `result-track:ab3c39bab166c67f967acc5102762618fe1d6d30ff7d31758bd5fcd0fafc6894` |
| 49 | `class` | [IsAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/isabsolutevalue.md) | 395 | `declaration-track:b4823ad58e96a843ba68e8635be47fd56fa2c06f603ffcbc07f5f1bab847e328` |
| 50 | `lemma` | [abv_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-nonneg.md) | 412 | `result-track:63452640e1434093f76d8637ae75205dab4af589736fa540859ede854fae789c` |
| 51 | `def` | [Mathlib.Meta.Positivity.evalAbv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/mathlib-meta-positivity-evalabv.md) | 417 | `declaration-track:798f76f8f640b11ea87c6683683542d7273653f2249a4bca810e43d37a15612e` |
| 52 | `lemma` | [abv_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-eq-zero.md) | 422 | `result-track:5ab5a69fe95b227002f134dac32e0800de1cd1de349b1815456bfc0c1f5fbb71` |
| 53 | `lemma` | [abv_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-add.md) | 424 | `result-track:851d45a84a9d00279b807e7d9df85ba894f6f6a8865ed2614a58b18c58bb3b29` |
| 54 | `lemma` | [abv_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-mul.md) | 426 | `result-track:148de5bc6f13c345f3a72a6ca19ebdf846dcdf2b359342a3f1d31b9b7e41ae4f` |
| 55 | `instance` | [Absolute Value Basic Namespaced](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/isabsolutevalue-source-line-429-occurrence-2.md) | 429 | `declaration-track:3f6e19ad28685fac408e29d98477fa2c03ad1652d060f8a3f6a7dfa44f0ac20c` |
| 56 | `def` | [toAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/toabsolutevalue.md) | 437 | `declaration-track:dc4b7ef22c61a5861150a1a89dd3124b12323631a122c974d6941317ae07de6a` |
| 57 | `theorem` | [abv_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-zero.md) | 444 | `result-track:7099b4278661749606e7ea44c7cb26881e7eef2f412142e0933b864d8bd6ad0e` |
| 58 | `theorem` | [abv_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-pos.md) | 447 | `result-track:fb12ac9bfdc80785e46501f4ab7860852d08413afc4cbff7589c472133340928` |
| 59 | `instance` | [abs_isAbsoluteValue](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abs-isabsolutevalue.md) | 456 | `declaration-track:6b442eab09f7367447e6182a03de1301f94d4fe1b8fd1f414dcbc5f814a7fc5f` |
| 60 | `theorem` | [abv_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-one-source-edition-2.md) | 470 | `result-track:77155f5251a2ec8a934d4fa4554e37a4449f0a947ccf9cd991f0f7dfc3eb812a` |
| 61 | `def` | [abvHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abvhom-source-edition-2.md) | 474 | `declaration-track:315efb21e3d48ba94045424d23016860566faa532be067251b022db9132e80c6` |
| 62 | `theorem` | [abv_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-pow.md) | 477 | `result-track:0d8cb0c7251796431581710faf331660257584d4511a26d8d474d9727170996e` |
| 63 | `theorem` | [abv_sub_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-sub-le.md) | 487 | `result-track:5706238a90e47b9ac12712a173df66d9547a2869df0a2dcd06d2f79451437076` |
| 64 | `theorem` | [sub_abv_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/sub-abv-le-abv-sub.md) | 490 | `result-track:7542bb9ed0a2f8bf2f9e86a3ff6d573237033d95439e80daf80b06fbb8b79f0a` |
| 65 | `theorem` | [abv_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-neg.md) | 501 | `result-track:fc7236a68dc83c18332452d9331f1b2eaca25541a4e4c281bd0618f1dccc2bd4` |
| 66 | `theorem` | [abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-sub.md) | 504 | `result-track:7eb4b70c5c8b762d2d9ac4f819ef954f809df603b4f40f428e8f37077d1de1f5` |
| 67 | `theorem` | [abs_abv_sub_le_abv_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abs-abv-sub-le-abv-sub.md) | 517 | `result-track:abf00c7e56685f4470975ac3ce391b2a732d2e0bb3054b721f0597ddd07af47d` |
| 68 | `theorem` | [abv_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-one.md) | 533 | `result-track:0c208c94b6ae61f1588e82736f7edbefd4d0b914900d025d079da9080923e06f` |
| 69 | `def` | [abvHom'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abvhom.md) | 538 | `declaration-track:2e35e85cae30754c015e0ed98a0f00f97cfd9d41506bf2c4ada4a134138dd61f` |
| 70 | `theorem` | [abv_inv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-inv.md) | 553 | `result-track:651cc523202028e46fb5b53f1be74bf89656e2f41fc1d431906d9846f48bef78` |
| 71 | `theorem` | [abv_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/AbsoluteValueBasicNamespaced.lean/declarations/abv-div.md) | 556 | `result-track:9daef3876bf92db5245e343c8ba2ad1362b2ffe2d4ca1424bc8a42816ed242e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7c2a28a541f8105c35093c946202c9d50169da128e4249407da48405de8e4f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant7ad84c2a1b4b856d7d312874ffca99d0bf1f3bf06e9d4881cb2e669c00fd0a5e.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variant7ad84c2a1b4b856d7d312874ffca99d0bf1f3bf06e9d4881cb2e669c00fd0a5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
