# Verification target: Free Monoid Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03892d1a78cd88e88207b2855eb2631e97a61cd0",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd604fc9690287837a26225fc36082cff2cef2fb1ddf50aaa8d20f9657a3c3b78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03892d1a78cd88e88207b2855eb2631e97a61cd0`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd604fc9690287837a26225fc36082cff2cef2fb1ddf50aaa8d20f9657a3c3b78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd604fc9690287837a26225fc36082cff2cef2fb1ddf50aaa8d20f9657a3c3b78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/freemonoid.md) | 67 | `declaration-track:b046e2c9dc75ca259e6dac7622503166027cb2e91b09575aa7efea81931262f4` |
| 2 | `def` | [toList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist.md) | 73 | `declaration-track:2792735c8acf32c497342d904a5eb5b09017a7c005e41d1d18b9999ec1d202bd` |
| 3 | `def` | [ofList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist.md) | 77 | `declaration-track:f7cdf49c2cb42e5d5ca8cb1089bd8eba864a9d743c187dceb1079b7bb9b2196a` |
| 4 | `theorem` | [toList_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-symm.md) | 80 | `result-track:fdb92d61f6c95414e74249df3edce77354723fc4f8b51d04e8831d47130ca8ad` |
| 5 | `theorem` | [ofList_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-symm.md) | 83 | `result-track:117e1af45794b6f092534c475ccc7e27c8b3acfd8d90aaf0cee4d50d3eaa6e54` |
| 6 | `theorem` | [toList_ofList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-oflist.md) | 86 | `result-track:22f9e0bfc648784e0aad9cddc2acf45840d931746bcb7c8d9b6c5015975825cf` |
| 7 | `theorem` | [ofList_toList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-tolist.md) | 89 | `result-track:51798eace212e46d3b84252344fe4d1cc781d5e09ebbf3c6dee1f27e0bd67717` |
| 8 | `theorem` | [toList_comp_ofList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-comp-oflist.md) | 92 | `result-track:471e9b4bdd6cd1d4ac318e8df151d13a37ea9b79dea34ce27746737fe33cc0de` |
| 9 | `theorem` | [ofList_comp_toList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-comp-tolist.md) | 95 | `result-track:391766d2d2dba6d592c06aff21620c1cfdbe8444686d561ca1fff122acd89b7a` |
| 10 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 98 | `declaration-track:4b6abea76b489c3b7c4b406f903d804ea05a4f7f53a003bbced739aa8267a7c4` |
| 11 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/instance.md) | 108 | `declaration-track:03afde38de11d7737da3fc05d94fca0cbb5f0f6286edb2c7981de710ce4bc20f` |
| 12 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 111 | `declaration-track:71870efe1ca014698f4dc54f0df2b0cbb3cfc6bc579609936ee5934a90a011cd` |
| 13 | `theorem` | [toList_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-one.md) | 114 | `result-track:f29795100ac262d1d5425bba68fba332cf9ccb937a7af13b75923326d2e63ea8` |
| 14 | `theorem` | [ofList_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-nil.md) | 117 | `result-track:9fd0533b5319af7f0878545545ff6f5bbba28a516f9f80f7f60543a692c64602` |
| 15 | `theorem` | [toList_nil](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-nil.md) | 122 | `result-track:290cce046706f5141b2149eaa84cc52e63beafdbda97b9af298f9514d1925b4d` |
| 16 | `theorem` | [toList_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-cons.md) | 127 | `result-track:8f7884f75eac8547c5d196908f9587892982a254d09166db52ea239bee600b9f` |
| 17 | `theorem` | [toList_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-mul.md) | 130 | `result-track:c323819161a54b96c67b57d2bbbf6faebd03c0903a3d33bcd9e439c82dd57071` |
| 18 | `theorem` | [ofList_append](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-append.md) | 133 | `result-track:333a4ca793f7aaa46674fbde89231e51030b0b54c319adca102c832748f50b8d` |
| 19 | `theorem` | [toList_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-prod.md) | 136 | `result-track:ea945bf032ab74ea0c08be1f3a069fd86a1b611f9b00658dd12b2cec3749d4d6` |
| 20 | `theorem` | [ofList_flatten](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-flatten.md) | 140 | `result-track:ff7a8f8925a1ce26b686a385e631721dc9368f3e619fbb561ba5bea204969755` |
| 21 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/of.md) | 145 | `declaration-track:d53e74db8b5b1ddabd4ff669d73cb40fc9417d2eae08f8fb7bca7bd18963efe5` |
| 22 | `theorem` | [toList_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-of.md) | 148 | `result-track:32bc903fea5c4a56728bb07e84c013c9464c2827e0c829812b54c9e644a603fd` |
| 23 | `theorem` | [ofList_singleton](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-singleton.md) | 151 | `result-track:01496c4bdf232cd78095e4a4005d47677d615e917e880df534cd484cca8259d1` |
| 24 | `theorem` | [ofList_cons](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-cons.md) | 154 | `result-track:0b529fd7b83dfeeb10858bb8c3e8f7bef94bf2b252890cbcef07eddd6831b517` |
| 25 | `theorem` | [toList_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-of-mul.md) | 157 | `result-track:a2dcb548987142e29eda86932f0d039284ab10c1ef2ee6be17f03ae324445228` |
| 26 | `theorem` | [of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/of-injective.md) | 160 | `result-track:d7808317cd0d727b864b1bbce6486ab129743db590d3bd3b3e1457f0a630cd9e` |
| 27 | `def` | [length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/length.md) | 170 | `declaration-track:c2537fafd3e2883093ac9fd1a2672066ef6bc985beed2d80192e842d116cd457` |
| 28 | `theorem` | [length_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/length-one.md) | 173 | `result-track:ed95ba25d213b7f60e76652ae37be1d39f984c015ca19852e6e4a1efdadfe952` |
| 29 | `theorem` | [length_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/length-eq-zero.md) | 176 | `result-track:077b4b01c4358b489a3d82c3af5bd36b04501872f6183ba9081956c67b48f77f` |
| 30 | `theorem` | [length_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/length-of.md) | 179 | `result-track:0a2fbd67e0cbc104777489dc38ae12602f5aa4a2c02b6219bbd927d817e9e1c4` |
| 31 | `theorem` | [length_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/length-eq-one.md) | 182 | `result-track:7230ee8354bc9f4697389b937e400a06ceda32f302f7858a28432c75839abb49` |
| 32 | `theorem` | [length_eq_two](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/length-eq-two.md) | 186 | `result-track:6d4275bff78527bb5044adb81e9213534a200da719cf28fee8c590fdfa6911f3` |
| 33 | `theorem` | [length_eq_three](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/length-eq-three.md) | 190 | `result-track:d13ad42b52ab1d7b466027b8b380a921618b797e328c4f6d04e20ce7bb1d694d` |
| 34 | `theorem` | [length_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/length-mul.md) | 194 | `result-track:f8e4c8231c79d5c9ed3ad0bdb1a213ddb863826a7990bcc4757e51a62d0a68c4` |
| 35 | `theorem` | [of_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/of-ne-one.md) | 198 | `result-track:d4fb164c8e3b06a6343a06efd9e50dad57aae2132448fa77025c2403ed657206` |
| 36 | `theorem` | [one_ne_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/one-ne-of.md) | 204 | `result-track:05aad0c96b2af73c5ddf59f899df4c21829232fba36080d4163d41579968f160` |
| 37 | `def` | [mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/mem.md) | 213 | `declaration-track:720eb42087ba0858cce85269fe64197a4fd5c862bcb32efd2e6cbc2c33e18005` |
| 38 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 216 | `declaration-track:6cc7c56144e70c82d77ad84ff6745c8a4ed94c3414d53df0e209cea0be4ff3b9` |
| 39 | `theorem` | [notMem_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/notmem-one.md) | 219 | `result-track:67cbec35382423e0a0e16534ea5f64880f6a96b90bc7276670e660686f670b70` |
| 40 | `theorem` | [mem_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/mem-of.md) | 227 | `result-track:ea0afaec2801ffb0657b93b0c78d6de1805bf096653ec0ea511deef53feb490f` |
| 41 | `theorem` | [mem_of_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/mem-of-self.md) | 230 | `result-track:d11eaaaa3bc14038643bbafb0bd2c675fd27fac946f54b6674b85042564d1e48` |
| 42 | `theorem` | [mem_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/mem-mul.md) | 233 | `result-track:bf1fc1e5c59ec8b4debb048d9906bac023bbffdc8c2b261345ea02a0360202ef` |
| 43 | `def` | [recOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/recon.md) | 242 | `declaration-track:286a56c4e3a201e9f8fa8bf7beafb70836ca86fb85d45a8bed013a16881cd6dc` |
| 44 | `theorem` | [recOn_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/recon-one.md) | 246 | `result-track:0599daff7df0fb744d0862ae93cf05fd8b65076eafb233d48e9992cc3c40f201` |
| 45 | `theorem` | [recOn_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/recon-of-mul.md) | 250 | `result-track:8d9474ab72c193adbe5b5fb607caf83db30547c423a39dc8515ffac230eaec12` |
| 46 | `theorem` | [inductionOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/inductionon-source-edition-2.md) | 261 | `result-track:fdb515ef7192e43b0e45a09d0269374b153f95208c1ca80d20c7302437116056` |
| 47 | `theorem` | [inductionOn'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/inductionon.md) | 269 | `result-track:9635702f4a6c448324cd24865906e8d5499da932c442d947a58facb09419d050` |
| 48 | `def` | [casesOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/caseson.md) | 280 | `declaration-track:aad670c52bc727541edd1f85c177b0f3baafb96f7e710d36062c642617f8db7e` |
| 49 | `theorem` | [casesOn_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/caseson-one.md) | 284 | `result-track:fe6113a59b6cdb41c2d2528bebae8c3d96bd48a7b374a9ea89480fe31586793a` |
| 50 | `theorem` | [casesOn_of_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/caseson-of-mul.md) | 288 | `result-track:a78269e08bbf94f94ec77be0138feb4e708bd1b9f1af5e1d2d7b04e07bcb7709` |
| 51 | `theorem` | [hom_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/hom-eq.md) | 292 | `result-track:bb4d6da15a6534dd4645cd93fb6f98e5026eab78ef89f4877ba70c400e1fce14` |
| 52 | `def` | [prodAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/prodaux.md) | 300 | `declaration-track:7234edc08c046e22cf52e485c2a51364ae563591e20664c89cf208f46c80f200` |
| 53 | `lemma` | [prodAux_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/prodaux-eq.md) | 305 | `result-track:7f5817102b2b66cb292ed8eb86143122e0277b93cb82cc3b4f4548559cb3e3f8` |
| 54 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/lift.md) | 312 | `declaration-track:69ffb7f92f0dbad48bf9dedf20941b53c1884102a0a692bad51b7680c1ca1adf` |
| 55 | `theorem` | [lift_ofList](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/lift-oflist.md) | 322 | `result-track:9774e74a7cc52ac9b5ea50a0715e6bcd9e384867f47d10fac6090e66c3d6821e` |
| 56 | `theorem` | [lift_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/lift-symm-apply.md) | 326 | `result-track:5046089aab423c98c901269e8eab2486efa83e8276a1e9ce58342c39b7f32425` |
| 57 | `theorem` | [lift_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/lift-apply.md) | 329 | `result-track:a783d2e0218dfe7f2425660e701862115e50de9b366d25cbdd06c0ad333a444f` |
| 58 | `theorem` | [lift_comp_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/lift-comp-of.md) | 333 | `result-track:fcbaa70b044748f54cf1c56ea3495cedcb86b75ea0dfb77c74f68a75bf76c503` |
| 59 | `theorem` | [lift_eval_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/lift-eval-of.md) | 336 | `result-track:d5dcbaa4c0edcedcce5eee3bd9395593f19f5a5c569daf0a352574b13643942b` |
| 60 | `theorem` | [lift_restrict](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/lift-restrict.md) | 339 | `result-track:78a9765aefe14a4ffe85c6208a639cdd43f512642f44ab7e6edf40def6a6fb10` |
| 61 | `theorem` | [comp_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/comp-lift.md) | 342 | `result-track:e8ebec98bf4263020c936d38e878d2a69bec47e7bc9f5e4b2ab790bdf92f1d66` |
| 62 | `theorem` | [hom_map_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/hom-map-lift.md) | 347 | `result-track:6c3a2c9b1cfa301062f79b261797c91f5bd25796bd68d08f36e0916b2c9b43b3` |
| 63 | `def` | [mkMulAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/mkmulaction.md) | 352 | `declaration-track:cb58c572bbfde44a45b1ba270b56cd3501acdf1fa91f547fce373f56634754a3` |
| 64 | `theorem` | [smul_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/smul-def.md) | 358 | `result-track:0fc55969bb2052a40b2b16ce559e5eba26dd765fb1a0cc60aaaebdb6865de32b` |
| 65 | `theorem` | [ofList_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-smul.md) | 363 | `result-track:6266cce6bb27b1f2941662f25770fc9dccac091def301fbf020026ba8b140a22` |
| 66 | `theorem` | [of_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/of-smul.md) | 368 | `result-track:84304796b7725b1c8d0940e0b3703fa1d61daa4d26a1099ee68ed1ebc8ebe342` |
| 67 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/map.md) | 380 | `declaration-track:97ddd6c56eb800a5b4e5e9c9acc207d0f4fb32a03243758b90057c21068a69b9` |
| 68 | `theorem` | [map_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/map-of.md) | 386 | `result-track:0b8211e9d3d49c9211b0a7306e1f548e2ad0cea07b58bfb542cf5a5e2f5dfd1f` |
| 69 | `theorem` | [mem_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/mem-map.md) | 389 | `result-track:a759f544954190a117e2bdc8820bd141d00a881a5e77c3020cc9c6646cf2f761` |
| 70 | `theorem` | [map_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/map-map.md) | 392 | `result-track:4edb2bb9bd5dd259d83e6dcf3d6465c66ff97e92b8c2afcc54a05ec8b68b40f7` |
| 71 | `theorem` | [toList_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/tolist-map.md) | 398 | `result-track:83889010e023655b24117c5e83eeb96150baeb839f6850d8ed92a1ae8cee673a` |
| 72 | `theorem` | [ofList_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/oflist-map.md) | 401 | `result-track:171c326bb751ca53ec3ca8046eb8ffa96a67af79ffce31d959f972926d709c65` |
| 73 | `theorem` | [lift_of_comp_eq_map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/lift-of-comp-eq-map.md) | 404 | `result-track:eac37262a51c1ce7d0713d00f4fae59a95ea297cdfcce5eaec9b960004f2a8c1` |
| 74 | `theorem` | [map_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/map-comp.md) | 407 | `result-track:8e5c3c08b0b2a1b56ca0b21d7915392d3121097d50e0cafd7171e38e39892d73` |
| 75 | `theorem` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/map-id.md) | 410 | `result-track:3c8662ba09ce4cf7196712700c2679431ef55a409c97241ec139d297ae35308a` |
| 76 | `theorem` | [map_symm_apply_map_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/map-symm-apply-map-eq.md) | 413 | `result-track:272e0a52ef7475a07aa22aad3a7162ad9bd8ed4cff640fcfc69743f49489faf7` |
| 77 | `theorem` | [map_apply_map_symm_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/map-apply-map-symm-eq.md) | 417 | `result-track:f5ffb9c6339de82e610a952a7ec47e06627e82566806d2b6e10381d4467b99e0` |
| 78 | `instance` | [uniqueUnits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/uniqueunits.md) | 422 | `declaration-track:7650e4936657a755d8d014119009c13be6b4333566b9850045fecd01048953f2` |
| 79 | `theorem` | [map_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/map-surjective.md) | 428 | `result-track:14c4c996e64116c0e0c1e961d9e62d461d696a45364135a2c65a2ff7249133ac` |
| 80 | `def` | [reverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/reverse.md) | 458 | `declaration-track:fcd3cfe3e5ff5e197dcce16b986c12b5cd403df709ed85c66c3b91dc497aaa24` |
| 81 | `theorem` | [reverse_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/reverse-of.md) | 461 | `result-track:94165738768a8c42ab621ab9999842c9950f91b669695439c0f458e6ea9a2e5f` |
| 82 | `theorem` | [reverse_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/reverse-mul.md) | 464 | `result-track:0c8bda66086d91aa85f4860ef819afaa30acb1e8b3453572d86d942b8a37d426` |
| 83 | `theorem` | [reverse_reverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/reverse-reverse.md) | 468 | `result-track:505548d170e69e3fa74516e2085974806b41d8c74d564c0fe40a000a621bfa62` |
| 84 | `theorem` | [length_reverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/length-reverse.md) | 472 | `result-track:8e32010a5499d6936a8f1ff20cfc0e01e384e605aad01e6def3154dcb989d8d6` |
| 85 | `def` | [freeMonoidCongr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/freemonoidcongr.md) | 484 | `declaration-track:11afb22d3e417d25ff7699dabbcad09ba9208b57be5230acaaaf6f47732356fd` |
| 86 | `theorem` | [freeMonoidCongr_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/freemonoidcongr-of.md) | 492 | `result-track:c266fc51fab87135997b3f9030bf4ab507c9030735abe88fcc181ba177c2e9ac` |
| 87 | `theorem` | [freeMonoidCongr_symm_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeMonoidBasicNamespaced.lean/declarations/freemonoidcongr-symm-of.md) | 495 | `result-track:284567b2ecc1a20fa752cf374e45d18642ca8c1eb835fcb3a42e3395ba24d733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=246495095a8b032a180b5fce67b21ceb84f5d1142423f864db74fdc6862df266 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantd604fc9690287837a26225fc36082cff2cef2fb1ddf50aaa8d20f9657a3c3b78.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantd604fc9690287837a26225fc36082cff2cef2fb1ddf50aaa8d20f9657a3c3b78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
