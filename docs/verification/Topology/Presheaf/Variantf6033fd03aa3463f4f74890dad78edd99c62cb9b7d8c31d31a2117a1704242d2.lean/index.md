# Verification target: GRWTSK.Topology.Presheaf.Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72fc4be0d1516126e666a7d8da5913eb3b312b71",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/index.md) · [Full source](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72fc4be0d1516126e666a7d8da5913eb3b312b71`.

Source path: `GRWTSK/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.KanExtension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Opens` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Init` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Presheaf](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/presheaf--41f700b89c39cb02470c590f.md) | 45 | `declaration-track:41f700b89c39cb02470c590f02ba3d858b38abd63f9b67415266d651256f41b1` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/instance--53a79f510f3103e4abb228e0.md) | 50 | `declaration-track:53a79f510f3103e4abb228e090c0e48d0862a21f548bc8f6960e1059abbfae48` |
| 3 | `lemma` | [ext](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/ext--8f470c003d666630d45929da.md) | 61 | `result-track:8f470c003d666630d45929da1c0d5fe621f1c67423bdb3d1de2eceb2b033dea9` |
| 4 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/macro--d9190f74f4f6d4629fcdaa3e.md) | 72 | `declaration-track:d9190f74f4f6d4629fcdaa3eda899f5d62b1637a323de9b75e7bce93366341e4` |
| 5 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/macro--0eead7c5a6c5b33b8a7b61e8.md) | 79 | `declaration-track:0eead7c5a6c5b33b8a7b61e813c130b7a06275b534695b651d451368f0471ee7` |
| 6 | `macro` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/macro--48897f07a7dbf4229e99ddac.md) | 85 | `declaration-track:48897f07a7dbf4229e99ddac31e37aa572075efeb9cec219d7ce3373106b6ef1` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/example--b4676cab1206f6afc8809853.md) | 90 | `declaration-track:b4676cab1206f6afc88098539b58d172da764f6e1baf490989e5d008c0edaa60` |
| 8 | `def` | [restrict](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/restrict--db96968363e4f1271f1b5076.md) | 98 | `declaration-track:db96968363e4f1271f1b507647cf16894cd6c9f2a28652a125e30297beaf47df` |
| 9 | `abbrev` | [restrictOpen](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/restrictopen--8568425240bce3e8bfdc496a.md) | 115 | `declaration-track:8568425240bce3e8bfdc496adf6ca5dfc761a75a778bc921ede0d1beb30077d7` |
| 10 | `theorem` | [restrict_restrict](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/restrict-restrict--f55cf9efe54e7e41c3896832.md) | 128 | `result-track:f55cf9efe54e7e41c3896832c2bfe7c65a1d706ae25897e750d71a766939c89e` |
| 11 | `theorem` | [map_restrict](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/map-restrict--70361a66057ac0a047aa15cb.md) | 139 | `result-track:70361a66057ac0a047aa15cbf71e0eff16e85930f3bc2582184f1bba7ec1cf65` |
| 12 | `def` | [pushforwardObj](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardobj--a3b123f6d5b4864ffbb48fd3.md) | 149 | `declaration-track:a3b123f6d5b4864ffbb48fd3b995dcb10b11415c42cc7a2d322ebf6d86dccd83` |
| 13 | `theorem` | [pushforwardObj_obj](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardobj-obj--2aecb74e4b006f4409c31ed1.md) | 158 | `result-track:2aecb74e4b006f4409c31ed172d1996349d896115f211f30de7b0888cc11b147` |
| 14 | `theorem` | [pushforwardObj_map](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardobj-map--f4e01b60ad80d869d0bef0ff.md) | 165 | `result-track:f4e01b60ad80d869d0bef0ff6c4a44cfa0807d9eb017454664a5673d4e7e0914` |
| 15 | `def` | [pushforwardEq](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardeq--3e245ccbd8255bb4d92fa5c1.md) | 175 | `declaration-track:3e245ccbd8255bb4d92fa5c116a7b7086b4956dbfcbe675203f163a498fb0766` |
| 16 | `theorem` | [pushforward_eq'](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforward-eq--dfd31b35a90539676a7c0b09.md) | 181 | `result-track:dfd31b35a90539676a7c0b09c62271f43cdd4ac73a8902f4065c92e20edae110` |
| 17 | `theorem` | [pushforwardEq_hom_app](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardeq-hom-app--6ff2576ea876389a787b8a97.md) | 187 | `result-track:6ff2576ea876389a787b8a9751444a70bcf127c807c28546a6497a0cfd1aff1f` |
| 18 | `theorem` | [pushforward_eq'_hom_app](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforward-eq-hom-app--a8cdd2248a593f162a41f403.md) | 195 | `result-track:a8cdd2248a593f162a41f40394bbe42ebad1ce743bad302353371e68424c18ff` |
| 19 | `theorem` | [pushforwardEq_rfl](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardeq-rfl--993dbc2afc8d35ca10c46e69.md) | 203 | `result-track:993dbc2afc8d35ca10c46e69cd5f2cc20ee864768972c5061a276ee904004828` |
| 20 | `theorem` | [pushforwardEq_eq](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardeq-eq--6a303200b5bb572812070dd0.md) | 210 | `result-track:6a303200b5bb572812070dd0f3fcdfb2d11ca3dd3d5efe3fc642869cfc0084aa` |
| 21 | `def` | [id](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/id--03c4013b9909c6f0deced990.md) | 222 | `declaration-track:03c4013b9909c6f0deced9904f707fa32aa8c6a050d81f3d2cb1be2b2d591cb0` |
| 22 | `theorem` | [id_eq](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/id-eq--60c8f2e6c9fe688394c0f794.md) | 227 | `result-track:60c8f2e6c9fe688394c0f7949cd6b762a0e60f73a0d19ba305d18c5c100b9bf7` |
| 23 | `theorem` | [id_hom_app'](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/id-hom-app--446c8299bb863cef69a8b1ed.md) | 236 | `result-track:446c8299bb863cef69a8b1ed387780285bd4c059924c29034e54901322b4ff8b` |
| 24 | `theorem` | [id_hom_app](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/id-hom-app--bb7b52839ad13965720ce996.md) | 250 | `result-track:bb7b52839ad13965720ce99652c822cd8556543ac903fad86833450e0ca7a34d` |
| 25 | `theorem` | [id_inv_app'](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/id-inv-app--dfff069bae15261c78e4e1ca.md) | 258 | `result-track:dfff069bae15261c78e4e1ca3dc2f132b8489dd946f7c7a380d7f24d2251df7c` |
| 26 | `def` | [comp](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/comp--d7579b0340b927fb92cb8b64.md) | 267 | `declaration-track:d7579b0340b927fb92cb8b645c1649cc3fd8e29628cf08a159390ac26a46b007` |
| 27 | `theorem` | [comp_eq](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/comp-eq--d283789ba103d944f166af9e.md) | 272 | `result-track:d283789ba103d944f166af9e76656f867fb640c7e689100edd8469dc3646aebf` |
| 28 | `theorem` | [comp_hom_app](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/comp-hom-app--5f95c8273c9865dbc607d0cd.md) | 278 | `result-track:5f95c8273c9865dbc607d0cdbd19f7c5390cf897363ded94a572e765e5727265` |
| 29 | `theorem` | [comp_inv_app](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/comp-inv-app--2daaae55fe9c7ff8e3d31a5a.md) | 284 | `result-track:2daaae55fe9c7ff8e3d31a5a0eff4a075b40b116c1002664eb61a76b43afaee3` |
| 30 | `def` | [pushforwardMap](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardmap--07e3c1b3196df7c97daff4ef.md) | 294 | `declaration-track:07e3c1b3196df7c97daff4ef2aea7239d88dfb1ac70ca1d4e33768c4d3e757bb` |
| 31 | `def` | [pullbackObj](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pullbackobj--df64b6f9a6c9491d61656796.md) | 313 | `declaration-track:df64b6f9a6c9491d6165679605f22f73813e700971f4b1f0b8a020e93b6760c9` |
| 32 | `def` | [pullbackMap](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pullbackmap--ff748a6ad7bfb07f0c4af684.md) | 319 | `declaration-track:ff748a6ad7bfb07f0c4af6841c5d869ec1bc01fbab8562b01812c19ba04c9e59` |
| 33 | `def` | [pullbackObjObjOfImageOpen](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pullbackobjobjofimageopen--8c0f0efef5cb0549bda9ed15.md) | 327 | `declaration-track:8c0f0efef5cb0549bda9ed15275ecf0f61a144af65698a7811721c0ac72f7d57` |
| 34 | `def` | [id](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/id--622e2b83383d99dfd9c57a9b.md) | 351 | `declaration-track:622e2b83383d99dfd9c57a9b0586e21578a3f4894b5bf07fbf7ca4273c2759ac` |
| 35 | `theorem` | [id_inv_app](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/id-inv-app--f2a9a28b59797736dd73cf43.md) | 369 | `result-track:f2a9a28b59797736dd73cf43f593883eb00aec8d1ea1dec364401f82b258c6da` |
| 36 | `def` | [pushforward](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforward--bddeeaa82961d7c7c6c465b2.md) | 389 | `declaration-track:bddeeaa82961d7c7c6c465b2985808634fcc986f59d8f4d05c359fee7044e466` |
| 37 | `theorem` | [pushforward_map_app'](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforward-map-app--93c0fd13939e929d5a7934b3.md) | 396 | `result-track:93c0fd13939e929d5a7934b32f07bfa57792eb09ae122bd01ccb3c40e804c5cf` |
| 38 | `theorem` | [id_pushforward](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/id-pushforward--f4e234868260fa5123f74754.md) | 402 | `result-track:f4e234868260fa5123f74754ee89b93c3d6188278e0217ce606aa6df3117064a` |
| 39 | `def` | [presheafEquivOfIso](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/presheafequivofiso--3ebb6ab81950ba7d0aa7f3bf.md) | 417 | `declaration-track:3ebb6ab81950ba7d0aa7f3bfe661ec634d46968eb4414364b5b8e3acd297cd78` |
| 40 | `def` | [toPushforwardOfIso](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/topushforwardofiso--4a22782a8e928eb5528d2a73.md) | 427 | `declaration-track:4a22782a8e928eb5528d2a735e4bae0b3fd2046906ee1004124a60400717627d` |
| 41 | `theorem` | [toPushforwardOfIso_app](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/topushforwardofiso-app--e15f3bb83224e87f450acac8.md) | 434 | `result-track:e15f3bb83224e87f450acac885588efd1c4fe074cac928234705dcd058390dfd` |
| 42 | `def` | [pushforwardToOfIso](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardtoofiso--bcca823946f45cfc309d4578.md) | 457 | `declaration-track:bcca823946f45cfc309d4578d4099753af5938284e57a715a58b34edcfe48623` |
| 43 | `theorem` | [pushforwardToOfIso_app](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardtoofiso-app--ac0e3ed0bedc8cb2dc6a867e.md) | 464 | `result-track:ac0e3ed0bedc8cb2dc6a867eeccf72b9d86de940aeab90d691e12b4807fa2d60` |
| 44 | `def` | [pullback](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pullback--7291b43b82d2a5ee5dfa62a7.md) | 482 | `declaration-track:7291b43b82d2a5ee5dfa62a7d88a49bcda47d6e1408d46018c53026ac775c667` |
| 45 | `theorem` | [pullbackObj_eq_pullbackObj](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pullbackobj-eq-pullbackobj--dcea92dbdee45a55aee84d7d.md) | 488 | `result-track:dcea92dbdee45a55aee84d7dd62c98b0acea02ca0437cb4d3b92c6ad122f8fd7` |
| 46 | `def` | [pushforwardPullbackAdjunction](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pushforwardpullbackadjunction--a61604b8d734d87a7be93844.md) | 496 | `declaration-track:a61604b8d734d87a7be938440e6691157dbefa2f48a13cc092c617adffc96d46` |
| 47 | `def` | [pullbackHomIsoPushforwardInv](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pullbackhomisopushforwardinv--9ac698c09b14db1462c24028.md) | 503 | `declaration-track:9ac698c09b14db1462c2402862314174052fb544d1ab9a58c0b380dc4b93c461` |
| 48 | `def` | [pullbackInvIsoPushforwardHom](../../../../mathematics/Topology/Presheaf/Variantf6033fd03aa3463f4f74890dad78edd99c62cb9b7d8c31d31a2117a1704242d2.lean/declarations/pullbackinvisopushforwardhom--bf9da44c0d4c199a908a8d55.md) | 511 | `declaration-track:bf9da44c0d4c199a908a8d558549028d3c8440ca621b79448d567b819ff37428` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
