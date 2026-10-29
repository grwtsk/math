# Verification target: Units

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aa17efc92c8a5b0ba6a512e43e58a0510f780f6",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant6743f7e2c7b09ef2b1bdd64423a1155b6d6284668b64d7cea5d9f2da970e35d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Units.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Units.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aa17efc92c8a5b0ba6a512e43e58a0510f780f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant6743f7e2c7b09ef2b1bdd64423a1155b6d6284668b64d7cea5d9f2da970e35d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant6743f7e2c7b09ef2b1bdd64423a1155b6d6284668b64d7cea5d9f2da970e35d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Nontriviality` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Units](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/units.md) | 45 | `declaration-track:136866a043575c86fbb1a32d4435cb64adb1db05166beba1a84d225ce51fc6f1` |
| 2 | `structure` | [AddUnits](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/addunits.md) | 71 | `declaration-track:16f812ee5603ea14effaa6cfcb0689618211b3b9c0fe3820f465b388cc29d79a` |
| 3 | `theorem` | [unique_one](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/unique-one.md) | 92 | `result-track:03b30935b0c3b7b82f05001bf322a96b5b40b3404f0e251e9640af11f61e9e2c` |
| 4 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instance-source-edition-8.md) | 106 | `declaration-track:d912077b1871ac6f016de5f2dbce4edc7fa6572763e8d22d3b73e9b000d9f0a7` |
| 5 | `instance` | [instInv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instinv.md) | 111 | `declaration-track:73b7a91dfa962c5e0f843095cdd572a19ba1746fd25603794191bd883f4b3879` |
| 6 | `def` | [Simps.val_inv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/simps-val-inv.md) | 122 | `declaration-track:7e859e47103dc042b57eb63b21511183a4681036590af790460be8a32b7546c5` |
| 7 | `theorem` | [val_mk](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/val-mk.md) | 133 | `result-track:741b62c396176428021f4b5569337ad8816167b7a09fda6c87de4ed98e70197b` |
| 8 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/ext.md) | 139 | `result-track:89d225606bc00158610cdcfbe7b39d5f7af7af3f82b50acaeb1fe796fb71202c` |
| 9 | `theorem` | [eq_iff](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/eq-iff.md) | 147 | `result-track:ec86a5598bf7606f60c1b02c0ab817f8bef03c3d842331411ed0bf4894ae8430` |
| 10 | `theorem` | [ext_iff](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/ext-iff.md) | 153 | `result-track:5a09205e57697b0008cbf2fbe535c887a9c405fd3cfa6cf72af81f46f6d979f3` |
| 11 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instance-source-edition-4.md) | 161 | `declaration-track:2f880ff928e1952131be60af48d5f0841c5d388d40c7e30a54bd1634c736db9a` |
| 12 | `theorem` | [mk_val](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mk-val.md) | 164 | `result-track:c472b31347968966140770734045d2f011effce0f1aba6e8f04929fac8fabee4` |
| 13 | `def` | [copy](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/copy.md) | 171 | `declaration-track:3622c06c1f717fa451096341741d707665b0c3cf34c5333136553b92cf19026d` |
| 14 | `theorem` | [copy_eq](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/copy-eq.md) | 181 | `result-track:8bbaa6fa658e3c2f31e2bf3e28ab05202f69ca03d722b3f8c7ff54f957f7f19e` |
| 15 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instance-source-edition-3.md) | 188 | `declaration-track:2c220bf6c99580f20a112322b5a504306977516df0fa33592953c2913c842303` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instance-source-edition-5.md) | 199 | `declaration-track:55a493edbdda83fa57e345674072054aa41fa1bcf6fd83b24150a095b2eb07bc` |
| 17 | `instance` | [instCommGroupUnits](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instcommgroupunits.md) | 208 | `declaration-track:cf6027a6e2ce5dd81f98f3d51b9787249c8d543c3146fd5668b6ddac8f64a01b` |
| 18 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instance-source-edition-6.md) | 217 | `declaration-track:5bf3cf9dbf4f165ce4533521cc86d380de6f7146dd10eb72eb206259fca0cfd3` |
| 19 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instance-source-edition-2.md) | 224 | `declaration-track:127da77a85ee9719d4570c7509b499458664afc733ff5f2a92c53a392e87cc5d` |
| 20 | `theorem` | [val_mul](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/val-mul.md) | 230 | `result-track:40d0790c5cce3f3e06e9b9b010556dbe12fd71e7180c7cfd41fa436f0971a7a5` |
| 21 | `theorem` | [val_one](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/val-one.md) | 236 | `result-track:58684fe4d15be8973595e02da3338ea7b2e299a74bbbd4cde10760eacde8ac2f` |
| 22 | `theorem` | [val_eq_one](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/val-eq-one.md) | 242 | `result-track:b8b9a3eb720633fb32c4802562e6062afc539b02a5fb202efbacf053ed97f1d6` |
| 23 | `theorem` | [inv_mk](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-mk.md) | 247 | `result-track:2595e3e5f4719134a20c3bbb22a785a6de7ac2ad46ac6d69ada39d49ad401571` |
| 24 | `theorem` | [inv_eq_val_inv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-eq-val-inv.md) | 257 | `result-track:f90640b39f833c66863b79c56251a4eb9620a5fee07db668342a09c29cdff4b8` |
| 25 | `theorem` | [inv_mul](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-mul.md) | 263 | `result-track:a9eb43f4f50eb88040075fd2622ed4463cecfcc93b5f7cb5c641af4bc8abd603` |
| 26 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-inv.md) | 269 | `result-track:c0118b3bfd352e7db228e3982f1c5684d869a6e8c21eab62ae49b88b914d3d06` |
| 27 | `theorem` | [inv_mul_of_eq](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-mul-of-eq.md) | 275 | `result-track:744fbf9d776b8a30c7d4d6310d0e42ad775e1c87345462e1a537820086abbf79` |
| 28 | `theorem` | [mul_inv_of_eq](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-inv-of-eq.md) | 280 | `result-track:fa8daf66f09e0309ea96bbb621d30548a9a15d2aaef9854fa70241769d540913` |
| 29 | `theorem` | [mul_inv_cancel_left](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-inv-cancel-left.md) | 285 | `result-track:6403bdb6c3c512ee47f65c1e078d7166cd999ef200999f2f34286d87e21deab0` |
| 30 | `theorem` | [inv_mul_cancel_left](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-mul-cancel-left.md) | 291 | `result-track:bde73cc349b012b6aba2a08041774d9e7b24170cf97e088281351245143c9649` |
| 31 | `theorem` | [mul_inv_cancel_right](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-inv-cancel-right.md) | 297 | `result-track:e1b3e516774311aa29786b7aa8dff24b27aed226b82edd8b4e00f9dffe0222a0` |
| 32 | `theorem` | [inv_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-mul-cancel-right.md) | 303 | `result-track:a300cd684d4b19e97aab7c31d96f6fb3fbfc8f788f2a17c6eb41601505a51ec5` |
| 33 | `theorem` | [mul_right_inj](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-right-inj-source-edition-2.md) | 309 | `result-track:0ae4c875d610e1a263db79446dbc65c8bdd1e03e454644bc944b919791959e51` |
| 34 | `theorem` | [mul_left_inj](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-left-inj.md) | 316 | `result-track:7f44b121adfff908ccc2a6318f3981a323da1533b4ef76b639d61dc0da5b794f` |
| 35 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/eq-mul-inv-iff-mul-eq.md) | 323 | `result-track:6506ea2d13daf08bee02e26c04d81b1ff52a4933b8139d3c6115256b45eb5d98` |
| 36 | `theorem` | [eq_inv_mul_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/eq-inv-mul-iff-mul-eq.md) | 329 | `result-track:cb80ae7058d3af5d9fe19e1071464f56e5f72b53974c10ca2744ee5dd4668983` |
| 37 | `theorem` | [inv_mul_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-mul-eq-iff-eq-mul.md) | 335 | `result-track:50ebff4c734e5247178a04722a79675c7f31aaa513c984fe238b06668dfce9e8` |
| 38 | `theorem` | [mul_inv_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-inv-eq-iff-eq-mul.md) | 341 | `result-track:b1fd225c8d58729a91c1cd58e52b2cc4ef54e247bbb1c7e31282d532e620749a` |
| 39 | `theorem` | [inv_eq_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-eq-of-mul-eq-one-left.md) | 348 | `result-track:d33876cf878b2fef263aff77d98db294d0c0e24a390e32f6126aabf3ec4158cc` |
| 40 | `theorem` | [inv_eq_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-eq-of-mul-eq-one-right.md) | 358 | `result-track:a1f7ef9f1a6806103aa5a9486507cc7745374cd3049cae84746c772ebc480647` |
| 41 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/eq-inv-of-mul-eq-one-left.md) | 367 | `result-track:cc790eb45145ba6fc7d8d3628c498447354839f8d3cf2821722031bf0d7f9747` |
| 42 | `theorem` | [eq_inv_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/eq-inv-of-mul-eq-one-right.md) | 373 | `result-track:c18af58cc7ff2dd0f4c59d3a4c74b3e794119f5aa3749b65a6013ec0e6902880` |
| 43 | `theorem` | [mul_inv_eq_one](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-inv-eq-one.md) | 379 | `result-track:8d717fe52ac72196d6b50d67b6836dce3768eeaaaaec6fbed571cba0078ea5a6` |
| 44 | `theorem` | [inv_mul_eq_one](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-mul-eq-one.md) | 385 | `result-track:a993540dc791587a6556a11ca2d776bccc143cef441ffe42c465ce5e7c803c6f` |
| 45 | `theorem` | [mul_eq_one_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-eq-one-iff-eq-inv.md) | 391 | `result-track:ceabd738a0f5ed12f8b3a3d96295241c61b0b16ea43b01d3ad01058b3dfe0aeb` |
| 46 | `theorem` | [mul_eq_one_iff_inv_eq](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-eq-one-iff-inv-eq.md) | 396 | `result-track:ece307bc4e3bf368969da7c897b049d8d4694c2a67fe6fff7c14045976ca34a0` |
| 47 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-unique.md) | 401 | `result-track:c5bc85f98bd5608ad73235f1c0b3bbed3602ccfac3656e834a9bc17b208db8d5` |
| 48 | `theorem` | [val_inv_eq_inv_val](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/val-inv-eq-inv-val.md) | 407 | `result-track:77c2af515b78da6960a4272831816b6abb50248c533f15726d4f6e6753f20f4f` |
| 49 | `def` | [Units.mkOfMulEqOne](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/units-mkofmuleqone.md) | 416 | `declaration-track:28936f59eb80557123a0172c9560ab01c79fb183094d6992f8b008dbad5d5d1e` |
| 50 | `theorem` | [Units.val_mkOfMulEqOne](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/units-val-mkofmuleqone.md) | 422 | `result-track:92d39df4fe994a766158832342d76c749b2a5c7ef5a279b8ed00b83e3abe351b` |
| 51 | `def` | [divp](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp.md) | 435 | `declaration-track:49c565bdfe6608b66c66353a90bee5b230e0ad13a8e2c4f8c283d62f19569133` |
| 52 | `theorem` | [divp_self](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-self.md) | 443 | `result-track:a7d04c6fa27fb3cf3fee2d01c340b85cd01e7bbe5ea12778036448fe4d544b00` |
| 53 | `theorem` | [divp_one](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-one.md) | 448 | `result-track:a6ac0cf3bf4bc053378771a8b2dc5481f30d9d845b7b257193023bb3a1871e91` |
| 54 | `theorem` | [divp_assoc](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-assoc-source-edition-2.md) | 452 | `result-track:b39c5d22c477e307edb7b1dcc473881f65eecc9f629f63ea802c6c0859c21f0a` |
| 55 | `theorem` | [divp_assoc'](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-assoc.md) | 458 | `result-track:991f9af55b26fa3d0d7b2185ba2a58cec05199f6d85d6affbe507802625cb15e` |
| 56 | `theorem` | [divp_inv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-inv.md) | 463 | `result-track:89c0235c31cc6a1d8f9dd30fc7525aaae7ec0945e364bca9624d36b9f13f167e` |
| 57 | `theorem` | [divp_mul_cancel](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-mul-cancel.md) | 468 | `result-track:a27d1f8b1193ea0fe6213b9f18a6fb45c0fc6774fa619ec683a2e81bf25375c8` |
| 58 | `theorem` | [mul_divp_cancel](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-divp-cancel.md) | 473 | `result-track:a13f0eebe6c7905da26d412240580bd0ae97d5341d572ce3e299301706ebfae4` |
| 59 | `theorem` | [divp_left_inj](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-left-inj.md) | 478 | `result-track:2539bf10c365583e67bdb2e663fc512e068a6d77d6bf67455beabb63e736172f` |
| 60 | `theorem` | [divp_divp_eq_divp_mul](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-divp-eq-divp-mul.md) | 483 | `result-track:4c6608a38fd48f706c14b405b9a149a726d37f96009ce6a49a70a78bb1cbfcb0` |
| 61 | `theorem` | [divp_eq_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-eq-iff-mul-eq.md) | 490 | `result-track:c46f57849b66c0f31c893b77bb9015b697744231f3233acfb2ec5796b2b525df` |
| 62 | `theorem` | [eq_divp_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/eq-divp-iff-mul-eq.md) | 495 | `result-track:ed79301a4e24992818ec22dffbc0970fcf3c244423b465d84ba0d353b1b0830c` |
| 63 | `theorem` | [divp_eq_one_iff_eq](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-eq-one-iff-eq.md) | 499 | `result-track:05b06564697a35f05a724f183123ada5843d5620262ff1e4530635e1a89a5ecc` |
| 64 | `theorem` | [one_divp](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/one-divp.md) | 504 | `result-track:07f891bec01de478fb621732b1a1168da75959e5780d9b40a780707c31d48986` |
| 65 | `theorem` | [inv_eq_one_divp](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-eq-one-divp.md) | 510 | `result-track:a92e570370f8cf72b07cd6d8a5c11b2f4b01225b9320fd5b8b22c307393ee4e6` |
| 66 | `theorem` | [inv_eq_one_divp'](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-eq-one-divp-source-edition-2.md) | 518 | `result-track:d329a5c95785baa20a2d8c19975f31c9a2ec60420b602d0ab6d95fc131155d03` |
| 67 | `theorem` | [val_div_eq_divp](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/val-div-eq-divp.md) | 526 | `result-track:4abd70231e84ac117f20f9374571e4a622fa60febc0a14946c3a907bc0779656` |
| 68 | `theorem` | [divp_mul_eq_mul_divp](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-mul-eq-mul-divp.md) | 537 | `result-track:3c9d64949bc1a2b66eeb7c4a02afe60c0f9ac3354ea707b3bc9892ab10a2482c` |
| 69 | `theorem` | [divp_eq_divp_iff](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-eq-divp-iff.md) | 543 | `result-track:dba31a7ff07175c14643ceb7dc0c2536c71dc8b9e2504f2372370db33ecc38d6` |
| 70 | `theorem` | [divp_mul_divp](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/divp-mul-divp.md) | 549 | `result-track:01d79b994e0262f0fbc66cc8a9098212c7583ae2d4a620fdaa724f26c5f28231` |
| 71 | `theorem` | [eq_one_of_mul_right](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/eq-one-of-mul-right.md) | 556 | `result-track:b09a658874f9bf47708b5d9a9e1e29730d069bec906a15939c6b5107aa37330f` |
| 72 | `theorem` | [eq_one_of_mul_left](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/eq-one-of-mul-left.md) | 562 | `result-track:62d3c63669f0fd8db1fdbaeca37eaa23c8e1376191d70dd25086e356cb09d3d5` |
| 73 | `theorem` | [mul_eq_one](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-eq-one.md) | 568 | `result-track:0d435a58de8623d3b3943ff05767e76a39be0a31ebc5e82a314c5780c6d4b3a8` |
| 74 | `def` | [IsUnit](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit.md) | 593 | `declaration-track:c08caf17cea68d859a740d3ee65e15d13d39d3a934bb265d878ebfbc1b6bfee1` |
| 75 | `theorem` | [isUnit_of_subsingleton](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-of-subsingleton.md) | 599 | `result-track:52a3484bd38447d49e63abb8678512ff54194a0d2d8c5402ded9ec27450cb107` |
| 76 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instance-source-edition-7.md) | 605 | `declaration-track:d39bca826e6a9c43598332f10a637409ab921ec264fc376f462aa9e3f7ea8b62` |
| 77 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instance.md) | 610 | `declaration-track:0d662be23f8828c5f17f03c2f5ed3afae1a298e32780312b9d313e2f4485fb0b` |
| 78 | `theorem` | [Units.isUnit](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/units-isunit.md) | 616 | `result-track:62d6c0f7307239bccf333c7b18ab1094f552e9c41acdc6379f33ce2aaddf1ac1` |
| 79 | `theorem` | [isUnit_one](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-one.md) | 622 | `result-track:873256452728321d59d683380c2740fbd1240d2aa89fe0a461f29dfee8020bd2` |
| 80 | `theorem` | [isUnit_of_mul_eq_one](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-of-mul-eq-one.md) | 628 | `result-track:3965067171548939e2d50b2b3b1c19f479cb251b591a47a8678c2146c37d4874` |
| 81 | `theorem` | [IsUnit.exists_right_inv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-exists-right-inv.md) | 634 | `result-track:e5428d4967fe90d61ab5ac729056bce10fff1722c049b194878794ee2c8a500a` |
| 82 | `theorem` | [IsUnit.exists_left_inv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-exists-left-inv.md) | 641 | `result-track:3a9fe674bed804a8638cdda059b4894bcabf2615fbd2532b79678876df55cc7a` |
| 83 | `theorem` | [isUnit_iff_exists_inv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-iff-exists-inv-source-edition-2.md) | 648 | `result-track:ea40ef7c1fc477f176b69464bf28177e96cb86b39a229ec2ad7fa7e971af8646` |
| 84 | `theorem` | [isUnit_iff_exists_inv'](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-iff-exists-inv.md) | 654 | `result-track:c63c66ffd31edf3d1a83db7aa9343298c9f20df5b0569fb28ec2373a4d50f2ff` |
| 85 | `theorem` | [IsUnit.mul](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-mul.md) | 660 | `result-track:f3da67d6ce7721675e105ff13210aca48f24571a8e0c1f6a472f20330ae388ee` |
| 86 | `theorem` | [Units.isUnit_mul_units](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/units-isunit-mul-units.md) | 669 | `result-track:6d82240b4f09f1a468471cf23ebf9451da0f06f3661ae7346ac3307047f2f598` |
| 87 | `theorem` | [Units.isUnit_units_mul](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/units-isunit-units-mul.md) | 681 | `result-track:8a4edf37457980055db78bfb26978e3fe157d7772202ba904f20ba34239ffadc` |
| 88 | `theorem` | [isUnit_of_mul_isUnit_left](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-of-mul-isunit-left.md) | 692 | `result-track:4a6d593ff8eecf7276deb1355ad2b258785ef3beab631faab46669ea8d3e361b` |
| 89 | `theorem` | [isUnit_of_mul_isUnit_right](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/isunit-of-mul-isunit-right.md) | 699 | `result-track:5a0912ae801e82f517c32b78d9405b9199304de7526a62a7db514bb6b913d219` |
| 90 | `theorem` | [mul_iff](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-iff.md) | 707 | `result-track:fbdae442fa037dfca4fe0f02ef3a33e895e0d11252fd82116603a89943527677` |
| 91 | `def` | [unit](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/unit.md) | 719 | `declaration-track:e84cfc9b307dceebb89344da750975353d77eb15eeb6950838ff43b8fab44a54` |
| 92 | `def` | [_root_.IsAddUnit.addUnit](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/root-isaddunit-addunit.md) | 727 | `declaration-track:c2d932de0a6066f3cf55d5e0afd3e62a933fd1cc9e37e5b803ea353c15dfe3f5` |
| 93 | `theorem` | [unit_of_val_units](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/unit-of-val-units.md) | 734 | `result-track:56b97b4a6b6f85169607d522f8d3fa5b4884529174817e384833f537fb52bbb9` |
| 94 | `theorem` | [unit_spec](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/unit-spec.md) | 740 | `result-track:f1659734cba3565a7c179b52fbb72b3b033334b534959c4a2d0cf1a3392b70d8` |
| 95 | `theorem` | [val_inv_mul](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/val-inv-mul.md) | 746 | `result-track:f8f483537b83746ef890f16b9857e813b877bd7d2a80b4149929ee79e65a41b3` |
| 96 | `theorem` | [mul_val_inv](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-val-inv.md) | 752 | `result-track:3901ee2d81e7fad72e381312ebebdd45fbead2614127339e7771d23a75e9cd15` |
| 97 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/instance-source-edition-9.md) | 759 | `declaration-track:ed2d4ba4b32d3405bfba6ef334351aaef46faaf19f3d88ef886950aed93f0f70` |
| 98 | `theorem` | [mul_left_inj](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-left-inj-source-edition-2.md) | 763 | `result-track:c112fbb41fca2e3bea4f0b7b10580a504fa4a5431d10947ff197e65a1d38d288` |
| 99 | `theorem` | [mul_right_inj](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-right-inj.md) | 770 | `result-track:0a1ee4b7e8348d16460e358ce9bcad19df2b7614df99e972f08bbf0b5525e38a` |
| 100 | `theorem` | [mul_left_cancel](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-left-cancel.md) | 777 | `result-track:16d768449e2bf412cf4c7f5e448cb8e5d23d9b9ba557b1ccf47746bcd1e519d7` |
| 101 | `theorem` | [mul_right_cancel](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-right-cancel.md) | 783 | `result-track:b5520f60e2611a57ffc054b7c56a69223c84f5d0b04169884aa2a871fe475067` |
| 102 | `theorem` | [mul_right_injective](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-right-injective.md) | 789 | `result-track:7a4e7fd4c4c8ecf413acfffa7b908e5c83cbf4a03c1f011cc70ec85e1df4f1ab` |
| 103 | `theorem` | [mul_left_injective](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-left-injective.md) | 795 | `result-track:e7f6b3f342507ad149eccbbf49fa546d17a27d0cb57a108b2557ffa1d16604c4` |
| 104 | `theorem` | [inv_mul_cancel](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/inv-mul-cancel.md) | 805 | `result-track:63185b60672f8fd215890561500705358e220a49181912fb894a0351a3f36e55` |
| 105 | `theorem` | [mul_inv_cancel](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/mul-inv-cancel.md) | 812 | `result-track:aad47ddacc13345fb9f5b71ed1a5d2544a828ec1899ebae56aca47e8777d9f23` |
| 106 | `def` | [groupOfIsUnit](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/groupofisunit.md) | 829 | `declaration-track:f69ab750c6c6763abc3c6a899af9a77f7e1cf7fa47e4ee62ba8ad69e7486e8c0` |
| 107 | `def` | [commGroupOfIsUnit](../../../../GroupTheoryAndGeneralizations/Units.lean/declarations/commgroupofisunit.md) | 838 | `declaration-track:659113783cddc17afd84eb237806a598acef8b32068480a0035cc701db274038` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c5ee71ba4fe7cb7a022ea4693f605f0199670fed26a78f1eaa9362fbd3e3181 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant6743f7e2c7b09ef2b1bdd64423a1155b6d6284668b64d7cea5d9f2da970e35d9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant6743f7e2c7b09ef2b1bdd64423a1155b6d6284668b64d7cea5d9f2da970e35d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
