# Verification target: Tuple Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75f997b1c4605ced1d3ce7b55549c4a853b4362e",
  "lexical_observation_count": 197,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75f997b1c4605ced1d3ce7b55549c4a853b4362e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Insert` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/example.md) | 99 | `declaration-track:869a013476dfa313a8b25a10e5ffad3fc5f2f13460bdf15522e6b75268575389` |
| 2 | `theorem` | [tuple0_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/tuple0-le.md) | 101 | `result-track:de088dca2b2bc9c188411183941c7f382f0279576e303cf58db42b6a55769adf` |
| 3 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/tail.md) | 108 | `declaration-track:44b37063b97524db10305b33f3438eff99fd207b73e697399b0af4c58a75ce7a` |
| 4 | `theorem` | [tail_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/tail-def.md) | 110 | `result-track:a46debfb1b2691aafdb38c5023399bdd056f233360b94eca4631bf49abe9db06` |
| 5 | `def` | [cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons.md) | 115 | `declaration-track:2fd5338cd0f5b1f27020e72b6d457d831f303b1070c6950c6c354d082b00e995` |
| 6 | `theorem` | [tail_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/tail-cons.md) | 118 | `result-track:933980566e62c5e9f78351211e93bbc8c88214ffa69e8764d14e88424621ee2c` |
| 7 | `theorem` | [cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-succ.md) | 122 | `result-track:c9820622e46855f1c20a626b993a6151e812ccfbd85a5884cc01de8e738e2632` |
| 8 | `theorem` | [cons_comp_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-comp-succ.md) | 125 | `result-track:74573be103bf8375bccc52fc6c78ed1c71d7ab29ff8b148805ae835d93967482` |
| 9 | `theorem` | [cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-zero.md) | 130 | `result-track:6abb278be27753d7dd847dd33dafa1c6c0443b0a597c4f9d737302c73f511cb2` |
| 10 | `theorem` | [cons_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-one.md) | 133 | `result-track:c1510f5365b84c6148e4a61b8a6c9d5f8ce71cb209edf8721e069ea63a02fea7` |
| 11 | `theorem` | [cons_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-last.md) | 138 | `result-track:81e8ae2cae8878a96653529a974a4d490d50d6e8f840c8d9973fad5766f5c313` |
| 12 | `theorem` | [cons_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-update.md) | 144 | `result-track:74ca96fd72c6fa4a1c6931f2da4466bb0f15e7758e574bb673001a3aeea20e38` |
| 13 | `theorem` | [cons_injective2](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-injective2.md) | 149 | `result-track:2a2cf1de415c0623a202e9486235bd559ae15668216cecf074920547938cfd1f` |
| 14 | `theorem` | [cons_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-inj.md) | 153 | `result-track:b07054d557e87a0d05e015bd75874c0647213e3460067ed523ab2b7bd7730522` |
| 15 | `theorem` | [cons_left_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-left-injective.md) | 157 | `result-track:9df65dc65d4dc080ca52004d2a8ae7c1e9cef7b4432a549d0fdaf56085a9beae` |
| 16 | `theorem` | [cons_right_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-right-injective.md) | 160 | `result-track:2cdace99cc3312ee9d1fd2261b09b8a39ec52b29f7c0e04213afae793dce58ec` |
| 17 | `theorem` | [update_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/update-cons-zero.md) | 166 | `result-track:e5dcd82335f2246889d35d0a6ef717a3cfe4744db5b386af976417572938194f` |
| 18 | `theorem` | [cons_self_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-self-tail.md) | 172 | `result-track:3f698f44484eaa19fa743f11124ff8b02d720cf2a075fe9bcc4c2f3d801bbbdb` |
| 19 | `theorem` | [cons_zero_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-zero-succ.md) | 177 | `result-track:ff713f9992d0224394fb8967058a8c4dd76adf3662cdcf557e31302532eb4bdb` |
| 20 | `def` | [consEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/consequiv.md) | 185 | `declaration-track:72a3a4fa41620e7063b74205447d3ee5aada46bfde8568ee988505a89f235e69` |
| 21 | `def` | [consCases](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/conscases.md) | 193 | `declaration-track:1d0a6554c38e2a31d050ad3aff110b257ab54bad8edfb933b619e1ea69bbee60` |
| 22 | `theorem` | [consCases_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/conscases-cons.md) | 199 | `result-track:34dc676eb4902df53d53c439e5334f56d333b8c47094c1d1c38fa24e5d3850a4` |
| 23 | `def` | [consInduction](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/consinduction.md) | 207 | `declaration-track:9bede4853e8a0627d71ac92c74c97b26b07f9ac4de87474b1d1899788d66a6b3` |
| 24 | `theorem` | [cons_injective_of_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-injective-of-injective.md) | 213 | `result-track:8405f946f18fb0aa6d6464847c6d4d8aa3107c9b0ce9c5e5e9ddd44d6ef8f346` |
| 25 | `theorem` | [cons_injective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-injective-iff.md) | 218 | `result-track:2fed22a91b0d8318019fe394b2dfdfa4d74c031713acf633c13745ff8555c285` |
| 26 | `theorem` | [exists_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/exists-cons.md) | 226 | `result-track:7c25283dda25ff75f8b8efb8763bde9499da8c35b093980a0cdaeb3dbccf5d83` |
| 27 | `theorem` | [forall_fin_zero_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/forall-fin-zero-pi.md) | 231 | `result-track:993008fdee219ec3791a0f836ce0110bed8df596f38541ceb862023287f4d13f` |
| 28 | `theorem` | [exists_fin_zero_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/exists-fin-zero-pi.md) | 236 | `result-track:d2601463ad859cc9b38fcc9928e53a51652d45846daceb03477a862510fe13c0` |
| 29 | `theorem` | [forall_fin_succ_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/forall-fin-succ-pi.md) | 240 | `result-track:04cd0b11d3a750481d14c218752b49d6ad0353e81bed75049599ee7ada498ba0` |
| 30 | `theorem` | [exists_fin_succ_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/exists-fin-succ-pi.md) | 243 | `result-track:95bcc26f4448844f9626caa882e5040d3e35ec79de7047e997a5b28389b5b90d` |
| 31 | `theorem` | [tail_update_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/tail-update-zero.md) | 248 | `result-track:a9367fd68d01c084a2d28b0f0aa07c6d69608a9a255db2b0e2cc3399b285b39a` |
| 32 | `theorem` | [tail_update_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/tail-update-succ.md) | 254 | `result-track:a1e688452e26b9a415a1ba7daa8b27ae7fb5b776fd01a7074a994b05d1cbc693` |
| 33 | `theorem` | [comp_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/comp-cons.md) | 261 | `result-track:748df17b100c6ffde6d8ab2ed3541d83b61187b05a637bb4bf17a6a3f104b209` |
| 34 | `theorem` | [comp_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/comp-tail.md) | 271 | `result-track:81e6991ab1f34e7c65e780f8fc15d1b9359e9eb86170334c20f35f9987f40593` |
| 35 | `theorem` | [le_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/le-cons.md) | 280 | `result-track:d42aae7c76c997ecb471a88b63299a3afd69735e71e1def71aefaf154ffb8c77` |
| 36 | `theorem` | [cons_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-le.md) | 284 | `result-track:6473327fa8771d8bd08f7bc3cda6e52350c436352d8d7d7f4e72cde39efd13ba` |
| 37 | `theorem` | [cons_le_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-le-cons.md) | 288 | `result-track:448278399fbe67a5360018963ec6bd88c5b62ffe88cde76c937b5c823b7e404e` |
| 38 | `theorem` | [range_fin_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/range-fin-succ.md) | 294 | `result-track:ae2e87c12e9c398b4bac6ff81c94627bef8879216765244537e34dcec6b29945` |
| 39 | `theorem` | [range_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/range-cons.md) | 299 | `result-track:fd3ff68a8dcd76bdcce4a66d6b7718b5ca5f86c3f50f5dbef481601b8b24b9b4` |
| 40 | `def` | [append](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append.md) | 309 | `declaration-track:e4d648861e8d2a8df6bb56781d3f71cd2e248dd73aa34820deaecc7642567e4e` |
| 41 | `theorem` | [append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-left.md) | 313 | `result-track:82a1b8cf6a654f41c4f8d8de557828c31c78060d9bc7e2ad48915eb7313e64b6` |
| 42 | `theorem` | [append_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-left-source-edition-2.md) | 319 | `result-track:e05d0a2e1cf36efb6dfca1687b2624a1f8dbb655f51ae802d70dcc7c8e29bdab` |
| 43 | `theorem` | [append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-right.md) | 324 | `result-track:23e495cb01a993724dcc270167afc91c8ae9167ba9901e70e8dff57b723bed35` |
| 44 | `theorem` | [append_right_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-right-nil.md) | 328 | `result-track:0b1cdccc4ae247a9cc5101a45ad9ad0ee31d30ab5d9575f5076b8b754a344ba7` |
| 45 | `theorem` | [append_elim0](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-elim0.md) | 337 | `result-track:6e1a86be35124bae1654b52a7b1d24c724caaf905a2ce42718e784fae2a82c3f` |
| 46 | `theorem` | [append_left_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-left-nil.md) | 341 | `result-track:4fd88fbec227852dc4ab8b8f6273183a729c3482e231ec29664c195dfac1ad6f` |
| 47 | `theorem` | [elim0_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/elim0-append.md) | 350 | `result-track:9a006a0506b4cd088830d9da6028ed2eb2116965ca85e047c68d13f636ffe004` |
| 48 | `theorem` | [append_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-assoc.md) | 354 | `result-track:63e833033878a58fad348a71854f625a61445252ff7c1c104f2f972762a3d03e` |
| 49 | `theorem` | [append_left_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-left-eq-cons.md) | 369 | `result-track:aa9c30107eed7e707a54a8cfc90ed96918d04b048565cc0efb5f040c66371383` |
| 50 | `theorem` | [cons_eq_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-eq-append.md) | 381 | `result-track:bf3cb7b10eb2471bc6565a978e0d020c819b78287c0f081703103599fab2098e` |
| 51 | `lemma` | [append_cast_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-cast-left.md) | 385 | `result-track:fed0eab9fd07ced86ddee9213d9ef5c230b182d7cdca3cfbeecf382438743b35` |
| 52 | `lemma` | [append_cast_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-cast-right.md) | 390 | `result-track:f6280cc791b4b339e28ac31b25b28fd7276c35158a8e9aef2c3271706c85f625` |
| 53 | `lemma` | [append_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-rev.md) | 395 | `result-track:d256852e1539ae5ab62f2aa724443504bd00ad8a7a984a514887952d021c6a52` |
| 54 | `lemma` | [append_comp_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-comp-rev.md) | 403 | `result-track:8d6d9eeb15808c24b04594461ff58293aa0561e82bbe0cba983e9f4ac4ae37eb` |
| 55 | `theorem` | [append_castAdd_natAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-castadd-natadd.md) | 407 | `result-track:80557af31a4fa971f2fd2dabfe2299a0124d4dcf321f66b37bd80dc17aefe135` |
| 56 | `theorem` | [addCases_castAdd_natAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/addcases-castadd-natadd.md) | 414 | `result-track:be92ff5203493596759e040d5d46888512fa273308fa8d496fc6171d8079bcf3` |
| 57 | `theorem` | [append_comp_sumElim](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-comp-sumelim.md) | 418 | `result-track:b59170e7634b67828437bf935361a140ff5d7579aaa82bc1b5445c1d5e7cdc24` |
| 58 | `theorem` | [append_injective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-injective-iff.md) | 422 | `result-track:b3d614010d5a4db68ade9078e1245dd84fa9c94e9fd5576891b868e15ac25573` |
| 59 | `def` | [«repeat»](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/repeat.md) | 442 | `declaration-track:818d4df230615a79d24d26ae6c48927cb711ef03c8b0a74d91e85cf50f87997b` |
| 60 | `theorem` | [repeat_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/repeat-apply.md) | 446 | `result-track:fe88b1dac34a764098043f2b9378ba5a4fdedab7c792938925cf340cb9f847c3` |
| 61 | `theorem` | [repeat_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/repeat-zero.md) | 451 | `result-track:ac8062fbf70f116d7e138e0ab55862483a2488528a14c6d2503377104766d8af` |
| 62 | `theorem` | [repeat_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/repeat-one.md) | 456 | `result-track:a92908b1ade6c2f941f8b57ee79e260f981edd50c21940f9b437f6a1f899770d` |
| 63 | `theorem` | [repeat_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/repeat-succ.md) | 463 | `result-track:bf78fc8b2d86649c935097d8330abd553d5195b3b8ec0bb0596f9dc43f57fbc7` |
| 64 | `theorem` | [repeat_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/repeat-add.md) | 474 | `result-track:15a6e3c1f701d30292d97af6b98935ca7a3bcd356f8d59d0c4fb121b461b3e0e` |
| 65 | `theorem` | [repeat_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/repeat-rev.md) | 483 | `result-track:cca66892768ae7e8f419e08a4cf2726b452b37c9f1ae0245da2ff9230e86a456` |
| 66 | `theorem` | [repeat_comp_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/repeat-comp-rev.md) | 487 | `result-track:861781b2eacdf8f30da62f174b8b25c2a8cf3bbec807edde6e97d42d99a3ef49` |
| 67 | `def` | [init](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/init.md) | 507 | `declaration-track:63cd7c975bbcaf6d3451755e34d39af28cb14d7a802947b6617c0d281a4b99e1` |
| 68 | `theorem` | [init_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/init-def.md) | 510 | `result-track:a0b598a00adff347efc7ac891c15544a3690182db637e5ed51c41de426062966` |
| 69 | `def` | [snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc.md) | 516 | `declaration-track:01f6ffcb73a6b62c00d5588587256a754f97bfbd6fc9f35942c614bc6d5b6087` |
| 70 | `theorem` | [init_snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/init-snoc.md) | 521 | `result-track:bfc4fde6be27306a7ab86a11dc4e7a1b6750f66b1b84c461dba332edaec7c8c3` |
| 71 | `theorem` | [snoc_castSucc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-castsucc.md) | 527 | `result-track:5388270cb07dda2d5cd0d2cb2d55fb3caa2cd5db7815dffc03bbb6c73fc87927` |
| 72 | `theorem` | [snoc_apply_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-apply-zero.md) | 532 | `result-track:39f7b96618d6b65c316644b358622072aeeea08996d025b253dca1470e02648f` |
| 73 | `theorem` | [snoc_comp_castSucc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-comp-castsucc.md) | 535 | `result-track:6904ea689d2c7c73ae7997c07361ec0944ea4aa10b7606bc3e1511cf90877756` |
| 74 | `theorem` | [snoc_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-last.md) | 540 | `result-track:4d7221b64349e8d47dc3b1d20dd63aff4043b62fab157d7d1a578487dfafbb47` |
| 75 | `lemma` | [snoc_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-zero.md) | 542 | `result-track:4e7b9fcec1a047ecbdd859264562e65e2457357a114dc88abbb4893d858914c4` |
| 76 | `theorem` | [snoc_comp_natAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-comp-natadd.md) | 546 | `result-track:801aa2d1b1ff812e593def79d85c924ddf8e5b08d7dcc57d646c99a8d67d26ec` |
| 77 | `theorem` | [snoc_castAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-castadd.md) | 557 | `result-track:053eb7d6bda63d4353148472104941eda1ea09f10f88bd9de4facfa35e2e4542` |
| 78 | `theorem` | [snoc_comp_castAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-comp-castadd.md) | 562 | `result-track:e457e962f476d207f9e6fce42d05e899d23a4194327ee7b661cdd2f53586968c` |
| 79 | `theorem` | [snoc_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-update.md) | 568 | `result-track:1a329291736b1c7c698714b84a74faca82cc6e4b009c4e3038709280eb59771e` |
| 80 | `theorem` | [update_snoc_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/update-snoc-last.md) | 576 | `result-track:4c8bd44f7cf501899cf74cd2416c9adcb6f5f3cd4b5a004d8af53bc4add7fb0f` |
| 81 | `lemma` | [range_snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/range-snoc.md) | 581 | `result-track:71b14c6bdb091c575eeeac55f2fd49f961311cdf225f8f899c0fdabd83906255` |
| 82 | `theorem` | [snoc_injective2](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-injective2.md) | 586 | `result-track:f823a5b4645477e29d8dec2ae49239def6232f0f14ce5456a90c448f48321bdf` |
| 83 | `theorem` | [snoc_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-inj.md) | 590 | `result-track:6d0a4deb69c61b4846cb7417f64bf8b9a77d3197d2b836d177b658aa868bdadb` |
| 84 | `theorem` | [snoc_right_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-right-injective.md) | 594 | `result-track:097e312f47ecfa2c95b123b402a10a02a44842eccfd7ca704d7f819db75a8a87` |
| 85 | `theorem` | [snoc_left_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-left-injective.md) | 598 | `result-track:2a7214d532e361e367177d24b488529b673f83c259a1b6b27c48c91e5a600177` |
| 86 | `theorem` | [snoc_init_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-init-self.md) | 603 | `result-track:9ce7133254284df61b7fe7b3c4da1584ffd35467bc7e1f834e147b6f9ce242ce` |
| 87 | `theorem` | [init_update_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/init-update-last.md) | 609 | `result-track:6770adafc35d98ef601fd09cf549352669abe31fb200c07aca23ee527d570463` |
| 88 | `theorem` | [init_update_castSucc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/init-update-castsucc.md) | 615 | `result-track:677e06fa1dd0f4156591afd9114b0cd5c49dd9508e9b4c60035831057cb91de3` |
| 89 | `theorem` | [tail_init_eq_init_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/tail-init-eq-init-tail.md) | 624 | `result-track:af78291bce4ae6328bb42fa10e104a5974865d2a9753d5be84bea7242ee3ade4` |
| 90 | `theorem` | [cons_snoc_eq_snoc_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-snoc-eq-snoc-cons.md) | 631 | `result-track:dd4b4bf3e1edf9ac5e648f9c685fedc56386063ee33977016d0511727910f00e` |
| 91 | `theorem` | [comp_snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/comp-snoc.md) | 643 | `result-track:defcf6cc8967053bc44f167f65ee94fd71cb8e5c30a78410ee4e0c4a46f1b75c` |
| 92 | `theorem` | [append_right_eq_snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-right-eq-snoc.md) | 652 | `result-track:e7e846733251ea1e87fb551492f4110af6298d4c817e10860d745cd6619e7f37` |
| 93 | `theorem` | [snoc_eq_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-eq-append.md) | 664 | `result-track:cbc8d30c3c887eb69a4c8b010e1845bd533f36e255674e9f6ef555f3a1b1ecc0` |
| 94 | `theorem` | [append_left_snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-left-snoc.md) | 668 | `result-track:f1aee69dbb0d83c5e14d10304fc786d8b71f7a3b7a6433ba09a196374fff56c8` |
| 95 | `theorem` | [append_right_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-right-cons.md) | 673 | `result-track:43591dadd1eb4550cdde377bcbf58b26da8b8fbd24de6c72ee722e0b9a0eb716` |
| 96 | `theorem` | [append_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-cons.md) | 678 | `result-track:1b4dc7d36cc6c442b55b1aaab6d61f4b70947c5ed845c71bab97a22635f8b406` |
| 97 | `theorem` | [append_snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/append-snoc.md) | 692 | `result-track:52c9b7c73a7cc6f3f4ea910a1694b8c6ac4fbbb190b117f2121aacfa9df70c00` |
| 98 | `theorem` | [comp_init](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/comp-init.md) | 706 | `result-track:022b4320689e395fd19bb6485e22dd66d912bcbcaa6f10420f9116f45d8c857f` |
| 99 | `def` | [snocEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snocequiv.md) | 716 | `declaration-track:a6df76723011d33fa0fe4da448cf6e1b016d3f31d7b87a69de82398b8cfa8941` |
| 100 | `def` | [snocCases](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoccases.md) | 724 | `declaration-track:e6b1bea7c3c6275b3fd0e57d914ddf5c1f7aea40ec2c16bc9fd87cad80fabbdf` |
| 101 | `lemma` | [snocCases_snoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoccases-snoc.md) | 730 | `result-track:195e3f36a6441819eb51e867b6147001a4bd930ca65c4484c44aa8dfce931dfa` |
| 102 | `def` | [snocInduction](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snocinduction.md) | 738 | `declaration-track:d9ebdb9cee5abda49156e935dfd057e2723fbd3970e5b22abc63253f637449d7` |
| 103 | `theorem` | [snoc_injective_of_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-injective-of-injective.md) | 746 | `result-track:b81ad990189f290d0aeec2a1b20dfea26df7422720961ab0af89e3300c86736e` |
| 104 | `theorem` | [snoc_injective_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-injective-iff.md) | 766 | `result-track:4ce82cdfe34560dce940f87a24c068e45a46e30d94c2e14e7367ebde8c117f80` |
| 105 | `def` | [succAboveCases](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/succabovecases.md) | 786 | `declaration-track:747983cc40a8ced495a84caf5580a3cef25a39ccac0a186da0b93e24cbf30d32` |
| 106 | `lemma` | [forall_iff_castSucc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/forall-iff-castsucc.md) | 799 | `result-track:559d685e48adcaf0e5df637fd93081d2e021ba87ddc21433fc4df472911d1740` |
| 107 | `theorem` | [forall_fin_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/forall-fin-add.md) | 805 | `result-track:9ed7e092095ed961b35ad8f4d08341f788732912051cd6dc7b24f25926e9b555` |
| 108 | `theorem` | [forall_fin_add_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/forall-fin-add-pi.md) | 811 | `result-track:e9515f6f8c1e1bfeff351a07f01601c25cb324cebec024c7742ad1057a439651` |
| 109 | `lemma` | [exists_iff_castSucc](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/exists-iff-castsucc.md) | 819 | `result-track:6d283687cb8d523af63ad0ba0fe9ff6b507d0940d3b6135afa47fceffe9c65ff` |
| 110 | `theorem` | [forall_iff_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/forall-iff-succabove.md) | 828 | `result-track:7e19cfd93f4ea3d2dfdc4299fc05d5f6c7f445ea3488128e538bc22b6fa796cf` |
| 111 | `lemma` | [exists_iff_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/exists-iff-succabove.md) | 832 | `result-track:7857116ff7d2d01f4daa00a7712e5533489873bf6564a75e17e68e9c2a8f2950` |
| 112 | `theorem` | [eq_self_or_eq_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/eq-self-or-eq-succabove.md) | 842 | `result-track:ca8b52aef8ac9edc275b3ba137c9ced9924964ff731b4c81467b700e6d506160` |
| 113 | `def` | [removeNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth.md) | 846 | `declaration-track:6c2202977a62380321630bbcaea4ad13b15a3f934b3b8d388ea83df21ffabe4c` |
| 114 | `def` | [insertNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth.md) | 851 | `declaration-track:3d75b74237656196cabd2df5f28c62f7deb66d3f46f1935700743789f11d08bc` |
| 115 | `theorem` | [insertNth_apply_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-apply-same.md) | 856 | `result-track:7cb0653b503a2ff8cd39c3b86660637d60f0983df16e9dc3390b64efa0a146b1` |
| 116 | `theorem` | [insertNth_apply_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-apply-succabove.md) | 860 | `result-track:287a1665a8625466c91ef43e84d4419d99d0a956092e5407a5d13658c4da00c8` |
| 117 | `theorem` | [succAbove_cases_eq_insertNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/succabove-cases-eq-insertnth.md) | 875 | `result-track:62a5cad7bd8cb5f2bfd064e2c68c5966f6f0615a4f6c5da9dfd9320850aa3669` |
| 118 | `lemma` | [removeNth_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth-apply.md) | 878 | `result-track:3b79a10a594140be2d34f7a764e64edccd44289b35606a8c656a92b19d09c0e8` |
| 119 | `theorem` | [cons_comp_succ_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-comp-succ-succabove.md) | 883 | `result-track:6421474d5f81afd6f62724341c4a8c045e5395e1b901a29d9772051396595769` |
| 120 | `lemma` | [removeNth_fun_const](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth-fun-const.md) | 887 | `result-track:065f7619872d075521349352c78af2222f87f3dd6a92b18768bc6bb940187277` |
| 121 | `lemma` | [removeNth_insertNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth-insertnth.md) | 891 | `result-track:acfb5e9c86f6be24b958a263fa209511cdb9d5c1afd7d88050031f6f1ef13739` |
| 122 | `lemma` | [removeNth_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth-zero.md) | 894 | `result-track:f883de4d03a7c422973bfd781865ed4182bed2a1d0d3d807cae586a5bc9eb498` |
| 123 | `lemma` | [removeNth_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth-last.md) | 897 | `result-track:78e9b6001443e83b64f5217473f5bdece16dc4d308927ba73e030d3317433f20` |
| 124 | `theorem` | [insertNth_comp_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-comp-succabove.md) | 901 | `result-track:6ec91a66561593cc51420f62e3b3ef4b124fcb8025aece590dfcb7894a170794` |
| 125 | `theorem` | [insertNth_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-eq-iff.md) | 905 | `result-track:b53aa25c0658e064c62fa424575b3146e65b8dac77b384eb7d4c9dff8a4afdaf` |
| 126 | `theorem` | [eq_insertNth_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/eq-insertnth-iff.md) | 909 | `result-track:834bb7c102bc03c2babe7b4106b3a9d353c705a84322f20b68e9cc0bba4674e8` |
| 127 | `theorem` | [insertNth_injective2](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-injective2.md) | 914 | `result-track:59414f2f3684d23322138d8d6b55ea14214145219d7dec386a374397ef979e85` |
| 128 | `theorem` | [insertNth_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-inj.md) | 919 | `result-track:0dfce81827194d137ba61e28c4b1ae8b4ee477b3ad765375ee34985119db261b` |
| 129 | `theorem` | [insertNth_left_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-left-injective.md) | 923 | `result-track:b1a41ea94b2fedf1ddaf1b3aeeceed3bc3d8b192ea4db1612274ff39b7a9df8d` |
| 130 | `theorem` | [insertNth_right_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-right-injective.md) | 927 | `result-track:1225a6e1b2f2a0b3bea972c8045c6d440aef17e4958491af7ed834e947ad2a49` |
| 131 | `theorem` | [insertNth_apply_below](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-apply-below.md) | 931 | `result-track:a542a792f723497187a8c6b8eca3f4d8d073121cf4d8afbae3bc6590471c19c1` |
| 132 | `theorem` | [insertNth_apply_above](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-apply-above.md) | 936 | `result-track:82580ba3e071b206c4e4b9007dd10c79f1f368b4244d606946d9874a127cc7f3` |
| 133 | `theorem` | [insertNth_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-zero.md) | 941 | `result-track:3f513e17483b270bc91353c986e5ac00adf4405236fefc624d1ff18e9a6beb52` |
| 134 | `theorem` | [insertNth_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-zero-source-edition-2.md) | 949 | `result-track:77d9cbf38de9628a3eb5bfd1c4e4ecce7085dd2c73e2ec1a71f54e16cbf3ef71` |
| 135 | `theorem` | [insertNth_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-last-source-edition-2.md) | 952 | `result-track:84eb1a98d514c51d237bebeaac732b70620ae1bbe2dc540cf42518112b65bc8f` |
| 136 | `theorem` | [insertNth_last'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-last.md) | 965 | `result-track:51007dc4857f45fc0e9e6c05e2d30a47de3ec97366a7d58148f0605a38388619` |
| 137 | `lemma` | [insertNth_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-rev.md) | 968 | `result-track:628b49ff67543893e449a76d4bf8d13156b1e8d7274b2089a83880b27f6e0563` |
| 138 | `theorem` | [insertNth_comp_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-comp-rev.md) | 975 | `result-track:90a8b206417e2b5ea5e5989cf2b4e1f7d8047d4d8b223068812529b65d788ee9` |
| 139 | `theorem` | [insertNth_succ_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-succ-cons.md) | 981 | `result-track:1eef134d908a778ff92cfd3b77f86fae7ee300a6ce4ed47b735dad8cf21a810a` |
| 140 | `theorem` | [cons_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-rev.md) | 990 | `result-track:457507f29a861b1852bb6f7f9361e40b9dbad3dbf3b1f7f17f20c0d547ac6d46` |
| 141 | `theorem` | [cons_comp_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/cons-comp-rev.md) | 994 | `result-track:db61e16ac36e31d64da5bf2d56b7e346c5f35d8d21838e84964506f90843878c` |
| 142 | `theorem` | [snoc_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-rev.md) | 998 | `result-track:11e855296585101d526272c3d6f1d477324b7c981ecf56d48e05236a5a329659` |
| 143 | `theorem` | [snoc_comp_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/snoc-comp-rev.md) | 1002 | `result-track:c659bf3002c32be620ea80db86d251cfbe873946f727ffb3674fe302a3a7e51b` |
| 144 | `theorem` | [insertNth_binop](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-binop.md) | 1006 | `result-track:cea9490f4beb857c7d37aac65b48d6e02d0b75758d78987dd5c9de0d3c9226b3` |
| 145 | `theorem` | [insertNth_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-le-iff.md) | 1016 | `result-track:4c46564ea19ef05ccccb9c7e76a4a59e0a20df0a6c892d035fe0cd47c50c0520` |
| 146 | `theorem` | [le_insertNth_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/le-insertnth-iff.md) | 1020 | `result-track:16a25d98761f55c3dda453415435c658aeec56ae796282347c8af102d18d0720` |
| 147 | `lemma` | [removeNth_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth-update.md) | 1028 | `result-track:ff224660e1e2ffd1a99e8504fb53db8d5e07d36648d944ff9712f34d0abd1865` |
| 148 | `lemma` | [removeNth_update_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth-update-succabove.md) | 1032 | `result-track:edfa2f7d38590e610a45c88240847016ac4867960492f4a84fe5b6b7ea740de3` |
| 149 | `lemma` | [insertNth_removeNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-removenth.md) | 1038 | `result-track:4b157d11fe4e69528b2078b5798962fbd03eaa3bb21edf9e1a29217239923593` |
| 150 | `lemma` | [insertNth_self_removeNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-self-removenth.md) | 1041 | `result-track:ed27241f492c1994ca888ae5eeb24ce9972300b64400ea8d0c1ee7477d18aa5f` |
| 151 | `lemma` | [range_insertNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/range-insertnth.md) | 1045 | `result-track:f1df9385a8e43f9eade0e9e44d59cd36ab911cc9e2c6bc0ae2603fc8ec442ea0` |
| 152 | `theorem` | [update_insertNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/update-insertnth.md) | 1051 | `result-track:4a1c3dbe09bd67d199d4b2ab6fd8f1bf1aee64310889c4add525c4258981c7b2` |
| 153 | `theorem` | [insertNth_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnth-update.md) | 1056 | `result-track:d5ed5ed9b6764ace2505592236d446a11fac0ab78aabb04b0cec95e9d50aab3b` |
| 154 | `def` | [insertNthEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnthequiv.md) | 1066 | `declaration-track:aa60d4abfa872a8ff94f8ad8ff66d3c816c2a01b91dc96b4db0e568f8827c4f9` |
| 155 | `lemma` | [insertNthEquiv_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnthequiv-zero.md) | 1073 | `result-track:1b4489f9e216d4beb88d8ceb0956cb8ed15a6b1454401408ed1b2fa3d7626cfc` |
| 156 | `lemma` | [insertNthEquiv_last](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/insertnthequiv-last.md) | 1078 | `result-track:03746b0b45a499129dbe96c99d0baf3c35b52b1be52db2835bfe1dd0e6d9ca27` |
| 157 | `theorem` | [removeNth_removeNth_heq_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth-removenth-heq-swap.md) | 1082 | `result-track:7f32635fcad2eea18af760df5fc66654f4ab50ff8c443cb00d3178f1d5a9a7cf` |
| 158 | `theorem` | [removeNth_removeNth_eq_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/removenth-removenth-eq-swap.md) | 1100 | `result-track:cb9b0f870b70247c578b8365a9475bf384e74af87791ab909bf40f852109662f` |
| 159 | `def` | [findX](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/findx.md) | 1111 | `declaration-track:a30a9e09e9e5dbaf82cdd32bbf3d43cdd86ac951b098a3920a4ebedbe15f0438` |
| 160 | `def` | [find](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find.md) | 1121 | `declaration-track:a71a990b86a7a242b7f9949fe06060dcc06c9f08a8010a92ef6696dc6bde602c` |
| 161 | `theorem` | [find_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-spec.md) | 1125 | `result-track:af4353894296f7140ebc6f7c9f20d08f9a6dcce7b7d4386c736da41c8c276a94` |
| 162 | `theorem` | [find_min](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-min.md) | 1131 | `result-track:fd9b97d060bd0f2fef4feca47d136da1d35c8fd144229166dded5ea78510795a` |
| 163 | `theorem` | [find_le_of_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-le-of-pos.md) | 1135 | `result-track:7dea50e0e3657434a92b1af0f15173a982ebd6b8df30b396260a5a5d2fc06f6d` |
| 164 | `theorem` | [find_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-eq-iff.md) | 1138 | `result-track:87790e2fa7946a15e5d5def099d86915cdf9289c397920747bc1b42bbc76f3c0` |
| 165 | `theorem` | [val_find](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/val-find.md) | 1141 | `result-track:d934552db6e635b07da560478e791eaf1d5825dadd4fe31b17066ca57d892b92` |
| 166 | `theorem` | [find_nat_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-nat-lt.md) | 1146 | `result-track:a120f4dec390d950502d469f4eecb61be2df85310dd2f382ea458e656640930d` |
| 167 | `lemma` | [find_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-lt-iff.md) | 1151 | `result-track:a85c5d1373e5c60e9a483b6d97d9460f0940e193fc1c7699dcd85a18c7d06bc8` |
| 168 | `lemma` | [find_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-le-iff.md) | 1154 | `result-track:3f8c5431da7e20560eec54affd07c46b08a4f5072900bb98e22362cc872fcbb6` |
| 169 | `lemma` | [lt_find_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/lt-find-iff.md) | 1157 | `result-track:c2aeb845952685458262da56d2f2c451616a42e7aa0a026d1ea52936797e1128` |
| 170 | `lemma` | [le_find_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/le-find-iff.md) | 1160 | `result-track:42a2fdfe711000121437181696939b2a99202be47cc80bc20bf5ff3e37681235` |
| 171 | `lemma` | [find_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-eq-zero.md) | 1163 | `result-track:906c65e2344eeef96daee4021f3285f86313d1161695d89aa60ec225d307c5ad` |
| 172 | `lemma` | [find_of_not_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-of-not-zero.md) | 1166 | `result-track:275cfae17a87992a253ab5415c3aca9e3a1b6eb64e4a2d0b536e48f307babf0d` |
| 173 | `theorem` | [find_eq_dite](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-eq-dite-source-edition-2.md) | 1174 | `result-track:4505ecdb266a7432364edf8126c05e216f14e6b8818dc4ce261272654b5be808` |
| 174 | `lemma` | [find_mono_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-mono-of-le.md) | 1185 | `result-track:eb2acad2d8cf2e14bd3d03bfd7af136b53172bfa58c171525bc3533c8d80686c` |
| 175 | `lemma` | [find_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-mono.md) | 1191 | `result-track:9fa1129bb1d1913a2ec0a93aae55a03f0d9f7fb18e8e3ad92c7bb362e28603d4` |
| 176 | `lemma` | [find_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-congr-source-edition-2.md) | 1201 | `result-track:b835f5da34ab91da2295cc22e6e64311ec22dbd8f12a9763d15fad52120e3669` |
| 177 | `lemma` | [find_congr'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-congr.md) | 1207 | `result-track:63e4ef92dfa0b03bf026d424295e62442f9745e0d8d1c42e80923f76f1a6fc16` |
| 178 | `lemma` | [find_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-le.md) | 1211 | `result-track:7cb99bd413f8d1d053a88d39f3e0c08d7311caca2727e9bfbcdd987776f29dfd` |
| 179 | `lemma` | [find_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-pos.md) | 1214 | `result-track:7528775a26874cec8fa28f1c205e5c29b315510dc28b491767a09bb02ac7a4df` |
| 180 | `lemma` | [find_of_find_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-of-find-le.md) | 1217 | `result-track:20c0057fa1e19231e1136ab946a1568727a647d3191cea587efc6d959821911c` |
| 181 | `theorem` | [find?_eq_dite](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-eq-dite.md) | 1230 | `result-track:00bedbe662ae07bc04cf290195cb2db00f5528cf14e6289e8cf0182d43ae12f6` |
| 182 | `theorem` | [find?_decide_eq_dite](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-decide-eq-dite.md) | 1234 | `result-track:e71098ccfcff73c6224fbaf12e62956163eef6acbefa1c78b39c1f3abd846545` |
| 183 | `theorem` | [get_find?_eq_find_of_eq_true](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/get-find-eq-find-of-eq-true.md) | 1238 | `result-track:395f4c57cdd21c4d76bac89a7da5da87f62db8e8c203fd9de8c520b516b2cee2` |
| 184 | `theorem` | [find?_decide_get_eq_find](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-decide-get-eq-find.md) | 1242 | `result-track:1edc062e4ca3e7e4ecb01b3805ce887804d1e895771fa61f9a20f7ea50a06add` |
| 185 | `theorem` | [find_mem_find?_decide](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-mem-find-decide.md) | 1247 | `result-track:0d56d998d60120c3e67394bbef2baad94273e929b5699cc2d91e84dab7a153b0` |
| 186 | `theorem` | [mem_find?_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/mem-find-iff.md) | 1254 | `result-track:fed461257f52ffef86ac82b9d4b910105e45b13ec91dc8bf79a033918b0fdbbd` |
| 187 | `theorem` | [find?_eq_some_find_of_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-eq-some-find-of-exists.md) | 1257 | `result-track:67c82a49d398936886d4ee97265c3192b0dc2dfc8e85e40f15d35d6a92ea73b7` |
| 188 | `theorem` | [find?_eq_some_find_of_isSome](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/find-eq-some-find-of-issome.md) | 1260 | `result-track:464190bf6f0695a8ac0beacc4beb0d7c765337b45753289890b8ddfa1a452b22` |
| 189 | `def` | [contractNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/contractnth.md) | 1271 | `declaration-track:eb8364d650f70abc1219cb31f79687842bb3b5affaf036e3d64e2c37a1ccb12b` |
| 190 | `theorem` | [contractNth_apply_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/contractnth-apply-of-lt.md) | 1275 | `result-track:0bf291b74cad4bc4ef0b9ceb2132cbc087f6e07e38352e2276e75a81960fb4a2` |
| 191 | `theorem` | [contractNth_apply_of_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/contractnth-apply-of-eq.md) | 1279 | `result-track:c4c98a9f4ff3ded8f94a3c84674bbbbfc7f1bbb347c9e51ededef8475ff8d91b` |
| 192 | `theorem` | [contractNth_apply_of_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/contractnth-apply-of-gt.md) | 1284 | `result-track:0fd79e20a47963a18270007002a066f232bbdaf7e8588a23425325e5825a10b2` |
| 193 | `theorem` | [contractNth_apply_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/contractnth-apply-of-ne.md) | 1288 | `result-track:cb1d5f9beddf1ba310fbb8683e9532952b8c4ea0c59e6c82c70be2b24cfa883f` |
| 194 | `lemma` | [comp_contractNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/comp-contractnth.md) | 1297 | `result-track:5253fcf4e7853eaee2bb582e7dd518595ad179d79a8b371f50dd4be61dc98cd6` |
| 195 | `theorem` | [sigma_eq_of_eq_comp_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/sigma-eq-of-eq-comp-cast.md) | 1310 | `result-track:8211f101cb46c1e6804cbef9a42b16b897dd114932cac34a96e171f77e6033b1` |
| 196 | `theorem` | [sigma_eq_iff_eq_comp_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/sigma-eq-iff-eq-comp-cast.md) | 1318 | `result-track:1cfe2fdc63806135dd59d4898cd44cfb6e5164fb59b1024e7629c0ef07816b74` |
| 197 | `def` | [piFinTwoEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/TupleBasicPublic.lean/declarations/pifintwoequiv.md) | 1328 | `declaration-track:a1ff2fb56c5b00ad89570c317cc2fbb0f05be33f650f47954b71fb42c9abdc60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c117ee5983f93946fdfb9f5394e891e9cbe036c1bbd906b24fc5a6d2243d302d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant041399716b52e8892ae463b3cc6c66a3eea0f799734b75facd5a8e415ee82cf8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
