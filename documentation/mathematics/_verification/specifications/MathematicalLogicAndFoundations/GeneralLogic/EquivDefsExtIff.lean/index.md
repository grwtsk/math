# Verification target: Equiv Defs Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "782e9a48a71ac879243cbc6a07c1eb1bf641272f",
  "lexical_observation_count": 176,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `782e9a48a71ac879243cbc6a07c1eb1bf641272f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.FunLike.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Quot` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Bool.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Unique` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Equiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equiv.md) | 64 | `declaration-track:078eeaebf4ef526b10f167548171368299825578bec7fd9875394c02e1155111` |
| 2 | `def` | [EquivLike.toEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivlike-toequiv.md) | 76 | `declaration-track:4c9632855216dace493d609afd374d9ca62bf5b8191661d881a51a2d3e6b70d9` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/instance-source-edition-3.md) | 83 | `declaration-track:cbc0b41e87683f68428e1106696d6dfc46cf8fb74d22189f160fce931f80db81` |
| 4 | `def` | [Equiv.Perm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equiv-perm.md) | 88 | `declaration-track:2a410f292cb82e0a175e16e7cdf518898dfd08e909696724437a5d6313e1f275` |
| 5 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:c2645c7a930758f89fedee9444d608f1642467e7a3838d798c478d902e0aab44` |
| 6 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/instance-source-edition-4.md) | 103 | `declaration-track:db7d74750a81907d6620dd59dd4b3ed46255733661eebf888395fcc7e3a2f087` |
| 7 | `theorem` | [coe_fn_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/coe-fn-mk.md) | 106 | `result-track:fceaf6e8f0be3d0ceff2e12670337768c24a4e7ffaa7eb32cb028e70ff38def7` |
| 8 | `theorem` | [coe_fn_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/coe-fn-injective.md) | 111 | `result-track:098595c63058bad6bf9ca358f366b61320ec9a08cca63a2e47155cbd9b27662e` |
| 9 | `theorem` | [coe_inj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/coe-inj.md) | 115 | `result-track:2f91a239b339af761b9a3755a88e46ec68302bb59e4a53c2bc1c860aaf0f8c8f` |
| 10 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/ext.md) | 119 | `result-track:c2a466fd6dbb986390f93fd136ec200875d056de01d5ef401226f7544d7c9d9d` |
| 11 | `theorem` | [congr_arg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/congr-arg.md) | 122 | `result-track:c519323740fb18d909cb950695c285cb4d2fb4be90e4a234f0450bd25e8a68f9` |
| 12 | `theorem` | [congr_fun](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/congr-fun.md) | 126 | `result-track:f65ede0a734395cacc761b41ad85ed8d6cebe59d49300d74e3e8d53927fa8c3c` |
| 13 | `theorem` | [ext_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/ext-iff.md) | 130 | `result-track:d6c387e632ad99290ef09c0ad5a57f8511e2a9f4f3d04cab7ef4fb0e4d5740a9` |
| 14 | `theorem` | [Perm.ext](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/perm-ext.md) | 133 | `result-track:a0e313f2920fb08ac43324c98c02e1e58bc905e985ae3338efd24d5fabf5ef2f` |
| 15 | `theorem` | [Perm.congr_arg](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/perm-congr-arg.md) | 136 | `result-track:3f4520a8a7c3080e7c95681ea72bf2dda6bd239ddec75be0aa404b9cf920dd00` |
| 16 | `theorem` | [Perm.congr_fun](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/perm-congr-fun.md) | 140 | `result-track:754f832a6eecd4d2b66d983b00f20808bc864fd8520c2941eb4a7841060c3bcb` |
| 17 | `theorem` | [Perm.ext_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/perm-ext-iff.md) | 144 | `result-track:41f15be4f9d0a820c7a4f8d51d435051cdd4686be6d1740c5d98ea504fa7b710` |
| 18 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/refl.md) | 148 | `declaration-track:c5be0ea78e8a264f976dcd70657dc6105c50129fac31443b63f3fde669f5eb47` |
| 19 | `instance` | [inhabited'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/inhabited.md) | 151 | `declaration-track:4754eb951fbfd9b7e0bdb125d40c1fe4681b5d10fe1a067c5fb573e696450fb4` |
| 20 | `def` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/symm.md) | 155 | `declaration-track:947cf1fe4d3cecb417064b768bfe3ca38c8dca860aa7b936b411892c709c5bd9` |
| 21 | `def` | [Simps.symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/simps-symm-apply.md) | 159 | `declaration-track:678f3bc9449e0b26ff0cc4445d78bb0b19b6b39addf9acc093b227b2183d8ac9` |
| 22 | `theorem` | [left_inv'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/left-inv.md) | 168 | `result-track:50773990998126a27bd44813d8f47925022c7042653d2bae556974240a060247` |
| 23 | `theorem` | [right_inv'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/right-inv.md) | 169 | `result-track:e92df7bfb7750a2270f123c0bf4cc7015c29d9778ac0606a33deeb14284e3afc` |
| 24 | `def` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/trans.md) | 173 | `declaration-track:e4ccd5644871341ba3ffc9922694b71a37baaaca077664a254c9685c29c11ad4` |
| 25 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/instance.md) | 178 | `declaration-track:bb68d069a1fe57759ad606de4c5afe5396822595821fff3c3c3d10fa521ad43d` |
| 26 | `theorem` | [toFun_as_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/tofun-as-coe.md) | 183 | `result-track:93cc7418ac8598faeb4b900a7fbc3374b0e9bc4d7242eaffcb15facc64dc658b` |
| 27 | `theorem` | [toFun_as_coe_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/tofun-as-coe-apply.md) | 190 | `result-track:2257e000478e4e622aeed6ba054153f9eb72cab78b4aa9227c14587793465eb5` |
| 28 | `theorem` | [invFun_as_coe](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/invfun-as-coe.md) | 192 | `result-track:86eebc124197a088864c4b63f0234ac5d567431a23972f0f4bf3cfa49bb151d0` |
| 29 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/injective.md) | 195 | `result-track:2d58d0253ab3d6ef05509f62c6d0064e8fa630eb873297e7504561a1f74911da` |
| 30 | `theorem` | [surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/surjective.md) | 198 | `result-track:0bac0cc7698e835f18852fc17af98e99df1ec4ba3f56d6d64569aa83152f2713` |
| 31 | `theorem` | [bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/bijective.md) | 201 | `result-track:a0e971cdd2987324dddf75202f077394320f843aa59de7d73c03affedbda9cbd` |
| 32 | `theorem` | [subsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/subsingleton.md) | 204 | `result-track:834069f4953f991ca1a3376ac855b0df707dbb6676094b24cebd2f80bd68da05` |
| 33 | `theorem` | [subsingleton.symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/subsingleton-symm.md) | 208 | `result-track:9859a0e731327956b55c93545948ceb6e1882d4b5ef3a88846b9600328d95a41` |
| 34 | `theorem` | [subsingleton_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/subsingleton-congr.md) | 212 | `result-track:09d334c30bf47055b380a8c4ef96c260e1a54df894017a9fdbed83b5a68c5f0a` |
| 35 | `instance` | [equiv_subsingleton_cod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equiv-subsingleton-cod.md) | 216 | `declaration-track:59297b53d9c2abd5238f6649190158b350fb893132981433acaef835d6123a1c` |
| 36 | `instance` | [equiv_subsingleton_dom](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equiv-subsingleton-dom.md) | 219 | `declaration-track:cc52f8f10db0fabd4e3f71b540ebfa100c3b6088c252687534656393bb2aee26` |
| 37 | `instance` | [permUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/permunique.md) | 222 | `declaration-track:8bf9e2031a9f10c88dbd8670b89a3efab8aac6e78a4f53b5db647e506f84ea43` |
| 38 | `theorem` | [Perm.subsingleton_eq_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/perm-subsingleton-eq-refl.md) | 225 | `result-track:0181d297615bf0458687681dee98ecb5cc1d936af3d250504ade86f118cd0fc1` |
| 39 | `def` | [decidableEq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/decidableeq.md) | 230 | `declaration-track:75b467e7b81333cf5bbb368d48f78797df0739ac3244d52abf5adb04ce3c795d` |
| 40 | `theorem` | [nonempty_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/nonempty-congr.md) | 234 | `result-track:2fd57d88ea0fde61c1166bb77d403123f1ab119c455eca6b067e0fe8dc473da0` |
| 41 | `theorem` | [nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/nonempty.md) | 237 | `result-track:9d9fc68d7b6adacfeb1596362dddc5d648e5dbcfa44d38358f4419a1538bf8d2` |
| 42 | `def` | [inhabited](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/inhabited-source-edition-2.md) | 241 | `declaration-track:f844337d71d17d89dea9d2e0b9cb7e56491f9d7fc0d69cc0dddff03449f3a068` |
| 43 | `def` | [unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/unique.md) | 245 | `declaration-track:ff7150ebeb7491d6ce563ca68dffd178dcb04ddbbb23d45769552b99af9a8a88` |
| 44 | `def` | [cast](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/cast.md) | 249 | `declaration-track:c05fea49d72cb59f100143cad521a1d76d686fccf47c9caf0b159aea1693a147` |
| 45 | `theorem` | [coe_fn_symm_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/coe-fn-symm-mk.md) | 253 | `result-track:fc6102572db719532207d6dd667612a8f0e450b03b394f94558752c42b628905` |
| 46 | `theorem` | [coe_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/coe-refl.md) | 256 | `result-track:a6b1ebd8e6f2b99fb280d78d32c9820eca4ec6d1ceb5d2aea23a25bd375bddcf` |
| 47 | `theorem` | [Perm.coe_subsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/perm-coe-subsingleton.md) | 261 | `result-track:009ae3a644ab8bf8f0ec3ac1ee579673701f1d116d8c2b848fcb7928fd8b6bc3` |
| 48 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/refl-apply.md) | 267 | `result-track:7d7b45b4d02c2a24d6cabd9bca1f818549d89d1f7bbdffc5ce8c54c5d1f46519` |
| 49 | `theorem` | [coe_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/coe-trans.md) | 270 | `result-track:e996e1d3f0b351bb2c2bddeb0669436d287bf4a28367fe13b6cb3f6491b79529` |
| 50 | `theorem` | [trans_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/trans-apply.md) | 275 | `result-track:1e8d5e1837275aa9183a1732587becad5ffe6f9265dbaec27255501957ec1366` |
| 51 | `theorem` | [apply_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/apply-symm-apply.md) | 278 | `result-track:cdd00b765b997b5c42425cdd7d6b95229b1dfb00338b256d9d1d5405387625c8` |
| 52 | `theorem` | [symm_apply_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/symm-apply-apply.md) | 281 | `result-track:f7ee37b727da8d52f97705c70b3f28306b9503597bbf27621e227389cd284a0d` |
| 53 | `theorem` | [symm_comp_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/symm-comp-self.md) | 284 | `result-track:8f5563c9925f51ec6248fe3152fc159b4ce2ccebd2ff4b84ba272c395e7301a4` |
| 54 | `theorem` | [self_comp_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/self-comp-symm.md) | 287 | `result-track:c592e5830f54c014622cbbdb16a736ed48e8da29018fbb441f0dc7ea4dfdc585` |
| 55 | `theorem` | [symm_trans_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/symm-trans-apply.md) | 290 | `result-track:a211519bf266212e596e1c8b2d9aea64020a7dfae4781ce33df289b757147739` |
| 56 | `theorem` | [symm_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/symm-symm-apply.md) | 296 | `result-track:7156e97eac51b163f23f7ef0ecee7cf97ac0d33532c3e49ad5404b3535f78560` |
| 57 | `theorem` | [apply_eq_iff_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/apply-eq-iff-eq.md) | 299 | `result-track:0870c499df029bddab65991ebd4abe498fdebf65247e3b9aae149f3460df04fc` |
| 58 | `theorem` | [apply_eq_iff_eq_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/apply-eq-iff-eq-symm-apply.md) | 302 | `result-track:087866bf90760da4e1b20272b55348c2125d0699e3a9978821dae3632af9d3e4` |
| 59 | `theorem` | [cast_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/cast-apply.md) | 307 | `result-track:335b8dd59a6598ea4689d3d8172fdf47ac03e3216dd8061146314497771ad956` |
| 60 | `theorem` | [cast_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/cast-symm.md) | 310 | `result-track:14ca3d2be21ba039bd5c9c6c3221ce3bfffd743fb8c9bc672a8302dd73795bab` |
| 61 | `theorem` | [cast_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/cast-refl.md) | 313 | `result-track:1b3f5d221fb578d897cd988b981fc0655f615bf529812441b2b4a572902c4e5e` |
| 62 | `theorem` | [cast_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/cast-trans.md) | 316 | `result-track:12b8dc8ee5eff33f1eb81d61a7656b0a022d47e622d9e5c0f4ee44036e91c513` |
| 63 | `theorem` | [cast_eq_iff_heq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/cast-eq-iff-heq.md) | 321 | `result-track:bb170589348e21ebecb23e83085fc92701428ce329a1edb82a9f0fc94364270c` |
| 64 | `theorem` | [symm_apply_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/symm-apply-eq.md) | 325 | `result-track:fff82d1748138aaf9b55887882b2e82acbb1d6e86243246093f4e5215bbea532` |
| 65 | `theorem` | [eq_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/eq-symm-apply.md) | 329 | `result-track:402d28a4243364c5b026ec43132e5da124f550030c553a452e41d2eb35d5a81b` |
| 66 | `theorem` | [symm_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/symm-symm.md) | 333 | `result-track:f0e854a5e104b47371b46ba2da7741d1a4e185c134f386eda867474e95a2804c` |
| 67 | `theorem` | [trans_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/trans-refl.md) | 336 | `result-track:190e1398b5a2a608cea76632eae84464e94977e69f2dbc2372d82148b00aacf6` |
| 68 | `theorem` | [refl_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/refl-symm.md) | 339 | `result-track:8dadba6edc6e03401c79443fb8507a34ac6c6585f56f6d0ba3e3c13807c66ff4` |
| 69 | `theorem` | [refl_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/refl-trans.md) | 342 | `result-track:dcd746743e6772e6c53f91a3916141cd4cb2d7a8ad1c67650a132fbea1d06812` |
| 70 | `theorem` | [symm_trans_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/symm-trans-self.md) | 345 | `result-track:b2a0ed727dde9d9d3b4bfdcddd3942b2058feb403565b34dae2702eaee1fb048` |
| 71 | `theorem` | [self_trans_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/self-trans-symm.md) | 348 | `result-track:510ba81655420a17dcd82a3447cd7c89367355866a4061f49f7c606792063860` |
| 72 | `theorem` | [trans_assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/trans-assoc.md) | 351 | `result-track:f1c14e916f71d0657a1f83b38d533d78a751c583dd3cc69f3a4a53e5703ca302` |
| 73 | `theorem` | [leftInverse_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/leftinverse-symm.md) | 355 | `result-track:e8008287b26dec7a847718fabef4d0073dbe7cfcc0f434dcd784a34e4d9996f7` |
| 74 | `theorem` | [rightInverse_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/rightinverse-symm.md) | 358 | `result-track:c801cac5a8ece120a1d25667ba210678471df9077975d7d1cf9471ce4fe96cea` |
| 75 | `theorem` | [injective_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/injective-comp.md) | 361 | `result-track:383f46c304b3abd430eae47c298f7c4e5568711ba221b245ccd25c3b1111d77d` |
| 76 | `theorem` | [comp_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/comp-injective.md) | 365 | `result-track:e610979f85f8e5a97b21d9e9a1241508ebaa9402ffd01bc915623a49e5976522` |
| 77 | `theorem` | [surjective_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/surjective-comp.md) | 369 | `result-track:72839dca45632556bc0d65ebc32f2ecb21e3a59b98d0b02c5b133f8f2062399c` |
| 78 | `theorem` | [comp_surjective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/comp-surjective.md) | 373 | `result-track:82a59a3fde34222e8e4e66d23aa4340c11cd9cc95495c974b2bcde54f10e22bc` |
| 79 | `theorem` | [bijective_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/bijective-comp.md) | 377 | `result-track:2851e00b8a0e3afdb5c29794054626d0cf0cd7b2f5ae72988dc7aefe2d6ff02c` |
| 80 | `theorem` | [comp_bijective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/comp-bijective.md) | 381 | `result-track:0d7557e0e7d89adaf463bf263eb8feb5e72bbfe8c30f9f3b845a873829159601` |
| 81 | `def` | [equivCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivcongr.md) | 387 | `declaration-track:691e9ff2c0256f326da1cb8b177898db1b6982bb18b29054de2206777f34f015` |
| 82 | `theorem` | [equivCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivcongr-refl.md) | 394 | `result-track:2cc44f97ad5712f9ee562d329a8b98f7cd1f32e8710eb5c466fd3d94a5177b77` |
| 83 | `theorem` | [equivCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivcongr-symm.md) | 398 | `result-track:c0af7fc1a66a1ab3478a11f8384589001e2cb0cfd6b67e0237b5dade2816939e` |
| 84 | `theorem` | [equivCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivcongr-trans.md) | 402 | `result-track:6ddf5f47473f7f07ed1666aa39071c54c2f94739d05cb40487f1040b75263117` |
| 85 | `theorem` | [equivCongr_refl_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivcongr-refl-left.md) | 407 | `result-track:fa323329425b9ea014f4af6785ad5fe7f117dc6ab2289f0cd7166e06f73e27f7` |
| 86 | `theorem` | [equivCongr_refl_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivcongr-refl-right.md) | 411 | `result-track:b3e9150dca6dbec9f2e734deab5d4ac9ce77cc502aea06a2610a36fc8aea5298` |
| 87 | `theorem` | [equivCongr_apply_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivcongr-apply-apply.md) | 415 | `result-track:2a33e757b50319e870559599915188985d907a752d77a2b1f03bfc6b9f31afd3` |
| 88 | `def` | [permCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/permcongr.md) | 424 | `declaration-track:455a05641f434ae506f6bd247e83c7f249b7cf8ef3ab6f76c552eed2e9514ee4` |
| 89 | `theorem` | [permCongr_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/permcongr-def.md) | 427 | `result-track:2210bb23618bec34b34f8bbcfe82359b6c1b628df0588d7eaf548e161f94b651` |
| 90 | `theorem` | [permCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/permcongr-refl.md) | 430 | `result-track:9dee26486297c43f7d84a780a7889f8937640cd27c2998ed58d140827ecc1f2e` |
| 91 | `theorem` | [permCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/permcongr-symm.md) | 434 | `result-track:20723285eb636d171cf0de5e11dd579369d5c17f51e2898086f404617fa29464` |
| 92 | `theorem` | [permCongr_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/permcongr-apply.md) | 437 | `result-track:4b0a73a252d25580bd535a18f95c0fdb70f8fbddf763faefea021dae7a615c29` |
| 93 | `theorem` | [permCongr_symm_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/permcongr-symm-apply.md) | 440 | `result-track:21025894b66b5681a21ee68774cefa6d333965cb3c77474bfc6d4885d3aaee9a` |
| 94 | `theorem` | [permCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/permcongr-trans.md) | 444 | `result-track:7a50743fc3cecde5a7d202d48992fb89dd48f46435af07255a1e1319584e372a` |
| 95 | `def` | [equivOfIsEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivofisempty.md) | 452 | `declaration-track:e41cd39d72eb35b3a7d8398cf4b07caeb423cc0965b7fd8f23f0eeef863ac094` |
| 96 | `def` | [equivEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivempty.md) | 457 | `declaration-track:798b359d42a2d5fb765822032a81f1371dd6399371e145247039a31cbac81bc5` |
| 97 | `def` | [equivPEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivpempty.md) | 461 | `declaration-track:a225f7bc9cd53df2192f09fcaa092c24ea8a728d8735de7187430cf8e1edc067` |
| 98 | `def` | [equivEmptyEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivemptyequiv.md) | 465 | `declaration-track:0d1702023995b02a0db8ff461f60749a401344d23e9b53267f7c277d2665ae7e` |
| 99 | `def` | [propEquivPEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/propequivpempty.md) | 470 | `declaration-track:06f19b9368c35bc335232175386588dc68bcd55b71487e9486639188364495ea` |
| 100 | `def` | [equivOfUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivofunique.md) | 474 | `declaration-track:1b8a7317883264544b312fa2c035edc998e16845dcbc7bd4ae4bbc40a781b744` |
| 101 | `def` | [equivPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/equivpunit.md) | 482 | `declaration-track:00c776704fad790746653db83b25912720f6782c599b5162003b9194e166b6c6` |
| 102 | `def` | [propEquivPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/propequivpunit.md) | 486 | `declaration-track:2cad1428114972439f144f61dc2ec5da2d9d3547abd924197c8353f00d06210d` |
| 103 | `def` | [ulift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/ulift.md) | 491 | `declaration-track:8e2d64282551dbea7bdb199a2e5aa8b69cc90b03cf73f17b8de6eb0a9b0bbf03` |
| 104 | `def` | [plift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/plift.md) | 498 | `declaration-track:4b4d54853b6128ebb190d72f8029c4686c2d6cd48d299d5a6985e8bdaeb9440a` |
| 105 | `def` | [ofIff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/ofiff.md) | 503 | `declaration-track:b57b6a53c119722cf837951afcd256e292ae4877c6c1d06578aa9d30a59a690b` |
| 106 | `def` | [arrowCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowcongr.md) | 510 | `declaration-track:4aded054970777fca42a9414dca4dad7abd712106bfb398f3482bc5e4b5905c5` |
| 107 | `theorem` | [arrowCongr_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowcongr-comp.md) | 518 | `result-track:39b0b19e8ed401090ad3c73875ef90ecc819d8345beab9ddc7eef2827eccf47a` |
| 108 | `theorem` | [arrowCongr_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowcongr-refl.md) | 524 | `result-track:2cdccf754d4452b84e4d9f0b3e068b94c76965d9b8d8a7e36703e47ac4c27031` |
| 109 | `theorem` | [arrowCongr_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowcongr-trans-source-edition-2.md) | 528 | `result-track:b5c7cd20fe1fa431059e3d13117fed8e5a9f11aa4e40a4a30f8a80b25efcd973` |
| 110 | `theorem` | [arrowCongr_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowcongr-symm-source-edition-2.md) | 532 | `result-track:9ad3ba2534c2ec5c6b3de983dfd584865f713fbed06198836cf53997c27b10ec` |
| 111 | `def` | [arrowCongr'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowcongr-source-edition-2.md) | 543 | `declaration-track:82d1626b9df6202f150282cadcabb62aa313de7ef7fb17bed9d0432ce6d18300` |
| 112 | `theorem` | [arrowCongr'_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowcongr-refl-source-edition-2.md) | 548 | `result-track:c44dfbe10cf87db3f0e968f5831799500cc76ddc6019b04317917418d212303e` |
| 113 | `theorem` | [arrowCongr'_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowcongr-trans.md) | 552 | `result-track:034c86a8f8fe64111e0201032b7b9d3b2092b514de6ded0d588a7bf871e27e8c` |
| 114 | `theorem` | [arrowCongr'_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowcongr-symm.md) | 558 | `result-track:6a8b22f690105d1703ffb81a7227091807b865c458da8b13ebbc5ed54a935e1c` |
| 115 | `def` | [conj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/conj.md) | 563 | `declaration-track:612ae9d658e18b5d68ebb17045dd48ff4b6a8d954151dcffb857c8fd8344f884` |
| 116 | `theorem` | [conj_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/conj-refl.md) | 567 | `result-track:8a55ec62eaa2ef7c1e90ff5078a45b17ed6ea14cafe6c30be2fd6461d1d93adf` |
| 117 | `theorem` | [conj_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/conj-symm.md) | 570 | `result-track:9b665b75e837ecb7fdc08508972b590fa27ff5c979bdcdc8f0584b19282bdf67` |
| 118 | `theorem` | [conj_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/conj-trans.md) | 573 | `result-track:fc3ce9aaa7652443fc5415ce15ad78274aac2c78e5768a2a47439840a2b5ef94` |
| 119 | `theorem` | [conj_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/conj-comp.md) | 580 | `result-track:4a104fb67eb6a61d61fa49c92ba28d6e89ea4cfafdfae1a8614be323e91b3460` |
| 120 | `theorem` | [eq_comp_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/eq-comp-symm.md) | 584 | `result-track:de3ecc8bdf25a1c59a8c27fa03dab1735d0948cad6505b8e41d4a8a5f499e9f7` |
| 121 | `theorem` | [comp_symm_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/comp-symm-eq.md) | 588 | `result-track:19fce00d46eb7a08ba75edf5e673c1bdeb5f7b7e08201058aa290da56175c0f3` |
| 122 | `theorem` | [eq_symm_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/eq-symm-comp.md) | 592 | `result-track:c6397c9de7777c785bbcb53da7c08af12dad2386b28a6aaa78b5fd827c572c0e` |
| 123 | `theorem` | [symm_comp_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/symm-comp-eq.md) | 596 | `result-track:e8a4e4a80e4cda4cd6cb1b38b0976c495adb20b6b786bf8884a8b8b67ca696d4` |
| 124 | `def` | [punitEquivPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/punitequivpunit.md) | 601 | `declaration-track:7057d323907bc4da936a166f5c4029a9c9319e83778aaa31d1ece6f6b0b2ad0d` |
| 125 | `def` | [propEquivBool](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/propequivbool.md) | 606 | `declaration-track:e8ba40c9773050b8ea22a37e545fb6a4c455f24c919933251df285655328f07e` |
| 126 | `def` | [arrowPUnitEquivPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowpunitequivpunit.md) | 616 | `declaration-track:179376c856e42fda9547899cf7602d1a83e591cc68c6a6c4f8919f45681f7e6f` |
| 127 | `def` | [piSubsingleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/pisubsingleton.md) | 622 | `declaration-track:cd2c0150b5115ee688c7271be13ebb3d7d5cdd72c60c095be577bb1916813227` |
| 128 | `def` | [funUnique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/fununique.md) | 633 | `declaration-track:861e8e7b19bc50dc2bf40c4b697e28fd36d03d8a5d28f752bf14de28f1a59efd` |
| 129 | `def` | [punitArrowEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/punitarrowequiv.md) | 638 | `declaration-track:6f532dd32f5c3d00f83c34237210628e05066d079a13f8aca56624e815ad29b6` |
| 130 | `def` | [trueArrowEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/truearrowequiv.md) | 642 | `declaration-track:f02a1cd968818a3ccdf4c80c1fb4e7d8f8337fbfd06f74e5f70b25f60b068942` |
| 131 | `def` | [arrowPUnitOfIsEmpty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/arrowpunitofisempty.md) | 646 | `declaration-track:eabeae0629c66a8de1cfa4621e47ad524dc639c339f8dfe3b01f5ea5cb018d0f` |
| 132 | `def` | [emptyArrowEquivPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/emptyarrowequivpunit.md) | 654 | `declaration-track:ff6ca914d46c1ae94a0b7934bc68f69a380373f1427cd0e2f969f6013c96b306` |
| 133 | `def` | [pemptyArrowEquivPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/pemptyarrowequivpunit.md) | 658 | `declaration-track:71fd861d44fe201c8f3250fc0078158066317526fa9e4b4bf332dbd1eab964fe` |
| 134 | `def` | [falseArrowEquivPUnit](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/falsearrowequivpunit.md) | 662 | `declaration-track:a944e0c8b3d78da512ef4657ada46a3a9e283e2823c859b38456f0b576de4daf` |
| 135 | `def` | [psigmaEquivSigma](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/psigmaequivsigma.md) | 671 | `declaration-track:734cdd2de94ef10be95c5ac69e2185d7e644f1dcddadbb523e5241ef55e6ef38` |
| 136 | `def` | [psigmaEquivSigmaPLift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/psigmaequivsigmaplift.md) | 682 | `declaration-track:6d3016584e2159a8af4440920ac7f9ae025c5a9cad1cd0a0e98a765e7d7f22b7` |
| 137 | `def` | [psigmaCongrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/psigmacongrright.md) | 694 | `declaration-track:580b2a59347ddb5dc2a9b0a5964ee9240c99bc418c9bd8b80e22df1803e23cb0` |
| 138 | `theorem` | [psigmaCongrRight_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/psigmacongrright-trans.md) | 703 | `result-track:f83efabce9b211f9337a2f3efe2f43a6b03d068affd711cc8d98fa8b18c7267f` |
| 139 | `theorem` | [psigmaCongrRight_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/psigmacongrright-symm.md) | 710 | `result-track:9c481e215b44f4b95c83c4e126c10b1cf28da80cae665511de537a83c27e1ad3` |
| 140 | `theorem` | [psigmaCongrRight_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/psigmacongrright-refl.md) | 715 | `result-track:74bcf14501a215cea9cf967f5d748221a5e2f785d2c7c3735d27ceba737f0d6d` |
| 141 | `def` | [sigmaCongrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrright-source-edition-2.md) | 722 | `declaration-track:dd04e72a5c4a093cd5dfa7214adf32183db3eea2cefed5c03737ae8a179afe9c` |
| 142 | `theorem` | [sigmaCongrRight_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrright-trans-source-edition-2.md) | 731 | `result-track:af744cd8da85fb671549daf11c52263e88bbf660517a49de56e6d0cfa24a5606` |
| 143 | `theorem` | [sigmaCongrRight_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrright-symm-source-edition-2.md) | 738 | `result-track:a9519f37b47477d1bf2e91ec396a11d645638341c3e5f5b4bbab3948644ffe61` |
| 144 | `theorem` | [sigmaCongrRight_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrright-refl-source-edition-2.md) | 743 | `result-track:e83b2c6b23b5f289138e9bef9012408d403cdc55e07fc4c7a0d6e1815a977686` |
| 145 | `def` | [psigmaEquivSubtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/psigmaequivsubtype.md) | 748 | `declaration-track:9d82177acabf92c99475000c6e8e94d0bab0b52fc81e22390782133e86a5a3bf` |
| 146 | `def` | [sigmaPLiftEquivSubtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmapliftequivsubtype.md) | 756 | `declaration-track:d3e3934f2c0931249cd31f3afbe46377dcfd3be75fbdf97dce62e7adc46cdd16` |
| 147 | `def` | [sigmaULiftPLiftEquivSubtype](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmauliftpliftequivsubtype.md) | 764 | `declaration-track:a994c2cc59649bb3da401ccbe8bb520865e6f9b1dab54df4760addc0dc67ac1a` |
| 148 | `def` | [sigmaCongrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrright.md) | 772 | `declaration-track:3c7f4b8180609a97eaa93812a08eea0a690fc96c336bc87e67632cac7b1d95c7` |
| 149 | `theorem` | [sigmaCongrRight_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrright-trans.md) | 776 | `result-track:228a2424da8f40c689a42ebd90707825505de2a82165f8ed7e949f9cc3aff788` |
| 150 | `theorem` | [sigmaCongrRight_symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrright-symm.md) | 782 | `result-track:a92911c55d9f8d5405a4bca3183cdc9f37dc9fd915b0c3177a43680880104709` |
| 151 | `theorem` | [sigmaCongrRight_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrright-refl.md) | 787 | `result-track:c8bc32c82132a368d8b05953b731c756acde145985b4862021e512b999a11bbc` |
| 152 | `def` | [sigmaCongrLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrleft-source-edition-2.md) | 795 | `declaration-track:a91029fb8fabce6584a80511e1e6048b78c9755febc7c9e003e40b1f155144eb` |
| 153 | `def` | [sigmaCongrLeft'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongrleft.md) | 812 | `declaration-track:6595b8669674d043cb840a9061e932433e4da8eee0c93d65ad382e774bc1b8c9` |
| 154 | `def` | [sigmaCongr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmacongr.md) | 818 | `declaration-track:1b4ce225a7c6d3c2bf5accc8770b1e47de270e0362d765761320a41290db0ad5` |
| 155 | `def` | [sigmaEquivProd](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmaequivprod.md) | 825 | `declaration-track:c2672af7eb9918049490cd4e8642bebfd2fccd3eb80894984fff898b54485d37` |
| 156 | `def` | [sigmaEquivProdOfEquiv](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmaequivprodofequiv.md) | 833 | `declaration-track:1914301a88353dc74c248ef8100a2b259202a42a881b6ad732a599f508691ca7` |
| 157 | `def` | [sigmaAssoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/sigmaassoc.md) | 838 | `declaration-track:f944ec755255b27da1fd790f25052627f10c9234d44c0c48532a257925f9b2b7` |
| 158 | `theorem` | [exists_unique_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/exists-unique-congr.md) | 848 | `result-track:fed675a955075eed405f6899e8412dba60caa0e045911064067598de8625120a` |
| 159 | `theorem` | [exists_unique_congr_left'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/exists-unique-congr-left.md) | 857 | `result-track:1e340d43cee906854ea434fac1ad3c0d1d23ae6ac882a2b132e36ec75c1649be` |
| 160 | `theorem` | [exists_unique_congr_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/exists-unique-congr-left-source-edition-2.md) | 861 | `result-track:d6553f2ebdd72574b31c3a2fadc200e7bad34be6eebc320a34f18d0ed17b3565` |
| 161 | `theorem` | [forall_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/forall-congr-source-edition-3.md) | 865 | `result-track:7ad7e9d828d2e1c3f95ad7857356e4b35d7fa69c5b2d0c7ccc33acdf364d1b76` |
| 162 | `theorem` | [forall_congr'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/forall-congr-source-edition-2.md) | 872 | `result-track:58f5db8b99c4101f949049e6201dfa8da3ff176ed95e58643c6b890535707dff` |
| 163 | `theorem` | [forall₂_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/forall-congr.md) | 884 | `result-track:2eea131a8aa2103df383fa644b2280f33856cc7be78e14e69620fe0196bd00b3` |
| 164 | `theorem` | [forall₂_congr'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/forall-congr-source-edition-5.md) | 889 | `result-track:ae2e44e2106a3c27f7fa918769f28bcf5811e67398867e9b85304225c8832d89` |
| 165 | `theorem` | [forall₃_congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/forall-congr-source-edition-4.md) | 894 | `result-track:a518ec150c9ec7512fc93e651f0bdfd615a2e3f0e972bebebce94c1d3e48fc44` |
| 166 | `theorem` | [forall₃_congr'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/forall-congr-source-edition-6.md) | 900 | `result-track:c34f9549c81f054727dd377d57eefb0287558b236b2be11ba187cdf7bce5cb73` |
| 167 | `theorem` | [forall_congr_left'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/forall-congr-left.md) | 907 | `result-track:1f051db78b6dedb82583edff47e31d551d77e8934e8252749f53d6d7ff07bc27` |
| 168 | `theorem` | [forall_congr_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/forall-congr-left-source-edition-2.md) | 911 | `result-track:7116ab39a973656be8f8ec08f69282eabd9835b03f5e201ac8bd6eb7c0059985` |
| 169 | `theorem` | [exists_congr_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/exists-congr-left.md) | 915 | `result-track:94c5fb25f732fddcc2667f6a0614e8203f2c3e93d292173d11db12332e110b20` |
| 170 | `def` | [congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/congr-source-edition-2.md) | 926 | `declaration-track:faf6d5b97083b65e503ec7d1434235a5ce8a67ff31f10d04a182340d2e0c06b7` |
| 171 | `theorem` | [congr_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/congr-mk.md) | 936 | `result-track:7a73a1fb2d88541b6e131436f319d67ce7ca473eb0a20760723462ec2001e7b0` |
| 172 | `def` | [congrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/congrright-source-edition-2.md) | 943 | `declaration-track:db8c617e1ac515c94e61a51a4741c0ab9711ef01f7b323caa2f93ddafa22f227` |
| 173 | `def` | [congrLeft](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/congrleft.md) | 949 | `declaration-track:9c9600ed6c7ceaf736c41a380dff48e600dedf55d4aa5caeac20f80e5263d618` |
| 174 | `def` | [congr](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/congr.md) | 960 | `declaration-track:1907b4cf34ef3f1c6d9efb6089f7ebce76ced4f8714c52b0e69a5f942b6fcab0` |
| 175 | `theorem` | [congr_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/congr-mk-source-edition-2.md) | 965 | `result-track:80f40154b83d1d4b58b8b5bf7fdfdd8e39d623fbdea7b68360a9b89eb2f127c1` |
| 176 | `def` | [congrRight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivDefsExtIff.lean/declarations/congrright.md) | 972 | `declaration-track:6b503fd0ffe2842d5a609ff66cdefddbdda0e1094afc8587f9a6db0aac230ffc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=007832dcb2b90789234d691835d7aa6920588f1c44053dea3320fdf1f9427f28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant7a90b6394c236ec9d3e87b8ff763b09229c2e08ab458a4d525b482d66242ac7f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
