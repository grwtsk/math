# Verification target: MAgree Trival

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a55802af1401b592918670a607c98f0339995ae",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a55802af1401b592918670a607c98f0339995ae`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Univariate.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CofixA](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/cofixa.md) | 34 | `declaration-track:076ea40203604a1a0608a8bb3afd086ce68f805115d1c752892c7617523671eb` |
| 2 | `def` | [CofixA.default](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/cofixa-default.md) | 40 | `declaration-track:4ae000d328cc430619b82723231164855b8f9e2580aa62a392dfee5f6b909868` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/instance.md) | 45 | `declaration-track:0bc00486990db09e033dddd24891d6af724f4dc10d039ee84f7b138130dd5ad1` |
| 4 | `theorem` | [cofixA_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/cofixa-eq-zero.md) | 48 | `result-track:a6bb5937a0987ad4fac4c12ff414e8d205965c3f89727e67faf3ad1bfdc649f8` |
| 5 | `def` | [head'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/head-source-edition-2.md) | 57 | `declaration-track:3c97375cd0c93004af5dcd0920b9a00596ba5d489871818b1bfbb8a0e0f8d963` |
| 6 | `def` | [children'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/children.md) | 62 | `declaration-track:82c582afbb31a2f7830e21c277d3d93b575cbee964a3d471c758468e14f3f95a` |
| 7 | `theorem` | [approx_eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/approx-eta.md) | 66 | `result-track:9dc25293022094ba883c5dbcc3d831e086027c93ade350503837945e6e587614` |
| 8 | `inductive` | [Agree](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/agree.md) | 72 | `declaration-track:97eb51b82d1d9ec4425626947dd112ca25e7a6d5e447ce28541e593edfaf9001` |
| 9 | `def` | [AllAgree](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/allagree.md) | 81 | `declaration-track:d85e18603f5f8f577a17a7047cb18b6c1715ba5c5665f17ff8112f8eb26875fa` |
| 10 | `theorem` | [agree_trival](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/agree-trival.md) | 86 | `result-track:51a39f44e1d183e39631e92c34f32f1e833a507800a0f048f18eeed0815f08c9` |
| 11 | `theorem` | [agree_children](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/agree-children.md) | 89 | `result-track:1a175ff43a3e70f90eb1a83132fa6b4d596c603671517df1e7032b529e4b8652` |
| 12 | `def` | [truncate](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/truncate.md) | 96 | `declaration-track:323213f960d8e04f63342cee97b13a15bcfe8b8b119429cbf50a501414952a34` |
| 13 | `theorem` | [truncate_eq_of_agree](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/truncate-eq-of-agree.md) | 101 | `result-track:b741e1816ceb67814bbb8d9a05c2096d356c40feb7592bab6c2922072e693f0a` |
| 14 | `def` | [sCorec](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/scorec.md) | 124 | `declaration-track:7874e25ade2751f4c510db05370bc704fe69a3758ab1ddfdee4089d25bbfee5f` |
| 15 | `theorem` | [P_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/p-corec.md) | 129 | `result-track:d398554130f2bb1ab02cc14cf1e03feb04606e0eaf9d1d2552cbd7bfdc7169cd` |
| 16 | `def` | [Path](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/path.md) | 140 | `declaration-track:0d590e776a473e4eeb98720355003fc361ec3c583e1e2d135cfb35e0d2519c00` |
| 17 | `instance` | [Path.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/path-inhabited.md) | 144 | `declaration-track:058448b198868a18c60af66dc95517a9d79fb549bba1564453d7dfe4f00a1710` |
| 18 | `instance` | [CofixA.instSubsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/cofixa-instsubsingleton.md) | 150 | `declaration-track:74a2bfc43254f134d2f21774c5ebd9bed0a4a7ffe0b5eebf475958cfeb1bad9f` |
| 19 | `theorem` | [head_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/head-succ.md) | 153 | `result-track:4399acd2df8fbe7c8390b2a9cfc6009a86379acc48f7c52062d70c235f55c71a` |
| 20 | `structure` | [MIntl](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/mintl.md) | 185 | `declaration-track:a09b4e4237f216966384698fc1085dbf30448d14ab6e203b2cbaa719cefebad7` |
| 21 | `def` | [M](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/m.md) | 194 | `declaration-track:4e2bfa1beca1dcd37b2d1064b10d3128bc4f8abba60419cfdffe66aefc64b929` |
| 22 | `theorem` | [M.default_consistent](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/m-default-consistent.md) | 199 | `result-track:b85761e84277bf44c43785c2900ec9deedbd5b5341cfbef5fe93ef35e2bf2b7f` |
| 23 | `instance` | [M.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/m-inhabited.md) | 205 | `declaration-track:ba7f219473e10187749a239a397a66418199572307c6a46ce45f6b12e780c306` |
| 24 | `instance` | [MIntl.inhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/mintl-inhabited.md) | 211 | `declaration-track:607db90d4895cc700f9400807cd4d1480b2ff23ba9acaa00824a4f26f1882329` |
| 25 | `theorem` | [ext'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/ext.md) | 218 | `result-track:45bf86014baabd938213e841608ae1a5183f986558609d5f3b83b234851c9695` |
| 26 | `def` | [corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/corec-source-edition-2.md) | 233 | `declaration-track:80cdd70f570032b909badf444b87f06436dc0ed0dc75ce73a2e52156a244f051` |
| 27 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/head.md) | 241 | `declaration-track:1b0b44ed4fc8bbb78568cd3219648e5f95f5eea03b241dd26587df8076854e94` |
| 28 | `def` | [children](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/children-source-edition-2.md) | 247 | `declaration-track:8ed2c4c6ee21cd205415ca1db7c6f79d6e4da584116cba1d897914324fd6ed55` |
| 29 | `def` | [ichildren](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/ichildren.md) | 263 | `declaration-track:eea97d125af8ede3887ea28aa49d0abc1cd999924a54d7926ff4b565d6414d53` |
| 30 | `theorem` | [head_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/head-succ-source-edition-2.md) | 269 | `result-track:88adc7dc9faa4e9d00a80557b46486d7ad0b9ad340d2a83d259d15798624f112` |
| 31 | `theorem` | [head_eq_head'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/head-eq-head-source-edition-2.md) | 274 | `result-track:a841459cd1da131379b99088a6e225631ab2634b3ae0488d651443dba516b6bd` |
| 32 | `theorem` | [head'_eq_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/head-eq-head.md) | 279 | `result-track:361c5ac76e7d2edbf44d1d177154bd109b29f37424cf76f7be6abdae059b72b7` |
| 33 | `theorem` | [truncate_approx](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/truncate-approx.md) | 284 | `result-track:7d2adebbb484d9360d84fb94e83e1b7591967d3be8212a9cbcca1db7f923a0c4` |
| 34 | `def` | [dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/dest.md) | 290 | `declaration-track:df8391a8a608f92350e9173342131448e195d9420edb1c412d16937be337fc2a` |
| 35 | `def` | [sMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/smk.md) | 298 | `declaration-track:4aac523df4cfec9371fe50dedd4e29029c52a89f91e950a44c8da878fbac7e78` |
| 36 | `theorem` | [P_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/p-mk.md) | 304 | `result-track:7cf40628f10d9caffa24d0b5904c9b73bb7769f03ac7837c05612c8c9b3bf3ca` |
| 37 | `def` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/mk.md) | 316 | `declaration-track:947218a8516823e258ea16910be7514090497d9684f9f2dab52080337e6539ad` |
| 38 | `inductive` | [Agree'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/agree-source-edition-2.md) | 325 | `declaration-track:ff3d5c95ae030b20765dc657345ffe296825f8d0154152474d4f4808e4751346` |
| 39 | `theorem` | [dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/dest-mk.md) | 333 | `result-track:ceb7b46ef5d29adb251ba48cee7ca98e3cae81da9f808f6a8c3337c72021072c` |
| 40 | `theorem` | [mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/mk-dest.md) | 338 | `result-track:ee7af1b2bc11fb22f16ed6ef7ad4f00ead8289e54cbbf20dd5d154c0c747e88a` |
| 41 | `theorem` | [mk_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/mk-inj.md) | 365 | `result-track:5c03da513cbc4ee6a6e485867ceb0d9bb5f042ddae7eb2402e202bc1b2935a65` |
| 42 | `def` | [cases](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/cases.md) | 370 | `declaration-track:cd6ed8a3e36067cde5ec1eba66ccfaf533320aa3f43235d7c8bf44d97fb2ca28` |
| 43 | `def` | [casesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/caseson.md) | 379 | `declaration-track:a66e3b572ee9323e3ef41bae4e276e1f18d683c57fe0eae01c40bf32ab0a79aa` |
| 44 | `def` | [casesOn'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/caseson-source-edition-2.md) | 386 | `declaration-track:b34e7b0de7bbbde2f9de654d62b7cd9a27d37df720404919dd8196eb4d681bd6` |
| 45 | `theorem` | [approx_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/approx-mk.md) | 391 | `result-track:43029c529b392885195186b346dc0618c9533e510365911a5ddf8b8f8004950f` |
| 46 | `theorem` | [agree'_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/agree-refl.md) | 398 | `result-track:d96681954ea98342246dc7a46b87da790155f8aa075e4c0316d7b0a5550661aa` |
| 47 | `theorem` | [agree_iff_agree'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/agree-iff-agree.md) | 406 | `result-track:c90dca079712315be624f10d3b37bed5f3fe52aab11b8726c01c44ff3388f576` |
| 48 | `theorem` | [cases_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/cases-mk.md) | 437 | `result-track:bfb32523bb6d1c30c23487eb13f461f908b30219aefddef029274d6ae361a81a` |
| 49 | `theorem` | [casesOn_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/caseson-mk.md) | 448 | `result-track:0bc6629491554ba7471a6f86dbc42b6cef680c2703cb9df6a660e8dd1dfa46c8` |
| 50 | `theorem` | [casesOn_mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/caseson-mk-source-edition-2.md) | 455 | `result-track:58d242f01ec3b25cc3f01ace5586998682a973a1295348fda4e1c32f52a8fc19` |
| 51 | `inductive` | [IsPath](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/ispath.md) | 463 | `declaration-track:83598cc2f6f08c54abe7a9c7abea630cd862c112de91b4140c1e73aa634fc9bd` |
| 52 | `theorem` | [isPath_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/ispath-cons.md) | 471 | `result-track:0ac8175ebaad7a9951f4b21ff867fc2824a86cedeab84133bfe34263d698b830` |
| 53 | `theorem` | [isPath_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/ispath-cons-source-edition-2.md) | 480 | `result-track:f46df2f12aa01ba29a3f91e5b51610c4b72b9e4119c2ae6eff935fbdba187bf9` |
| 54 | `def` | [isubtree](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/isubtree.md) | 492 | `declaration-track:572c4741b27cb025f4d52b77eaf6d44196edb2096102c0de8781e7b35117afe0` |
| 55 | `def` | [iselect](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/iselect.md) | 507 | `declaration-track:647b49e81d67d12009227cbd0bd760670c0f88501a7515f8673d10f42a051696` |
| 56 | `theorem` | [iselect_eq_default](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/iselect-eq-default.md) | 512 | `result-track:2bea46b1c6da2a6ab11db86de3d5c7cd60dadd76eb5711db3e5a2c9b48e2447b` |
| 57 | `theorem` | [head_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/head-mk.md) | 534 | `result-track:048fc280e908179bb9c042f6c9835e7fc9707d38d118389e8808e1465496c2dd` |
| 58 | `theorem` | [children_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/children-mk.md) | 543 | `result-track:dbed63f442125a42efcb4b080aa1e5c08daf683b82ec38815178d58323fac9be` |
| 59 | `theorem` | [ichildren_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/ichildren-mk.md) | 549 | `result-track:831b8b75cc6e23bca0766866420cf3f7cca5999cdea09f71fd02c394a838ebe3` |
| 60 | `theorem` | [isubtree_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/isubtree-cons.md) | 557 | `result-track:49a58ca4f3722fc785dc70e0009a5c9113b74520120a175716ea8826bc2fb74e` |
| 61 | `theorem` | [iselect_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/iselect-nil.md) | 564 | `result-track:1057061bb6d5ff59d430d4482977abbe2e06a70e45672e1292a5f55926841498` |
| 62 | `theorem` | [iselect_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/iselect-cons.md) | 570 | `result-track:be323eaf2799c5482ce24e9ceb4a897f0cd446d02b672a1b1909303b4755bb1f` |
| 63 | `theorem` | [corec_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/corec-def.md) | 575 | `result-track:da1496ad37c26e655edfd0d4509274d34324b226652de28877a31ec5139c728f` |
| 64 | `theorem` | [ext_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/ext-aux.md) | 587 | `result-track:6452d497595cff95073f7a88dfac958449c42e02801cbd48268bcc98b8c730d3` |
| 65 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/ext-source-edition-2.md) | 628 | `result-track:c7a1864d4ce16499a8555a4dea897dd13b75c16c96aa6300d46e776005bc0d9a` |
| 66 | `structure` | [IsBisimulation](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/isbisimulation.md) | 655 | `declaration-track:c7f7e383ad3f7f3fd63da67b3cc514ee345869c7863afce023abcdd1da91b219` |
| 67 | `theorem` | [nth_of_bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/nth-of-bisim.md) | 663 | `result-track:6d9af215994a2068ca2b8aeed3ddf1fe5efc68c27a9ee504a4b367482de204df` |
| 68 | `theorem` | [eq_of_bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/eq-of-bisim.md) | 695 | `result-track:f5652d3fe23d0f393078b72ff1a1bfebf515786f3539ee3c66df8cfa189856e4` |
| 69 | `def` | [corecOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/corecon.md) | 713 | `declaration-track:ab0b730e2e134ebd408b7515af6f828a6f0ac59f714adde04af98cff5ebbf920` |
| 70 | `theorem` | [dest_corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/dest-corec.md) | 720 | `result-track:5644948cd067231802a3e8ee0e04e6146fc9aea1f5d437a6a038c94fc9da6905` |
| 71 | `theorem` | [bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/bisim.md) | 725 | `result-track:2776ef6fc4280afa0339692c5444970836e6fd2fe33da922281f18ff82fc639e` |
| 72 | `theorem` | [bisim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/bisim-source-edition-2.md) | 743 | `result-track:3a7291120b8d5e3005c8afcc9d73ed4b183f7c4f11c9725a24e1b80d7ddbc760` |
| 73 | `theorem` | [bisim_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/bisim-equiv.md) | 760 | `result-track:4bb5504acc09ddc7dec60f7d581f6ba6cb90fde9074a7fa830d03d72a6f764ff` |
| 74 | `theorem` | [corec_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/corec-unique.md) | 772 | `result-track:ba4344a22f1f17cd570eea2763b67e8146f26848d5c8b232fe0aeff2e90fc237` |
| 75 | `def` | [corec₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/corec.md) | 789 | `declaration-track:0211d6d460484fd7f54f55dc0fdf18a478c0a98230898a4f5e15910634632b2d` |
| 76 | `def` | [corec'](../../../../../../ComputerScience/TheoryOfData/DataStructures/MAgreeTrival.lean/declarations/corec-source-edition-3.md) | 796 | `declaration-track:d7a0051fa6bdc4cbfabf90eff781c445abf8d3075e5d5ef13fc72ef36ff4c2d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e1508e1bdd4449a357996004c24285f0add79acde2ee5121b13236d61ee3958 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantc5045355c9117a31bddaaab7b7a0ca3697cbb1992aa2aa9244c06424a33eb811.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
