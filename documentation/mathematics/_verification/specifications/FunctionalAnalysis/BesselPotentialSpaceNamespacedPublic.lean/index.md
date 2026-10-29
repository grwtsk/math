# Verification target: Bessel Potential Space Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a442c92babe2bfda9a7f4136670cb78007750edb",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant3fe36a64cd9da30f04d68d016cbaeecc849b117df3d9231739cf90162c9af65f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a442c92babe2bfda9a7f4136670cb78007750edb`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant3fe36a64cd9da30f04d68d016cbaeecc849b117df3d9231739cf90162c9af65f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant3fe36a64cd9da30f04d68d016cbaeecc849b117df3d9231739cf90162c9af65f.lean.json)

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
| 1 | `structure` | [BesselPotentialSpace](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/besselpotentialspace.md) | 55 | `declaration-track:78be9b4a22d2d4cbd5c3998ac8252b328ce9b39488042fa916c6c74b5719c70a` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 78 | `declaration-track:44e8ad9a27dd42616d9c2f89aed8bb27d2d1a3c2fb20b4af301bbd0390c8f9e1` |
| 3 | `theorem` | [ext'](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 81 | `result-track:86f682671c31d1757516482b1da4be226aaecf3a3d3f5e721d454b045765f89b` |
| 4 | `theorem` | [memSobolev_toDistr](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/memsobolev-todistr.md) | 85 | `result-track:6c59e95b9deef1f537aeb1a54b46fc17629e74f6f27a6156b56d9cd93dbcbd0c` |
| 5 | `theorem` | [besselPotential_neg_toLp_eq](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/besselpotential-neg-tolp-eq.md) | 89 | `result-track:63daaea830063c76f87fd73f3deb1694b78121a778faaf9ae068272d23fc8549` |
| 6 | `theorem` | [ext](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/ext.md) | 94 | `result-track:7778fc55e893960d964bb95bfdd925db389aaaca2d72fbbb25a685187d6fbab3` |
| 7 | `def` | [copy](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/copy.md) | 102 | `declaration-track:a88d949f04fd3ee2158635bd091a401980c15a2426314752811d929b3ad1f6f8` |
| 8 | `theorem` | [toDistr_copy](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/todistr-copy.md) | 110 | `result-track:d2afbaa0df7c3eac3d3b7a4895ce305b9a3307c49024b49d7286125230930887` |
| 9 | `theorem` | [toLp_copy](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-copy.md) | 114 | `result-track:a3f7c2dfcbcb1022dd32531369e188356251c66db809ff25fc893b69ea90112e` |
| 10 | `theorem` | [injective_toLp](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/injective-tolp.md) | 118 | `result-track:1f0e59380ca10dcebddb4537d03711583470787c3ef6a259644c754db941aff0` |
| 11 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 127 | `declaration-track:f2ccb6aecb0ea7a975e00ad82f9a1494e41925a8ddf516fc0d101a2bef7f5711` |
| 12 | `theorem` | [toDistr_zero](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/todistr-zero.md) | 134 | `result-track:1eb47c31874ba895bb58e92db50d59ecf6a7cce1a0764a458916fb130031f0ff` |
| 13 | `theorem` | [toLp_zero](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-zero.md) | 137 | `result-track:f26496abb55dddb941640d290e7df97d931de5f48f62373abfc5b1212333679b` |
| 14 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 139 | `declaration-track:2e5c14beb5316776524bb7dde8d381dc2e3b92fbd15498c9d944926ce112de7b` |
| 15 | `theorem` | [toDistr_add](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/todistr-add.md) | 147 | `result-track:e7fec90f456929929d4c9e9374d22c0c8a856c16acd9ac00c4d782f10e922d9c` |
| 16 | `theorem` | [toLp_add](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-add.md) | 150 | `result-track:6823b25a0cdc954f2a2e5ff55b27dca6b103f6b801ed047d69c49c4fb63cd9e3` |
| 17 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 152 | `declaration-track:efc7e77a7f3f61f3b87bba18a3b6fe51ecf9519ed1f6974b619581518ef1c06c` |
| 18 | `theorem` | [toDistr_sub](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/todistr-sub.md) | 160 | `result-track:5e9964b08824decdbaff58fafc34237f600736e1ae9e4ed32c58b97b2db9e3fb` |
| 19 | `theorem` | [toLp_sub](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-sub.md) | 163 | `result-track:20c306109a8d3a627bb5e6e8594fc84a30c66a70b97ac744f4736c9c78477396` |
| 20 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 165 | `declaration-track:68ddc07ff78c6e39ca419d8b5c455ae50d78fa2aee6693bf91e6b0e8c61ce1e7` |
| 21 | `theorem` | [toDistr_neg](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/todistr-neg.md) | 173 | `result-track:62bcb0253cd17bb0cd63b1b91423b15a2ffe44ed1fd32ed635b255809702e83b` |
| 22 | `theorem` | [toLp_neg](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-neg.md) | 176 | `result-track:66bf43f096e75c3927ad7d48c88638774b5b321ec38a9db6c4deee64221accd5` |
| 23 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 182 | `declaration-track:608ce329fef65d98100b1e65029cb4a63936f5c78e33b2511c31a19ade460ad4` |
| 24 | `theorem` | [toDistr_smul](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/todistr-smul.md) | 190 | `result-track:ba655341fa81bba5b96efc01e62ae24b4cbfe2c57a468f35bccd695fb104fd91` |
| 25 | `theorem` | [toLp_smul](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-smul.md) | 193 | `result-track:93db261969d9f793a0efbadc59c24e08e3440ba98f127381519f2e056ed4a952` |
| 26 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 195 | `declaration-track:50956313de7d29419d0548f05a28ceb6f8586d2960d8edc85b4ce050b64e70aa` |
| 27 | `def` | [coeAddMonoidHom](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/coeaddmonoidhom.md) | 201 | `declaration-track:1f7a574e84e5a529089510a654b82b38cb95b8a3dab0f38cbce865e6f0aaea52` |
| 28 | `theorem` | [coeAddMonoidHom_injective](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/coeaddmonoidhom-injective.md) | 206 | `result-track:86517cd6faa59e6179dede00df78aa08718dcb86d67ef7223a9c481439fea406` |
| 29 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 209 | `declaration-track:82108eb02855570d03e5d7ccda7193ba8d9a42e0a25c7ad07013858fdda840bc` |
| 30 | `def` | [toLpₗ](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp.md) | 216 | `declaration-track:162905f2764e1ca5bc7fd5a2da8e343da5364de6efc0a03d2722f125bf81f512` |
| 31 | `def` | [ofLp](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/oflp.md) | 223 | `declaration-track:68cbed2fc6b002c58b8a201ac08a9e6dcfdee8a36879bd2381a6bce19720da3b` |
| 32 | `theorem` | [toLp_ofLp](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-oflp.md) | 229 | `result-track:bb3ba29970fd77fcb628b05a1e1edf500cc3605b058662d6ab43ee85266a0aea` |
| 33 | `theorem` | [toDistr_ofLp](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/todistr-oflp.md) | 233 | `result-track:9e08a239a2ca1ea12d693853be3934b30c6e618c26470d0e631e32e129681271` |
| 34 | `theorem` | [ofLp_toLp](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/oflp-tolp.md) | 237 | `result-track:8dee92811cae539e58e56ee74e0571e210f75fe384962b5d1c2af93df5e8256b` |
| 35 | `theorem` | [toLpₗ_apply](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-apply.md) | 242 | `result-track:8b87a8bbd3f3ad23cc851d3b0b48f527fde47fd5bd3f1646a3b8d28e9c4d0953` |
| 36 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 245 | `declaration-track:427dda862f3dad685436a270d62d8d88b500ae04220e9d267d5921a621bc9f02` |
| 37 | `theorem` | [norm_toLp_eq](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/norm-tolp-eq.md) | 250 | `result-track:9b2b52421a15ae3d66968423f591469f1ea1fe220db1b7416c5a2b50cb61ecb5` |
| 38 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance.md) | 252 | `declaration-track:1b888390a77eb2f827e7a5cd1608a2f3b8971b3b332ab5297a85bb4907cf3ad4` |
| 39 | `def` | [toLpₗᵢ](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-source-edition-2.md) | 258 | `declaration-track:844ea610a83547255b6e30d6c5f5cf1cd5752ca0da06c81b3d58e6925307b849` |
| 40 | `theorem` | [toLpₗᵢ_apply](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-apply-source-edition-2.md) | 266 | `result-track:eac273c214b2c10de8495a7f87477cf1ae6f687cf7c4ed85961bd683cb185967` |
| 41 | `theorem` | [toLpₗᵢ_symm_apply](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/tolp-symm-apply.md) | 270 | `result-track:dbaaf9dfc9a685fe24d91770b88fd8486f80a59402cc4dc49d640b0a6e1d2ff1` |
| 42 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 273 | `declaration-track:a10c61e489ec37fd78b82e3df35df7c286d92a59d27dd1c65b4d71d485f2c1a7` |
| 43 | `theorem` | [norm_fourier_toLp_eq](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/norm-fourier-tolp-eq.md) | 284 | `result-track:48d07a30f9d1cb4e60bce551ad9852286f07de6ae1c67eb49e305d617c626e25` |
| 44 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 287 | `declaration-track:d686f2d5b88a6d3e42fd5e6df0fdad739bf941e88d0da7434a5942a1073ff70b` |
| 45 | `def` | [MemSobolev.toBesselPotentialSpace](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/memsobolev-tobesselpotentialspace.md) | 307 | `declaration-track:f6231e678ee53411b2f250b2505b63c1e3c1837cbd5b4dd0a23320a70144e637` |
| 46 | `theorem` | [MemSobolev.toBesselPotentialSpace_toDistr](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/memsobolev-tobesselpotentialspace-todistr.md) | 313 | `result-track:8ac079a0696182760b3998187b6078e71e0690ff7f3874636bd95cb55b3abfb2` |
| 47 | `theorem` | [MemSobolev.toBesselPotentialSpace_injective](../../../../FunctionalAnalysis/BesselPotentialSpaceNamespacedPublic.lean/declarations/memsobolev-tobesselpotentialspace-injective.md) | 316 | `result-track:a2630fe4efefaa7c66a2cb8ef7d70fef1c0ef6144691295103a5b351663bdfb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e2a9cccd2557ee98a17df5a140c9e2c39769212d2f88102e474c19ca5dbd7dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant3fe36a64cd9da30f04d68d016cbaeecc849b117df3d9231739cf90162c9af65f.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant3fe36a64cd9da30f04d68d016cbaeecc849b117df3d9231739cf90162c9af65f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
