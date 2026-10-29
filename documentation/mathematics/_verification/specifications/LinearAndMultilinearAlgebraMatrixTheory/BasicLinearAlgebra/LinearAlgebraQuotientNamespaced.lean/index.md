# Verification target: Linear Algebra Quotient Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05a716a2e72e22e4687a5be72b596f8a0718474c",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05a716a2e72e22e4687a5be72b596f8a0718474c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.QuotientGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientRel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotientrel.md) | 42 | `declaration-track:2122bc7f728fa1f9a4a51a4b2fc63b5780b540bbe02eeefdf1f378659cbf719d` |
| 2 | `theorem` | [quotientRel_r_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotientrel-r-def.md) | 46 | `result-track:d92e2f86d446d7f7d8f979852691d194a7a42e16f5ca4686ed13dddb5221fc8f` |
| 3 | `instance` | [hasQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/hasquotient.md) | 55 | `declaration-track:707263d8ca8ba1ef531ec7a2547c00f3f05c9d220eaf414f6cb33c2c0ef3cfc5` |
| 4 | `def` | [mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk.md) | 63 | `declaration-track:9b7433e3ea35dbef465b998d4fc7853759da5f87be5001ed85a338e3b2ee4358` |
| 5 | `theorem` | [mk'_eq_mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk-eq-mk-source-edition-2.md) | 71 | `result-track:c5593bc72d1e4524aaee98fdc97f3ef627a07270c162d415f4966e23994d6d4f` |
| 6 | `theorem` | [mk''_eq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk-eq-mk.md) | 77 | `result-track:b6575f8a4681d5cc6cd41e37da884bc5681539e4f3302d5c4de23c01b69cc65a` |
| 7 | `theorem` | [quot_mk_eq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quot-mk-eq-mk.md) | 82 | `result-track:007ab55bb3618cfee2e510f3b49f9bca44b382c0bda0aef7abc721c6b6988fb6` |
| 8 | `theorem` | [eq'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/eq.md) | 86 | `result-track:2d1d90179a871710949051dbbbedbd6406211d2bb04475b689261934c09141d1` |
| 9 | `theorem` | [eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/eq-source-edition-2.md) | 90 | `result-track:a1b46005c0556bb1e3f6c06d11a664c6059b4fa878add68efbaec948b6f74d0d` |
| 10 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:5272ff9b96b43577478a3fb8d24c62f9cb309edcb371a575def1606626d93301` |
| 11 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/instance.md) | 100 | `declaration-track:0b0631a89dfd10a30f638337ed221b43b7e44975cce913f5855c1bf1ce35453a` |
| 12 | `theorem` | [mk_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk-zero.md) | 104 | `result-track:92fdb7120babc3ab19e54f80e6ab64a2388badc27a1e30c6624adc9c235a8e81` |
| 13 | `theorem` | [mk_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk-eq-zero.md) | 109 | `result-track:f4939ae277f903ef735522e4ee930b0c7d545f7aecae7c79b81b958e15b04a64` |
| 14 | `instance` | [addCommGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/addcommgroup.md) | 112 | `declaration-track:d16c366ad68c63d786deda34529b4a1714621feedb26944b93f69212ccb6715e` |
| 15 | `theorem` | [mk_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk-add.md) | 117 | `result-track:bbf67d9fab9e49456719401c6bc6e9c61cff3f63bec26dffcb72e480cf295d89` |
| 16 | `theorem` | [mk_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk-neg.md) | 122 | `result-track:b683fc92b3ab28a340719842c811145b425dc4a7f4b08748de3d6a28520abfef` |
| 17 | `theorem` | [mk_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk-sub.md) | 127 | `result-track:e3f6b7940cc1a820a880004af1c5095c2b84eb0d2b06f4e16e5ba9e4021ed090` |
| 18 | `instance` | [instSMul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/instsmul.md) | 135 | `declaration-track:6748d5237f39f40da98b73f5bd1c78d08fd6f85b7bb12ec7a3c25607b7099d07` |
| 19 | `instance` | [instSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/instsmul-source-edition-2.md) | 143 | `declaration-track:eeac1e5ada17cc296f7eb62dc6d6cbac92de4704162f4286a69cf3c96e85d53a` |
| 20 | `theorem` | [mk_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk-smul.md) | 148 | `result-track:9272d4d8f9d6addacadd7385be0e77b959f138f730af25279df47331b4ba2a34` |
| 21 | `instance` | [smulCommClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/smulcommclass.md) | 152 | `declaration-track:1c4355065894bc0dd34c0dcc4907bbe9cd6996d5a3d8a91a788827e01807adc8` |
| 22 | `instance` | [isScalarTower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/isscalartower.md) | 157 | `declaration-track:73fd849d24396659adbc041a99cad42f30aa32d36c2f5dd6fc7118842082d823` |
| 23 | `instance` | [isCentralScalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/iscentralscalar.md) | 162 | `declaration-track:b383c81c2a0496b19d816c2ed9c3a33b36a4ff0f98610e11acbbe9f18fa1a531` |
| 24 | `instance` | [mulAction'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mulaction-source-edition-2.md) | 173 | `declaration-track:b305511e3d8045c2658a3472d44a1a3750c45d2b7c2d39b2d35d292f8cf7b296` |
| 25 | `instance` | [mulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mulaction.md) | 179 | `declaration-track:465484b9808e9b66462bb69192a319929e09208fc683165749fae6bb71f0254f` |
| 26 | `instance` | [smulZeroClass'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/smulzeroclass.md) | 183 | `declaration-track:64981fc9a54c842292f9ca23c850943ced7848c30607db72ab3a33416f9afbfe` |
| 27 | `instance` | [smulZeroClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/smulzeroclass-source-edition-2.md) | 189 | `declaration-track:edc5520cf75177158e0b0a7111873d7ea5a93bb5f51dcdcea7c6e81f333e0adb` |
| 28 | `instance` | [distribSMul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/distribsmul-source-edition-2.md) | 193 | `declaration-track:daeb331658e17e3d5fca30c9a0cb76bb949c6c4c4f120c647d22b3ec202ebc0b` |
| 29 | `instance` | [distribSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/distribsmul.md) | 200 | `declaration-track:3fa3f10a8e008546a20c5042c90296795c3d3c5a020736f72820cbe29db64e4c` |
| 30 | `instance` | [distribMulAction'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/distribmulaction-source-edition-2.md) | 204 | `declaration-track:80d80f6d1a9ed422452ba7aa60832ffa50e365546b19a2084732060f8b1bb9d6` |
| 31 | `instance` | [distribMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/distribmulaction.md) | 211 | `declaration-track:04ac2441a9b5a1fb23295d6d69dc1448683bc3faa7a779ec7210492f6767ac72` |
| 32 | `instance` | [module'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/module.md) | 215 | `declaration-track:2f5dc1925ded4a4496b43624ce012df7fed8c5a136bf7724aad1e31e49f7de8b` |
| 33 | `instance` | [module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/module-source-edition-2.md) | 222 | `declaration-track:be4d337c9697424a86b089c92e87f660ef0b94dd03535030d37459f1772e9e29` |
| 34 | `def` | [restrictScalarsEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/restrictscalarsequiv.md) | 231 | `declaration-track:3db199c3e3592732bda5f4adcd857e4948bd9a564dcf33f7f0115d79224a8f7e` |
| 35 | `theorem` | [restrictScalarsEquiv_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/restrictscalarsequiv-mk.md) | 239 | `result-track:4b6fd5f1d487c7bd07083b3f6673d7a7e3b6bc8c6d3630eee6df080759f83956` |
| 36 | `theorem` | [restrictScalarsEquiv_symm_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/restrictscalarsequiv-symm-mk.md) | 246 | `result-track:340de78bed6e2be1dc4a75419fd454235b98b0446a38b233b545280681d35d41` |
| 37 | `theorem` | [mk_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mk-surjective.md) | 254 | `result-track:a16a4a0e96c98b59bc356c0b65fdf780fe78cfc6f92c6d95f3e84f63b542d623` |
| 38 | `theorem` | [nontrivial_of_lt_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/nontrivial-of-lt-top.md) | 259 | `result-track:2aca9489386f05d1c911e84230ff1ff5eb9ce729d509481260e98d17f386052e` |
| 39 | `instance` | [QuotientBot.infinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotientbot-infinite.md) | 267 | `declaration-track:d6578c71404e06268fbfb351849fa188405360d0a1e8404724184472597e904f` |
| 40 | `instance` | [QuotientTop.unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotienttop-unique.md) | 272 | `declaration-track:8ce802daaa0edc682eca7fe6130078359af3828860b0cacefce960018dc20693` |
| 41 | `instance` | [QuotientTop.fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotienttop-fintype.md) | 277 | `declaration-track:3dcec1ea003b915820432b61653c59d5ea969ef36443b1558451cd6075d605ec` |
| 42 | `theorem` | [subsingleton_quotient_iff_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/subsingleton-quotient-iff-eq-top.md) | 283 | `result-track:2b739e2254a536f6f2a001bd8998948560b9e3b631789446275f432c713e1698` |
| 43 | `theorem` | [unique_quotient_iff_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/unique-quotient-iff-eq-top.md) | 293 | `result-track:996ffab77a1fd08597e5bb09dbeec395c29e8b092d72bbf0b2fcb693593fe45f` |
| 44 | `instance` | [Quotient.fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotient-fintype.md) | 300 | `declaration-track:0324c237b61cf3c23c460c308dcc948c458ab0bd51172d50818caa649f8ddf03` |
| 45 | `theorem` | [card_eq_card_quotient_mul_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/card-eq-card-quotient-mul-card.md) | 304 | `result-track:3967cefd79cc22a8add8824a7aebc4d3e085d1046de70393b742aff60a56e40e` |
| 46 | `theorem` | [quot_hom_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quot-hom-ext.md) | 314 | `result-track:70ad436c05544e75418d77fe3915ba5980ed25185dfdb3f7c2c329af1977fd01` |
| 47 | `def` | [mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mkq.md) | 320 | `declaration-track:83a41f8bbd70f93a85c0e9f78d6005ba91f4e2fd90cd0956d0667b2aa09d62c3` |
| 48 | `theorem` | [mkQ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mkq-apply.md) | 327 | `result-track:e6dd1a66c4a838e3344e05f9821c6964aceccf36f7e76203c61a36c3358a7f25` |
| 49 | `theorem` | [mkQ_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mkq-surjective.md) | 331 | `result-track:b92356480daff60e6a8b70768bea6061b7efabe93fdcb08cc22ae6e327f6db7f` |
| 50 | `theorem` | [linearMap_qext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/linearmap-qext.md) | 344 | `result-track:446efb7698ed0a8564871726dbe5733c1d8fac3f80fd3fd592b912b6d90fcd84` |
| 51 | `def` | [liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/liftq.md) | 350 | `declaration-track:8336495381405f3075ddd741b27df3724d4c5fb7709e289f316c750240350884` |
| 52 | `theorem` | [liftQ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/liftq-apply.md) | 356 | `result-track:fdbbd46579ad3fc91624c3f5f45606515ce98cc414e8d5691d2b5bd0535ccf67` |
| 53 | `theorem` | [liftQ_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/liftq-mkq.md) | 361 | `result-track:fe55bff9a5ce33f391a1641fe72bfaa2f2248280a1e020a26d9df577d7297a9a` |
| 54 | `def` | [liftQSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/liftqspansingleton.md) | 366 | `declaration-track:885717e44123990e5d2a98fed7da86465063af0eda1279cb5e683d3a1a25ec50` |
| 55 | `theorem` | [liftQSpanSingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/liftqspansingleton-apply.md) | 371 | `result-track:27f1ba7534f30abb83378f5804fd6e85dd7f28f0de761f4514e073a5ca778267` |
| 56 | `theorem` | [range_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/range-mkq.md) | 377 | `result-track:9ce049aa04ab06cee363660b9fa85dd13fff746cb4627ed0c87c0196706aebf5` |
| 57 | `theorem` | [ker_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/ker-mkq.md) | 382 | `result-track:2634a2c0fa7418fb206f2f7959edfc253214cb7bf44216171206cd2dea2d665c` |
| 58 | `theorem` | [le_comap_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/le-comap-mkq.md) | 385 | `result-track:73376be2226f9f5830a8f17f0cd489d5713f2cb4c81dfae098a0b37ede0176a6` |
| 59 | `theorem` | [mkQ_map_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mkq-map-self.md) | 390 | `result-track:fb643b32bc703a5f53dc6b6feb611c4f5049d96fd0619e95a35752bcaed7e250` |
| 60 | `theorem` | [comap_map_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/comap-map-mkq.md) | 395 | `result-track:e5d7aa700420c4e60e1bce590d2b3e845192cf359df1a8b7d04b3aa1e981ab96` |
| 61 | `theorem` | [map_mkQ_eq_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/map-mkq-eq-top.md) | 399 | `result-track:22404600547a450c86156ed39ab1f47b3dfe4971630268383f0d51aa5ba8e63e` |
| 62 | `def` | [mapQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mapq.md) | 409 | `declaration-track:f03f19e2c588dbd3985187af70d43af40878ea738e865a1021152247074820fd` |
| 63 | `theorem` | [mapQ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mapq-apply.md) | 414 | `result-track:8d059329e611c5c08ed6a93f1ebd07514a23a377c5e03950c903a2ab31e0f249` |
| 64 | `theorem` | [mapQ_mkQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mapq-mkq.md) | 419 | `result-track:b88adce433efa8018b8e2b4e0bae4308af0c80f53994b002773316c4cb0846ae` |
| 65 | `theorem` | [mapQ_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mapq-zero.md) | 424 | `result-track:6ffb8623481ac78ec9265a5b21dfddaf01157432b6d172575615bbc141725b19` |
| 66 | `theorem` | [mapQ_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mapq-comp.md) | 433 | `result-track:efa84c51455e9a5f106c49925d30cb4eed06e379a880b34d870453f0cebd8004` |
| 67 | `theorem` | [mapQ_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mapq-id.md) | 443 | `result-track:118784271f94e049abbf4214d8ede7b55c9ba858398c4594c600c29a22686803` |
| 68 | `theorem` | [mapQ_pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mapq-pow.md) | 449 | `result-track:0a10883430699bc0f87107c47a61e7e9511fccf7d8e0b881bdf8149dfc9b3e38` |
| 69 | `theorem` | [comap_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/comap-liftq.md) | 462 | `result-track:087a8b56b2462849489250746fd6b888e9e39575086644430362377956f092b3` |
| 70 | `theorem` | [map_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/map-liftq.md) | 467 | `result-track:a94607d5313428e61f7a17645efa55ac6b75c67fa565aee921324cb6578b772c` |
| 71 | `theorem` | [ker_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/ker-liftq.md) | 473 | `result-track:f141afaec183392c8b41a376ab4d1f3cc197d90f99aa7a251b8b284cffd639f5` |
| 72 | `theorem` | [range_liftQ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/range-liftq.md) | 477 | `result-track:37180b0abd046b865bbbf04d9cb6dffe7546dcc40db1f5e881ce78fb5950c092` |
| 73 | `theorem` | [ker_liftQ_eq_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/ker-liftq-eq-bot.md) | 481 | `result-track:67dd2a22cfc6fca1de36ec075b58b1a718175e4bf332feda89dc8f669e7dac12` |
| 74 | `def` | [comapMkQRelIso](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/comapmkqreliso.md) | 487 | `declaration-track:54e435eba90e226ff49ed7bb05e0fb5d6a767c57b31311badcd463081740edc6` |
| 75 | `def` | [comapMkQOrderEmbedding](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/comapmkqorderembedding.md) | 497 | `declaration-track:dd47cc4d0ee9913afcfea68882a437407ed7a0d9fc17386b42d7163479a2d041` |
| 76 | `theorem` | [comapMkQOrderEmbedding_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/comapmkqorderembedding-eq.md) | 502 | `result-track:2cf6a075d7b24bad2813d7cca133eae35a72e0dd64a6085e06f569a06ef1e5e8` |
| 77 | `theorem` | [span_preimage_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/span-preimage-eq.md) | 507 | `result-track:0bd500e0678fffb2e630c04fbd39a3c5abc46b0a8a47f3ec63834e07d63a9bdd` |
| 78 | `def` | [Quotient.equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotient-equiv.md) | 526 | `declaration-track:6a7277cd5897f22f544101c8452c3fb17a17395089eba5fa4ad2f105298ecc50` |
| 79 | `theorem` | [Quotient.equiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotient-equiv-symm.md) | 541 | `result-track:0d11ace4baa73e03d4c42a1d9d62c0d1a3c4c04c211c759e5e1c650ae8c8328c` |
| 80 | `theorem` | [Quotient.equiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotient-equiv-trans.md) | 550 | `result-track:d4b79aadfe1a741a50ceac4123f03da92979fcd272fa5d960c3d4908c79ea64b` |
| 81 | `theorem` | [range_mkQ_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/range-mkq-comp.md) | 582 | `result-track:258ccfec270b92304a63c4245fe6f994b57d5426a32010ab6919add2afbd10fc` |
| 82 | `theorem` | [ker_le_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/ker-le-range-iff.md) | 586 | `result-track:80d802e1540c800a37e79c5df5b457cf0f54726ac328c2ac1dcada7c66d98778` |
| 83 | `theorem` | [range_eq_top_of_cancel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/range-eq-top-of-cancel.md) | 592 | `result-track:ef89175ba2fc9276e3057fd30dd87bb640db5667f41e80a5e4c52df3af6350f1` |
| 84 | `def` | [quotEquivOfEqBot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotequivofeqbot.md) | 612 | `declaration-track:ec9726d22d3c1da4727c7105983ff57795715cfaadaa518ae0bfeeaed93b48fc` |
| 85 | `theorem` | [quotEquivOfEqBot_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotequivofeqbot-apply-mk.md) | 618 | `result-track:b52f808a114825570edd7fa75b7bc8bb46d3811f8c1beb744314d9bebb5bef44` |
| 86 | `theorem` | [quotEquivOfEqBot_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotequivofeqbot-symm-apply.md) | 624 | `result-track:4db041da029d7e0776f79ba4988ca0dcc9322c53b700f0ab226d120244a86f04` |
| 87 | `theorem` | [coe_quotEquivOfEqBot_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/coe-quotequivofeqbot-symm.md) | 630 | `result-track:ba4a829a26feee0e821eac5fb10dce16233209d9fb5a9f7cecfba6fbea09709f` |
| 88 | `def` | [quotEquivOfEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotequivofeq.md) | 636 | `declaration-track:8cde97be8cafe832c604cd432677feb09b2a611143ccbe5ade5261555347d07a` |
| 89 | `theorem` | [quotEquivOfEq_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotequivofeq-mk.md) | 649 | `result-track:0c09d1f964962e945930299edb48b02bcd7421046626ee8b318d91b06e467e75` |
| 90 | `theorem` | [Quotient.equiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/quotient-equiv-refl.md) | 656 | `result-track:1e8e722cf8c3aef226d1c833656f6dcf9eac490295d112dc866df63197be2789` |
| 91 | `def` | [mapQLinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraQuotientNamespaced.lean/declarations/mapqlinear.md) | 675 | `declaration-track:8b97751ce03d96ef0c155693857d834820676e6adc5e35e73f2bd753fbc46a90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67aaea8ad717ac936c8149defeb537416b5992843a63048ac523c1b15c4ac154 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Quotient/Variant10f4e6b27b82dc10cc7672a1f38ca3010fa85dab3bbe81ff191bd78c1168c804.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
