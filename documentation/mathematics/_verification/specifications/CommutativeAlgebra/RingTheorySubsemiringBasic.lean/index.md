# Verification target: Ring Theory Subsemiring Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a4cac017cfb69c2edf204c63963e7d297b6563c",
  "lexical_observation_count": 221,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a4cac017cfb69c2edf204c63963e7d297b6563c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.InjSurj` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupRingAction.Subobjects` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Centralizer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddSubmonoidWithOneClass](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/addsubmonoidwithoneclass.md) | 34 | `declaration-track:7cf42afd1c85a94a94e005c883f847f0480651a2d2bdabce8c7690f1585b319c` |
| 2 | `theorem` | [natCast_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/natcast-mem.md) | 40 | `result-track:b91db4fc92782af7352a1e1138d38ff86578fd41307ccef6246ebd27f55bc6b3` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-14.md) | 44 | `declaration-track:f23086efe40aa3f9176e36caa1315f61709dd8ac1157775dae68bfc63f6dd2e6` |
| 4 | `class` | [SubsemiringClass](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subsemiringclass.md) | 61 | `declaration-track:a9fdf23e9cc3ba700b8023fe89c793e10f8b367886720c0508169c9cbd018f5f` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-12.md) | 66 | `declaration-track:dc50e6ed9c89c02c3972ee4a69e9742d02a7f42a0d576761c043aa7c48d76f1e` |
| 6 | `theorem` | [coe_nat_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-nat-mem.md) | 74 | `result-track:9db68c149386b8dcdfe55f2688b87e4a26aa676c7db82b7736b64dfdedb3bb00` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-8.md) | 83 | `declaration-track:647e12277694341ef5d0f9ae6a32aa04a5e4e1ad7e3aaec27c4c7061aaf05e80` |
| 8 | `instance` | [nontrivial](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/nontrivial.md) | 88 | `declaration-track:7a3ac89a93f06edab812b8d0a661302a002338d038a5073bcb553d586738b9e6` |
| 9 | `instance` | [noZeroDivisors](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/nozerodivisors.md) | 92 | `declaration-track:716cfaea82cbe0b52952f03c268b8f27e2510fc2842bf6d1fdd57cb5a975367a` |
| 10 | `def` | [subtype](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subtype.md) | 97 | `declaration-track:53f5097d1e3537ed8fcb1e5435207dc0851f45ed0ab7830bc3c9fb57602dca51` |
| 11 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-subtype.md) | 102 | `result-track:9949e30e8fb93edf80ae5da03ab250b178862fcaeee5a5582e2eb869d4ebdfcb` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-7.md) | 108 | `declaration-track:42d74866d282764881ce5ee56fb0c74679c813b626360d9f787cca27adef1621` |
| 13 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-pow-source-edition-2.md) | 115 | `result-track:52a31662084fb65c4eb65628a897698a22dc1907d7e5cda7ec35b3d2686c9c84` |
| 14 | `instance` | [toCommSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tocommsemiring-source-edition-2.md) | 123 | `declaration-track:89556667efabba7b5ad1dd2a117ea5f3844bbeb2e790862305c7bf32679cf5b2` |
| 15 | `instance` | [toOrderedSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/toorderedsemiring.md) | 130 | `declaration-track:5829664d76eaf5cc437a8bcb411219ba9aa4aef22c12dd2e10bff5a4b886e2e8` |
| 16 | `instance` | [toStrictOrderedSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tostrictorderedsemiring.md) | 137 | `declaration-track:202c175e88dd9cf74858e00e9871d4c014b420c32a54268f15067db406c23277` |
| 17 | `instance` | [toOrderedCommSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/toorderedcommsemiring-source-edition-2.md) | 144 | `declaration-track:9a4527ca80657c0b2626de1371aaff29f05a1a1006e8f24c6cdf5c0c28c9b9b0` |
| 18 | `instance` | [toStrictOrderedCommSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tostrictorderedcommsemiring.md) | 151 | `declaration-track:0fea6721c6d61aa63dab9672171f96aa857eb3451118dd83689d3cfdd7b70d12` |
| 19 | `instance` | [toLinearOrderedSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tolinearorderedsemiring-source-edition-2.md) | 158 | `declaration-track:cd057df127ed8cbb3f2df31101e94045359b6836263721ebf36e5c35a5fe2ac1` |
| 20 | `instance` | [toLinearOrderedCommSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tolinearorderedcommsemiring.md) | 165 | `declaration-track:59cef66d6203e0e851e6533d561aa184b5b540aa63603fa6c363913b9864984b` |
| 21 | `structure` | [Subsemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subsemiring.md) | 179 | `declaration-track:469bc8f561275190f17f390f52ea57bb6af9c3fb00b931bd3a219b8fc7544fb3` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-4.md) | 190 | `declaration-track:1f5bd99bbfc0d3fae13059071f2159822d419513b4c00505217960e2c340c0d5` |
| 23 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-5.md) | 195 | `declaration-track:266946fa4635d1eb073aded99f7ae9db0d33475991d8efa9f4ed0c13b4799dc0` |
| 24 | `theorem` | [mem_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-tosubmonoid.md) | 203 | `result-track:7aae83ab43512471c1dd174a6d706740863192ecb4922c3108927ab1cd04babc` |
| 25 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-carrier.md) | 208 | `result-track:3b037b72e71ec3d108e4d62a0c88b2a0ed4242c1b99f30e7a38bf8092dfcd630` |
| 26 | `theorem` | [ext](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/ext.md) | 214 | `result-track:ce594e519f4aca51141341ac6fb1cb00835600bc3773a67f0b9381b0d3712ec6` |
| 27 | `def` | [copy](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/copy.md) | 220 | `declaration-track:8efad8ad0dd64f7ec04d3e9db9ce8fdec6070f1ebbd8228d3f7ce19ee58e02ad` |
| 28 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-copy.md) | 225 | `result-track:6da087c5c1492ecb0160bc4d8bf70b7b56a1fa6d82dc68bf3d5451d2f8d4a7b9` |
| 29 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/copy-eq.md) | 229 | `result-track:506642cfcd0cc0bf81f907c77b10768631580ee79d69f09a3d42de60b8907cd2` |
| 30 | `theorem` | [toSubmonoid_injective](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tosubmonoid-injective.md) | 233 | `result-track:ee8383985ead7c1dfe035abe823cc28728bb9f2dda51c746f36aef221e9a6ea6` |
| 31 | `theorem` | [toSubmonoid_strictMono](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tosubmonoid-strictmono.md) | 238 | `result-track:b8846852ab248f6bddfcdd5c639a04fe979c4db180bfac30777b40e293b8dc70` |
| 32 | `theorem` | [toSubmonoid_mono](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tosubmonoid-mono.md) | 243 | `result-track:c82ca01a259926b03ab94530577f27ed56bea0f58c5d3a9d581fdb745ef9fc87` |
| 33 | `theorem` | [toAddSubmonoid_injective](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/toaddsubmonoid-injective.md) | 247 | `result-track:8ed149bbc7de05e3e654708709c1e2b2ec52680eb55656c5cfa09d6bdbc73425` |
| 34 | `theorem` | [toAddSubmonoid_strictMono](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/toaddsubmonoid-strictmono.md) | 253 | `result-track:407f195c8bea70780353fb0302ac77c84e34327f3cff846f9a58ae6cab98c558` |
| 35 | `theorem` | [toAddSubmonoid_mono](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/toaddsubmonoid-mono.md) | 258 | `result-track:faafb613bb10f1c10e3f5156f6144f1d80862d9541743459c6d0d87c9bf82e98` |
| 36 | `def` | [mk'](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mk.md) | 264 | `declaration-track:356baaef6be6c05f2fff16dc69e6e1b041cdd73f6fcd58a026a04479d6127a1c` |
| 37 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-mk.md) | 274 | `result-track:4a2cea7faed7add64aabefbbd509441e87179cf578e17623bb43f8ad2ed65623` |
| 38 | `theorem` | [mem_mk'](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-mk.md) | 280 | `result-track:ad4d6b18247ec2a999e83fbb32a74146c8bd4dfb200712465ad68a6cfb5affb9` |
| 39 | `theorem` | [mk'_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mk-tosubmonoid.md) | 286 | `result-track:3a3c4998e8f96e8c563d26ff7cc222055e6a7c79162558eb13a3c3b009061f81` |
| 40 | `theorem` | [mk'_toAddSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mk-toaddsubmonoid.md) | 292 | `result-track:8c31e076903ac85e1ebee5f50feaf27ee10697b23f9c88b5cb4f8a1d8dfd0191` |
| 41 | `theorem` | [one_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/one-mem.md) | 304 | `result-track:29b892874baaa12a818ed95de05a7d3b7c3ee4da898caba7edbf3d2011fe3d39` |
| 42 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/zero-mem.md) | 309 | `result-track:6f6dcab874f80ef73c7ba57560c4500dd2600354d3d15095ba8f821a14ca1057` |
| 43 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mul-mem.md) | 314 | `result-track:1ebafe2ae02375a53d803c1c3e8d75606dec9cf79dcf49d3bbc04481de5f1b60` |
| 44 | `theorem` | [add_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/add-mem.md) | 319 | `result-track:130c75c0f4e9141cb5c3e4d683bf2eca04f47e429f1693ccf2fa257d6a1ea32d` |
| 45 | `theorem` | [list_prod_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/list-prod-mem.md) | 324 | `result-track:4321a0f88c0fda5a8ceb87ee5b556ed86f41bbf72881515457f2a5dbc913246f` |
| 46 | `theorem` | [list_sum_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/list-sum-mem.md) | 330 | `result-track:2d778698e975a3415af08c70bd7134c47e0db6697711a1f5eadbb57499cb7077` |
| 47 | `theorem` | [multiset_prod_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/multiset-prod-mem.md) | 336 | `result-track:1e6733c35d82b5d2807b1ef8cd8b9bcf49ce8344b566032414cbf3cb9bffca0b` |
| 48 | `theorem` | [multiset_sum_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/multiset-sum-mem.md) | 343 | `result-track:8bb7409cb39e4ccdc4f2718d82508ec22bb9c803157ae0d0ef8ef0d389376b4b` |
| 49 | `theorem` | [prod_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/prod-mem.md) | 349 | `result-track:fac1ab50d280f94c2467223d58f5912aea301a78557210c7c2d983b6f04c292a` |
| 50 | `theorem` | [sum_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/sum-mem.md) | 356 | `result-track:e03601d41a70734f80183186281a2aef6ed31ef0bd5477c5d89e7197a57249c1` |
| 51 | `instance` | [toNonAssocSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tononassocsemiring.md) | 362 | `declaration-track:b34052ab78396b80e78a9f96c31b0854ea760f6fac2a193fc11148fa47333376` |
| 52 | `theorem` | [coe_one](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-one.md) | 368 | `result-track:ea079e0b27f2c112e597c076dedc7327827fdf9c7f53a954e8685c089c0a270f` |
| 53 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-zero.md) | 373 | `result-track:4383da54f9816d0f7063a06db999b59feac68f12f44e45844679d02d68672149` |
| 54 | `theorem` | [coe_add](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-add.md) | 378 | `result-track:2333b3a0be9ee4b946023d8e3b21fac3f69386398c29e221212d6b16882e6d46` |
| 55 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-mul.md) | 383 | `result-track:5e83142e1303b07ba0972fd89f45274458f4f740ab975795e19cc8712cd18d10` |
| 56 | `instance` | [nontrivial](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/nontrivial-source-edition-2.md) | 387 | `declaration-track:ce070bd09b0a73de9fd90f061dc19f06f6b1922c0a54b2e37479014dc6e1dfe3` |
| 57 | `theorem` | [pow_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/pow-mem.md) | 391 | `result-track:386062f9eeb173858efb2528c99e0d7b4daf8ddbf178905169d0787b717a66ca` |
| 58 | `instance` | [noZeroDivisors](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/nozerodivisors-source-edition-2.md) | 396 | `declaration-track:9b570b055bd1e7e3290baf51b6850e5becec16872726a779b07b56fe0914c4c2` |
| 59 | `instance` | [toSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tosemiring.md) | 402 | `declaration-track:4c274822a9ec53d524f11b4580541e9221382ea2a83e44f7ee69e3b7bd107e2d` |
| 60 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-pow.md) | 407 | `result-track:288a7cb5eb28a018490000b06789aa1f403e66ba8ba5f8e3aefbb190336458b2` |
| 61 | `instance` | [toCommSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tocommsemiring.md) | 415 | `declaration-track:0196bd45e8181ec5cdee01f8da8fc888774158154b005adf1713b1dc1fe9adb5` |
| 62 | `def` | [subtype](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subtype-source-edition-2.md) | 420 | `declaration-track:f859abe9db4d7528f686b24b73e88e4de3a6e4a87997d31b41c8e4745e372229` |
| 63 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-subtype-source-edition-2.md) | 425 | `result-track:d570775d7f6fd456cdc040d0993f4810d1fe0236d31ed7618ce7d8a07a55285f` |
| 64 | `instance` | [toOrderedSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/toorderedsemiring-source-edition-2.md) | 430 | `declaration-track:bd23a57b1990334ec5b6b3bd6ad49383133328f0fce8128e688a9c511bb24b7a` |
| 65 | `instance` | [toStrictOrderedSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tostrictorderedsemiring-source-edition-2.md) | 436 | `declaration-track:aaac2e3f0919dbb8f8d862ddddc75b8885a9d2bb222f2905c43993edaec02aae` |
| 66 | `instance` | [toOrderedCommSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/toorderedcommsemiring.md) | 443 | `declaration-track:02a9ec4108573215e1deac6247a80aa516fa47f869a07780c6b16b4b99d11555` |
| 67 | `instance` | [toStrictOrderedCommSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tostrictorderedcommsemiring-source-edition-2.md) | 450 | `declaration-track:b7351cc6771f4ce9ea6b1c9d1b2f623a901fb5424acb74ea21e831df25e26471` |
| 68 | `instance` | [toLinearOrderedSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tolinearorderedsemiring.md) | 457 | `declaration-track:88a896ee483f953400ddf9f66e477e8a0759ffb47e32f478c3f09d4a752418d2` |
| 69 | `instance` | [toLinearOrderedCommSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/tolinearorderedcommsemiring-source-edition-2.md) | 464 | `declaration-track:ad2f78c1a16ef2ceffb208a71b6afa39f026b730cd1839de862b9cc9263c4029` |
| 70 | `theorem` | [nsmul_mem](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/nsmul-mem.md) | 470 | `result-track:85c15386b7a65a2b18fa0cb8a91a165403324712a1f8d9017fc3a82c722ba6a1` |
| 71 | `theorem` | [coe_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-tosubmonoid.md) | 475 | `result-track:72c152aafc5982f46552e4ed69f546938aabe44d08965a8c9dd78ddb93ee3505` |
| 72 | `theorem` | [coe_carrier_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-carrier-tosubmonoid.md) | 481 | `result-track:44f66c431cd76020ad68f2b1745224ff3e0aef586d28e9ed54ee7f6b17355fa5` |
| 73 | `theorem` | [mem_toAddSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-toaddsubmonoid.md) | 485 | `result-track:adc0e000a1e6c544e151e3d2708ab0b9ac7bdaa3f3a59eb1115a0fc052ff51d2` |
| 74 | `theorem` | [coe_toAddSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-toaddsubmonoid.md) | 490 | `result-track:db150f7cac2e115283498f8b385ee2cf9f68b44f5a1591528ddd941c200f9937` |
| 75 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-2.md) | 495 | `declaration-track:12c97d8f1fb6f6c19c80a4de58454a80d262ddf13de994b28fee2a3ec101a937` |
| 76 | `theorem` | [mem_top](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-top.md) | 499 | `result-track:05c71f3520bf352c5bd215f6feeea035cb5854fed5161b970fbb418d275a434c` |
| 77 | `theorem` | [coe_top](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-top.md) | 504 | `result-track:0e7f2ff84f903a4a1303d6db8712bcbfa44f3fe2d64a1849ec88259d3bb1677b` |
| 78 | `def` | [topEquiv](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/topequiv.md) | 510 | `declaration-track:b3ac7d038e05403bc96dbc5b6651e9168940e020d8369cd0d17c127df775038d` |
| 79 | `def` | [comap](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/comap.md) | 520 | `declaration-track:b5c5c62f372843ffeaa80c013009f9bb2ca59a43f2589cc9efa1b8314ae7d406` |
| 80 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-comap.md) | 525 | `result-track:79cc45dc7070e60c159e051cd1041610b3d3ae9b209c51799e95a1a44c22d5f7` |
| 81 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-comap.md) | 530 | `result-track:580bc1744d6a644bd589e4ff70f0294c2be0f025b0272276117339582e8f432f` |
| 82 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/comap-comap.md) | 534 | `result-track:4d3b85627a9f17068e423d800888b19f35a8d0edd7b107362051b84614fc0439` |
| 83 | `def` | [map](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map.md) | 540 | `declaration-track:82132de0102fb38c81ab1b20a224ed0ab2bf51a6c5af0c0e933e9997ab5e2d85` |
| 84 | `theorem` | [coe_map](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-map.md) | 545 | `result-track:d69d90f7fa663a2dcf877a9843d9256b6bcb400bc86b72788c39fcd0ccabf508` |
| 85 | `theorem` | [mem_map](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-map.md) | 550 | `result-track:b301ae8e22039ab53f147620be958d60abafc51a7e44d6d023f0f4cdf3ef505b` |
| 86 | `theorem` | [map_id](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map-id.md) | 557 | `result-track:8b4b59e329a3a3ecb866c40b23406f5e2506d35f53e1e53f28eece6700b5ab1f` |
| 87 | `theorem` | [map_map](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map-map.md) | 561 | `result-track:5940a3bbc64b51963abe3fdaccc4fc8e134f1b12a2dad50a3fd2d392366ce5e1` |
| 88 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map-le-iff-le-comap.md) | 565 | `result-track:095c112b7b1513f3afa2566f1818b46fed5c034a71463055d47da849b922fa24` |
| 89 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/gc-map-comap.md) | 570 | `result-track:5f0dbcc3b2f30362167f245eb153b3bedb7d5026cbeabe4856c167c7d332d2bb` |
| 90 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/equivmapofinjective.md) | 575 | `declaration-track:6debea5efad424123495c6f66615f1c5ddb942d730027d82af12d97fe227f8ec` |
| 91 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-equivmapofinjective-apply.md) | 582 | `result-track:3a756ba85e06ffa6380dd842a0a0d471b54a480877de3a1ad56969dd2b016e2f` |
| 92 | `def` | [rangeS](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/ranges.md) | 594 | `declaration-track:ae733abdb680a4456330fe0b37b2ed65df75d072156b975ae3a30ba96a3d1bc2` |
| 93 | `theorem` | [coe_rangeS](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-ranges.md) | 599 | `result-track:b9888a4d55e67ca9cc14acc4cc072270bf067e7a60e44e9ed30e8ac6504f4d0e` |
| 94 | `theorem` | [mem_rangeS](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-ranges.md) | 604 | `result-track:4a115e6a84fb21a5ddca09840babc8dcf8b2d1dbca3845de69f771b97af0d9cb` |
| 95 | `theorem` | [rangeS_eq_map](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/ranges-eq-map.md) | 608 | `result-track:6f4ad9f25f0923f7ae1e2e2c86d18acc810c5cd4c3c70d12808681cc5a97242f` |
| 96 | `theorem` | [mem_rangeS_self](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-ranges-self.md) | 613 | `result-track:b3e91593cfe238a3c90a5026c3ff3a1a1ecccfca4139d88a12e1659b22b95348` |
| 97 | `theorem` | [map_rangeS](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map-ranges.md) | 617 | `result-track:f7a5514d33ec50ff9ecc24e4759fcaae30b6de432ca0a983bc1b8ac960a193e1` |
| 98 | `instance` | [fintypeRangeS](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/fintyperanges.md) | 624 | `declaration-track:f13e793f9ba8e6b4beb9b8aed78cdcae8cd455e5c6ab278901af0b454f61e9d6` |
| 99 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-10.md) | 632 | `declaration-track:77e7388d561da11b361be0e2c6eeebeafa0b666582ccc1382d97bc72f59344c4` |
| 100 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-3.md) | 635 | `declaration-track:1432e40d107e5c54f829dd262ae9b86bdd2ff4d5f2c180ce2565a30590c151da` |
| 101 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-bot.md) | 638 | `result-track:75ceba2023a337dfdb8c7a52227efee35538263570bf83a6c4a6c96e0365f383` |
| 102 | `theorem` | [mem_bot](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-bot.md) | 642 | `result-track:5463ce01b0aa4703f06a42a4ddb0f53b8e4bd7a42bda950815d756b800143529` |
| 103 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-9.md) | 647 | `declaration-track:6575541628b7d108403a4629c0117e0143aa9a757cd1d9d9a44fa7e4e75a9805` |
| 104 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-inf.md) | 652 | `result-track:317b89b68205dca3a549f1fb6cbcb7d9e115e64c31ca6aba442a057bd2b9fb01` |
| 105 | `theorem` | [mem_inf](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-inf.md) | 657 | `result-track:81123993aec336df8968f30c6fa410b57b0410f84eaf52719dc325bd4535000b` |
| 106 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-6.md) | 661 | `declaration-track:28fd57d9253f67fe6562161616748d6ce8cae8be112fce622b413f403ca3282e` |
| 107 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-sinf.md) | 668 | `result-track:08e28bd54dc734b4b7bc49665948726fa3f683c9da12435d8666e3d123073752` |
| 108 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-sinf.md) | 672 | `result-track:06c6d2b9ded87b06699bf65bbac7478ac32bbd14f7b984d194565ebc2004c25d` |
| 109 | `theorem` | [sInf_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/sinf-tosubmonoid.md) | 677 | `result-track:d72ce748665c66753d133f85869d2dd8232b3772c4b1b61790b2c130e709c61e` |
| 110 | `theorem` | [sInf_toAddSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/sinf-toaddsubmonoid.md) | 683 | `result-track:e52cc27de5d0e75d5cb2d526c3ed9ed56acddbf751766ca2ce6be30196cabb10` |
| 111 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-11.md) | 689 | `declaration-track:cf442b6dd7ad1f4da2d95adc939a8961bc84479809102ed322e709855aef20ef` |
| 112 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/eq-top-iff.md) | 705 | `result-track:dd843447f224a419a6f674eb908bf158ce1b4a250ec8e85231776ad3d251a628` |
| 113 | `def` | [center](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/center.md) | 712 | `declaration-track:48efc3bdc337867c3e677389f9e90e10d6b137d44d20772fa278807732c45704` |
| 114 | `theorem` | [coe_center](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-center.md) | 719 | `result-track:5a687f0d4b6e3808c0cc052a7a4490f35ff25ffb12737416da6cef8ab7e0d638` |
| 115 | `theorem` | [center_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/center-tosubmonoid.md) | 724 | `result-track:aee37a1b3ac3e0187fa488b02a76eb2389229eb0fa0ba2e3ae738129e46f4027` |
| 116 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-center-iff.md) | 728 | `result-track:d8a0c1c40b7c1523a1af8f7879fa7a3cf76968aee4a45ee3ed2d5186997ead30` |
| 117 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/decidablememcenter.md) | 732 | `declaration-track:92570e0ec207f2d2281a37cdf4cbab7ae446ec577816a6fb8e268eb0aa763ecc` |
| 118 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/center-eq-top.md) | 737 | `result-track:fddfbb2452a58720cf77b55e699ce7d015378240327a42bf407ad268013741a5` |
| 119 | `instance` | [commSemiring](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/commsemiring.md) | 742 | `declaration-track:a0c28e7cacf40c4949029ae4040dc423a53b311bb6ef7d206cde24099f1a6208` |
| 120 | `def` | [centralizer](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/centralizer.md) | 750 | `declaration-track:882a45fc6234edf4462bafc635fad668ba9b4c59f64115af2c720e9d429a8bd0` |
| 121 | `theorem` | [coe_centralizer](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-centralizer.md) | 758 | `result-track:cdf51e13c69e15f3d95ed70ba1156382572ec5e6e6bbf6360c37b5a4d902de96` |
| 122 | `theorem` | [centralizer_toSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/centralizer-tosubmonoid.md) | 762 | `result-track:131587d538ec0e3c5aa1d93b1f82383e1439aafb5455c265b09ba12e1c6d637f` |
| 123 | `theorem` | [mem_centralizer_iff](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-centralizer-iff.md) | 767 | `result-track:6388928c79b463b77c51aa628426700f62f2181dec5a28144bbabac67f8f8bf2` |
| 124 | `theorem` | [center_le_centralizer](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/center-le-centralizer.md) | 772 | `result-track:65edd5bca1a05d225898efef37223fc69273da38edfa36ac730cf95745aa3fac` |
| 125 | `theorem` | [centralizer_le](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/centralizer-le.md) | 776 | `result-track:70a8ef2f72386a9522d0713c8f8d0b9674051ba543620bf377af573074d7fd28` |
| 126 | `theorem` | [centralizer_eq_top_iff_subset](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/centralizer-eq-top-iff-subset.md) | 781 | `result-track:fdea08f3e8a1a5ca5bbf0e0e580d2e7216e5c36567b4aba38e39fc8821eb5564` |
| 127 | `theorem` | [centralizer_univ](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/centralizer-univ.md) | 787 | `result-track:28308176de9e9808c9e4fb1e5f29b75949721d2dfb5892636e20e5fd090fcbd2` |
| 128 | `def` | [closure](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure.md) | 794 | `declaration-track:511714283958cde9f51a6e1e5429964632755d23b48aafc5e3b55c6136e666a0` |
| 129 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-closure.md) | 798 | `result-track:dc7e84f600f16bb57a47bee9e7fec63c1d140060ccf5e3c6ea33524fa1b8cc5e` |
| 130 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subset-closure.md) | 804 | `result-track:391223c1bad1d512053c98dd5fd99fac7b92ab142aa1d3bf3099789a6a82f076` |
| 131 | `theorem` | [not_mem_of_not_mem_closure](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/not-mem-of-not-mem-closure.md) | 807 | `result-track:2480be9f26c00be1bcd574842570a66028c11efb4fb8bbe4de6a3fc221885861` |
| 132 | `theorem` | [closure_le](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-le.md) | 813 | `result-track:c549e15eb59458e970f1f31bd51cf8983742c84d93dc2c64d6c52da952d5187b` |
| 133 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-mono.md) | 819 | `result-track:0bf15843018b995a65bb2c2fa6e7365cb602c25a0f430bf6512b4f05d5113417` |
| 134 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-eq-of-le.md) | 823 | `result-track:666db0e2043a5886417ee51029659c13cf37c810643245b5453d79708d678e96` |
| 135 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-map-equiv.md) | 828 | `result-track:3d1a1332591ec67287081935e961eb6dcd299dcece1bf9b1f4500b46b26038a5` |
| 136 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map-equiv-eq-comap-symm.md) | 833 | `result-track:2e0ad966d4a21164e359ec1ea6f6c9600c1071864d234df492ba86822e6b4726` |
| 137 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/comap-equiv-eq-map-symm.md) | 838 | `result-track:58dddf2becc65a17336e66082669dd423f03116370651a482cd3c3885405115f` |
| 138 | `def` | [subsemiringClosure](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subsemiringclosure.md) | 848 | `declaration-track:538e73bf333ff11da2da71e95f4befae815d390e34811d11a21f406baf6fbd1c` |
| 139 | `theorem` | [subsemiringClosure_coe](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subsemiringclosure-coe.md) | 854 | `result-track:5c064436be3f8bea8f5583329aadc6e8d285dd4d83ef78783ad2e526cedc04e1` |
| 140 | `theorem` | [subsemiringClosure_toAddSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subsemiringclosure-toaddsubmonoid.md) | 859 | `result-track:45196ac2abcf95df97a132c96541c126cffcfcfebdd19562b3deec6126de6884` |
| 141 | `theorem` | [subsemiringClosure_eq_closure](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subsemiringclosure-eq-closure.md) | 866 | `result-track:71411f1859c2975206120001dd7e37e29719acc932d0e49bd079e30dec198992` |
| 142 | `theorem` | [closure_submonoid_closure](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-submonoid-closure.md) | 882 | `result-track:e8c90ed505d2ef9d872c84bf105d24f07a586879d9f8fd59312bfa7aa36b5631` |
| 143 | `theorem` | [coe_closure_eq](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-closure-eq.md) | 891 | `result-track:3fecee2861d122889847b52ed946495ac83f07a145daaf0d1da2de12dd2dc291` |
| 144 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-closure-iff.md) | 896 | `result-track:e4cb12bb17d5ff4db1da0bbeab4088a49add1f192a495e11ea4dae0d0a85ffeb` |
| 145 | `theorem` | [closure_addSubmonoid_closure](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-addsubmonoid-closure.md) | 902 | `result-track:f9b42ab9745086f33e6ff8f5042c606a64adaeda6f4b52275d4a4ef495378b09` |
| 146 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-induction.md) | 917 | `result-track:3b38c975565c38d5c2c8c55cf302cccb1e26955cdb6202e93b61061dfa7459c0` |
| 147 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-induction-source-edition-2.md) | 925 | `result-track:92b757476a0e166bbf721852f069ee9ff170f569f6edd3a6d9014e1ba01c6c36` |
| 148 | `theorem` | [mem_closure_iff_exists_list](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-closure-iff-exists-list.md) | 938 | `result-track:9216d4c0e02745c02ea7c94f2104cbad30dd5f6649758a995161e7e171bd8ee8` |
| 149 | `def` | [gi](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/gi.md) | 969 | `declaration-track:87f85df4a6856d8b7a095e343bf3f2c4e36de4b259428cd380c70b5315afc5bc` |
| 150 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-eq.md) | 980 | `result-track:e829483387ab375447bf775451a806b60eb33783232a6502d51b2f092a7492c8` |
| 151 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-empty.md) | 985 | `result-track:8bac55f474253c6a3ef405e4f92b9d37b1a2fa19f2b92c059cec3e40dc3a3b45` |
| 152 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-univ.md) | 990 | `result-track:9d028ec164410b57c8662a8bb6be9baeb835bbfc425238e839b4e498e4b003a5` |
| 153 | `theorem` | [closure_union](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-union.md) | 994 | `result-track:64d08d457c28a1c99c65ff63d1300ad4ab8abcfaa664febffdef50f4191b17d7` |
| 154 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-iunion.md) | 998 | `result-track:3f824baf5fbef19514549c07d1db18aa3adfe59e4cae1bf6e838c7980ef5d55a` |
| 155 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closure-sunion.md) | 1002 | `result-track:25786d219060ca4ccc8da60bc43f434961133b05e0b450b5dd146302bce35f3c` |
| 156 | `theorem` | [map_sup](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map-sup.md) | 1006 | `result-track:fd0dbc524a5502c0fa8a70652277830ad697af1d405b90fe32ee026461efc836` |
| 157 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map-isup.md) | 1010 | `result-track:10416fa160d9f4477fc490c97c74fa8ffa235823ea3b9f5dc07167d1c47c5812` |
| 158 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/comap-inf.md) | 1015 | `result-track:994570c7861e8b80f3932ec22165404eacb1cc344ba3779fdc2ed35a0a54a535` |
| 159 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/comap-iinf.md) | 1019 | `result-track:00c7a69fe6540d9567ad168a301b826a2a1998fa89643a506da799e299f73c74` |
| 160 | `theorem` | [map_bot](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map-bot.md) | 1025 | `result-track:14a02012f6cd1c512c86c73254cd31d35cbb02b7d63767eac7fbcfa42584475d` |
| 161 | `theorem` | [comap_top](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/comap-top.md) | 1030 | `result-track:c8b388042ae3eb0f54db5f9e6fa5567ff89c6630c4084a950f2603ab23bd0ed8` |
| 162 | `def` | [prod](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/prod.md) | 1036 | `declaration-track:7e442891432d94f60bb0730754347b05b44b855c264d5401d7cf8606f8591a25` |
| 163 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-prod.md) | 1042 | `result-track:6d0fef9f29d24476591478c2967b34d01ffcb36b9c03868d27e397d26bbf212e` |
| 164 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-prod.md) | 1047 | `result-track:d9e1fd401b3e82bd14fd4f8685e6b9f67656aa8f00f72a0f8383bf628a0564de` |
| 165 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/prod-mono.md) | 1053 | `result-track:54222b272353855fcfd21e31ccac90aa7db2db6fd51c7574cc30ca572e1d6cf4` |
| 166 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/prod-mono-right.md) | 1058 | `result-track:0223ca19730dc309f715dcaaab277c192b1f60ac2baba14c69e43763c6d38ab5` |
| 167 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/prod-mono-left.md) | 1062 | `result-track:ddae6a590502c2bc3c4961d30afb700ebffd1a4b6d95973783b4dcf03d727ac9` |
| 168 | `theorem` | [prod_top](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/prod-top.md) | 1066 | `result-track:c41cdcdd2aef6616a6e50bae8e9cee5b951e65ba6dd374a4af918444784cf438` |
| 169 | `theorem` | [top_prod](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/top-prod.md) | 1070 | `result-track:3f28d0600fbff20615ca4daaa0e5b49c790beed381c01301b3027f9c058c4d5e` |
| 170 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/top-prod-top.md) | 1075 | `result-track:651ad9749d53121467f6cb58068004d41fd87c75955345c7233e526f97490951` |
| 171 | `def` | [prodEquiv](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/prodequiv.md) | 1080 | `declaration-track:482e2b7e00653454dccfbfbe7eb8f9ae5811d825ba26b9e6b18867426c8eb98f` |
| 172 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-isup-of-directed.md) | 1086 | `result-track:a6cb63a83852d228483aaf045237bd3093e01c58e870eeb5019a2a157c428954` |
| 173 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-isup-of-directed.md) | 1098 | `result-track:fc2f640cd8f33ebc524d280b2faef5bd746e5442a299f14706ebf223e19a4dd0` |
| 174 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-ssup-of-directedon.md) | 1103 | `result-track:d0044a8b60b2c5a689516bd529416c6ccde7a2d086ad256a5fabac78bf12a305` |
| 175 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-ssup-of-directedon.md) | 1110 | `result-track:8d49c24d758a3a7d39050b9821286c6933769a5f38edfb321b3f56f4a565fb3a` |
| 176 | `def` | [domRestrict](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/domrestrict.md) | 1128 | `declaration-track:30ead3d48d915d4e927cdb7e2d3fee0eba275b98a9b9642178bd1d00e02f1548` |
| 177 | `theorem` | [restrict_apply](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/restrict-apply.md) | 1133 | `result-track:f1290a2994e44aaefa51cb6a7ea588269cf54984808af1fb6c438c327f670d6d` |
| 178 | `def` | [codRestrict](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/codrestrict.md) | 1138 | `declaration-track:c814bfb1996072401a99ea7721826c72272ade72189f428627f15266f7945cd6` |
| 179 | `def` | [restrict](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/restrict.md) | 1143 | `declaration-track:0c8d3094d7e3d4b4db0b5c5af66a7dde86dcb50ddd87ded130de3143993c998f` |
| 180 | `theorem` | [coe_restrict_apply](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-restrict-apply.md) | 1148 | `result-track:f15083863d559eb26e5fae44c3c49cd266f1f563f7482b907f49a8fa54d63bd8` |
| 181 | `theorem` | [comp_restrict](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/comp-restrict.md) | 1154 | `result-track:6938b82926c503d51df63a5b1a62eb382e6a4521c5467f722b4f53114c248542` |
| 182 | `def` | [rangeSRestrict](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/rangesrestrict.md) | 1162 | `declaration-track:fd2075e4b6af84ab5d508b362981e6f70ff0249c95144dc9d667d351098e4119` |
| 183 | `theorem` | [coe_rangeSRestrict](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/coe-rangesrestrict.md) | 1167 | `result-track:cc9f3d25e8828b18e520cbc014b3f75ff460ccc1adedd522555085ef693c2205` |
| 184 | `theorem` | [rangeSRestrict_surjective](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/rangesrestrict-surjective.md) | 1171 | `result-track:77469e82f3c861622e57a9c8926b2586710cde169a195cd2086de6f874235374` |
| 185 | `theorem` | [rangeS_top_iff_surjective](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/ranges-top-iff-surjective.md) | 1177 | `result-track:09a78cd6b7047e2064599958e92852a01aaa04d09e03a56424a6f59863ab0b90` |
| 186 | `theorem` | [rangeS_top_of_surjective](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/ranges-top-of-surjective.md) | 1184 | `result-track:e428134478928c6270e17f6da190ed85d09fbebfc04993624c5439ecbf22e6ef` |
| 187 | `def` | [eqLocusS](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/eqlocuss.md) | 1190 | `declaration-track:cbbb05685e77724ef949026da5334ed0f9c5bf63e5f32a1b0456d82d1d87d488` |
| 188 | `theorem` | [eqLocusS_same](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/eqlocuss-same.md) | 1195 | `result-track:635802895ab332cec766eced8b84328596272b496895d53fd480876e506dbc32` |
| 189 | `theorem` | [eqOn_sclosure](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/eqon-sclosure.md) | 1200 | `result-track:722243d84fbcd7a708527655c91234b2d51d4cd136266c991bf9221a50168389` |
| 190 | `theorem` | [eq_of_eqOn_stop](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/eq-of-eqon-stop.md) | 1204 | `result-track:8f3ba7dca2d6f2ac01e8e240c42cbc61be16f24a03108f06fc3237c21b0ac051` |
| 191 | `theorem` | [eq_of_eqOn_sdense](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/eq-of-eqon-sdense.md) | 1208 | `result-track:0e9fe433379e5cd5ef18cae48a4547adf572b85961b183e39e522e27e3d0feb6` |
| 192 | `theorem` | [sclosure_preimage_le](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/sclosure-preimage-le.md) | 1213 | `result-track:3d22cac2b7179c2514e359102aac7306453f3a02ffe23c4161c4cd016a6a01cc` |
| 193 | `theorem` | [map_closureS](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/map-closures.md) | 1219 | `result-track:afe702dcaeff54f17e0e47a9be0934eac4c507975f1b05a1c9767a07a837250a` |
| 194 | `def` | [inclusion](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/inclusion.md) | 1233 | `declaration-track:87b793ae75b8a71c96108e56d45c8458a0126af29a905093f7e13576ebfc39c5` |
| 195 | `theorem` | [rangeS_subtype](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/ranges-subtype.md) | 1238 | `result-track:1903ac59f6b99780910c3fae5822e999a9a80a23311a4bb63eede0bb0ca9243e` |
| 196 | `theorem` | [range_fst](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/range-fst.md) | 1243 | `result-track:3b97eb9951afdeb2f700b5db7637f3bd71c007718cef92622ebf97ca6c48a180` |
| 197 | `theorem` | [range_snd](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/range-snd.md) | 1248 | `result-track:d70c518b7d68c4b617f947ace47750d6172e97788034bc85b424688c47de4c0b` |
| 198 | `theorem` | [prod_bot_sup_bot_prod](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/prod-bot-sup-bot-prod.md) | 1253 | `result-track:670738aa2d5b5072cc08ea1cf80e751d14f5bc10e06dc6fc19f9afc8bf58d580` |
| 199 | `def` | [subsemiringCongr](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subsemiringcongr.md) | 1270 | `declaration-track:92b5b2bab54ee4eb79e8de7e2640bb01bc4fefa2dfcda6a2fd2d85be44d8befe` |
| 200 | `def` | [ofLeftInverseS](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/ofleftinverses.md) | 1279 | `declaration-track:902e6d2505e3224ad8c30b4c628dd89f8c7e908f1522f355ea0b4d733551706b` |
| 201 | `theorem` | [ofLeftInverseS_apply](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/ofleftinverses-apply.md) | 1291 | `result-track:f51209d9746df2f6bc1a3877f9f6afc78241b7707308edf564d5d98bb65f7969` |
| 202 | `theorem` | [ofLeftInverseS_symm_apply](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/ofleftinverses-symm-apply.md) | 1297 | `result-track:46db489e1b0a9200aa86c82adc79f9f4198ca2d382bede062cb76a4a3803d26a` |
| 203 | `def` | [subsemiringMap](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/subsemiringmap.md) | 1305 | `declaration-track:3992f0837d39888c123f235a9da8049faaf44a699149a98e9b889d1121e302d9` |
| 204 | `instance` | [smul](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/smul.md) | 1332 | `declaration-track:77d8575965c480e2615af8f761791da7ad163baecb1c2c4435a0e356fe30c50b` |
| 205 | `theorem` | [smul_def](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/smul-def.md) | 1335 | `result-track:c20b58d1625ab287776d280400abdb659f0f458fd9f8b9aa1e0c40c659d2f77f` |
| 206 | `instance` | [smulCommClass_left](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/smulcommclass-left.md) | 1339 | `declaration-track:6ad0066a06bb66a2becaae1a71f9c6c87fba74aec5e20250cc832eada342f946` |
| 207 | `instance` | [smulCommClass_right](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/smulcommclass-right.md) | 1344 | `declaration-track:d56c847fef224cb499b3faf2726379931d83c6adfb2b3a70b6c9e8067617410a` |
| 208 | `instance` | [isScalarTower](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/isscalartower.md) | 1350 | `declaration-track:2130e40e7068a40080bdabac1bdd77120237539d03eb21032da5022106c00ec1` |
| 209 | `instance` | [faithfulSMul](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/faithfulsmul.md) | 1355 | `declaration-track:9aff0c3e67a70971b35beeec38fde452757bbee8e58e2605d0981af2b4a08a78` |
| 210 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance.md) | 1359 | `declaration-track:0e6c1f216512a1a2a8da2c28115c3b6ffaec471c9be5741f8ff0bae9361e0563` |
| 211 | `instance` | [mulAction](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mulaction.md) | 1367 | `declaration-track:cc9c07eff21f7d14a688151ceee42cd6c4b29d7bb98c6740b14561acdfa0182b` |
| 212 | `instance` | [distribMulAction](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/distribmulaction.md) | 1371 | `declaration-track:6d67ba9ddf06249a9d1594d6e307b7416ddc1a16f62c1864ee97e9c85488c383` |
| 213 | `instance` | [mulDistribMulAction](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/muldistribmulaction.md) | 1376 | `declaration-track:5c9bcc35a56194aa04202939624f55730e3892a5353edf4cfaee4a4ed03493ff` |
| 214 | `instance` | [mulActionWithZero](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mulactionwithzero.md) | 1381 | `declaration-track:813f31045aba81a04f13b813c4a6429b4c82d8c843ccd014744895634b257bde` |
| 215 | `instance` | [module](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/module.md) | 1387 | `declaration-track:3833bd978309ba39c01ed19309af506386a6649b7ae049bf2a84d96a5b9892d6` |
| 216 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/instance-source-edition-13.md) | 1393 | `declaration-track:f08aae876430c199bb901d2750245a87a5e6a36732839c5469ea22bd2c42b7a7` |
| 217 | `instance` | [center.smulCommClass_left](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/center-smulcommclass-left.md) | 1397 | `declaration-track:19e0b8b82ec2f25c755bde08ea5f9a5662653128536ecc58f438aa7176db1c8a` |
| 218 | `instance` | [center.smulCommClass_right](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/center-smulcommclass-right.md) | 1402 | `declaration-track:6e026b9f21121c62961445bc15b80452b511c31a9068d6edb7fad365486c488b` |
| 219 | `def` | [closureCommSemiringOfComm](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/closurecommsemiringofcomm.md) | 1407 | `declaration-track:07fe42e725b779d05114e9a3c89b9182337c8127c27e3bb004c308953998b908` |
| 220 | `def` | [posSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/possubmonoid.md) | 1430 | `declaration-track:465ff440773467c1dc9eecf32a81d3310b9b21c6847241642c2e953948c8c202` |
| 221 | `theorem` | [mem_posSubmonoid](../../../../CommutativeAlgebra/RingTheorySubsemiringBasic.lean/declarations/mem-possubmonoid.md) | 1438 | `result-track:5b054fb3820519bfd3d055d23457a277dda6416eb9f39b07d73388bd714dfc58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db159cc8116d8fdc7a2634e876a5d1e4a83ae726970963ccf04f94104365295a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc7f66aea5eb9345b89d629279650cbfd5d55a21b47272f7ccefb0442f4f8e1df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
