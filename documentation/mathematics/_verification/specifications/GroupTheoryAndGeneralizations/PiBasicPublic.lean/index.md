# Verification target: Pi Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "509629505ac5c06492c006b30c1482a2ba99abce",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd690aed1932b7dd6797ae2402ad29c124e85f94a15db1eefe3523f590fdb7c33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `509629505ac5c06492c006b30c1482a2ba99abce`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd690aed1932b7dd6797ae2402ad29c124e85f94a15db1eefe3523f590fdb7c33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd690aed1932b7dd6797ae2402ad29c124e85f94a15db1eefe3523f590fdb7c33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [isMulCommutative](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/ismulcommutative.md) | 47 | `declaration-track:98d334f6aa886329ea0bd88cb68577429c698b9dd9bbe2913cd969fa3e062cb2` |
| 2 | `instance` | [commMagma](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/commmagma.md) | 52 | `declaration-track:da315856df83813aed0b5c8e652350e766b7c9fe1d329e6713e25eb974e99e69` |
| 3 | `instance` | [semigroup](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/semigroup.md) | 56 | `declaration-track:8fb8c11b32d8a88a03b4bdc072d66078a71bca1a54aa7f58128ee6b3655c4b2f` |
| 4 | `instance` | [commSemigroup](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/commsemigroup.md) | 60 | `declaration-track:2fa145c0657f7e93a87e9038de0bf76bf729b491645b6226e990306f3e52afbe` |
| 5 | `instance` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/muloneclass.md) | 63 | `declaration-track:be823a19dd6a1dfed918568f9d934b4c5d27821e5b72d73f62a17915cdebb199` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/instance.md) | 68 | `declaration-track:3e0a913727be754f9c4e799daa5f6849000225f75d46c757c1cfdc0417b14602` |
| 7 | `instance` | [invOneClass](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/invoneclass.md) | 73 | `declaration-track:b714d1ce58b09336180d2af356affc378ee27c7fd6ec7931e884515af6abcd16` |
| 8 | `instance` | [monoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/monoid.md) | 77 | `declaration-track:cd3748e0caf1e1d049f66aeae37f61e65121f4ed56752b901470d09f3a0e75e7` |
| 9 | `instance` | [commMonoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/commmonoid.md) | 85 | `declaration-track:1788d30441237d24f2b81a9c224e1ee25b641782611f5c6bd86d44f2d759c6e1` |
| 10 | `instance` | [divInvMonoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/divinvmonoid.md) | 88 | `declaration-track:5c51be1227938c179448f14f3be85f5aedf99523ea763b5daafdfc49eab7e77d` |
| 11 | `instance` | [divInvOneMonoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/divinvonemonoid.md) | 96 | `declaration-track:43012cb957cc64bb419dfde4a70dbfbbd512f711f0414e5c40bbb1506a05ca8d` |
| 12 | `instance` | [involutiveInv](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/involutiveinv.md) | 100 | `declaration-track:f48928898b03af536da6690aee03bab45d0a6f7198bd9070a7f47987a9446bd5` |
| 13 | `instance` | [divisionMonoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/divisionmonoid.md) | 104 | `declaration-track:35f9dd5cce2964ad019ea3cad1b17a8aa74375a6923ca2546a66f8e179ec672b` |
| 14 | `instance` | [divisionCommMonoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/divisioncommmonoid.md) | 111 | `declaration-track:dbeaa636c32ac7f1823d393d211c29d8655ac0fd94d2a6bfcec4dabd7fcd6ea0` |
| 15 | `instance` | [group](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/group.md) | 115 | `declaration-track:7bc13da2033d626f66e35b892d91533d693f4fdb043f08b9424a010ccec49d4f` |
| 16 | `instance` | [commGroup](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/commgroup.md) | 119 | `declaration-track:56395116587a5bf3f93ec531bfec9e0776e731ad83ef43ee41de7455113a73eb` |
| 17 | `instance` | [instIsLeftCancelMul](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/instisleftcancelmul.md) | 121 | `declaration-track:c88ea81ed242a2ff18798c52eb569ddecca659c7c17d5511869a873a03f22266` |
| 18 | `instance` | [instIsRightCancelMul](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/instisrightcancelmul.md) | 125 | `declaration-track:6cc0340672f5c0c2c2345fea7794e1624f500267debc94f1113afd40cfa8b8b0` |
| 19 | `instance` | [instIsCancelMul](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/instiscancelmul.md) | 129 | `declaration-track:5bc5cd0a1eb4cdd34b03f44c8e020e1ab0820b9d72917bec841f2764069b9afb` |
| 20 | `instance` | [leftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/leftcancelsemigroup.md) | 133 | `declaration-track:637da6def2c53f1a242f6ce0d08390279ddfb113d27a48e8bb21762c54e83fb5` |
| 21 | `instance` | [rightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/rightcancelsemigroup.md) | 137 | `declaration-track:1782e2be291c31e13490d28b2fd3dd7e4621a715da26d9a8394c96f7ec4da939` |
| 22 | `instance` | [leftCancelMonoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/leftcancelmonoid.md) | 141 | `declaration-track:e997344fd4194e5221416e91d7e26fc4bfa2a4a6ebaff47620bdd25309a34851` |
| 23 | `instance` | [rightCancelMonoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/rightcancelmonoid.md) | 145 | `declaration-track:a4f02be9887d9d4c5e6bf7b53166377c0ba2e72ba4f6ba5404a1fb419ac43cec` |
| 24 | `instance` | [cancelMonoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/cancelmonoid.md) | 149 | `declaration-track:e0cb3f3fc6994f2fa67aa823dfc379ca38ca05603fe425d6ddfa35f15ea949a9` |
| 25 | `instance` | [cancelCommMonoid](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/cancelcommmonoid.md) | 153 | `declaration-track:85052e0550cb30704b81aad96e2d2189a5fddb6952247768ac3b0ba540fa09b0` |
| 26 | `theorem` | [extend_one](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/extend-one.md) | 163 | `result-track:82e65443340ba532b4848802830298fe9e69ec53f981c7ddcdfe935f957545a6` |
| 27 | `theorem` | [extend_mul](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/extend-mul.md) | 167 | `result-track:4dd781112614619b67cba638a4bb92b65be5531eb74e99ee83c6ed67b16ee8af` |
| 28 | `theorem` | [extend_inv](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/extend-inv.md) | 174 | `result-track:426238cf09558939d59cb20b2f3daec35fdb8ed192ed8a35bf16980272bb7d61` |
| 29 | `theorem` | [extend_div](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/extend-div.md) | 181 | `result-track:2f92434edbada1639cb9d7cb137c1662db745c423a92acd9d62b6cc6492ec617` |
| 30 | `lemma` | [comp_eq_const_iff](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/comp-eq-const-iff.md) | 189 | `result-track:48dbf461840ab1f3e07011d30a694b480d2d0b4b658e0a4ad8ee7acb3b3b75f4` |
| 31 | `lemma` | [comp_eq_one_iff](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/comp-eq-one-iff.md) | 194 | `result-track:a14032f7e789b0ca79513bc6b9d8767ebd953ff13220343fd50a298679c3333d` |
| 32 | `lemma` | [comp_ne_one_iff](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/comp-ne-one-iff.md) | 199 | `result-track:10d3b1687f13d8e14fae32c8950d359a0671e594664abba26cec5d66065cac29` |
| 33 | `def` | [uniqueOfSurjectiveOne](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/uniqueofsurjectiveone.md) | 208 | `declaration-track:99a0548a01e9f13ca9da3185e8048a4b8ef110537d6549f750b5c9cc9866236c` |
| 34 | `theorem` | [Subsingleton.pi_mulSingle_eq](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/subsingleton-pi-mulsingle-eq.md) | 213 | `result-track:3de89feca7956c8a4836273d6d05d9571bf360ad838cde80f104e0f47b47b25f` |
| 35 | `theorem` | [elim_one_one](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/elim-one-one.md) | 222 | `result-track:d5dbc036a0b66f74a0c6da530b4e75f6dfd92f5fc5b029c50744ed222bed3761` |
| 36 | `theorem` | [elim_mulSingle_one](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/elim-mulsingle-one.md) | 226 | `result-track:97b2bf1c9c108909d86475ad87b47a0d129a69dea7bb995a23ca4f0c76a06533` |
| 37 | `theorem` | [elim_one_mulSingle](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/elim-one-mulsingle.md) | 231 | `result-track:d751b0194cadc4eb2cfdaa1f49a1c221f514fa04f3f8b5395bd8047a890833f4` |
| 38 | `theorem` | [elim_inv_inv](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/elim-inv-inv.md) | 236 | `result-track:29d0f2ed1a9aca83e57146a7342971a19c7d750677b08c9670369bec935bd70c` |
| 39 | `theorem` | [elim_mul_mul](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/elim-mul-mul.md) | 240 | `result-track:517f20636d3d168963167f164700a412ae71d738609fcd708c9e4db17d056449` |
| 40 | `theorem` | [elim_div_div](../../../../GroupTheoryAndGeneralizations/PiBasicPublic.lean/declarations/elim-div-div.md) | 245 | `result-track:2239887ff1c67f885f594358497613e63fe680a746e424bb372d6be7af6226a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3eb3222849f30c419c136985b3c36bb2536b66e466dd5ea904e6301198d993bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantd690aed1932b7dd6797ae2402ad29c124e85f94a15db1eefe3523f590fdb7c33.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantd690aed1932b7dd6797ae2402ad29c124e85f94a15db1eefe3523f590fdb7c33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
