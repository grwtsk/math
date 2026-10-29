# Verification target: MNamespaced Agree Trival

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eed764aa524513bedf7038b378eab1237c2046ad",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant427338039ba2d7bfef44501dd71a1358815b57b716e314bf8207f7d8ce437789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eed764aa524513bedf7038b378eab1237c2046ad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant427338039ba2d7bfef44501dd71a1358815b57b716e314bf8207f7d8ce437789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant427338039ba2d7bfef44501dd71a1358815b57b716e314bf8207f7d8ce437789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Univariate.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CofixA](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/cofixa.md) | 42 | `declaration-track:224ca4a1882c6f05e7fbcdaf80a9534c212982f1f4db22664fd03dc2c8bc9945` |
| 2 | `def` | [CofixA.default](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/cofixa-default.md) | 48 | `declaration-track:3c3d5061f96043f414d626a9ae853e57d83f7d669b81b66a4c5c8b4730a8debe` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/instance.md) | 53 | `declaration-track:3f06a0bedf42c4a7524eb1e4bec87356e6f7661db8bdca21d5c023d2a7d307f8` |
| 4 | `theorem` | [cofixA_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/cofixa-eq-zero.md) | 56 | `result-track:3c033ca3960f4a6444ddc4445dd91a588a0abd71fece41d1a8c820764d615c21` |
| 5 | `def` | [head'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/head.md) | 65 | `declaration-track:c92a3c372f53174eee54b23845c444a9d6caaa13b54bf179784412af6d196739` |
| 6 | `def` | [children'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/children.md) | 70 | `declaration-track:06c8a0851e7df98480a20a3e0118a97987e03ae935e2f0d75119883ee4759922` |
| 7 | `theorem` | [approx_eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/approx-eta.md) | 74 | `result-track:05b3ef07604ef37e1cca40eaa399d94e82cc2d65cf541e2143ac64fed5605310` |
| 8 | `inductive` | [Agree](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/agree-source-edition-2.md) | 80 | `declaration-track:b23cf325f0e8cc63821da7cc606a7a0cb9a84645f30a91ea163803729b0ba991` |
| 9 | `def` | [AllAgree](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/allagree.md) | 89 | `declaration-track:91f98f2adb5ac9c00faa29f471759d1339f86cb7252efd3b11f632e4f139f511` |
| 10 | `theorem` | [agree_trival](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/agree-trival.md) | 94 | `result-track:bed0b1b1c6b99d5f6820037cfb0985aea90009f3038724fe79dbcddb4ad8fef3` |
| 11 | `theorem` | [agree_children](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/agree-children.md) | 97 | `result-track:0aab413f776630a87980312a392c99148dccb05753530fe3f2e12010da2235ec` |
| 12 | `def` | [truncate](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/truncate.md) | 104 | `declaration-track:a7fced27f4c9247fde24d8e0c3746070fd1f782898c76d309d91af02f8e4f533` |
| 13 | `theorem` | [truncate_eq_of_agree](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/truncate-eq-of-agree.md) | 109 | `result-track:4f8cc449f891e7d703ed2685dcab6721b64b793438dabccdf75503980a640a56` |
| 14 | `def` | [sCorec](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/scorec.md) | 132 | `declaration-track:58383451c3a58911fb3b02fee02ce04a6c9f6450761e74ba1189aac88973ce94` |
| 15 | `theorem` | [P_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/p-corec.md) | 137 | `result-track:40ca583baed63c78289419e8cc554f82b2fa018e73a119b77389a193c4678e30` |
| 16 | `def` | [Path](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/path.md) | 148 | `declaration-track:8caf4aed4fed3d65f969f868300f6359d3b5acb32321ebff35a0a7ab44197513` |
| 17 | `instance` | [Path.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/path-inhabited.md) | 152 | `declaration-track:d732c7e98f04f5b2f386693a232bebcd902897b2b9334b62a642eef15ed318aa` |
| 18 | `instance` | [CofixA.instSubsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/cofixa-instsubsingleton.md) | 158 | `declaration-track:2e4c64e567b33641c9755faba8aee008993dca8176ff211ac21e61cc5b7fbf82` |
| 19 | `theorem` | [head_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/head-succ.md) | 161 | `result-track:6a6e7b71ae5f306dad0463758f791ebc4a7230ef6f90e1f7ce4427c29febba09` |
| 20 | `structure` | [MIntl](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/mintl.md) | 193 | `declaration-track:671be0a7ea9b36685f2404178170e0672398e5cee17eeddfdcb36e01ca8bde7b` |
| 21 | `def` | [M](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/m.md) | 202 | `declaration-track:7cc22a7b535390f0a50e9c5be580606de58a70db80548d40f96b005c4286721c` |
| 22 | `theorem` | [M.default_consistent](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/m-default-consistent.md) | 207 | `result-track:438bfc17de10cce9a41127d2ab2b6377df8e321b1f2f0a67589996b8e1c9d384` |
| 23 | `instance` | [M.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/m-inhabited.md) | 213 | `declaration-track:f2ec3f9a6948b6cf2f5a288fcd4bb3684fa631665cd89a5bf1e704bec2977228` |
| 24 | `instance` | [MIntl.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/mintl-inhabited.md) | 219 | `declaration-track:45aaccea4a15d713b1da15918e365bd18ff733926bf2bb08f2e3a97dcf90c165` |
| 25 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/ext-source-edition-2.md) | 226 | `result-track:c7ce31d2fd0aa2d2a72d6f9c3f4302d2fe0f89c247b359a482d9633fb8b0f5cf` |
| 26 | `def` | [corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/corec-source-edition-3.md) | 241 | `declaration-track:f0d68c1cfcc83ceff3b4156563aaf43976afbabf82414981533d8b09759bdc57` |
| 27 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/head-source-edition-2.md) | 249 | `declaration-track:ecef411b69624a5bf17eedf0794b56c2946fa579f2153058f5b53f70fd0c5974` |
| 28 | `def` | [children](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/children-source-edition-2.md) | 255 | `declaration-track:0cb42eda8f22d8eef0b28a8b36cb6f0f101c09f226e26ea697d735dc66997cd3` |
| 29 | `def` | [ichildren](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/ichildren.md) | 271 | `declaration-track:f0f4afd11ad49a386226d47d1c092b80eb8e6de4c9a41df520d934f55870ef2a` |
| 30 | `theorem` | [head_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/head-succ-source-edition-2.md) | 277 | `result-track:af04b7bf9096883b3fa4a4ca2564ec3919db4bb20e2456310c835ff85ff44ca7` |
| 31 | `theorem` | [head_eq_head'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/head-eq-head.md) | 282 | `result-track:1bb0b46572dcca5ea2e478ddab6a7eb6ae964d4be2297e269ed186c1c04fbe65` |
| 32 | `theorem` | [head'_eq_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/head-eq-head-source-edition-2.md) | 287 | `result-track:c76469c739e291170a0c925772ca4e55026e40875877c89b441078e5dfd2b7f9` |
| 33 | `theorem` | [truncate_approx](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/truncate-approx.md) | 292 | `result-track:fff471686b99f190e039c0307b0b28a18e135210de59de3b5dde3e9c16e811cb` |
| 34 | `def` | [dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/dest.md) | 298 | `declaration-track:b446643f0a8e1b8cbc73b8c5faab3ac22f1a2950c7a7126e2244d3a6e9fa6e4c` |
| 35 | `def` | [sMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/smk.md) | 306 | `declaration-track:0010cfaffb3a4086f6bbcb1ff60249185317f8c8b4836a573b7d633550fd5917` |
| 36 | `theorem` | [P_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/p-mk.md) | 312 | `result-track:37d6942538013599e84728d79d4b85bc9e517b44c769b0fe0ba779c81d78d7b9` |
| 37 | `def` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/mk.md) | 324 | `declaration-track:2499b5ef329b815c8ffe31e7e7851c1e93ec11c2d231e691735aee4bf16d4437` |
| 38 | `inductive` | [Agree'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/agree.md) | 333 | `declaration-track:6333db243169a694ef707f0b950b21575ae366f29b18a37485bbf4000f3d2fc2` |
| 39 | `theorem` | [dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/dest-mk.md) | 341 | `result-track:bf01bb0af97527a4c6cc8672745cc425d6dd6a69661770da1da508e48a68adb1` |
| 40 | `theorem` | [mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/mk-dest.md) | 346 | `result-track:f58940393e03bdb62e8fdae761ed627b1d12efa9c088c5626b6c493c10f96176` |
| 41 | `theorem` | [mk_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/mk-inj.md) | 373 | `result-track:41b4755ca274ac174799fac9af947bae617260820860a2dee8991a07bef2abdd` |
| 42 | `def` | [cases](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/cases.md) | 378 | `declaration-track:7f4a8e948f8811d214eda92d910305f53669ea0b4e50b4d3da8842177e74c2bc` |
| 43 | `def` | [casesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/caseson-source-edition-2.md) | 387 | `declaration-track:f10909ea44b3d22f51257fe4e70c3976952bf200feb123990e3ce01d1cbc375a` |
| 44 | `def` | [casesOn'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/caseson.md) | 394 | `declaration-track:08ceeebab5b7854def5320842a87a202b55f4b214fc9eaeee4e9af776dd0d161` |
| 45 | `theorem` | [approx_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/approx-mk.md) | 399 | `result-track:1f4adde43eeee387faa02395a56428ba41e349a1d5ebdd5ee8257c5161ce4cc1` |
| 46 | `theorem` | [agree'_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/agree-refl.md) | 406 | `result-track:16437776c7dce9569a229d720c536090d5440c13ad14bd197d5c9993c2c15e47` |
| 47 | `theorem` | [agree_iff_agree'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/agree-iff-agree.md) | 414 | `result-track:c2bd537f836935d3c9177b924c3cdd2ec593816b90eadc30172f1f89f85709df` |
| 48 | `theorem` | [cases_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/cases-mk.md) | 445 | `result-track:5c6eab56ba89870fe059cac5120dcbd8d70544c4036a369d450e9fb64fc7994b` |
| 49 | `theorem` | [casesOn_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/caseson-mk.md) | 456 | `result-track:dbc5bb5ba5f3116f9485f3db65dfcee66b845138d43af0de9ceb92198f532291` |
| 50 | `theorem` | [casesOn_mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/caseson-mk-source-edition-2.md) | 463 | `result-track:ec2b17c8bb624cbeac42e2729eba5a92f486e14387e18984805c7f193b1c8040` |
| 51 | `inductive` | [IsPath](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/ispath.md) | 471 | `declaration-track:408e1bf4d8c71b728c6201ef7bde06819f222c6132d80ce7d65e3cff3bc7a107` |
| 52 | `theorem` | [isPath_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/ispath-cons-source-edition-2.md) | 479 | `result-track:e19966cd3c8613bb902da89835232dc80b7fd5f2d5ef225552c4ab9bc5212a78` |
| 53 | `theorem` | [isPath_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/ispath-cons.md) | 488 | `result-track:2da0d5a8c81b30d336fa2226125b4b35823e313f8b9bb4d9ef46c75845d22803` |
| 54 | `def` | [isubtree](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/isubtree.md) | 500 | `declaration-track:c603bf1de6456c215a9730ebf491a6a67c775062d1012c20b759e41f480f8cb5` |
| 55 | `def` | [iselect](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/iselect.md) | 515 | `declaration-track:2fd4c2ddbf1478c7516d817e5a3979401c5e110a1a16c28815c19ffe58ba6c41` |
| 56 | `theorem` | [iselect_eq_default](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/iselect-eq-default.md) | 520 | `result-track:d2930ac0d519ae5a882b62312281d870b1fcb50503144f8a341e62bc6604c4bd` |
| 57 | `theorem` | [head_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/head-mk.md) | 542 | `result-track:cf5729572a32ac7c6bea0ae73fcbd0730944364682a6ab2eb5bc53fdacc0b8d2` |
| 58 | `theorem` | [children_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/children-mk.md) | 551 | `result-track:64aa1428d15b9ec2870115619bf93709b93d403cc8a0c27475b96af031060466` |
| 59 | `theorem` | [ichildren_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/ichildren-mk.md) | 557 | `result-track:ca2781ae637b6f25703d2b9bbc870e5feef56bf0f2b21b0d491f0681df51d91e` |
| 60 | `theorem` | [isubtree_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/isubtree-cons.md) | 565 | `result-track:38f3fefa5079dfd07dd564d15f4e8e504ff1b23044c41d7f6e18cfdf0f3cbe47` |
| 61 | `theorem` | [iselect_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/iselect-nil.md) | 572 | `result-track:d78045b44db266029d4ba6224362f35c01227c9d70aec3fe71eb34ff5d9c5082` |
| 62 | `theorem` | [iselect_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/iselect-cons.md) | 578 | `result-track:737fb8596e3b5e36956e1840d61902b35660c54f6c6fa23d94bc3dd7d5078d1b` |
| 63 | `theorem` | [corec_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/corec-def.md) | 583 | `result-track:3ff1f4d33181baecffa85a42f8cbb69bc81800b8c1d5a63fbacd4babed0d359e` |
| 64 | `theorem` | [ext_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/ext-aux.md) | 595 | `result-track:6f3b8126e6979766140db3cca97f4ea951ef4a2ebe828eff2238d70f01fc39e5` |
| 65 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/ext.md) | 636 | `result-track:567b24745319ffdc61f078077cacb72262de47251a361258f6d7d579ffced53c` |
| 66 | `structure` | [IsBisimulation](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/isbisimulation.md) | 663 | `declaration-track:6cc04c42d346ab31d1333e1591354af5a6761b7631b1953b90e3133f256591f2` |
| 67 | `theorem` | [nth_of_bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/nth-of-bisim.md) | 671 | `result-track:4f47441b5cf3cb473405595729ce3792599a5260b7fb094819949ea441f1be59` |
| 68 | `theorem` | [eq_of_bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/eq-of-bisim.md) | 703 | `result-track:56ad0cb02ed1965a74193ead05c22519803e3d9ecc353f46c76057b42d9b9460` |
| 69 | `def` | [corecOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/corecon.md) | 721 | `declaration-track:373b08fd7011dd24214340f054069f7a6819179e3ffca7883ac611de94177a03` |
| 70 | `theorem` | [dest_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/dest-corec.md) | 728 | `result-track:8ada7f4bd363a6c93cbca68ada38024c1bdd798128a4c7bcb399e8448c96de47` |
| 71 | `theorem` | [bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/bisim-source-edition-2.md) | 733 | `result-track:d3630aebecd29c92d6d7077ca403badda08b1ce377853f6d4c5b8f92cfa77950` |
| 72 | `theorem` | [bisim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/bisim.md) | 751 | `result-track:83caa258cc40e1cb77bbffede6307c0ddd4429c672525b9b771fdd30acbc2478` |
| 73 | `theorem` | [bisim_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/bisim-equiv.md) | 768 | `result-track:bdee636c383da5feae83c0ec2e5a12e15d1ae527794bea7bcd9d84287959ce2c` |
| 74 | `theorem` | [corec_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/corec-unique.md) | 780 | `result-track:b8d9e47debf5472c1efe777a3f6bb84bdcec292359246fbae47698de3299906d` |
| 75 | `def` | [corec₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/corec.md) | 797 | `declaration-track:2013e72028aa9766bd9e5ec98e814d5b837ffcdb85e358fc04279586aa232053` |
| 76 | `def` | [corec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MNamespacedAgreeTrival.lean/declarations/corec-source-edition-2.md) | 804 | `declaration-track:d0a310711e5fcf1821fc5c5adc8362c553ccc607d1b2049e0c8d17f3493b5d41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffc4b19d4fbb67a4695943fd8cace5b8a2da83dcce8856b0a807729879e74b7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant427338039ba2d7bfef44501dd71a1358815b57b716e314bf8207f7d8ce437789.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variant427338039ba2d7bfef44501dd71a1358815b57b716e314bf8207f7d8ce437789.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
