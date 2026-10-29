# Verification target: Algebra Group Basic Namespaced Bit0 Add

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c84fc623276b0799fb14c49f15281bddacae8efe",
  "lexical_observation_count": 157,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6aec1d35b69077834821c1042cf3a450fcd89f83e9c483857e3710f73e8d320b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c84fc623276b0799fb14c49f15281bddacae8efe`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant6aec1d35b69077834821c1042cf3a450fcd89f83e9c483857e3710f73e8d320b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant6aec1d35b69077834821c1042cf3a450fcd89f83e9c483857e3710f73e8d320b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [comp_mul_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/comp-mul-left.md) | 40 | `result-track:9aa31fa7f183ad95f8b0a5b08b718f86c9f71ec90e67ce31dfed4610de0cbe20` |
| 2 | `theorem` | [comp_mul_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/comp-mul-right.md) | 51 | `result-track:f1e02a3aeeaf99faa916afb6ec278a5af645344e8c117bcdb7e38dd0a2df0d52` |
| 3 | `theorem` | [ite_mul_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/ite-mul-one.md) | 64 | `result-track:48aefbaca7904744692c80bad0c1e4281f1b5bde70188c9e8a09f79d623e7c7a` |
| 4 | `theorem` | [ite_one_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/ite-one-mul.md) | 71 | `result-track:cd98206ed0476f2fa251c594fafa5323719bf623f37088d80c43916abe449ac6` |
| 5 | `theorem` | [eq_one_iff_eq_one_of_mul_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-one-iff-eq-one-of-mul-eq-one.md) | 78 | `result-track:f03c17b199c761dd8c20227abfb5c14ff8b6831c726caaea8cba1aa1c48983c8` |
| 6 | `theorem` | [one_mul_eq_id](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/one-mul-eq-id.md) | 84 | `result-track:7c7b3e0cd882848ff1b11587f914f451d90e08c6c91afb04fe55484b46184b68` |
| 7 | `theorem` | [mul_one_eq_id](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-one-eq-id.md) | 90 | `result-track:6a4a56d89ebc92873bebbbfa2c19de2c41929eb445d80a74c4a184f3a112a5e1` |
| 8 | `theorem` | [mul_left_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-left-comm.md) | 102 | `result-track:2d082b92803baa87d100c1f8aa7eb18829397f35e7e479fddd22ed22af32b0fe` |
| 9 | `theorem` | [mul_right_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-right-comm.md) | 108 | `result-track:686dd7b4839104b89dad504fc79db1bde837e1cd176627783db2d9354e6214f5` |
| 10 | `theorem` | [mul_mul_mul_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-mul-mul-comm.md) | 114 | `result-track:8612d1a1c3bc219a4fe8662035f6a7247bac597bf9916dca45a3cf8f17c840ea` |
| 11 | `theorem` | [mul_rotate](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-rotate.md) | 120 | `result-track:1825a97396f8e81768ed9d898b6b1573def78c7d37288df299d056940baf98a5` |
| 12 | `theorem` | [mul_rotate'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-rotate-source-edition-2.md) | 126 | `result-track:41fd0c2a2d49e6e0353f40e594c86e1f0946f1742e12e7df2503f3ffd1ca682b` |
| 13 | `theorem` | [bit0_add](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/bit0-add.md) | 138 | `result-track:98e85934aad46f61863b71dd84dac0cf41d0432faede3cbac8bb38eff2791389` |
| 14 | `theorem` | [bit1_add](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/bit1-add.md) | 142 | `result-track:4b95519ea3b8d6cec1d4d875a38a278d404e2782f3d9ff84e5b7e34c3c9f71b8` |
| 15 | `theorem` | [bit1_add'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/bit1-add-source-edition-2.md) | 146 | `result-track:87c90ee71865a1ecde392ba7653e26ee903f7217ae900066978c944c4f4fb757` |
| 16 | `theorem` | [bit0_zero](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/bit0-zero.md) | 158 | `result-track:c92f1364f4dd628a957742bc690939ad13c3cf050a8ffd987efee8793120d95f` |
| 17 | `theorem` | [bit1_zero](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/bit1-zero.md) | 163 | `result-track:cc93d93991d3f9423c6fae681a121256d028ee046ca11268bcc382dc78d942fa` |
| 18 | `theorem` | [inv_unique](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-unique.md) | 175 | `result-track:936205136d6351bd95a75a8e3bd2d441991e07e58b06255090ce8edae7a9ca77` |
| 19 | `theorem` | [mul_right_eq_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-right-eq-self.md) | 187 | `result-track:dfc7a11a2b3b73e61a030c379b182bfd4e792ddfaba97c0d3212777ad3181f7f` |
| 20 | `theorem` | [self_eq_mul_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/self-eq-mul-right.md) | 194 | `result-track:d82a72fa92f13cdc6b4159545a335f4e5f22d0dc9262b5352acb16ed372497f1` |
| 21 | `theorem` | [mul_right_ne_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-right-ne-self.md) | 200 | `result-track:0245bf2e1366e78a69705c55ed41f6460edc9535e5099306066c75ca3ad53fec` |
| 22 | `theorem` | [self_ne_mul_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/self-ne-mul-right.md) | 205 | `result-track:934134b2ec0645127df3707f3e4e1fb16cc347fad04cedb49da5917d5f06c65c` |
| 23 | `theorem` | [mul_left_eq_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-left-eq-self.md) | 216 | `result-track:4f06c2815788f1e0ea92fe4cf441b1b1b99e69859215e83f788f4a662bb313f4` |
| 24 | `theorem` | [self_eq_mul_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/self-eq-mul-left.md) | 223 | `result-track:38ca33c813cb627e326b36a2f2a447e3193631ffc5ffd9ce1127d3f9e6dc2d81` |
| 25 | `theorem` | [mul_left_ne_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-left-ne-self.md) | 229 | `result-track:9c501f9d6e73bdd10ddbfaf3b634afc80ff46789edcd68ef33d6a3a7020b00e4` |
| 26 | `theorem` | [self_ne_mul_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/self-ne-mul-left.md) | 234 | `result-track:4dd4503be06a913aa9ecf9ed22edef5f7ac994991474b3b6bd27a663bf9e1ed9` |
| 27 | `theorem` | [inv_involutive](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-involutive.md) | 245 | `result-track:500fa22e0c1457a7cd7177cb1cff99da963dad4363e5296eea2b9e3499be588a` |
| 28 | `theorem` | [inv_surjective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-surjective.md) | 251 | `result-track:18021a73736fb6fcc9d9daa99545b8b614c3148cbc6897d208d092bf8f498cbb` |
| 29 | `theorem` | [inv_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-injective.md) | 257 | `result-track:478459736802a7c38b1b1a4b124813b4bd19dd8f17763e752bd5ce097fc3a6c2` |
| 30 | `theorem` | [inv_inj](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-inj.md) | 263 | `result-track:a3b99b04669e82b6476c1cc05208faaef5ffef35d80993cf9f7ea0ebc05225b3` |
| 31 | `theorem` | [inv_eq_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-eq-iff-eq-inv.md) | 269 | `result-track:16fa1e463b1dadfc25c235ca15eb8616220792c6f6565caeef9d85eb08111a34` |
| 32 | `theorem` | [inv_comp_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-comp-inv.md) | 277 | `result-track:dd57d428ce84c7696caa4f12d4e87534f8326566a8659496623708ff3d0f67c7` |
| 33 | `theorem` | [leftInverse_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/leftinverse-inv.md) | 283 | `result-track:6e421c97247d46250e2212a2e2a5abeccbc56a90b49af260a649cfe418b0cee5` |
| 34 | `theorem` | [rightInverse_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/rightinverse-inv.md) | 289 | `result-track:9d72d18164d2b988a7e634ff6bce2600669918ea1a56ee7fdc297e7948c8e7ad` |
| 35 | `theorem` | [inv_eq_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-eq-one-div.md) | 301 | `result-track:5a0bb0d745ccf410534c304ee198a93fbeed95b214fe1be9d3a1d01fe5e151a4` |
| 36 | `theorem` | [mul_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-one-div.md) | 306 | `result-track:4e8a3cbf4990774f030cf7c90b0ecd32023ba08ebfa8c14a18d37e9761fe4269` |
| 37 | `theorem` | [mul_div_assoc](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-assoc.md) | 312 | `result-track:6c95515d1f9459d13d15b40a8b773e698e34e80cf0636a48d2e201e57f504b55` |
| 38 | `theorem` | [mul_div_assoc'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-assoc-source-edition-2.md) | 318 | `result-track:bb291dc8f43b63258544d630443dda8fec49825da59a2b0e634e364af735859a` |
| 39 | `theorem` | [one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/one-div.md) | 324 | `result-track:3deae4c3f90ea93f1b3793e6f647cb7be36b0a92a5fa6771c2e541852fbdf91e` |
| 40 | `theorem` | [mul_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div.md) | 330 | `result-track:2a532126ae7c297ae4b02ea75e2fab526a7a8ed045e02f68844e9d1f4b88f7de` |
| 41 | `theorem` | [div_eq_mul_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-mul-one-div.md) | 335 | `result-track:12a6afe8d997bbeb11222487173aae28f0159fa526b3a08bfc0d8b6f2a6f2f26` |
| 42 | `theorem` | [div_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-one.md) | 346 | `result-track:5ba4c34d935fd722a3f3ea33ac1aa9fa56adb60114a2c3e75971bed769d336b5` |
| 43 | `theorem` | [one_div_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/one-div-one.md) | 351 | `result-track:cd17484c341fc70ca616b7715b9e86764dcc1638a3f9116111bcaf482c1fc6e4` |
| 44 | `theorem` | [inv_eq_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-eq-of-mul-eq-one-left.md) | 365 | `result-track:3dd4ff4b246e2cdf760704b8e1321933c59456ba683dfc86b1f24c865e8f0a62` |
| 45 | `theorem` | [eq_inv_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-inv-of-mul-eq-one-left.md) | 371 | `result-track:cdf582f8a11dd29bbcd49fd3394d891748480ff09df57f01466e951b59fd82a2` |
| 46 | `theorem` | [eq_inv_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-inv-of-mul-eq-one-right.md) | 377 | `result-track:b50a9a36ea9bcee5ba96ee04d2c2deda54e31dbab5b3e3a51eaed08787ea0807` |
| 47 | `theorem` | [eq_one_div_of_mul_eq_one_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-one-div-of-mul-eq-one-left.md) | 383 | `result-track:3bb721cf0eaa0ea3a6360217c90a5543681a08d6d5650ab8ba96a115eea95b3f` |
| 48 | `theorem` | [eq_one_div_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-one-div-of-mul-eq-one-right.md) | 389 | `result-track:51add50bd7efad3d5ed0ee6442cc042806d349332e48bdfdeb0eb822587ecf8a` |
| 49 | `theorem` | [eq_of_div_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-of-div-eq-one.md) | 395 | `result-track:45709e9d61e60222dcaf3511b34e850957436605d7723c9c0934b7a7247f920b` |
| 50 | `theorem` | [div_ne_one_of_ne](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-ne-one-of-ne.md) | 401 | `result-track:dac7b5c18fa2c3c0201ea8b327068df78c6596a1d8e90e1778522807ee2eb1d7` |
| 51 | `theorem` | [one_div_mul_one_div_rev](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/one-div-mul-one-div-rev.md) | 409 | `result-track:34ddf8465bc13f2429b6427f75ab1aece613b4daf06fb643d00f97c3fad566a2` |
| 52 | `theorem` | [inv_div_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-div-left.md) | 414 | `result-track:47127de92dc9dfdfcc2e0fc9073077255469e634b8ec1bab96c8b3157afdfade` |
| 53 | `theorem` | [inv_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-div.md) | 419 | `result-track:4ca406e538540a4a416328238b35d9547c05de4048b7bae0e127552a7a4d9d7a` |
| 54 | `theorem` | [one_div_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/one-div-div.md) | 424 | `result-track:4240541fe1f91267ddc2ed894cce46540f437fa5c445fca1e433f6f6a62e8d0f` |
| 55 | `theorem` | [one_div_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/one-div-one-div.md) | 429 | `result-track:b16822301e19223358b33c33355abb3fe55a0ac73400d10064dfbfb250ce2cee` |
| 56 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/instance.md) | 434 | `declaration-track:e5d4fce29a99f7b55490acd50987a27dabc8baa5949018bd8dcd232fc083bbfc` |
| 57 | `theorem` | [inv_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-eq-one.md) | 441 | `result-track:45589bb7328174a2386da1297a4e4bcd72b7ecc30ed3b78af67b3d10eb783e70` |
| 58 | `theorem` | [one_eq_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/one-eq-inv.md) | 447 | `result-track:fb5eacde7e9968d9e09532fb48834c50f8da06d5ffc896f2f2e41eb7cb4b74e8` |
| 59 | `theorem` | [inv_ne_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-ne-one.md) | 453 | `result-track:1b57af75d1d04f5345ae65684a26cba4c07d1d170eb298ccad80ffe87fafb486` |
| 60 | `theorem` | [eq_of_one_div_eq_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-of-one-div-eq-one-div.md) | 459 | `result-track:bb61d801ac231a7be3313af0ff4dfa96ff2c0733d627c590706e4ae254262379` |
| 61 | `theorem` | [div_div_eq_mul_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-div-eq-mul-div.md) | 467 | `result-track:1803e68435c454c9a941fdc07530cd2cbc3d9c25ea32674ba0a7601da5bfe25a` |
| 62 | `theorem` | [div_inv_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-inv-eq-mul.md) | 472 | `result-track:6e1996c0eeed84b586a1971c2f0ed3502296713c39522bd42622d0bce5324e0b` |
| 63 | `theorem` | [div_mul_eq_div_div_swap](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-eq-div-div-swap.md) | 477 | `result-track:0f33b5bbb9b5986486a1e90e1fa4759eca548de2d7a9179f417e6cb68d2ca918` |
| 64 | `lemma` | [bit0_neg](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/bit0-neg.md) | 488 | `result-track:85d45614e36a09568255248c0674d56485818016d92f49fc2012515428437e03` |
| 65 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-inv.md) | 500 | `result-track:d00dbd78c20bc4d7afef9d3b8753ea3a742dc2dac6e06fb4565a2150e959aee1` |
| 66 | `theorem` | [inv_div'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-div-source-edition-2.md) | 505 | `result-track:7b639e9945d486131b3a7d21d6b118cc93a95bdf74a16701f8fe93028d5413a4` |
| 67 | `theorem` | [div_eq_inv_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-inv-mul.md) | 510 | `result-track:f3e71801288af6ccc58499a10bd664542d5c95915bfe8cbf5164289c4f5bc631` |
| 68 | `theorem` | [inv_mul_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-mul-eq-div.md) | 515 | `result-track:abd47b0c6e8faa445c16cbb3aa19651b070e75ddd7b56c99553345cdce50270f` |
| 69 | `theorem` | [inv_mul'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-mul.md) | 520 | `result-track:276c1afa087816627fb3cf0c555ee112d2c1a2e4de81a111c54b9ffef1fb0d47` |
| 70 | `theorem` | [inv_div_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-div-inv.md) | 525 | `result-track:f27ea5b087ce6c7b8ea219a7054cff32a5917dace9c8df2d0607a39be4dbbce7` |
| 71 | `theorem` | [inv_inv_div_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-inv-div-inv.md) | 530 | `result-track:28f675845a2a715cc71f6c9fa4352c4b41dcece9d5db5bbbeb1a30e0c1998d1e` |
| 72 | `theorem` | [one_div_mul_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/one-div-mul-one-div.md) | 535 | `result-track:228c941dc4fe0f8d4abc78c573925df3807db896136c10848c2546c456765a3c` |
| 73 | `theorem` | [div_right_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-right-comm.md) | 540 | `result-track:58316f82a0719eb7b3491da95c43409695e672f80781a319932cd86479625aae` |
| 74 | `theorem` | [div_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-div.md) | 545 | `result-track:05bb044efb0d3618d616f0ea7fc20f6f84e645e378f7f2cde4ff2d284c124aa1` |
| 75 | `theorem` | [div_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul.md) | 550 | `result-track:b59319c3e18f02a22bf21437c0e202c8f19d81d487bb1a3ba607b2d0735837e4` |
| 76 | `theorem` | [mul_div_left_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-left-comm.md) | 555 | `result-track:b7159844b3f1a707db00f74d91140ed95569071afb64ad008dd620d0fb485070` |
| 77 | `theorem` | [mul_div_right_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-right-comm.md) | 560 | `result-track:0855b6f621c15f7d18caab796efe8ecd58d6f35e65fd5c3d9e6df14228eccc67` |
| 78 | `theorem` | [div_mul_eq_div_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-eq-div-div.md) | 565 | `result-track:d70f6bcbb408e7a032f6093fa9a3f0b3aff7a928c11d1ee6eeab40d98ea67292` |
| 79 | `theorem` | [div_mul_eq_mul_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-eq-mul-div.md) | 570 | `result-track:e6f7a59ee844461997d9952cea5cac2ae26cbbe39742b5b3df7311b8e6a47cba` |
| 80 | `theorem` | [mul_comm_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-comm-div.md) | 575 | `result-track:ae66e63d909b303810b77b76734e5a14b6c15ef86c629e88ba2f81b3e6d1f960` |
| 81 | `theorem` | [div_mul_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-comm.md) | 580 | `result-track:74f587db11a9e9f5468d9bbe7e9505a36df0925329a0d5bbb7ae3766ccf38930` |
| 82 | `theorem` | [div_mul_eq_div_mul_one_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-eq-div-mul-one-div.md) | 585 | `result-track:f6b2550b9b9e9ec13b4e88e8f03ec7e7615011f6c883947a970b9f4217bb702a` |
| 83 | `theorem` | [div_div_div_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-div-div-eq.md) | 590 | `result-track:af502fed9b36b06a775f564558ac218ec99a4c528560b16921d33c176f17bbc7` |
| 84 | `theorem` | [div_div_div_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-div-div-comm.md) | 595 | `result-track:2d0a96e4977fb24f6c6782fdbdcbb1df3fcf60dd2aab7f4ccb653b0dbea20c6a` |
| 85 | `theorem` | [div_mul_div_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-div-comm.md) | 600 | `result-track:b851e7155ceb8ae7ad98fda73269b210f21a0bd0712c6766c090f80bcf0f6fbe` |
| 86 | `theorem` | [mul_div_mul_comm](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-mul-comm.md) | 605 | `result-track:87132e1be0f779bcfb31a7b3a8579989cf9d6b18266d660101071afd4d1571ca` |
| 87 | `theorem` | [div_eq_inv_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-inv-self.md) | 616 | `result-track:00a9097b1af10f046f0562838848a400dbf13da2cc78d96150099c631caf3529` |
| 88 | `theorem` | [mul_left_surjective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-left-surjective.md) | 621 | `result-track:6a309d2217c66f258bcedcd28116e26a9a2dc71a9fd7cf6d053cd8098b98cdf3` |
| 89 | `theorem` | [mul_right_surjective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-right-surjective.md) | 627 | `result-track:9e66b77fe66268db1911dc4f44a7b86af48cb833825372047640b5e918d088ff` |
| 90 | `theorem` | [eq_mul_inv_of_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-mul-inv-of-mul-eq.md) | 633 | `result-track:24acf2bf318edeba04417954506a9af24be50f3ba0714f9efcb21b157f99881c` |
| 91 | `theorem` | [eq_inv_mul_of_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-inv-mul-of-mul-eq.md) | 638 | `result-track:3016253bc871b61e80ddec9b257c42fc099c220e5beebf49450a6913dfefbe76` |
| 92 | `theorem` | [inv_mul_eq_of_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-mul-eq-of-eq-mul.md) | 643 | `result-track:74a68444bf6a1a28c39e2f690338ed2e184080244d6b71429b9f2de30204af76` |
| 93 | `theorem` | [mul_inv_eq_of_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-inv-eq-of-eq-mul.md) | 648 | `result-track:e69aa8ae38de47a5178129f149d219d7c384470533591d5d955ac642a18912a1` |
| 94 | `theorem` | [eq_mul_of_mul_inv_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-mul-of-mul-inv-eq.md) | 653 | `result-track:490c61032a0acb09534c0deec04b03c26b68ad09907daf7ba6a99f6056242ebc` |
| 95 | `theorem` | [eq_mul_of_inv_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-mul-of-inv-mul-eq.md) | 658 | `result-track:a6686c67fb6c1c4c5dad090ffe327a5faf69120ccd9854b5b12f89c92173488e` |
| 96 | `theorem` | [mul_eq_of_eq_inv_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-eq-of-eq-inv-mul.md) | 663 | `result-track:435027797711de3156586cd60c22cf54a550abab85189c3c3cf90c6edc1f6a79` |
| 97 | `theorem` | [mul_eq_of_eq_mul_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-eq-of-eq-mul-inv.md) | 668 | `result-track:235dc810af214d30179a9edf209f1c52ed0c0530deceb4ea38aee2d7c16a219d` |
| 98 | `theorem` | [mul_eq_one_iff_eq_inv](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-eq-one-iff-eq-inv.md) | 673 | `result-track:94bb517490f86a410a42d940f9945be5ca9bbb8384c6c04d7528a78175660d65` |
| 99 | `theorem` | [mul_eq_one_iff_inv_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-eq-one-iff-inv-eq.md) | 679 | `result-track:e6465206c6427dad3b8684831606b8c9e3ade272c1596d2f62718e711b144efa` |
| 100 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-inv-iff-mul-eq-one.md) | 685 | `result-track:59e436ef9634da540ecc71ab6c5aefde60665623d69f84657bbdf1156afd5c05` |
| 101 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-eq-iff-mul-eq-one.md) | 691 | `result-track:d52c9078c3d3ad7bc990f31c77145f6a5351be84679de6b88e996957b2759a54` |
| 102 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-mul-inv-iff-mul-eq.md) | 697 | `result-track:9fbb281355a5527f9e21276e8f059c7dac482c237af21fc8914398394bbdd2a9` |
| 103 | `theorem` | [eq_inv_mul_iff_mul_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-inv-mul-iff-mul-eq.md) | 703 | `result-track:9a2aef2845c882ac83cea6e45f6369ec5e4e86cb2baa9c7804f537a0855fee87` |
| 104 | `theorem` | [inv_mul_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-mul-eq-iff-eq-mul.md) | 709 | `result-track:c4ba5d496a838be419aaa9951ccc279048e0793ba070bc3972d1cb031fe39a39` |
| 105 | `theorem` | [mul_inv_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-inv-eq-iff-eq-mul.md) | 715 | `result-track:4de86355e7db69e70a8cecd3eb212c83a02d78593b59434e3fb5cda653d0e0fd` |
| 106 | `theorem` | [mul_inv_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-inv-eq-one.md) | 721 | `result-track:6324e0f8f389183c1dd9930047cd1e7fc10aa8283e51c7844f708d20e3c9499c` |
| 107 | `theorem` | [inv_mul_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/inv-mul-eq-one.md) | 726 | `result-track:326a6db0e5054d5c876505135421f3107c2a40be21284adcae78b21c41da1e6e` |
| 108 | `theorem` | [div_left_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-left-injective.md) | 731 | `result-track:2ab9cf0e655222c1d5a3aca4f71876efa0ded7f050b7b0ff756f0cd1789d358f` |
| 109 | `theorem` | [div_right_injective](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-right-injective.md) | 739 | `result-track:98719bb2bb6e047741f414a4844ff2c71d876053ad52012c0595f82f1384c809` |
| 110 | `theorem` | [div_mul_cancel'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-cancel.md) | 747 | `result-track:0a14e900d0703108194e2dd1858d4bc4ff7cef0416b2cb2b7283d7f3878d3dd2` |
| 111 | `theorem` | [div_self'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-self.md) | 753 | `result-track:78432eead7d3bb78fd55f4e830a3b94050b490d091e2b9a0a31c5b7ad6c60f4d` |
| 112 | `theorem` | [mul_div_cancel''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-cancel.md) | 758 | `result-track:36a63e9117782cff68012eb29f265d4d95b8e23eefab2f4046af3976282a1caa` |
| 113 | `theorem` | [div_mul_cancel'''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-cancel-source-edition-3.md) | 764 | `result-track:d70e65531bbe08a2f147b66ba7de5b8b4b744a17c3fe71e617c9630716ace890` |
| 114 | `theorem` | [mul_div_mul_right_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-mul-right-eq-div.md) | 769 | `result-track:03ce1047a0ef978a361674f6a93ef824c9e103edce94d26346418c1b68f9927a` |
| 115 | `theorem` | [eq_div_of_mul_eq'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-div-of-mul-eq-source-edition-2.md) | 775 | `result-track:a6214fbc454af331fd4e913732727d2deaf6d2af7330545d97976300f173642c` |
| 116 | `theorem` | [div_eq_of_eq_mul''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-of-eq-mul-source-edition-2.md) | 780 | `result-track:8302538823180955ebbc8aa80513b261bfdde2244de2043fd01c956e7dacb360` |
| 117 | `theorem` | [eq_mul_of_div_eq](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-mul-of-div-eq-source-edition-2.md) | 785 | `result-track:82b6c1ecdbfd773dfbfd5933f74ec9d8d3c9a0a51cd10779fc8e17fd1f1c0805` |
| 118 | `theorem` | [mul_eq_of_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-eq-of-eq-div-source-edition-2.md) | 790 | `result-track:7e09c75337f1fa1fc13b80ac0418cf7e017d46bb522b71efcb1375c2635e0092` |
| 119 | `theorem` | [div_right_inj](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-right-inj.md) | 795 | `result-track:2925476f239d40f71ed3dca3193264628067351046763ad72c6c9edd9fe062ce` |
| 120 | `theorem` | [div_left_inj](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-left-inj.md) | 801 | `result-track:476e1b4473d69ac6ec781351217150929ce84c4b9ceab6c4765db3e79e870304` |
| 121 | `theorem` | [div_mul_div_cancel'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-div-cancel-source-edition-2.md) | 808 | `result-track:a1189e2b5872e517d851cce7ab26d1f5e737c953ebc26a6dd7ddf3e98069833b` |
| 122 | `theorem` | [div_div_div_cancel_right'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-div-div-cancel-right.md) | 814 | `result-track:c600f05a3bde16dc1dd0043d76024d8e1845d9110340a6933ba7aaa7b3efbb4f` |
| 123 | `theorem` | [div_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-one.md) | 820 | `result-track:8c0f9233d90ef70a883d0efe2ec5cbe8b4590c2798d5aedce74fb15a476ef9f8` |
| 124 | `theorem` | [div_ne_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-ne-one.md) | 832 | `result-track:e1a8041ef1e043511471ec2ea752f0c91bc50ee6e2bcfd5ccf8c8f44021028df` |
| 125 | `theorem` | [div_eq_self](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-self.md) | 838 | `result-track:e4b167a98d76c0d04dddb4038aae3131f2eab092fd8a7a24432599f7398895e8` |
| 126 | `theorem` | [eq_div_iff_mul_eq'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-div-iff-mul-eq.md) | 843 | `result-track:172ea97a666d87e2f210432f6b3ba47b74d2ec08ce1b1b895db4fa00998f0aa3` |
| 127 | `theorem` | [div_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-iff-eq-mul.md) | 848 | `result-track:9895d2e4b27614c12334544f46354e94343d58e1945ac8fc30b0d5ca24a10dd1` |
| 128 | `theorem` | [eq_iff_eq_of_div_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-iff-eq-of-div-eq-div.md) | 853 | `result-track:61e1b7ea2bcb473d4235285fc79499f911215b4ee4a1b6601bb7a0aa9fe0f258` |
| 129 | `theorem` | [leftInverse_div_mul_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/leftinverse-div-mul-left.md) | 859 | `result-track:2d8b7ddd2f3d16c9be104948fc7ea6187eb17f47a9ced50caeafb3ef44964728` |
| 130 | `theorem` | [leftInverse_mul_left_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/leftinverse-mul-left-div.md) | 865 | `result-track:90aecc84812853558416d8066cf366711de39d3ec7b3df08336b1e11133d91bf` |
| 131 | `theorem` | [leftInverse_mul_right_inv_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/leftinverse-mul-right-inv-mul.md) | 871 | `result-track:bc16a5d943cf11321d04155b8b8dfa442374820df3c629c306c2b9669e841418` |
| 132 | `theorem` | [leftInverse_inv_mul_mul_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/leftinverse-inv-mul-mul-right.md) | 878 | `result-track:6e5d7eb8c51f1beaf55fd6f3298bc17688e8a6e751690eb8a83765348a1bf551` |
| 133 | `theorem` | [exists_npow_eq_one_of_zpow_eq_one](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/exists-npow-eq-one-of-zpow-eq-one.md) | 885 | `result-track:f886f603f8f53fca5a522ac0f47e5cd9cb4bf2540bf819ef459f34f88fe77485` |
| 134 | `theorem` | [div_eq_of_eq_mul'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-of-eq-mul.md) | 907 | `result-track:21cc7f18c12887380c1e2403a46678e1ef19ce708b9449c82c07a91863abcf7c` |
| 135 | `theorem` | [mul_div_mul_left_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-mul-left-eq-div.md) | 913 | `result-track:b437b32eeeab3b38652aa50506a9f53ae54c9bde5bd800d1f6066f875847f7fa` |
| 136 | `theorem` | [eq_div_of_mul_eq''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-div-of-mul-eq.md) | 920 | `result-track:0f110e5400f74b5fb43d1c1925e439c50def5ca288236f25fa41b9b9239f59eb` |
| 137 | `theorem` | [eq_mul_of_div_eq'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-mul-of-div-eq.md) | 925 | `result-track:7180b3f44e8410fcf64242737904e9e46911836e7ba9037fa64f10018a3a5908` |
| 138 | `theorem` | [mul_eq_of_eq_div'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-eq-of-eq-div.md) | 930 | `result-track:49572f4f9508f2ebc11a323c15b1d6f67cb8ea6673b97d0eb87ede3599b3e33b` |
| 139 | `theorem` | [div_div_self'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-div-self.md) | 937 | `result-track:da470f4e5b57b05d4ba4e99e1fe00e9f101ab884001f8f713c536dea4bf8e071` |
| 140 | `theorem` | [div_eq_div_mul_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-div-mul-div.md) | 942 | `result-track:7cd4e9402691991bcc180726a292557ea4ddd8829aafa1200ca2cb0b308218d3` |
| 141 | `theorem` | [div_div_cancel](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-div-cancel.md) | 947 | `result-track:986f3944dea5eb0a8823737ddf3354619b72337b000076563024c183ec2f35f2` |
| 142 | `theorem` | [div_div_cancel_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-div-cancel-left.md) | 953 | `result-track:5a257ca33f2966cb4a6e4b5a202b1c74b31d8fd23ac1ef70e396d204db35d946` |
| 143 | `theorem` | [eq_div_iff_mul_eq''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/eq-div-iff-mul-eq-source-edition-2.md) | 958 | `result-track:2267a62eac09f851da1c18edca65784edc0965ab1a9f2d5acf0f637f5cc2321f` |
| 144 | `theorem` | [div_eq_iff_eq_mul'](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-iff-eq-mul-source-edition-2.md) | 963 | `result-track:d176b33e6edf8792c7c914d697dc9fdd027ad0386e8c822c242cd2ad1276b59e` |
| 145 | `theorem` | [mul_div_cancel'''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-cancel-source-edition-2.md) | 968 | `result-track:50aef5067611666a263ec32fef1d0648a6826c1b8d3d5e7ca2bc8be249070473` |
| 146 | `theorem` | [mul_div_cancel'_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-cancel-right.md) | 973 | `result-track:b9dd3d700a7cb754ce527c81920b1d8b51bfe18090bfe3a04d7a08dfde95e224` |
| 147 | `theorem` | [div_mul_cancel''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-cancel-source-edition-2.md) | 979 | `result-track:754a7bac6e50ff45ddb00195cd4f583096481d0e6ffbb3bcfcf2ab982b67985c` |
| 148 | `theorem` | [mul_mul_inv_cancel'_right](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-mul-inv-cancel-right.md) | 987 | `result-track:2411d3b1fd7148fbf85184326d7776db9a11aaa8b0497f9d3ef8052226008528` |
| 149 | `theorem` | [mul_mul_div_cancel](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-mul-div-cancel.md) | 993 | `result-track:df7b5c00f9094d5aa9914667928e4168f1a2813001032c76022c64d24d1a010d` |
| 150 | `theorem` | [div_mul_mul_cancel](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-mul-cancel.md) | 999 | `result-track:64fa828dc94dd5fd8cf5f3acc8e54040858f97849d553260c722d75d22debd26` |
| 151 | `theorem` | [div_mul_div_cancel''](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-mul-div-cancel.md) | 1005 | `result-track:6f9f722327e045fff1eb8b309072ff9a57a93f56d5efcd7e328a89f8e4753aee` |
| 152 | `theorem` | [mul_div_div_cancel](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/mul-div-div-cancel.md) | 1011 | `result-track:d3581c2aa8ef0686078f02ed250ef1db2b311bc457934ec1627658263f4de79f` |
| 153 | `theorem` | [div_div_div_cancel_left](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-div-div-cancel-left.md) | 1017 | `result-track:82e2b60c04d7aa6a2432f654e14047f431a4f2b867b4fadac027dc0bb9864fc6` |
| 154 | `theorem` | [div_eq_div_iff_mul_eq_mul](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-div-iff-mul-eq-mul.md) | 1023 | `result-track:c3c2b67dc0d0c7c57b872eb3ef6012ea7914df304a52a7a7d4dbb91ddc382ae6` |
| 155 | `theorem` | [div_eq_div_iff_div_eq_div](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/div-eq-div-iff-div-eq-div.md) | 1030 | `result-track:a9e6515e9b14c9f1594e810b05c503e0d93e45af5e2143293626fa488d12bcff` |
| 156 | `lemma` | [multiplicative_of_symmetric_of_isTotal](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/multiplicative-of-symmetric-of-istotal.md) | 1042 | `result-track:a2082b4592cd1ced268a9ca4e16e790ee60ec8e3df66c0d0bd9303b73ed4da7e` |
| 157 | `theorem` | [multiplicative_of_isTotal](../../../../GroupTheoryAndGeneralizations/AlgebraGroupBasicNamespacedBit0Add.lean/declarations/multiplicative-of-istotal.md) | 1068 | `result-track:7253b48bd439b6597e735dbed295ff96e84b47ff22de2ece82b355cbad8bf9db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc08412bb57d5790fda3f9c317dde38f6a862f58d1f4789256591b95bb19455f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant6aec1d35b69077834821c1042cf3a450fcd89f83e9c483857e3710f73e8d320b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant6aec1d35b69077834821c1042cf3a450fcd89f83e9c483857e3710f73e8d320b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
