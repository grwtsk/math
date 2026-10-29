# Verification target: Basic Basic Public Partial Order

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f7c06d86dd7e22926b1e6c87191b90941fe5424",
  "lexical_observation_count": 152,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/index.md) · [Full source](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f7c06d86dd7e22926b1e6c87191b90941fe5424`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PartialOrder](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/partialorder.md) | 39 | `declaration-track:c8f7415de13bcec2fdef6dc2d622eac4bf9c35bccb144421845d746db75e8e7e` |
| 2 | `theorem` | [PartialOrder.rel_of_eq](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/partialorder-rel-of-eq.md) | 61 | `result-track:c47656c052ed637dd01792fb1517c545360da160770457bcbcb1acecd7234165` |
| 3 | `def` | [chain](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/chain.md) | 68 | `declaration-track:77ac0b67960d86c978c143fbf54ac7034d489e2d680717eaacaf527eaad4ff44` |
| 4 | `def` | [is_sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/is-sup.md) | 70 | `declaration-track:221acc9c98530bd4e9f8963b036fb3b54958e7f696c4876c185b1f4e6668f2a2` |
| 5 | `theorem` | [is_sup_unique](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/is-sup-unique.md) | 73 | `result-track:f22f7e02d94294b6cdc4ea5b3e6bb5af5e1d9b9f69ae4d15ff219cd6cd6a6f92` |
| 6 | `class` | [CCPO](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/ccpo.md) | 95 | `declaration-track:2063f06ddbb8607c5f2c31349c0f7a8670c61f88ecae87f2e949711340465a1f` |
| 7 | `def` | [CCPO.csup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/ccpo-csup.md) | 105 | `declaration-track:6794769831ff7c525cfabc32dfba2b130fdae58aaeedfee9b06213c25085929d` |
| 8 | `theorem` | [CCPO.csup_spec](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/ccpo-csup-spec.md) | 108 | `result-track:c0b6b04d2996ad786fd8d1bc2d0dcfa0dec8e85e3ac0c1314da1c9dd0f48da38` |
| 9 | `theorem` | [csup_le](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/csup-le.md) | 111 | `result-track:95be3311bd0201ea2cce84c5b737486cbfb61b82d2933be402eddff18c038ff2` |
| 10 | `theorem` | [le_csup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/le-csup.md) | 114 | `result-track:348fa877f8de6fb5a1aaf6b016ff37d94763c746fe2714c426c827363e32ce62` |
| 11 | `def` | [empty_chain](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/empty-chain.md) | 117 | `declaration-track:9a603ec43f6c5acb9106eac338ba5483a9bf27f97b0633c7317aa8851457196a` |
| 12 | `theorem` | [chain_empty](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/chain-empty.md) | 119 | `result-track:8085d01442f4ca05a58c38a66ab84ebad036c938e6d272d86218e0b004e86e96` |
| 13 | `def` | [bot](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/bot.md) | 127 | `declaration-track:2d477c816d0fdae8b0978ffef63204b3e7032c2dd020a4c1e78fef3feebd1344` |
| 14 | `theorem` | [bot_le](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/bot-le.md) | 131 | `result-track:5564b0f203c4472689e647e2b3e1d7ae1bd68fc8cbf8b2eb193e4471ca380f8b` |
| 15 | `class` | [CompleteLattice](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/completelattice.md) | 143 | `declaration-track:7f9a905aa89028df3c2dec65f79983b6099825587a51865758c26d021d65c356` |
| 16 | `def` | [CompleteLattice.sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/completelattice-sup.md) | 153 | `declaration-track:e6affd469a7cbc32416284570b6c5d5157a7b592f20397eb96456588c0b72ddb` |
| 17 | `theorem` | [CompleteLattice.sup_spec](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/completelattice-sup-spec.md) | 156 | `result-track:bc782129ea27e561e132537bd38605f0062f170b4b459152b35c55f87de9622f` |
| 18 | `theorem` | [sup_le](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/sup-le.md) | 159 | `result-track:c9c3aed1b6c8810abac419f5f67a8f85f0f3b76447044f6785b8eb295d2a6b36` |
| 19 | `theorem` | [le_sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/le-sup.md) | 162 | `result-track:64ade980e9c398f801d6e47183ede84598b76f47ee6f7fe6d72d26687649c0a6` |
| 20 | `def` | [inf](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/inf.md) | 165 | `declaration-track:1c78bd9688ea1658b4b6f3fef836369775991825b318b669ccd8dadfa80cd441` |
| 21 | `theorem` | [inf_spec](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/inf-spec.md) | 167 | `result-track:710fb3318e0e3fa2689ed3727494174015e2dceea06661878f6ab4fc8d08fe7f` |
| 22 | `theorem` | [le_inf](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/le-inf.md) | 185 | `result-track:56c3f0486e47a84335a64e95b2e38a0781ef8810662e4ac3077e9ed224d87ba0` |
| 23 | `theorem` | [inf_le](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/inf-le.md) | 187 | `result-track:169c12cd76fe097e5584f3e295b80f696ec3ef49f7a5e513f77174567608fbef` |
| 24 | `def` | [monotone](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone.md) | 201 | `declaration-track:ee55d7bf1ceccf5c79d11ba5a6b40026dd19ebec24fa5efa92b117efd59a9f50` |
| 25 | `theorem` | [monotone_const](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-const.md) | 203 | `result-track:6a29bf997bccabace44e419deb0aaa26e06f7f025486c71a5913aab1cf279287` |
| 26 | `theorem` | [monotone_id](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-id.md) | 206 | `result-track:8a22f1932619f5db60df34b1a598a6d2e6825ca30de87d97c4a8682b90878c86` |
| 27 | `theorem` | [monotone_compose](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-compose.md) | 209 | `result-track:84e1a61d521dbb0612601626c0b0f528d9fd843dac2bd045812c0a73e6c804f5` |
| 28 | `def` | [admissible](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible.md) | 232 | `declaration-track:6ee104f9aaa26cdcec8bcc6eda728616ea09f5ccdaab0169b31d815088c22130` |
| 29 | `theorem` | [admissible_const_true](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible-const-true.md) | 235 | `result-track:bdc3d0201a7f3776c85d733ec4d85f6f4013e37a81a6d2878e93cc5ec6019846` |
| 30 | `theorem` | [admissible_and](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible-and.md) | 238 | `result-track:733c2b344a03f823d761484eb21159526b126f2e2226239fa0fde74aafe67420` |
| 31 | `theorem` | [chain_conj](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/chain-conj.md) | 244 | `result-track:d7c992128dd46ce87368e5d99e2748129d15bc3afce709418f5033f850a30a3c` |
| 32 | `theorem` | [csup_conj](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/csup-conj.md) | 248 | `result-track:7b99b64f43c36e685591b5dc41b277bf11d73d7de3f880802321417b85178919` |
| 33 | `theorem` | [admissible_or](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible-or.md) | 260 | `result-track:737091f81672021687673bdf7d491d464b50e493eb394f89d6ab1e1e39986db7` |
| 34 | `theorem` | [admissible_pi](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible-pi.md) | 295 | `result-track:759d9c1b04a2fedd54124531d58a476d92b726d3d34b598ae840f36659d98368` |
| 35 | `def` | [lfp](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/lfp.md) | 310 | `declaration-track:55f7d7d5046e3ebb8facdc24d4d4d73c94aa5cf84648d80773b3db325d724217` |
| 36 | `def` | [lfp_monotone](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/lfp-monotone.md) | 315 | `declaration-track:1af54448fc3e7a43519483b78433d512eeb7427c9e9ede890e792a58387049de` |
| 37 | `theorem` | [lfp_prefixed](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/lfp-prefixed.md) | 319 | `result-track:af1b58349f45362c28b4c1ee5badc313fc33d197ca72a61a681b3e71d127f9f1` |
| 38 | `theorem` | [lfp_postfixed](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/lfp-postfixed.md) | 330 | `result-track:cebf8c0f2f053a62ac4d97072d62e481b2e225dca89c0e42475d0b2ad3fc65aa` |
| 39 | `theorem` | [lfp_fix](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/lfp-fix.md) | 337 | `result-track:5194f68adcb5c1c2d8d854e939791b0c1437f73a40866df8c6937c05a728fed2` |
| 40 | `theorem` | [lfp_monotone_fix](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/lfp-monotone-fix.md) | 346 | `result-track:05fb11a3e05298a5d46fbfece03b5ea3f61cdc2c1b43e6d8888ec57d804f828b` |
| 41 | `theorem` | [lfp_le_of_le](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/lfp-le-of-le.md) | 354 | `result-track:53ca96a35b37e01be7947b7bd2047d1962ae8cfff0a6b3776f0f280a79ded5cf` |
| 42 | `theorem` | [lfp_le_of_le_monotone](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/lfp-le-of-le-monotone.md) | 361 | `result-track:dbfd85ef8ce2f1e3fe7b19e2dc1338bc228f0a0dea39e72fa8c0f55c8f1ab0df` |
| 43 | `inductive` | [iterates](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/iterates.md) | 382 | `declaration-track:ee11166e8906e1f71bd271f2407302d22cf9f81059602088be515c7b3808e6d1` |
| 44 | `theorem` | [chain_iterates](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/chain-iterates.md) | 386 | `result-track:c90002a9ad37339a43987056dffeeb836984daf0693910150844ef16a4001e69` |
| 45 | `theorem` | [rel_f_of_iterates](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/rel-f-of-iterates.md) | 430 | `result-track:b66d9ee57c8b09688ae26f10e06ba72b0aa88bea31b6cea27fcad3ff321eea47` |
| 46 | `def` | [fix](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/fix.md) | 452 | `declaration-track:e608ec6e5c3c08e795841b0ba499c9c8c883427344cee99b6f95c42ad738f67b` |
| 47 | `theorem` | [fix_eq](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/fix-eq.md) | 459 | `result-track:0bd24a5608d6f23aa95176eb0ff9e8d20d3c7302268f12ae96aa77246017fd74` |
| 48 | `theorem` | [fix_induct](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/fix-induct.md) | 476 | `result-track:f560631826dd0a35859790e3fcfa18c4b5a2de93c4e16d075b9dfba66b3f27ed` |
| 49 | `instance` | [instOrderPi](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instorderpi.md) | 495 | `declaration-track:0fdfdd13085af68326ffb9edbf49161712c67c1e22518ce8b9e028b5d0c9b452` |
| 50 | `theorem` | [monotone_of_monotone_apply](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-of-monotone-apply.md) | 501 | `result-track:96b1df96a0a2106473c4a534c73689efbf3c8e1ca6f3459cf50e304f2e7f5d7f` |
| 51 | `theorem` | [monotone_apply](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-apply.md) | 505 | `result-track:5ff45e97bcb6bf5470f43d01d07d411b81f999543c179dd66463ea220b7999c2` |
| 52 | `theorem` | [chain_apply](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/chain-apply.md) | 509 | `result-track:bfb9c357d4bf805e2a9734078c3f5580bdadc2cdd0a1bbd818d120c67ce597a5` |
| 53 | `def` | [fun_csup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/fun-csup.md) | 517 | `declaration-track:f08e7385c85611b0d283d51a3e953ebc20569c3601c937dbd0edbb410bc1af01` |
| 54 | `theorem` | [fun_csup_is_sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/fun-csup-is-sup.md) | 520 | `result-track:f82c96c128aa7896082d9b6d87f45ad65414b061ac26861aba598f59984cecd6` |
| 55 | `instance` | [instCCPOPi](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instccpopi.md) | 536 | `declaration-track:7774e9cfd4d44db6c14ed992dac8059fc194bbc9a4abc3d9d99152e9ab790e94` |
| 56 | `theorem` | [fun_csup_eq](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/fun-csup-eq.md) | 539 | `result-track:1d68fdaa44bc47e1dfdb7faa7b09793a352bb26bfb55706d3b0252f16a5d5765` |
| 57 | `def` | [fun_sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/fun-sup.md) | 545 | `declaration-track:6743baa680289a113d1afca295ab148ea1e2f9834ca58c9138c75b949ae21b90` |
| 58 | `theorem` | [fun_sup_is_sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/fun-sup-is-sup.md) | 548 | `result-track:dda563f8adaf8a1b781d614ac43d0a862e9b9dd149f007028bc257ba8973bf4a` |
| 59 | `instance` | [instCompleteLatticePi](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instcompletelatticepi.md) | 564 | `declaration-track:fce6e3def42442d585e0a29f60e96571a42422a28057caa20cd0b8eff70b9912` |
| 60 | `theorem` | [fun_sup_eq](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/fun-sup-eq.md) | 567 | `result-track:b5a6c315e3a3ee5061ce45b4b43a2428f0e8e353b7bd340083618cc7b752bf68` |
| 61 | `theorem` | [admissible_apply](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible-apply.md) | 573 | `result-track:7b962cedf2a7da448f7ef425cd83c1aab8e234c4e9e8f20ea80cbc2fbb2aa71c` |
| 62 | `theorem` | [admissible_pi_apply](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible-pi-apply.md) | 581 | `result-track:e7d6cc908f27cdea261bf1b14d97503787a616eb26a836af3cb5d349e093f2d5` |
| 63 | `theorem` | [monotone_ite](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-ite.md) | 593 | `result-track:be9c973277935e77c81eba6bedd840b1e7a1c22827d82623333a1b7a314a801d` |
| 64 | `theorem` | [monotone_dite](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-dite.md) | 604 | `result-track:2831ad9e226820b3a7d9685aa86c959f00b45202de54f925653f87356fbfe97b` |
| 65 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-22.md) | 623 | `declaration-track:efb54784794edd30dc47473717e5c9e453ef4df21cfe3196bc1f07fa6e1598b3` |
| 66 | `theorem` | [PProd.monotone_mk](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/pprod-monotone-mk.md) | 633 | `result-track:ce55d298632b8f1d5463d79fcd0a4b2f0aea7c09a59e8afc31c62352ca8703be` |
| 67 | `theorem` | [PProd.monotone_fst](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/pprod-monotone-fst.md) | 639 | `result-track:60b9eec8f2b5a9488b0f5895c355384c3aede5ca6e6fe3e01b5b88bfa33c2af5` |
| 68 | `theorem` | [PProd.monotone_snd](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/pprod-monotone-snd.md) | 644 | `result-track:1c7019677ebc2f9dce803eba8ab7d043f5d0852ac1153114c964e63e2d8b8ea1` |
| 69 | `def` | [PProd.chain.fst](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/pprod-chain-fst.md) | 648 | `declaration-track:d5927fcf3bd75aecb8774003ebe4ed39d9e0abf1fe909707229c58ecc19a68f1` |
| 70 | `def` | [PProd.chain.snd](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/pprod-chain-snd.md) | 649 | `declaration-track:10636c0458258dee66e978b86a827b33959991696c2cf64959ae1c442e06e5e3` |
| 71 | `def` | [PProd.fst](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/pprod-fst.md) | 651 | `declaration-track:65bdaca0e16e4eb5bf9abad5203a439a81849ced4a728dd36bdd678ca5bb817d` |
| 72 | `def` | [PProd.snd](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/pprod-snd.md) | 652 | `declaration-track:cd9595178074207503809673759012d88d24872a971ffcbb465b2b16fa6fe812` |
| 73 | `theorem` | [PProd.chain.chain_fst](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/pprod-chain-chain-fst.md) | 654 | `result-track:0ca450d2c6046d0e2a090b63797d653b5e8b787897dfcc223da4078331acdd01` |
| 74 | `theorem` | [PProd.chain.chain_snd](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/pprod-chain-chain-snd.md) | 661 | `result-track:15823707b6bfe06abfde2768d778083b4e40b1d862a7650717972d52f649cce3` |
| 75 | `def` | [prod_csup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/prod-csup.md) | 668 | `declaration-track:4ff7ae8eae53353f86f5072c7ff9465d3829724f183b351551926e0ff037559e` |
| 76 | `theorem` | [prod_csup_is_sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/prod-csup-is-sup.md) | 671 | `result-track:e6c184c60f1e6eef2d4c9730451a6b0be987c0195c0226cd19eab79b6dc35472` |
| 77 | `instance` | [instCCPOPProd](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instccpopprod.md) | 694 | `declaration-track:97ed5a63260bdfee6fac6fcbfd8ca96d44c051b0c2ef8aa7a33a7fdab717be93` |
| 78 | `theorem` | [prod_csup_eq](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/prod-csup-eq.md) | 697 | `result-track:24905726e7e17b8528a2fa1ac51406dac3b3d85a2b9dbd3cfd99a2b767bdded3` |
| 79 | `def` | [prod_sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/prod-sup.md) | 703 | `declaration-track:371667d5c783fbafd39424099ad56ba1415f430d8964518296b68a4cce5af309` |
| 80 | `theorem` | [prod_sup_is_sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/prod-sup-is-sup.md) | 706 | `result-track:04202d4ac3265fe93e692cc6d205ee2762a8fa1959c822aa0c1299153a93d7c2` |
| 81 | `instance` | [instCompleteLatticePProd](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instcompletelatticepprod.md) | 739 | `declaration-track:aa43b4b8907fb88b3f82e4284e224ec54681b6f09f071c312768271844e48dc5` |
| 82 | `theorem` | [admissible_pprod_fst](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible-pprod-fst.md) | 742 | `result-track:dd4505d1dde40f4cf5c8e5613b34bc45c7bbcc4662a28615364523db86bf8d3c` |
| 83 | `theorem` | [admissible_pprod_snd](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible-pprod-snd.md) | 750 | `result-track:5db6e459037b7fd99fc24ca4c5fa637e94ec94b362baa3120d891b6e09f3fccf` |
| 84 | `def` | [FlatOrder](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flatorder.md) | 770 | `declaration-track:d4124224e1716e8622cbd0173cc96ff3fb3b7689b5dce0adbe88d380deb844e8` |
| 85 | `def` | [FlatOrder.mk](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flatorder-mk.md) | 772 | `declaration-track:0dc577abaad6601b0344702cb0ff82101e1d7302a888304186411b7758c2a905` |
| 86 | `def` | [FlatOrder.inner](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flatorder-inner.md) | 774 | `declaration-track:51184f3bcfa988ea40ffe60a80a7d891cbb4166976864a8f702f87aa4825482a` |
| 87 | `theorem` | [FlatOrder.mk_inner](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flatorder-mk-inner.md) | 776 | `result-track:5f69dd585a8a50c40f8116e28e372eec1c44a6b09e5e9c3cbd738146139bbf41` |
| 88 | `theorem` | [FlatOrder.inner_mk](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flatorder-inner-mk.md) | 780 | `result-track:feb2819f4b6fc5a164316d361d0ffe76cb7cee3407283ff93acc49bb56fa98ac` |
| 89 | `theorem` | [FlatOrder.mk_inj](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flatorder-mk-inj.md) | 785 | `result-track:bbb89ff6e86551365b98bf604dbbabf6dd3dc48b847d0bc18a6c7c57717535f1` |
| 90 | `inductive` | [FlatOrder.rel](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flatorder-rel.md) | 796 | `declaration-track:9299255134fa6022b5f1b89799800ea6b4f5cd4495eaa0d5c0bb9ce177680471` |
| 91 | `instance` | [FlatOrder.instOrder](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flatorder-instorder.md) | 800 | `declaration-track:4ca2bd104e88c69680fafcfcbcd199bcb242ccb51d25e0bd5c4113f0413758b7` |
| 92 | `theorem` | [Classical.some_spec₂](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/classical-some-spec.md) | 809 | `result-track:3269ae8bcae968d00264097a08dcccccb7730861ffd8cc2994ae2ec9c338d087` |
| 93 | `def` | [flat_csup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flat-csup.md) | 812 | `declaration-track:96288fe28ae8d6a1bd291577cce61a1691b67359ec8fc0a1d7b93da2eebf2364` |
| 94 | `theorem` | [flat_csup_is_sup](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flat-csup-is-sup.md) | 817 | `result-track:f874b5dafc77bf9c66b68a8267a13f32488e859384e28b175a2b58a4f5b6cbe3` |
| 95 | `instance` | [FlatOrder.instCCPO](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flatorder-instccpo.md) | 851 | `declaration-track:409f83ceefe5dce5e93ea7aa3121e467b8ebb453ae44b09aad7781228090b4f3` |
| 96 | `theorem` | [flat_csup_eq](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/flat-csup-eq.md) | 854 | `result-track:fb5d1d756515a0251cbf72ba0cef721e569b9cb9e37b2f38bcd377f1379c4cef` |
| 97 | `theorem` | [admissible_flatOrder](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/admissible-flatorder.md) | 860 | `result-track:3adebec6672949e5c017063ce0ea5f879006ad8e053ff056b443aae4e52bf5c1` |
| 98 | `class` | [MonoBind](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monobind.md) | 879 | `declaration-track:97f2c0ce045a36d6fa318f7cedc8d1affbe6c739be177f312b9b4ee0fa7ea8a7` |
| 99 | `theorem` | [monotone_bind](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-bind.md) | 884 | `result-track:5f4adc23c07e657e160d3350b09eb60e39698c6a20a4b6078cf62234ab9c5760` |
| 100 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-8.md) | 897 | `declaration-track:62c29078e7594c55a6d70c911ee5741ca79955bacbd2ed8fe58aed66c7cf7743` |
| 101 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-3.md) | 898 | `declaration-track:1e8ff9c86c7b7f9041ea1bfe662d4e3a8a84c0efd91f4631479810f391b1f7e8` |
| 102 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-12.md) | 899 | `declaration-track:96a3601541d1621a766e6970a1f9d35381689a34a98868acc931871c4ac60732` |
| 103 | `theorem` | [Option.admissible_eq_some](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/option-admissible-eq-some.md) | 909 | `result-track:76acb7a889b796a188528145e56ac8db4c765d745e922c6474a746f32ee64642` |
| 104 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-17.md) | 914 | `declaration-track:c9a945a822b90cc71307ff7d0d1ebc1438c58c63207b4da0547c96e3e1536d3c` |
| 105 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-10.md) | 915 | `declaration-track:9085e9e007ed37061b7eb13aff34ed8096e591fc4512402b57585f0952278441` |
| 106 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance.md) | 916 | `declaration-track:0de7773a5ccb536c98ddd26cad08ae065b77df33df6479c26cf128cea8ea7b21` |
| 107 | `theorem` | [monotone_exceptTRun](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-excepttrun.md) | 928 | `result-track:d39a3752f6ff094f4cd6f3471cf99047596058f036ffb1ad354fafc91ec87f74` |
| 108 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-7.md) | 934 | `declaration-track:4d9834d3961380dd3a211e6a372b807df897e5d54104c5b27ff1593f68cd64e1` |
| 109 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-2.md) | 935 | `declaration-track:1884e369bd76a8e9b9688905f73e4d271340c98f27f06d5cc1768fdfe4583d8b` |
| 110 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-11.md) | 936 | `declaration-track:950e012e7e9cc7036961b8557ec38b9db74da2689a245d6b8af106369ad69753` |
| 111 | `theorem` | [monotone_optionTRun](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-optiontrun.md) | 948 | `result-track:2641dabe93262a05d0f6b522e5996f0777091af5bd35288db3f4b431a0c3730f` |
| 112 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-23.md) | 954 | `declaration-track:f21417a0f75b36e601f15c1d9910185061cf547f1c883d11d722e0334fd44e92` |
| 113 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-19.md) | 955 | `declaration-track:cc36a1d9602b29916ee0d531dd92b782f20daf0e12d160d3719953707f54607a` |
| 114 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-5.md) | 956 | `declaration-track:3c38e23962899db4d601c71e12058accc4030c018e4bc7ff783855c7fb7b159f` |
| 115 | `theorem` | [monotone_readerTRun](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-readertrun.md) | 968 | `result-track:ad38cd23f9ec5a901a18a1f61ad2d5aa47bf749e4715404af907f9c779de21ad` |
| 116 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-24.md) | 974 | `declaration-track:f5bae818e78a20edd2eaa4e4548df312668e377640d1d1c78c6a676e2f37e630` |
| 117 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-20.md) | 975 | `declaration-track:d1b6f218d47050e5c3e99e103152047c98dfb35eda83e005f54bdae71c6a67ab` |
| 118 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-6.md) | 976 | `declaration-track:474305096acf700a4301f4954ff535491716c9210ddbfe923c53be832bf0b8e0` |
| 119 | `theorem` | [monotone_stateRefT'Run](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-statereft-run.md) | 980 | `result-track:025c1e32127d17a3f3886d0eb5742236d3da9afa4c8af234386a8b9d9f7db2b3` |
| 120 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-18.md) | 991 | `declaration-track:cbb232f72b8159d789c9b386521317e003b8ceaac3e7ab36edf198778beceaea` |
| 121 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-13.md) | 992 | `declaration-track:99304e9e46d0aafe15e5fd5b73617b1fce1db5075562417106498e4c89909a47` |
| 122 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-16.md) | 993 | `declaration-track:c7fa610896dac926bba1266d96629ad61badf6e839577c1543f36222bdeab8a1` |
| 123 | `theorem` | [monotone_stateTRun](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/monotone-statetrun.md) | 1005 | `result-track:6270c86af0990fa718058b7025bfe39e3c94c0cf92143a6359ccabeae2d83166` |
| 124 | `def` | [EST.bot](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/est-bot.md) | 1011 | `declaration-track:ba0e4c85dc828ba9d95f81cccb22e90037eeaaecd0f482093242dc2d9d630a71` |
| 125 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-25.md) | 1019 | `declaration-track:f76545f2a0f9dbaf71722792cfc425e8bcae12f045e8d89850d32dbefc21aa8d` |
| 126 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-4.md) | 1026 | `declaration-track:21340242591e6a9b8e84ff495701c94f565f75ed500d5f548255242b42c3e821` |
| 127 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-14.md) | 1044 | `declaration-track:ac618445a5970ffb3af5e50f58a6330e25fdba33451d05fa46cdc9522ccb279a` |
| 128 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-15.md) | 1047 | `declaration-track:c18a5512dfb9dbab928cf6912b8c818fe7ffd90cc6f4aa82289f984b30c179ba` |
| 129 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-9.md) | 1050 | `declaration-track:6b4e5533d5fef1ed368433f8e003594722c50bb0332db114e802b8261e1f0e06` |
| 130 | `instance` | [(anonymous)](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/instance-source-edition-21.md) | 1053 | `declaration-track:dc89effdda7a62421b71351b30e10cdff02ea1d58c35af513e0076d571621df9` |
| 131 | `def` | [ImplicationOrder](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/implicationorder.md) | 1060 | `declaration-track:5a1c4b191df44af805d6ae4c3cb3927128859ff96ac19d796d79ac0cc14ce5e7` |
| 132 | `instance` | [ImplicationOrder.instOrder](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/implicationorder-instorder.md) | 1062 | `declaration-track:afb1dd678ee770289b55a09674255efdbe2ec6b62a125047f1042bfa8583b83b` |
| 133 | `instance` | [ImplicationOrder.instCompleteLattice](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/implicationorder-instcompletelattice.md) | 1069 | `declaration-track:aff9707b18bae5bc54452604b89cc961b1cc7a2e3f5ab140707bc1dbbe38bbb1` |
| 134 | `theorem` | [implication_order_monotone_exists](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/implication-order-monotone-exists.md) | 1088 | `result-track:674faa0d698eef4aba575a4b78d8bb0ec0f16626a61a583503d3503bee865d94` |
| 135 | `theorem` | [implication_order_monotone_forall](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/implication-order-monotone-forall.md) | 1094 | `result-track:caf5d35d64540062dd22b2123a0690bf45aea093d9c3a58e9212c1dbcd6b0a13` |
| 136 | `theorem` | [implication_order_monotone_and](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/implication-order-monotone-and.md) | 1100 | `result-track:7eb85b2ac2fac548548307127eca1e77c6a0853b4feed1359fc070101dbccc04` |
| 137 | `theorem` | [implication_order_monotone_or](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/implication-order-monotone-or.md) | 1107 | `result-track:a02a90c434ccbede6450f30b079d64c8ee3a678621335ea7645d0561149c47c3` |
| 138 | `def` | [ReverseImplicationOrder](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/reverseimplicationorder.md) | 1121 | `declaration-track:2d7a549d0afa3cf3ef169ffbfed9f59551f88231506aac9960a346fe19373ff5` |
| 139 | `instance` | [ReverseImplicationOrder.instOrder](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/reverseimplicationorder-instorder.md) | 1124 | `declaration-track:facfb0867dfab7ef10831647d34ea54c4b2fc694c36c93a4093066d40429abbe` |
| 140 | `instance` | [ReverseImplicationOrder.instCompleteLattice](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/reverseimplicationorder-instcompletelattice.md) | 1131 | `declaration-track:6bbef8888d425bec2fc739ea109fd0618b6052ecad56cd66057f06ad7281336a` |
| 141 | `theorem` | [coind_monotone_exists](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/coind-monotone-exists.md) | 1148 | `result-track:12dab713d18b5400c672df546763c7e6cdc72ed43191bf5ae6d05fd33ec95c0e` |
| 142 | `theorem` | [coind_monotone_forall](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/coind-monotone-forall.md) | 1154 | `result-track:a9a1d6a181d71e5985ba051591eceb186aad5d287c8d4b4f5eec5a0d8a1f160c` |
| 143 | `theorem` | [coind_monotone_and](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/coind-monotone-and.md) | 1160 | `result-track:f158737f114b0cca928decf084038342c2b330a389dfba8e5ad678930303f6f1` |
| 144 | `theorem` | [coind_monotone_or](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/coind-monotone-or.md) | 1167 | `result-track:67099a52c9946dfe4fc3ba485a7f9282157b0a2dc52ae2dee111826d75f12814` |
| 145 | `theorem` | [coind_not](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/coind-not.md) | 1179 | `result-track:9bd3e533636043b53378ed20a081cd73c8ed45bb712536a18c2c3e2772c07b67` |
| 146 | `theorem` | [ind_not](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/ind-not.md) | 1186 | `result-track:145aac07e547a2eeee3cf20476c9dec49a91369176c7f5d4b44638514030f055` |
| 147 | `theorem` | [ind_impl](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/ind-impl.md) | 1193 | `result-track:05b322cb507a4cc9a0525432d33a50ff90fedac1ab9125e02f99b18a3d094176` |
| 148 | `theorem` | [coind_impl](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/coind-impl.md) | 1205 | `result-track:2e721d3be64dde2186f85192a93c67c3090159dc8876c979d62ee4ad5d9f5bbe` |
| 149 | `def` | [findF](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/findf.md) | 1220 | `declaration-track:13a8a916c16ce811e5c0306385d147f5595d08f51291fc23f204455a65ea7ee7` |
| 150 | `def` | [find](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/find.md) | 1226 | `declaration-track:b5d382d305baa8c8435b8844b5e7fdcccb2adb9446bcfcc1ae6fdc71424926ff` |
| 151 | `theorem` | [find_eq](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/find-eq.md) | 1235 | `result-track:e77d1f08203edd3a804ecdfa1da9658cf7847c9440ab013cc7a9551736c3523e` |
| 152 | `theorem` | [find_spec](../../../../Combinatorics/BasicBasicPublicPartialOrder.lean/declarations/find-spec.md) | 1237 | `result-track:3abcc96d22996578d8bac616f9f51eddf4611be924dfa3a3a3d4178b1cdfb5db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97736926c296de7320ddd8b4383fc5f56b996ff41e418ed0418fed83b309ccb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
