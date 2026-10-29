# Verification target: Ring Theory Tensor Product Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd390c3bea6736863f8e77b39643fd624b6208ad",
  "lexical_observation_count": 185,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2029a3e0632a4d68772ef25c80645d88e3ff421d32f107ae091465aea39e3543.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd390c3bea6736863f8e77b39643fd624b6208ad`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2029a3e0632a4d68772ef25c80645d88e3ff421d32f107ae091465aea39e3543.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant2029a3e0632a4d68772ef25c80645d88e3ff421d32f107ae091465aea39e3543.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Rat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.MonoidLocalization.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baseChange](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange.md) | 76 | `declaration-track:a028603b66445c893154b2dd87e2c488ec5c7c52c7822bdc658b1a00569dd0f1` |
| 2 | `theorem` | [baseChange_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-tmul.md) | 80 | `result-track:b786ee2061063e1c9f8eae6ba787f5e3956fba5037fa8a4879542b45ccc118a1` |
| 3 | `theorem` | [baseChange_eq_ltensor](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-eq-ltensor.md) | 83 | `result-track:408b3a3c78dfa4a13d9eaa7cb9b24f23ba5affbf0a57933d7c213b5fee815fe9` |
| 4 | `theorem` | [baseChange_add](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-add.md) | 87 | `result-track:b03807f63a505ddf18edf977889d29ca61d6c18366f8db51ac18cf56ef53eda6` |
| 5 | `theorem` | [baseChange_zero](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-zero.md) | 93 | `result-track:b3c4c91b03c46c5e663712fe86342adb55c8f5014a78a0478188d3a314f14602` |
| 6 | `theorem` | [baseChange_smul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-smul.md) | 98 | `result-track:5dc2916d16fb7c2b28efff50d1f257eb63a09341a48d0aac9cbaefbdf23d3b26` |
| 7 | `lemma` | [baseChange_id](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-id.md) | 103 | `result-track:8070988e8d0b3a9ccf843543450c908394f1d1e995bf7992413c4e3bd3ebb8e5` |
| 8 | `lemma` | [baseChange_comp](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-comp.md) | 106 | `result-track:6cb9e4d03b365a84db03e50744b2c51605ce5da647bdbf658421d1940a9b4433` |
| 9 | `lemma` | [baseChange_one](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-one.md) | 112 | `result-track:a4751f76693230427baa47c97b940a09aa8fb0cdd53b0a9b99c822af8c419cff` |
| 10 | `lemma` | [baseChange_mul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-mul.md) | 114 | `result-track:0a422a12405a46a1e34d51623d2f25a4bdd7aa9b3b7057afcad5b5b4c8180510` |
| 11 | `def` | [Ring Theory Tensor Product Basic Namespaced](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-source-line-121-occurrence-2.md) | 121 | `declaration-track:5172c7ee702dfcc994b25d4bec19d1730a2d3539df4a3d0cc76f9727f835f5c2` |
| 12 | `def` | [baseChangeHom](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechangehom.md) | 128 | `declaration-track:f2135b6ba3f6e26e4b9b925704579d1585a19f13b47dc51964616a6036604d4c` |
| 13 | `def` | [Ring Theory Tensor Product Basic Namespaced](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechangehom-source-line-135-occurrence-2.md) | 135 | `declaration-track:17736695af0f3587d51c4ab8052f0d34129ad7766a2ddc39eac92d25ae554603` |
| 14 | `lemma` | [baseChange_pow](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-pow.md) | 138 | `result-track:9f3ee9dc3a2edbbe66e95460c572df313eccb6395306149e92771b62f2487578` |
| 15 | `theorem` | [baseChange_sub](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-sub.md) | 152 | `result-track:2df7faf11b7a3732aafd019d981fd4611914862b3b136958113a2af5fc455a3e` |
| 16 | `theorem` | [baseChange_neg](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/basechange-neg.md) | 157 | `result-track:272e2e8778eb6995ae4eb113586fff39cdfcec6e566d4e4549f9f8a2444559f8` |
| 17 | `def` | [liftBaseChangeEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/liftbasechangeequiv.md) | 173 | `declaration-track:69925886b5ec82c01e8e43003aef2851c81d288fa55fe654c7620773553cf601` |
| 18 | `abbrev` | [liftBaseChange](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/liftbasechange.md) | 178 | `declaration-track:e155a777675c44993738dd4218ae92eda177aea2f31e1233f2d1c4ef0dab4e43` |
| 19 | `lemma` | [liftBaseChange_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/liftbasechange-tmul.md) | 182 | `result-track:b5e6cb2457aeaa457188e4bbb57ee895ab7562354def60a674e897e8d33d3dae` |
| 20 | `lemma` | [liftBaseChange_one_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/liftbasechange-one-tmul.md) | 184 | `result-track:e7b0ef3c5a6bb01f94408dca73fe03cb7d3540c9eafc205435d4e18b0d50dd8d` |
| 21 | `lemma` | [liftBaseChangeEquiv_symm_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/liftbasechangeequiv-symm-apply.md) | 187 | `result-track:a62b00dc50e38661dcb98fa4bf0efa451f9bda951ebf551604e9d6e9d74a6c01` |
| 22 | `lemma` | [liftBaseChange_comp](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/liftbasechange-comp.md) | 190 | `result-track:dc358c3f5d3d1dc4a73a35f8c60b9f4dc02dd5c4f834cf9cf63c0439258de81e` |
| 23 | `lemma` | [range_liftBaseChange](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/range-liftbasechange.md) | 197 | `result-track:bc05b413eb516ac252a60f11548eac48ed8f1b45f4082516e4e0e103c7e556c1` |
| 24 | `def` | [lTensorAlgHom](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/ltensoralghom.md) | 224 | `declaration-track:9d5c61cc96aedac6ecafb442c227dcf13803ab88b4e10dec3fbb05f0ae6c58e8` |
| 25 | `def` | [rTensorAlgHom](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/rtensoralghom.md) | 229 | `declaration-track:d4fdfdb0c0dfef07b83dd5d545a2f2c9fac653cabb6afe42494c5059a173f2c7` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 252 | `declaration-track:bcc7f6b3325e171b1ff4075811a0be953ea20b69d3dbc36996b9103aed588028` |
| 27 | `theorem` | [one_def](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/one-def.md) | 254 | `result-track:3cda80eff1d31239ae5fa0ba15741c5b1e190f815c77829bc2d576660bf7d5ed` |
| 28 | `instance` | [instAddCommMonoidWithOne](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instaddcommmonoidwithone.md) | 257 | `declaration-track:b7a0ef630d339d90e9d573168f7532e422624b814d31b2fdac87b2f823b2d45d` |
| 29 | `theorem` | [natCast_def](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/natcast-def.md) | 263 | `result-track:39ddd51624680a00665738d7cae81b765df59fec6212e0087de4f4d53c96813e` |
| 30 | `theorem` | [natCast_def'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/natcast-def-source-edition-2.md) | 265 | `result-track:42795f672f8d31946b9be61edda23a92909d092fd78da332061837559624e74f` |
| 31 | `def` | [mul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mul.md) | 281 | `declaration-track:3b171a755131abf067d95e32521e5779652cd764046c8d8a49778a5acced03af` |
| 32 | `theorem` | [mul_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mul-apply.md) | 286 | `result-track:6e2b97fee7c257fed6e974e4a79fccdded71e382d6343f784a18b10e5a86f4a7` |
| 33 | `instance` | [instMul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instmul.md) | 291 | `declaration-track:f412746bd49788ee3ef438627a41fcc5fe399af9454931a83c4895346aeee92a` |
| 34 | `theorem` | [tmul_mul_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tmul-mul-tmul.md) | 296 | `result-track:4265b1ead6aea89b3240f964ea3fca6bebb674bf69b597e576a1fcb432228e19` |
| 35 | `theorem` | [Ring Theory Tensor Product Basic Namespaced](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tmul-source-line-301-occurrence-2.md) | 301 | `result-track:e1900ec36b9dff88e18129d9727d28b06bd318cd87f4e9a1fde96c605b1fc712` |
| 36 | `theorem` | [Ring Theory Tensor Product Basic Namespaced](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tmul.md) | 306 | `result-track:64c3fc48be10981ba3c7fb91f64553ba228c85ec7456e516f9d38eae6da163a5` |
| 37 | `instance` | [instNonUnitalNonAssocSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instnonunitalnonassocsemiring.md) | 311 | `declaration-track:8fd727cbf4306000e218a862c7fdf19fc0d95524df42baedcfffe19ac7a59243` |
| 38 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 318 | `declaration-track:d5e1004f8fca190dd6b073126d87b707291eb2b4805ae42cde96d724e1aac99b` |
| 39 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instance.md) | 333 | `declaration-track:4f8b8a1da299284c843412c9dcf242104711145119367ca10d025ebe43a300c0` |
| 40 | `theorem` | [one_mul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/one-mul.md) | 355 | `result-track:f78b604d80cdb4493244dfd2d0c335280f1d1fab89dce65980d17848218d017a` |
| 41 | `theorem` | [mul_one](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mul-one.md) | 358 | `result-track:ffdd620551adc2daf56083f484180ee5fa19f60eb95d098014d05906df5434fa` |
| 42 | `instance` | [instNonAssocSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instnonassocsemiring.md) | 361 | `declaration-track:3aa686de940af5899f8de84dcc839b7bd77409ec25bf214b82b9bbdbc600b9cc` |
| 43 | `theorem` | [mul_assoc](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mul-assoc.md) | 375 | `result-track:db99ef5d646772a094445583327bb843b451ce454446b6c9548694fe7f2c4ef3` |
| 44 | `instance` | [instNonUnitalSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instnonunitalsemiring.md) | 383 | `declaration-track:f66e3cf413ec9f87abd2775460eafc8588d44cdc2cbb341ecc13ac430a2887cb` |
| 45 | `instance` | [instSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instsemiring.md) | 394 | `declaration-track:292a476757fab7826ecb8ec1fd8ff37dffc666fab141649be19138f84239e7fc` |
| 46 | `theorem` | [tmul_pow](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tmul-pow.md) | 406 | `result-track:1eba6a4acc74f65f3c2cee7127253202fed40d006182d674f6fdf6f31a4c7f21` |
| 47 | `def` | [includeLeftRingHom](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/includeleftringhom.md) | 413 | `declaration-track:9c884db3a1908a477c546560861b7984a5d67cf88e75dea4ef2d2f412454b9d5` |
| 48 | `instance` | [leftAlgebra](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/leftalgebra.md) | 422 | `declaration-track:688ff46cc5b7ee203706b329733be8f5af6093616b7fb7769403a96dbbc5daa8` |
| 49 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/example.md) | 432 | `declaration-track:0e2a65723df0cf4f38916b552b1b5cb6c43f9bfafc46d72223e3ca676d5296d3` |
| 50 | `instance` | [instAlgebra](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instalgebra.md) | 436 | `declaration-track:0d41d6a469e95b76c6a096f5e29e88f5d101bee3f6298219931db7ebb75ddbf8` |
| 51 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/algebramap-apply.md) | 440 | `result-track:64e6a289bae9902c54f088330d61381c14fef0807958b259ff5747cb345e8357` |
| 52 | `theorem` | [algebraMap_apply'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/algebramap-apply-source-edition-2.md) | 444 | `result-track:c4d559b6414eed6fe006be1a906f5607e4f6cd35c92809ac97650b2eae00c3e6` |
| 53 | `def` | [includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/includeleft.md) | 449 | `declaration-track:09d96ed1a77929c63c06f288d178469875b6ae3d5e17ac9a0e7a6303df0542cc` |
| 54 | `theorem` | [includeLeft_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/includeleft-apply.md) | 453 | `result-track:cc68b97cb9fe4d9a44d2c190c8aae70f78279024123fb7a5cbd9bfea362b0e1e` |
| 55 | `def` | [includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/includeright.md) | 458 | `declaration-track:01510ae088ff2fd1148d5ba891678c0d5aaa70a1b019c8722ec2143680b4aa5c` |
| 56 | `theorem` | [includeRight_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/includeright-apply.md) | 467 | `result-track:63f7dcc77b1d99c2ee119c905fb4e262cf20af29786ed4768b79abe961458699` |
| 57 | `theorem` | [includeLeftRingHom_comp_algebraMap](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/includeleftringhom-comp-algebramap.md) | 470 | `result-track:80ceea5b3f979c8aeb1a7dfda5c7c551ce0363fb41f8dee890b44b04bc607eef` |
| 58 | `theorem` | [ext](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/ext.md) | 487 | `result-track:57acec9d46705b70687a5a59501add55ea53ad777d772c40ab8d843b7df88809` |
| 59 | `theorem` | [ext'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/ext-source-edition-2.md) | 497 | `result-track:73a2259aad581a1620d6eb1cd9c832e0b656bf42940104d944cd948afd667ac5` |
| 60 | `instance` | [instAddCommGroupWithOne](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instaddcommgroupwithone.md) | 509 | `declaration-track:d2a1c7e60ed69a0b37cdaad741a473aec89356c17e5bf9e9db1d5df8d1ebf666` |
| 61 | `theorem` | [intCast_def](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/intcast-def.md) | 516 | `result-track:4aa3c239bd16a5cfa35c7a05813ee2b43030a9675f7fb06876061bc2f4963b15` |
| 62 | `instance` | [instNonUnitalNonAssocRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instnonunitalnonassocring.md) | 525 | `declaration-track:d2714a1e6ae63581f0e95996eb3226daa99e37c8c09a8961a4e96065698ab9ec` |
| 63 | `instance` | [instNonAssocRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instnonassocring.md) | 536 | `declaration-track:2dcf47bb53ab1946d337d51d2dce06abc2590a57b235fef2dad191de8a6ed6cc` |
| 64 | `instance` | [instNonUnitalRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instnonunitalring.md) | 548 | `declaration-track:d43833f28a5cae9a3a24098c182c2c076024faeef62c23a18edc43dc273ba4a1` |
| 65 | `instance` | [instCommSemiring](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instcommsemiring.md) | 559 | `declaration-track:737565430b71d48df6042810f1743b1c86f60964a3b2e0e1b7fde38f5fc67702` |
| 66 | `instance` | [instRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instring.md) | 581 | `declaration-track:2c55902be1270c0b6617d2c70589ac136b77a8aee409886d09d290243fa24b1f` |
| 67 | `theorem` | [intCast_def'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/intcast-def-source-edition-2.md) | 586 | `result-track:7c5d4ad101871348a9b9af218b7ead354cd6777515850ec666c1cc0418200f4a` |
| 68 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/example-source-edition-2.md) | 590 | `declaration-track:3042101f28a9b357fb548d8791c35131f2e3b6e05e6c040137d6cd79e9ab7e77` |
| 69 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/example-source-edition-3.md) | 593 | `declaration-track:40481058e8010a4950a872327cb717624d7c30fb77ab26141025c9e1dea37ef0` |
| 70 | `instance` | [instCommRing](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instcommring.md) | 602 | `declaration-track:3bd253e100767ff9fed3e3da6b11134490af7b5645925a230652466f6c55b2b4` |
| 71 | `abbrev` | [rightAlgebra](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/rightalgebra.md) | 616 | `declaration-track:182d14e70062e280c51b7be20c698a966c2d98a85504ed951ac34599f5c9b06b` |
| 72 | `instance` | [right_isScalarTower](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/right-isscalartower.md) | 625 | `declaration-track:ce6044c6a59da43e0f4bda9a5ab45c2b4c9a3d9414897eb77d643e6ec171de70` |
| 73 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/example-source-edition-4.md) | 633 | `declaration-track:6686c90fcde6ff39d1ff755a8faf88f1d3f0964cacf492a2c2ecca0e96f90c2f` |
| 74 | `example` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/example-source-edition-5.md) | 638 | `declaration-track:9ad28673edd2f9e2297adf7331b64781cd2c392008f3994182b2f1b6dc009bcf` |
| 75 | `lemma` | [Ring Theory Tensor Product Basic Namespaced](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-mul-of-map-mul-tmul.md) | 656 | `result-track:8458848884f7adfb8d68038d5b471ee0c4321e90fd373897346b2c1dc5dfac46` |
| 76 | `def` | [algHomOfLinearMapTensorProduct](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/alghomoflinearmaptensorproduct.md) | 673 | `declaration-track:763a91e2d82ce8d0c8a6abc93f1470d6793d3a26954b960b4e1e3b166c93a7c9` |
| 77 | `theorem` | [algHomOfLinearMapTensorProduct_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/alghomoflinearmaptensorproduct-apply.md) | 679 | `result-track:b10094375720490a76b094bbf24071d495274a3975ec299e7b441ffa7dafb0a6` |
| 78 | `def` | [algEquivOfLinearEquivTensorProduct](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/algequivoflinearequivtensorproduct.md) | 689 | `declaration-track:fdf5620c554b70b07dfd237e9b06df8520d912189ce49b56c5f0bc1e6b7cfe7e` |
| 79 | `theorem` | [algEquivOfLinearEquivTensorProduct_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/algequivoflinearequivtensorproduct-apply.md) | 695 | `result-track:b74ed96303ae797326a3b4b2dbfaf68f115344bd67c0e900c62a364ba20a624d` |
| 80 | `def` | [algEquivOfLinearEquivTripleTensorProduct](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/algequivoflinearequivtripletensorproduct.md) | 703 | `declaration-track:34d050d025c3d33b2aad266b1da0f894d9ff941f5c7414a7104c5b9fca3cabed` |
| 81 | `theorem` | [algEquivOfLinearEquivTripleTensorProduct_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/algequivoflinearequivtripletensorproduct-apply.md) | 715 | `result-track:de29a12c2238124ee08243404b2cbdfd83c952daf293cfca3e81fe4cc4686475` |
| 82 | `def` | [lift](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lift.md) | 727 | `declaration-track:afad93aea937eee2beb3143f270539c2cf39f3558817f6d98a518d1152a81bfd` |
| 83 | `theorem` | [lift_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lift-tmul.md) | 740 | `result-track:f48a5a7bda8a84b810759aa923c69946c079ccc73ca5a4f9f25aa94dfefcce44` |
| 84 | `theorem` | [lift_includeLeft_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lift-includeleft-includeright.md) | 746 | `result-track:74fb7361852b402e9941b31e959e7b5f7a02174aed8bbe390e067cf5ec744fc4` |
| 85 | `theorem` | [lift_comp_includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lift-comp-includeleft.md) | 752 | `result-track:a923d5689f6cba7af5e9b4e1508c6974ca09c770c50ab153f8c374b4eff2d0b2` |
| 86 | `theorem` | [lift_comp_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lift-comp-includeright.md) | 757 | `result-track:bc53216988d387720eb0b5d84cf590f4fa9cb74d6949088ffbb915a04bb82688` |
| 87 | `def` | [liftEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/liftequiv.md) | 770 | `declaration-track:59a753588fd3e746d586ec318043ad523ce1f1549801586936beb994a3716726` |
| 88 | `def` | [lid](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lid.md) | 796 | `declaration-track:aba0dba05783ff37be3441a5862747ddbaf2546c311cc138a4f066f95d6aaac9` |
| 89 | `theorem` | [lid_toLinearEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lid-tolinearequiv.md) | 803 | `result-track:68d08f5b0eb0462059b20fc2c511a643b705c0c8c44d6282e4a34010f0403e9e` |
| 90 | `theorem` | [lid_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lid-tmul.md) | 808 | `result-track:ec0107f8ff1a8b796e2d85e27dd182b76e5183a594715c64d55d53d65d1346a1` |
| 91 | `theorem` | [lid_symm_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lid-symm-apply.md) | 812 | `result-track:ef4e8e5233a662f1d0a18927a3798706ffd68a1ba62a68c31f1c29f6ea13e58e` |
| 92 | `def` | [rid](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/rid.md) | 820 | `declaration-track:dd1a24b55d286d43ba089d58e075c9f4a4f7d8cb0a896a63beedc937f29089c3` |
| 93 | `theorem` | [rid_toLinearEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/rid-tolinearequiv.md) | 825 | `result-track:7abfe53d1614ec85de6023f698cfa4a112c254c52d9d0cbebb6274954d117665` |
| 94 | `theorem` | [rid_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/rid-tmul.md) | 830 | `result-track:0ffe9faf0e144e5388b361ef8ef7c0490051e956c1d8683917d28011e09806a6` |
| 95 | `theorem` | [rid_symm_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/rid-symm-apply.md) | 834 | `result-track:3a70b4aeffcf6652fce4cfb73aefc0e9e42251613a86209b9ad46c0ba6ce24ee` |
| 96 | `def` | [mapOfCompatibleSMul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mapofcompatiblesmul.md) | 845 | `declaration-track:5fd4a545a478941b89b4366acbcefced990fc22f4b27b15d66150fa516996230` |
| 97 | `theorem` | [mapOfCompatibleSMul_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mapofcompatiblesmul-tmul.md) | 851 | `result-track:ecc7d111c38bafe0a10ee68bdb04a4b46939672843a8648937e02b23c185b2af` |
| 98 | `theorem` | [mapOfCompatibleSMul_surjective](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mapofcompatiblesmul-surjective.md) | 854 | `result-track:0c48a9b17feac475b78bb077639021aff154f1186efa178acdac79e0f6cc4a2a` |
| 99 | `def` | [mapOfCompatibleSMul'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mapofcompatiblesmul-source-edition-2.md) | 860 | `declaration-track:d877f84719ca9f4328e55dda34054cda4c14814084dcdf357db84114f75c3428` |
| 100 | `def` | [equivOfCompatibleSMul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/equivofcompatiblesmul.md) | 866 | `declaration-track:762c56664ead7e68b6f7c2e4ae389155f01d6f3d4e53474f5d231504659c26e7` |
| 101 | `def` | [lidOfCompatibleSMul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lidofcompatiblesmul.md) | 876 | `declaration-track:3eb30921f51aebc021c0ed30d1ec5dcb5479532d5d5418b912f5e9ee7a5d1eb5` |
| 102 | `theorem` | [lidOfCompatibleSMul_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lidofcompatiblesmul-tmul.md) | 879 | `result-track:51901d972cf756b5766f6811bef0b2027841077016ee384178819b7b4ac93eab` |
| 103 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 881 | `declaration-track:5a6840b2dc8de46c895be71655c02b7463f46370bb2c3511f6f2e207971925b1` |
| 104 | `def` | [comm](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/comm.md) | 899 | `declaration-track:6b49634404e713d0f5aebe73d4c037fce7b30344fe5b5f7429d7aa9868bf3d13` |
| 105 | `theorem` | [comm_toLinearEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/comm-tolinearequiv.md) | 902 | `result-track:4c2be3a8d3e769f3afb9475a514b593ebbbe9e3d2b98a99ca9457d0a64072f1b` |
| 106 | `theorem` | [comm_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/comm-tmul.md) | 907 | `result-track:0149e514fa1b13b5a3c8b92963ca2a4de19a34a2abfa20e0ccb4f9f7fae94879` |
| 107 | `theorem` | [comm_symm_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/comm-symm-tmul.md) | 913 | `result-track:d077ba0439e2e8ffec81222f684a751ed2931de1c09d146d6e66bdd208a57754` |
| 108 | `theorem` | [comm_symm](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/comm-symm.md) | 917 | `result-track:7579765e382b7f46ffaecfaf0f18b950bf174654aef9fccf5f96d5b27e40d50c` |
| 109 | `lemma` | [comm_comp_includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/comm-comp-includeleft.md) | 922 | `result-track:1612fa94748f9a4fb3e24202c7f99bdf8f0f80c90bbe7d52f0700d5d101e3428` |
| 110 | `lemma` | [comm_comp_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/comm-comp-includeright.md) | 926 | `result-track:7deab18bc6aa102a64861e2fe785dfa79bb49ec4c415238c124ac613f9b38b21` |
| 111 | `theorem` | [adjoin_tmul_eq_top](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/adjoin-tmul-eq-top.md) | 929 | `result-track:4454803bec04d696dd22476cd404fc07c0b79cbfb57e52887d96e48c57747ef5` |
| 112 | `theorem` | [assoc_aux_1](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/assoc-aux-1.md) | 939 | `result-track:77739587fc1032efd9b4fcba875afc4d0aab0a0d8c39674cee79a04c69dd293a` |
| 113 | `theorem` | [assoc_aux_2](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/assoc-aux-2.md) | 945 | `result-track:0aad9f5c2f5fd153bf18b303f1e1d5e428d63458c0cef329941d391a711f5bca` |
| 114 | `def` | [assoc](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/assoc.md) | 952 | `declaration-track:d82586b40a164515d23c936d9463569082f071f3b2d4f17e3471c80ce6bdbedd` |
| 115 | `theorem` | [assoc_toLinearEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/assoc-tolinearequiv.md) | 958 | `result-track:53ecf5cb01bb7b83fecd4cba86ca76d19339191192852b1e7d3c409aa1388741` |
| 116 | `theorem` | [assoc_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/assoc-tmul.md) | 964 | `result-track:70aef18f9b6b5d9b9cd3025b1f60aaba45b82b5996df363d8494b5463cc0e136` |
| 117 | `theorem` | [assoc_symm_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/assoc-symm-tmul.md) | 969 | `result-track:deb7e2e9cb8fb133e8339f06c4b4598183e66a15960de026696416e9fd516ee7` |
| 118 | `def` | [cancelBaseChange](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/cancelbasechange.md) | 982 | `declaration-track:b3f34984c547da5c8fc22edf918ecef406f4249dbbccc0cf214f64050cd75884` |
| 119 | `lemma` | [cancelBaseChange_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/cancelbasechange-tmul.md) | 989 | `result-track:860a0971a5e04f02301eefc1d1522607a25f2c926421ef03ab807f05873f5a84` |
| 120 | `lemma` | [cancelBaseChange_symm_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/cancelbasechange-symm-tmul.md) | 994 | `result-track:0151bb20cab0da8e458830f6b5eb6c84ebb73ed12bf09b948608b695c27f71e6` |
| 121 | `def` | [map](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map.md) | 1003 | `declaration-track:e74d2f442bbcd3ae3ff2cba924cd6895b1669e43c2de2d78d2c849002fec8c13` |
| 122 | `theorem` | [map_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-tmul.md) | 1008 | `result-track:f0233a04bbdeaa449bc8b1b675d0d451ad9383e9d33bc444fc76707783ee4bde` |
| 123 | `theorem` | [map_id](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-id.md) | 1012 | `result-track:e437bc019e243b75410eba4d985d1abdf71bc6519830d612f2bb65cc5ed7074b` |
| 124 | `theorem` | [map_comp](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-comp.md) | 1015 | `result-track:57f6c497d3b8271ac74c4f45374e5495eed65b9172a006932a4ad1503f3f6cb8` |
| 125 | `lemma` | [map_id_comp](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-id-comp.md) | 1020 | `result-track:f13162edf3f3c7db94a0daa1804616306018a06cfb81be41ee99c13970c5c56a` |
| 126 | `lemma` | [map_comp_id](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-comp-id.md) | 1024 | `result-track:a996212b04c51734e196b933d21a43b4e6957e0c18c87f0e2dc2d86dd3dfd590` |
| 127 | `theorem` | [map_comp_includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-comp-includeleft.md) | 1030 | `result-track:7ef4634fb4da9bccb454474705c82812274cc8e6a76c26e6b9cfd30a4a88f0dc` |
| 128 | `theorem` | [map_restrictScalars_comp_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-restrictscalars-comp-includeright.md) | 1035 | `result-track:ea935f2d211fde739eeedaa308b44a55efa847eed380fbd41debde3bb44bd8be` |
| 129 | `theorem` | [map_comp_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-comp-includeright.md) | 1040 | `result-track:a02fdd7a3d74acf1f9e6e80a7b97f70bdc80216f4b7e1b72b1c522527d5cb918` |
| 130 | `theorem` | [map_range](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/map-range.md) | 1044 | `result-track:83deec5014a5716c75b3924be897cabe51ac5f5266d39c6d3158ff6f0a50e079` |
| 131 | `lemma` | [comm_comp_map](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/comm-comp-map.md) | 1054 | `result-track:2a4147cb80c699c215029defb84c4276ba975c2bc56d8e52eecbd27cd7a50235` |
| 132 | `lemma` | [comm_comp_map_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/comm-comp-map-apply.md) | 1059 | `result-track:fd5cbe2f10c2e0c2f53b5e7399c63a293814f05b09aff864b5b535e3bf563001` |
| 133 | `def` | [congr](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/congr.md) | 1067 | `declaration-track:5541804ed5c93644da7e1613f8d45fbb04a786782f1199ae9e4c735cc4127294` |
| 134 | `theorem` | [congr_toLinearEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/congr-tolinearequiv.md) | 1071 | `result-track:becc61ae8a448bb1801c3ed11f84f117e04425094beb2b37081cb348bc160227` |
| 135 | `theorem` | [congr_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/congr-apply.md) | 1076 | `result-track:f9c73a302c2cad23cd480e5e7b19cd5b5412322931af1ea383fade33c3bf9636` |
| 136 | `theorem` | [congr_symm_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/congr-symm-apply.md) | 1081 | `result-track:c73bc0acc7b3bedb9b31b8ccb5a5ab45d13a7a1a65852a5f57674d89635d7402` |
| 137 | `theorem` | [congr_refl](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/congr-refl.md) | 1086 | `result-track:6f6edb6058caeac99c5c7799ded5c2444eedf1fc174e0ea333e0b7102d941e9c` |
| 138 | `theorem` | [congr_trans](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/congr-trans.md) | 1089 | `result-track:1bd86a1b55c63ce9e8ebdc45d677632a4c7cf7953e61ed6e168f382fac1d99b6` |
| 139 | `theorem` | [congr_symm](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/congr-symm.md) | 1094 | `result-track:8b969edd5164e90938ace36f98d550778b3edab2a5d5fa6cb3cc16836a8e6482` |
| 140 | `def` | [leftComm](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/leftcomm.md) | 1100 | `declaration-track:ca1ac19b23ecf0918736e7e5bf12cd09bfbc8c23b322a306bcb1286be448fd31` |
| 141 | `theorem` | [leftComm_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/leftcomm-tmul.md) | 1107 | `result-track:6c4d10b9f4fd27cdb65a805653c1cc79110def5a55713b349e76ac6b8dcc04f9` |
| 142 | `theorem` | [leftComm_symm_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/leftcomm-symm-tmul.md) | 1112 | `result-track:21d0c0802dda48101c215ea3d71fe82e3da1e267ca42719743c17e3c667a799d` |
| 143 | `theorem` | [leftComm_toLinearEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/leftcomm-tolinearequiv.md) | 1117 | `result-track:53f29d5c9af22c12520c7d0e999a05762a07a4088a7b5dc2fa6f78cfdc96338b` |
| 144 | `def` | [tensorTensorTensorComm](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tensortensortensorcomm.md) | 1124 | `declaration-track:8176300c23e54438312328f07acc1f7538afd0ec140a5643f5346051fc15fbbf` |
| 145 | `theorem` | [tensorTensorTensorComm_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tensortensortensorcomm-tmul.md) | 1129 | `result-track:cd46dd042af5ee24cf6ce1de300f32cd6b2b77b9b0e6604dfad5474986522eed` |
| 146 | `theorem` | [tensorTensorTensorComm_symm_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tensortensortensorcomm-symm-tmul.md) | 1134 | `result-track:7f5ca136422f87747c5e9424ad76464256a3c6574defbfd58cb25a569d5632f9` |
| 147 | `theorem` | [tensorTensorTensorComm_symm](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tensortensortensorcomm-symm.md) | 1138 | `result-track:0d4c07db36c596e0a51cac8010bcd985b7762b2977c380efc1404dfe7d15aa2d` |
| 148 | `theorem` | [tensorTensorTensorComm_toLinearEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tensortensortensorcomm-tolinearequiv.md) | 1142 | `result-track:52f1a8540f35e32f8bae9bc6df70beafd4280f7a9f46d62533c6d31897c05a83` |
| 149 | `theorem` | [toLinearEquiv_tensorTensorTensorComm](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tolinearequiv-tensortensortensorcomm.md) | 1147 | `result-track:3873295d9e954bc3392a3d67f8f6b412af01c3f91b3a882b9784349a21307730` |
| 150 | `abbrev` | [productLeftAlgHom](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/productleftalghom.md) | 1169 | `declaration-track:6790ec0513940bc67be6a06cde9ccca8a42d9d4e8cba293c6d366e6f2da39024` |
| 151 | `lemma` | [tmul_one_eq_one_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tmul-one-eq-one-tmul.md) | 1172 | `result-track:5ec3c213cfcc86c65a158d1b4111026590df5ec2905e30867b7b5e2943c49bf4` |
| 152 | `def` | [lmul''](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lmul.md) | 1185 | `declaration-track:526bb38dba651d34fe9dc63732031c50f3d2ff6fbd91f0ba86770ac4693eeed0` |
| 153 | `theorem` | [lmul''_eq_lid_comp_mapOfCompatibleSMul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lmul-eq-lid-comp-mapofcompatiblesmul.md) | 1193 | `result-track:49067244b9fa9f096a952b3284d5f954a37b136aab164c0ce92fc3e1dae57f6a` |
| 154 | `def` | [lmul'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lmul-source-edition-2.md) | 1198 | `declaration-track:ec9ebdf275425798ee878098693e0a6f933966cd32a9efe40f3032a3b548964c` |
| 155 | `theorem` | [lmul'_toLinearMap](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lmul-tolinearmap.md) | 1202 | `result-track:55f48b5e314f9efceed3488ef51e7db7711bbf8b5b2a49fe28f2bfac1751c920` |
| 156 | `theorem` | [lmul'_apply_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lmul-apply-tmul.md) | 1206 | `result-track:a570b4c94083c4cf8b0cda47b9f12f3fafb64955d0725213b8e7c85d5195be2c` |
| 157 | `theorem` | [lmul'_comp_includeLeft](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lmul-comp-includeleft.md) | 1210 | `result-track:84d12f0850080657a3f0cb8afee7d7417f5162e42e010c7a40959e329651548c` |
| 158 | `theorem` | [lmul'_comp_includeRight](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lmul-comp-includeright.md) | 1214 | `result-track:aebb8ed5140dd6428a2d7e7c99df4d906f8cee5bc68b9bf5f0ae24258dce6b28` |
| 159 | `def` | [lmulEquiv](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lmulequiv.md) | 1220 | `declaration-track:6b7e853a129ee48f3f5fab704d6f9bbd637b6005ef092eefb3c6cd57cdc84798` |
| 160 | `theorem` | [lmulEquiv_eq_lidOfCompatibleSMul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/lmulequiv-eq-lidofcompatiblesmul.md) | 1226 | `result-track:b11dd1d02e95acbbff1ad59d336abde467949924d9f23ce208e2804df20ac61c` |
| 161 | `def` | [productMap](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/productmap.md) | 1236 | `declaration-track:0b102a748e3ec33b4cc0d844e1d0de1d14ec148c46bbf1a1d0933f918c0b24ab` |
| 162 | `theorem` | [productMap_eq_comp_map](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/productmap-eq-comp-map.md) | 1238 | `result-track:5c6ebaec6b27175f4951f1dc36c6eda83dc7428bf19c84e0f3af7895a917ea0e` |
| 163 | `theorem` | [productMap_apply_tmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/productmap-apply-tmul.md) | 1242 | `result-track:966df78c00b16cbf3196cc440b7cffa5d80fd4544343204206bf255690f6c669` |
| 164 | `theorem` | [productMap_left_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/productmap-left-apply.md) | 1244 | `result-track:a7d0b7b5a81423322e9422bdc0c8ce47c9fd9d8452b437ed0dce22ef56cd900b` |
| 165 | `theorem` | [productMap_left](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/productmap-left.md) | 1248 | `result-track:a48eea2676efec73744d1c8c65971ede2f0cb7017822f20e0e171ba30c7fa9dd` |
| 166 | `theorem` | [productMap_right_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/productmap-right-apply.md) | 1251 | `result-track:6bafb7a746d99e73d3cb30c86072a496c7e8a74edba9e63c6e14b38f091d549f` |
| 167 | `theorem` | [productMap_right](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/productmap-right.md) | 1255 | `result-track:e376ebcaf3030b6872a50ac12a855bbadf51a208c365c81c210f59eea029623a` |
| 168 | `theorem` | [productMap_range](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/productmap-range.md) | 1258 | `result-track:0733e84046a2456379ae99acdf947bb39052f64d4e7ff452e97c66f3c6840504` |
| 169 | `lemma` | [mk_one_injective_of_isScalarTower](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mk-one-injective-of-isscalartower.md) | 1270 | `result-track:01123718625f3b411a757ccae4fb5bb75aededc47a177bb14013e0e34ad6f36e` |
| 170 | `lemma` | [Algebra.baseChange_lmul](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/algebra-basechange-lmul.md) | 1281 | `result-track:abb07aa0f24322a4d2e28da2a898bc710b2c6d292d60d4f8d8e354dfb3d894c2` |
| 171 | `def` | [tensorProduct](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tensorproduct.md) | 1302 | `declaration-track:5a43021691adba5eec1e29fcbc06dfa6e01d23c1de1b87455fc7d85aff13acf4` |
| 172 | `def` | [tensorProductEnd](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tensorproductend.md) | 1312 | `declaration-track:38d11c69bd7ab7c9bc1b53b53777d15dec76594add99a82c7dffabcbf2a4ff69` |
| 173 | `def` | [endTensorEndAlgHom](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/endtensorendalghom.md) | 1345 | `declaration-track:78c0090f2b5391adcf01b1674b253324520f7207d7f4fb7a8a8fd4509a7c3bd6` |
| 174 | `theorem` | [endTensorEndAlgHom_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/endtensorendalghom-apply.md) | 1351 | `result-track:e8ffebd1b0443dfdec4fe33d0e420d2f8d027f0637324e0f8416f9f5403580a4` |
| 175 | `def` | [moduleAux](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/moduleaux.md) | 1368 | `declaration-track:36b81d37b47a4bb30790adb349388dbdda7fcdd4a8baddc0d7334549b3a622b3` |
| 176 | `theorem` | [moduleAux_apply](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/moduleaux-apply.md) | 1378 | `result-track:f0e44a0df3732a9a2d565d29ce8e8e313104828fd0e200fba84a91a8f832bce1` |
| 177 | `def` | [module](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/module.md) | 1397 | `declaration-track:6c55b07da1389a7781b95d4e791e3b292ec05983148dd381a3216479e902aeba` |
| 178 | `theorem` | [smul_def](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/smul-def.md) | 1436 | `result-track:7dac4f47478e31ec1acc92ea2b76d215d7cadacc97c8079614d442e6c007b078` |
| 179 | `theorem` | [linearMap_comp_mul'](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/linearmap-comp-mul.md) | 1441 | `result-track:b553e96a353030daee17de2eb9ed5d18c074345f3e5770aa5fdc995b675c96e6` |
| 180 | `theorem` | [mul'_comp_tensorTensorTensorComm](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/mul-comp-tensortensortensorcomm.md) | 1450 | `result-track:fc89ed166e95bcb233af0b36b0a3f2b4ff2efa1ffd69a3d027e21049809e6ea6` |
| 181 | `lemma` | [Submodule.map_range_rTensor_subtype_lid](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/submodule-map-range-rtensor-subtype-lid.md) | 1461 | `result-track:31b37474cc68a6350e7eef706cd2cb7465d4c96f1f1acec741805a01696da382` |
| 182 | `theorem` | [TensorProduct.mk_surjective](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tensorproduct-mk-surjective.md) | 1477 | `result-track:c166dcc4c260d57d929b29e9631b9ffd1e586350e9f2533b960be978e44451af` |
| 183 | `lemma` | [TensorProduct.flip_mk_surjective](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/tensorproduct-flip-mk-surjective.md) | 1486 | `result-track:56b0240653449b49a0642e3e729e35a089f3ab5f2e32aaef1f7bad5b15decc4c` |
| 184 | `lemma` | [Algebra.TensorProduct.includeRight_surjective](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/algebra-tensorproduct-includeright-surjective.md) | 1495 | `result-track:e9394eee775d1fe2e74faad01b463986ed505a0b3b4942dacb6109664f125974` |
| 185 | `lemma` | [Algebra.TensorProduct.includeLeft_surjective](../../../../CommutativeAlgebra/RingTheoryTensorProductBasicNamespaced.lean/declarations/algebra-tensorproduct-includeleft-surjective.md) | 1499 | `result-track:a3636ceda8b4540aa411f3c1730a1dd7e52e433354eab02d2e8fa00f5a1126b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6d23c4c8ce889dd67b0ebba9fe1a70aaac99fd524118ce4d58398d6aade4b43 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant2029a3e0632a4d68772ef25c80645d88e3ff421d32f107ae091465aea39e3543.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant2029a3e0632a4d68772ef25c80645d88e3ff421d32f107ae091465aea39e3543.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
