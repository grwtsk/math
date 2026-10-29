# Verification target: Choose Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fd0faf48b0a05381ca431d95750fd6b4db05196",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantc484dc2600ee814a72058715296205e650748a85e1a8c3664ef607d21420158a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fd0faf48b0a05381ca431d95750fd6b4db05196`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantc484dc2600ee814a72058715296205e650748a85e1a8c3664ef607d21420158a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantc484dc2600ee814a72058715296205e650748a85e1a8c3664ef607d21420158a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose.md) | 56 | `declaration-track:f7b1ae158544ef5db545f1639657d0e671e8f07b3e6b4242e2f17aec8396caa6` |
| 2 | `theorem` | [choose_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-zero-right.md) | 62 | `result-track:9055adeb776ac2c28efc8c26d6f3ffc4825d08cc33007a66ae049cd409ba6cd6` |
| 3 | `theorem` | [choose_zero_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-zero-succ.md) | 65 | `result-track:c38a206927dd4a530dc4a77c78507858332667fd871dbc3e4106e91a05f1a31a` |
| 4 | `theorem` | [choose_succ_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-succ-succ-source-edition-2.md) | 68 | `result-track:8690349c49f046ac0fa7099ff0a82588112ced28929da0160fbb2d526e3ceea5` |
| 5 | `theorem` | [choose_succ_succ'](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-succ-succ.md) | 71 | `result-track:142372d47f776e69cb31362193be40dc1d878ccb756bb1e25eb2c6750bf3c583` |
| 6 | `theorem` | [choose_succ_left](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-succ-left.md) | 74 | `result-track:28b7019ff82f7909b813b8a73099c045316b3c52fcf5d10d96e72f1b88dfab12` |
| 7 | `theorem` | [choose_succ_right](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-succ-right.md) | 79 | `result-track:cea5eb21be3f9b836821d380bf9e5c7744e1f4bcd8e71ac278d421802382931f` |
| 8 | `theorem` | [choose_eq_choose_pred_add](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-eq-choose-pred-add.md) | 84 | `result-track:cd456dd43780655346b869e2eca8bde77528867f73e2871d7f814a426c452ec7` |
| 9 | `theorem` | [choose_eq_zero_of_lt](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-eq-zero-of-lt.md) | 89 | `result-track:7a88e0b13ca8bc3f016a02d732a6d8932ff0fb4b8d8e8cd148ed6594caaee700` |
| 10 | `theorem` | [choose_self](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-self.md) | 98 | `result-track:8f61db6fda19044d279a50180914e66c2c45a0e39f5487da6709a26b7ab71ac2` |
| 11 | `theorem` | [choose_succ_self](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-succ-self.md) | 102 | `result-track:1f99fd90cea8d6cfb3fc76bd9e2d997d9928ce419d06285d4f08e9a9269063aa` |
| 12 | `lemma` | [choose_one_right](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-one-right.md) | 106 | `result-track:62f38357b47ae2898cc5fc7f2f4557e5aeb9b551b9015676d6c31ee3401b2eee` |
| 13 | `theorem` | [triangle_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/triangle-succ.md) | 109 | `result-track:e4a8165d89e6543bd96c04b4cb72e94797a819e3e1430031fa6f58cdb22720eb` |
| 14 | `theorem` | [choose_two_right](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-two-right.md) | 114 | `result-track:93bc46cb446adc34f58c58378938aba66e650c5f60cf24cffa2c3cfb8986be0b` |
| 15 | `theorem` | [choose_pos](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-pos.md) | 120 | `result-track:137f94bc567f21bcc19e7745473e7b9593b8f43008948e5e6a4605b57d53803f` |
| 16 | `theorem` | [choose_eq_zero_iff](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-eq-zero-iff.md) | 125 | `result-track:72f71c364e8434738cc48811993db76daa7e003ba1b561f9c0f5104c5998f012` |
| 17 | `theorem` | [succ_mul_choose_eq](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/succ-mul-choose-eq.md) | 128 | `result-track:90cd0e4062b5aba7095bfe5a65bf95bbe835d199a4201dbc9d6fdfcdb1e3e892` |
| 18 | `theorem` | [choose_mul_factorial_mul_factorial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-mul-factorial-mul-factorial.md) | 136 | `result-track:8d63ce77e2dffe82aafa5ec5ed570316ee64e5d20ecce6f469c270eabe171d7f` |
| 19 | `theorem` | [choose_mul](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-mul.md) | 155 | `result-track:ce8bf3a7f7b53d4d575f3f2b4f640c10c4b213b2162ff5d39b36caf68ddf4729` |
| 20 | `theorem` | [choose_eq_factorial_div_factorial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-eq-factorial-div-factorial.md) | 173 | `result-track:555045f1b638f3bb5e18ade5ed776cea4cd5599f519f13728df6eb314c357771` |
| 21 | `theorem` | [add_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/add-choose.md) | 178 | `result-track:63a4d1f88ff9a5d554449bf4399e3f1149fa4da89780002bf057e71ef293c8e6` |
| 22 | `theorem` | [add_choose_mul_factorial_mul_factorial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/add-choose-mul-factorial-mul-factorial.md) | 182 | `result-track:c6de34b8e391a9940d2294f5f4d599beb5322763e513905dfa8047436207ebc2` |
| 23 | `theorem` | [factorial_mul_factorial_dvd_factorial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/factorial-mul-factorial-dvd-factorial.md) | 187 | `result-track:2f5f3e51fc035d19d83af6d235c97726b4fa557a7bb95f875c80bfab4fc8b30d` |
| 24 | `theorem` | [factorial_mul_factorial_dvd_factorial_add](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/factorial-mul-factorial-dvd-factorial-add.md) | 190 | `result-track:044d46f62c46204054df5e912d09380526dccbea7d4a09c9cac706a92f250843` |
| 25 | `theorem` | [choose_symm](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-symm.md) | 196 | `result-track:30becd60fd02889ed4043167b7ccb1c006daad02e0125f757c1393c496049bc2` |
| 26 | `theorem` | [choose_symm_of_eq_add](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-symm-of-eq-add.md) | 200 | `result-track:a403976672521f74b12fdb1d8f1f58318cb957fb20b94f7c09548921b42caf0d` |
| 27 | `theorem` | [choose_symm_add](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-symm-add.md) | 205 | `result-track:71bfab8727afb67d1586398865dd6e25b91d58d1fc61c6097a0cc05c2de29c19` |
| 28 | `theorem` | [choose_symm_half](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-symm-half.md) | 208 | `result-track:d5c42025445a05d6cfa897ca64533e7aef908a62936048a605d3cbbb52782fe6` |
| 29 | `theorem` | [choose_succ_right_eq](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-succ-right-eq.md) | 212 | `result-track:41af61a6bcf5043d3519be97af83ab2a42eed5ae8541adadc57ceff60fcb7c62` |
| 30 | `theorem` | [choose_succ_self_right](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-succ-self-right.md) | 218 | `result-track:18b8e402eae3a02f451ac3ca88f5dc92f5b28ca7ed98b28b43e8eef224af61c0` |
| 31 | `theorem` | [choose_mul_succ_eq](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-mul-succ-eq.md) | 222 | `result-track:2493c2a26daf58f12d0fa8facef13728dc2a172a31533ab9b51c801dec99e314` |
| 32 | `theorem` | [ascFactorial_eq_factorial_mul_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/ascfactorial-eq-factorial-mul-choose-source-edition-2.md) | 232 | `result-track:53c2463122b9ff7730bad1f56897442627a2c8694ebffdb3b7a32002a52bc62d` |
| 33 | `theorem` | [ascFactorial_eq_factorial_mul_choose'](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/ascfactorial-eq-factorial-mul-choose.md) | 239 | `result-track:22a456cda486599894c3bc622154f52f5f3c5de24bf66ecc367d9bc22f1d035d` |
| 34 | `theorem` | [factorial_dvd_ascFactorial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/factorial-dvd-ascfactorial.md) | 249 | `result-track:a2f40992990e8572ad8ec57fb674a868f895a932c40071ca2e53c915a3d683ad` |
| 35 | `theorem` | [choose_eq_asc_factorial_div_factorial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-eq-asc-factorial-div-factorial.md) | 252 | `result-track:071385ec2e3b903cc3e81b19bfb7fedebf32e144621179fe44b2d3d0c56394a4` |
| 36 | `theorem` | [choose_eq_asc_factorial_div_factorial'](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-eq-asc-factorial-div-factorial-source-edition-2.md) | 258 | `result-track:2b9784f4846690978c14c9bfdf5c49642d9ff0c81b3f99fc951f8c7001be41ed` |
| 37 | `theorem` | [descFactorial_eq_factorial_mul_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/descfactorial-eq-factorial-mul-choose.md) | 262 | `result-track:d3c1c9bb51069827eb88365d9f5ff764844317a328d500061fccc840eb2d26f4` |
| 38 | `theorem` | [factorial_dvd_descFactorial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/factorial-dvd-descfactorial.md) | 269 | `result-track:e3d91d5ad38841673263f2ce45e60cd3674bc5694c5a88c484051e5abeafb474` |
| 39 | `theorem` | [choose_eq_descFactorial_div_factorial](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-eq-descfactorial-div-factorial.md) | 272 | `result-track:0888b9a2f442b9807272d7179c964d8ba21bc862e68151d1cd8cc53c60a26453` |
| 40 | `def` | [fast_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/fast-choose.md) | 277 | `declaration-track:a15672c9a1a3773e73bb07918e18a84d38603f2e6e6fbbbbdac536e699305a13` |
| 41 | `lemma` | [choose_eq_fast_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-eq-fast-choose.md) | 279 | `result-track:a96f0c202bd093dfc18f7fe06773c1ac360c21a83dd92664aaced91ffd15173e` |
| 42 | `theorem` | [choose_le_succ_of_lt_half_left](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-le-succ-of-lt-half-left.md) | 287 | `result-track:50e7fe83281f3466180dae214f126e0d6a76be33be1e8aad59d12802b206ebab` |
| 43 | `theorem` | [choose_le_middle_of_le_half_left](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-le-middle-of-le-half-left.md) | 296 | `result-track:350111432775bdaaad1bb98eb7d8e8a695ac258c994e5f0224e16cfd3404755d` |
| 44 | `theorem` | [choose_le_middle](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-le-middle.md) | 303 | `result-track:8b9e80d7c66187b9e70def07ac46deafe7fb23bc4f1255ffa2e2554b6f3c0200` |
| 45 | `theorem` | [choose_le_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-le-succ.md) | 319 | `result-track:96a3b956b0b59d0f5fb0b176988319f268f7de99b95f53c402282455639e8349` |
| 46 | `theorem` | [choose_le_add](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-le-add.md) | 322 | `result-track:676c7e7c481d678700f53edb24f01e1bc80837155d822c92d5523176252c1e8f` |
| 47 | `theorem` | [choose_le_choose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-le-choose.md) | 327 | `result-track:7ce1a426f5db7c54881bbea1c00fe472cbfb987b17ef37efb3d0860dd39bcb30` |
| 48 | `theorem` | [choose_mono](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/choose-mono.md) | 330 | `result-track:93757943e31bf44465385aaf16e6523e0a2951323efe3957568d1b5261dbc134` |
| 49 | `def` | [multichoose](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/multichoose.md) | 353 | `declaration-track:9f1fe1c39e4fb024aa491e4e1592ab6168fe35c07af6bdd6797e165b30be81f1` |
| 50 | `theorem` | [multichoose_zero_right](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/multichoose-zero-right.md) | 360 | `result-track:98bf5ef3877f9f7b525f3344f5aed1b53ce9daeb7c0950ae7204a9a0c02bb7be` |
| 51 | `theorem` | [multichoose_zero_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/multichoose-zero-succ.md) | 363 | `result-track:5fde64efef96e0935358b32907fe534eba5abcdafe5400a338e4c0550def8444` |
| 52 | `theorem` | [multichoose_succ_succ](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/multichoose-succ-succ.md) | 365 | `result-track:1782800110d0eb5847c307adb3a5ade45d2e95521c02b22c0f6b2bef87bf54b2` |
| 53 | `theorem` | [multichoose_one](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/multichoose-one.md) | 370 | `result-track:f8734b2c99bc7c868f89994b5c575e10c2b972ae4ab693e46be10148e6c53901` |
| 54 | `theorem` | [multichoose_two](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/multichoose-two.md) | 375 | `result-track:6d22981d9e83d403e7c8ff951ccf531327c4464ffeb8cc765c3fed8873dbaaab` |
| 55 | `theorem` | [multichoose_one_right](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/multichoose-one-right.md) | 381 | `result-track:d3d9bfefcbf2c4c6512c11ecbb14c26b6c63389a541d8d93186dbf28e3d2e442` |
| 56 | `theorem` | [multichoose_eq](../../../../../NumberTheory/ElementaryNumberTheory/ChooseBasicNamespacedSourceEdition1.lean/declarations/multichoose-eq.md) | 385 | `result-track:776a8a8705a1cb6028d5ef19ab6ab8d4077b32de09e6886fe84c71810aa8e2b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af5c01b7e66f877e5b8efb8b1b7d27c3b71392d1f02dd84c08e3cce629d15c97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantc484dc2600ee814a72058715296205e650748a85e1a8c3664ef607d21420158a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Basic/Variantc484dc2600ee814a72058715296205e650748a85e1a8c3664ef607d21420158a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
