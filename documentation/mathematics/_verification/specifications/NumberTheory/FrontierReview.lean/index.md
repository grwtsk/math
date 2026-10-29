# Verification target: Frontier Review

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d8969228200b5bbc101f58d059c1ef2ab365867",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/FrontierReview/Varianta4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/FrontierReview.lean/index.md) · [Full source](../../../../NumberTheory/FrontierReview.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d8969228200b5bbc101f58d059c1ef2ab365867`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/FrontierReview/Varianta4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/FrontierReview/Varianta4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalPartialTensor](../../../../NumberTheory/FrontierReview.lean/declarations/localpartialtensor.md) | 22 | `declaration-track:ff34a6ea184bdcc1522598fc657ea4d7b33bf9a9102d139a01383107432fb186` |
| 2 | `structure` | [SimplicialPresentation](../../../../NumberTheory/FrontierReview.lean/declarations/simplicialpresentation.md) | 33 | `declaration-track:cacd75a3c57822af19087361a4610bf6a9fe0c06bdba72ca04d4dda4e104e924` |
| 3 | `def` | [SimplicialPresentation.IsCertified](../../../../NumberTheory/FrontierReview.lean/declarations/simplicialpresentation-iscertified.md) | 47 | `declaration-track:679a3ec1cbe111b53c7a4eec92486f708d07b17ba80cd21bd766216c6f61c3a9` |
| 4 | `abbrev` | [AdmittedNavigationFunctor](../../../../NumberTheory/FrontierReview.lean/declarations/admittednavigationfunctor.md) | 51 | `declaration-track:d2ea4d5616da917c544bdf4674ac283b7bcb2e16fc22163c1b6dba4b44835cb8` |
| 5 | `abbrev` | [ContravariantYoneda](../../../../NumberTheory/FrontierReview.lean/declarations/contravariantyoneda.md) | 58 | `declaration-track:d52c3c3dbce84a824e461c893d58477878362093d723cee8852a7c6f016725b8` |
| 6 | `def` | [contravariantYonedaFullyFaithful](../../../../NumberTheory/FrontierReview.lean/declarations/contravariantyonedafullyfaithful.md) | 63 | `declaration-track:a6ae0a17202e19a49abe467186ddef494b1e6bd20636193cf65c1e5f10ff0efa` |
| 7 | `inductive` | [ProfileVariance](../../../../NumberTheory/FrontierReview.lean/declarations/profilevariance.md) | 69 | `declaration-track:818f5508cfe2267c76d13f25bc9d61396ef4f088bc748876e2f048aa4379e9cb` |
| 8 | `structure` | [RepresentableProfileIndex](../../../../NumberTheory/FrontierReview.lean/declarations/representableprofileindex.md) | 74 | `declaration-track:703831f91deab15946c09114878aa5384394f04903ff804f026e7b3302549dde` |
| 9 | `inductive` | [WrigleyStreetRoot](../../../../NumberTheory/FrontierReview.lean/declarations/wrigleystreetroot.md) | 86 | `declaration-track:b5cd1e2f5108307e503e3355b072def3f8dcdac3fc765359b0daa5033f6e1166` |
| 10 | `def` | [rootFinIndex](../../../../NumberTheory/FrontierReview.lean/declarations/rootfinindex.md) | 93 | `declaration-track:5b84fbb3788b0ff7dab7c7299e52eed25ad94d5582c78a0ea44c1748aee56590` |
| 11 | `def` | [rootIndex](../../../../NumberTheory/FrontierReview.lean/declarations/rootindex.md) | 110 | `declaration-track:7dfa7b3a1ddc43548206825defa24c41e90765ba297e70e25fa846ae6b84ed2b` |
| 12 | `def` | [rotate](../../../../NumberTheory/FrontierReview.lean/declarations/rotate.md) | 113 | `declaration-track:211ffbd34e2ae4e5d468368a01d0daeb25495ac9aed92afd391f0c917877962b` |
| 13 | `def` | [rotateBack](../../../../NumberTheory/FrontierReview.lean/declarations/rotateback.md) | 119 | `declaration-track:5fce8236a1a379faa3c7d7f358020a0b557624ff1fc71faf252fb006c1c9e20b` |
| 14 | `def` | [rotationEquiv](../../../../NumberTheory/FrontierReview.lean/declarations/rotationequiv.md) | 125 | `declaration-track:1fb7a508f93c65adebcf28b927af9144eaa4e9154ac8928cef37177ff06a2559` |
| 15 | `theorem` | [rotate_bijective](../../../../NumberTheory/FrontierReview.lean/declarations/rotate-bijective.md) | 133 | `result-track:44598f6026af2c9e947e0371d86087878d7d2ed84193196f556d2f7331900a20` |
| 16 | `theorem` | [rootIndex_rotate](../../../../NumberTheory/FrontierReview.lean/declarations/rootindex-rotate.md) | 136 | `result-track:4c0c1cdd206a40e0ec64483681b23e204660772f9af3f79cff5d3e2484d83229` |
| 17 | `theorem` | [rotate_fourth_iterate](../../../../NumberTheory/FrontierReview.lean/declarations/rotate-fourth-iterate.md) | 140 | `result-track:e58953f124bbf46a9ac253e4efdbf2fe905cec64e137127f305a829ffe4366e3` |
| 18 | `theorem` | [rotate_first_iterate_not_identity](../../../../NumberTheory/FrontierReview.lean/declarations/rotate-first-iterate-not-identity.md) | 145 | `result-track:ea8bf491b129daaf4df0a322f8af9ccb67dd59ba75a410444ea765af16568bae` |
| 19 | `theorem` | [rotate_second_iterate_not_identity](../../../../NumberTheory/FrontierReview.lean/declarations/rotate-second-iterate-not-identity.md) | 151 | `result-track:39bd33cc076acfcb7b16d7a2e29a215983d09e035aa4e39ebf0efe8c91fbeaf3` |
| 20 | `theorem` | [rotate_third_iterate_not_identity](../../../../NumberTheory/FrontierReview.lean/declarations/rotate-third-iterate-not-identity.md) | 157 | `result-track:0b110a1131351e6eb130c5b73e9c96ea71636658111d12e83179ad39320c07c3` |
| 21 | `def` | [perimeterDistance](../../../../NumberTheory/FrontierReview.lean/declarations/perimeterdistance.md) | 163 | `declaration-track:cb2cfa20a15bbb31277ecd5ef0b44f620fb3c9d9f06677b6bf7562825d67c772` |
| 22 | `abbrev` | [cayleyCycleWordMetric](../../../../NumberTheory/FrontierReview.lean/declarations/cayleycyclewordmetric.md) | 169 | `declaration-track:2ec8d51d2fdf478934189197d208bec938b943f4d8af4adad9e56526865f6194` |
| 23 | `theorem` | [adjacent_rotation_has_unit_word_metric](../../../../NumberTheory/FrontierReview.lean/declarations/adjacent-rotation-has-unit-word-metric.md) | 172 | `result-track:c50879a3b92e807a9f8eaecbc5e7d803cc46deb2a304fbc340b05a9cc460aa7f` |
| 24 | `structure` | [StreetAlias](../../../../NumberTheory/FrontierReview.lean/declarations/streetalias.md) | 179 | `declaration-track:f392f12f4ff996e3fdf3e19df2d032ff8dc434972828c3a03e5323bac88f4441` |
| 25 | `instance` | [instSetoidStreetAlias](../../../../NumberTheory/FrontierReview.lean/declarations/instsetoidstreetalias.md) | 184 | `declaration-track:405c711392b9208803c38499be527ff937e82c2ae69f8f78c36b9fa6b0e48c5e` |
| 26 | `def` | [AliasHom](../../../../NumberTheory/FrontierReview.lean/declarations/aliashom.md) | 192 | `declaration-track:c168aec9223ba27729cec4b0dae5bd4b67c16229d393ee82ff01d33436c48e32` |
| 27 | `theorem` | [identity](../../../../NumberTheory/FrontierReview.lean/declarations/identity.md) | 197 | `result-track:d648be775a7495f6c43b98fd0a24023144de84f4e63fc0e4630e65ce0e783f43` |
| 28 | `theorem` | [compose](../../../../NumberTheory/FrontierReview.lean/declarations/compose.md) | 201 | `result-track:3e8a0c31aa4e9cb36c598602add91086af12b442800f0324a4261bec00a7a578` |
| 29 | `theorem` | [inverse](../../../../NumberTheory/FrontierReview.lean/declarations/inverse.md) | 208 | `result-track:cc360a0667351aad8c5c51cc15ce6811cfd8c78c3b00bf378bfae47af32d5e1c` |
| 30 | `theorem` | [at_most_one](../../../../NumberTheory/FrontierReview.lean/declarations/at-most-one.md) | 214 | `result-track:e02464618ecbccee5f3966bc5cb5ae3575ad36c5a23fb27c7d82584ed266f3fd` |
| 31 | `theorem` | [exists_iff_same_root](../../../../NumberTheory/FrontierReview.lean/declarations/exists-iff-same-root.md) | 220 | `result-track:b74e52168a015fcf5d41b8b4b0f46885dd985ad85b273e06fb5b5d8c6d84ce41` |
| 32 | `structure` | [StreetAliasDerivation](../../../../NumberTheory/FrontierReview.lean/declarations/streetaliasderivation.md) | 232 | `declaration-track:fea1dcaac0ee556a93c9128a5b0db95002fdcfee8ada926be4380f106ad230c5` |
| 33 | `structure` | [OrbitClassification](../../../../NumberTheory/FrontierReview.lean/declarations/orbitclassification.md) | 241 | `declaration-track:15991cd339eef65024164432b716735ee720b5bde8f0d140e374803bd6a15cff` |
| 34 | `structure` | [AcceptedOrbit](../../../../NumberTheory/FrontierReview.lean/declarations/acceptedorbit.md) | 248 | `declaration-track:96f3a5cae7371ebcc1f3448ecb182c7181f209cd0b3a2b23df59ea56bd34da7a` |
| 35 | `structure` | [AcceptedOrbitRegistry](../../../../NumberTheory/FrontierReview.lean/declarations/acceptedorbitregistry.md) | 254 | `declaration-track:c8d9a6dc03fb2f8be3b78a1c89d0740bc311c06d9610309aba204a5b084258cc` |
| 36 | `def` | [appendAcceptedOrbit](../../../../NumberTheory/FrontierReview.lean/declarations/appendacceptedorbit.md) | 266 | `declaration-track:c52a388c13764d099aad6ce0b58c918b5ed0953995e9ae90682f0e33f037cede` |
| 37 | `theorem` | [append_lookup_existing](../../../../NumberTheory/FrontierReview.lean/declarations/append-lookup-existing.md) | 303 | `result-track:fea7fb5205bf2f6ecb3031a170574f09c0a9cc6e066c84fafa96701f7899b862` |
| 38 | `theorem` | [append_preserves_existing_prime_index](../../../../NumberTheory/FrontierReview.lean/declarations/append-preserves-existing-prime-index.md) | 317 | `result-track:791f3395ac67f741802fee61a4cc7a2e061b96e29270c6e730fff34a2709b341` |
| 39 | `structure` | [RootLabelSchema](../../../../NumberTheory/FrontierReview.lean/declarations/rootlabelschema.md) | 342 | `declaration-track:4b1cbb2163a3202e4c1e3463f34d0b36b039dca8b8087569f6dff5e674eb0c7d` |
| 40 | `structure` | [AnalyticalLabelPrimalityCorrection](../../../../NumberTheory/FrontierReview.lean/declarations/analyticallabelprimalitycorrection.md) | 347 | `declaration-track:ffe3a66bd735f9c395a8c14ce87c96e1d6f985ea4c6bf65a94a2edaca5ae544a` |
| 41 | `def` | [applyAnalyticalCorrection](../../../../NumberTheory/FrontierReview.lean/declarations/applyanalyticalcorrection.md) | 356 | `declaration-track:b147ccc422e8b070873a0951cfabaeaee4aba4e30e5c96b8841e026bba913265` |
| 42 | `theorem` | [analytical_correction_preserves_prime_index](../../../../NumberTheory/FrontierReview.lean/declarations/analytical-correction-preserves-prime-index.md) | 363 | `result-track:fa72b1f97d312ffde17e47bdbb877f3e30bc6339c9d392bf65a9af35e6d2c861` |
| 43 | `inductive` | [LifeWindow](../../../../NumberTheory/FrontierReview.lean/declarations/lifewindow.md) | 371 | `declaration-track:2a3cae26d597f553212ed7b59bbe8d266e4c65b8894612dc7728bfae1b0cfac5` |
| 44 | `def` | [LifeWindow.contains](../../../../NumberTheory/FrontierReview.lean/declarations/lifewindow-contains.md) | 375 | `declaration-track:0243a82411f80ae2e72903a0a64ab6f3ddc3710f56e0fee8354f870ffcb7d212` |
| 45 | `def` | [LifeWindow.containsBool](../../../../NumberTheory/FrontierReview.lean/declarations/lifewindow-containsbool.md) | 381 | `declaration-track:b11305874d2036aca36e05ea6216503d37e500ebd6abdcbd67c472c920b61229` |
| 46 | `theorem` | [LifeWindow.containsBool_eq_true_iff](../../../../NumberTheory/FrontierReview.lean/declarations/lifewindow-containsbool-eq-true-iff.md) | 389 | `result-track:1ec6b75272c826a9ac2990459726355255d5d437a60415a735c6d3544200ce2a` |
| 47 | `theorem` | [closed_window_rejects_endpoint_and_after](../../../../NumberTheory/FrontierReview.lean/declarations/closed-window-rejects-endpoint-and-after.md) | 396 | `result-track:0c38e276d53c0e375d91f6c835c21e490d6a8485bd5ccb53c5ca677b26b00a77` |
| 48 | `structure` | [LineageSnapshot](../../../../NumberTheory/FrontierReview.lean/declarations/lineagesnapshot.md) | 404 | `declaration-track:353f2478af7a7918d1391f20272028895c0fd6ff482046f080b85fe81a944899` |
| 49 | `structure` | [BitemporalResolutionQuery](../../../../NumberTheory/FrontierReview.lean/declarations/bitemporalresolutionquery.md) | 409 | `declaration-track:4eba6c742a694417556fdf32d74e7c8d4d78bde3a3c9466f7d08738930b9a3ed` |
| 50 | `structure` | [ClosedFamilyAliasCandidate](../../../../NumberTheory/FrontierReview.lean/declarations/closedfamilyaliascandidate.md) | 417 | `declaration-track:50b1408953f763686ad37df1483b71e99e97649a9364b27745cd008025c66ab1` |
| 51 | `inductive` | [ClosedCandidateResolution](../../../../NumberTheory/FrontierReview.lean/declarations/closedcandidateresolution.md) | 426 | `declaration-track:106ae66f1cc5ef25bdcee6812ff5361a44a9dea5b249348cfe789ecbe627d097` |
| 52 | `def` | [resolveClosedCandidates](../../../../NumberTheory/FrontierReview.lean/declarations/resolveclosedcandidates.md) | 432 | `declaration-track:133894c3e0c80d27764170f7eb97a5f3067f133c69171fc299b048bacd6aaf88` |
| 53 | `theorem` | [multiple_equally_ranked_closed_candidates_are_ambiguous](../../../../NumberTheory/FrontierReview.lean/declarations/multiple-equally-ranked-closed-candidates-are-ambiguous.md) | 439 | `result-track:e750267143616bde080ce1a732d731c5272b793d1cc58d3458e6d5ed39c48436` |
| 54 | `def` | [rootLabels](../../../../NumberTheory/FrontierReview.lean/declarations/rootlabels.md) | 452 | `declaration-track:01767195257f726e6600da4f1f4526da64b958f448a9f109c38bd028e29c3e04` |
| 55 | `def` | [CoprimeToLabelSet](../../../../NumberTheory/FrontierReview.lean/declarations/coprimetolabelset.md) | 455 | `declaration-track:dc08ff40cd6b08878e92f86aa77b5a6cc259d1c6ebb623ed4cd18acc92a08f0d` |
| 56 | `theorem` | [root_label_product](../../../../NumberTheory/FrontierReview.lean/declarations/root-label-product.md) | 460 | `result-track:85ce93917d3238af8656482e6876dc7c63b30c584191b2eeee6e4bc2107662ba` |
| 57 | `theorem` | [one_forty_three_coprime_to_root_labels](../../../../NumberTheory/FrontierReview.lean/declarations/one-forty-three-coprime-to-root-labels.md) | 464 | `result-track:0a3e89fbf6f117f68ebb4fd19f58cc7b0abb3a565f2a5bb94d9595e1e9478065` |
| 58 | `theorem` | [one_forty_three_coprime_to_product](../../../../NumberTheory/FrontierReview.lean/declarations/one-forty-three-coprime-to-product.md) | 468 | `result-track:2e708ed6d9c04c9d92835b79326e7e2ed9b96427dabab288535b585a73d21aaf` |
| 59 | `theorem` | [one_forty_three_labels_iff_product](../../../../NumberTheory/FrontierReview.lean/declarations/one-forty-three-labels-iff-product.md) | 472 | `result-track:77174a6cb612a9b269fad6c170ef3a3b6a78bb5a503545e72f31bc159d890deb` |
| 60 | `theorem` | [one_forty_three_not_prime](../../../../NumberTheory/FrontierReview.lean/declarations/one-forty-three-not-prime.md) | 477 | `result-track:47526d131ee3d1f8fce17c6c7ea1b2879f08b7622de3aac6e3db772f182f58a2` |
| 61 | `structure` | [DisunionCandidate](../../../../NumberTheory/FrontierReview.lean/declarations/disunioncandidate.md) | 483 | `declaration-track:cfa2b40ff8074eef702a766a98d3627b2688084a706b23071fcb732c893749bc` |
| 62 | `structure` | [DisunionBlock](../../../../NumberTheory/FrontierReview.lean/declarations/disunionblock.md) | 488 | `declaration-track:eae8f3380caeaeb637f7b17f5fd1732db675e8294c484b354a053935a87a88ac` |
| 63 | `structure` | [InteractionContext](../../../../NumberTheory/FrontierReview.lean/declarations/interactioncontext.md) | 495 | `declaration-track:b3ef667af27cd9b834c027ffde2239122f3067aa8665a669cd4f455647e3011c` |
| 64 | `structure` | [ContextualCandidate](../../../../NumberTheory/FrontierReview.lean/declarations/contextualcandidate.md) | 499 | `declaration-track:4ee0ff5a69d7e780a289c492f43ba731aab559ced7ebf542aaedb5ae24160e33` |
| 65 | `inductive` | [ContextualResolverResult](../../../../NumberTheory/FrontierReview.lean/declarations/contextualresolverresult.md) | 503 | `declaration-track:214808db49f461d6f004442c79fdf3383c0da80fbe9760d47bfa1b5614fb3dff` |
| 66 | `structure` | [ResolverResultBinding](../../../../NumberTheory/FrontierReview.lean/declarations/resolverresultbinding.md) | 509 | `declaration-track:897967ac4fe17abf81e3de46695f151316841a0275919be8424219c1c3564111` |
| 67 | `theorem` | [resolver_result_is_bound_by_equality](../../../../NumberTheory/FrontierReview.lean/declarations/resolver-result-is-bound-by-equality.md) | 515 | `result-track:8b83b9707e7f8eb3371d74e354b06273d80d101de78048c56fb7a988a4e253b3` |
| 68 | `structure` | [ExactResolverRequest](../../../../NumberTheory/FrontierReview.lean/declarations/exactresolverrequest.md) | 521 | `declaration-track:708695b2ba3810072e6e6a4fc36ed60bc1116cf20582298165e6926ff13a2ac2` |
| 69 | `structure` | [ExactResolverResolution](../../../../NumberTheory/FrontierReview.lean/declarations/exactresolverresolution.md) | 525 | `declaration-track:04b12a89ad51e48f2d9e69c9101c283f136ff58022a580273e8b5d1dcf7d8bb3` |
| 70 | `theorem` | [exact_resolver_result_preserves_request](../../../../NumberTheory/FrontierReview.lean/declarations/exact-resolver-result-preserves-request.md) | 533 | `result-track:ce2072e95d966dcc1811e888dbe2e577a5e1bd2547eb1cef7d87458c2c981464` |
| 71 | `structure` | [DisunionSieveResult](../../../../NumberTheory/FrontierReview.lean/declarations/disunionsieveresult.md) | 541 | `declaration-track:94b8f970991baaf4253d23275db324a9ec2992f08467b71e8342d260feee4174` |
| 72 | `theorem` | [disunion_blocks_pairwise_disjoint](../../../../NumberTheory/FrontierReview.lean/declarations/disunion-blocks-pairwise-disjoint.md) | 565 | `result-track:7827cd16afe3edb9add75041750ec1d81bbaeab4fecf478effda2d3cc6df56ff` |
| 73 | `theorem` | [disunion_quarantine_excluded](../../../../NumberTheory/FrontierReview.lean/declarations/disunion-quarantine-excluded.md) | 571 | `result-track:83a2bdb246573567c941a51df43e02e177e2dd5f0deb7f2b4cd5fa40dcf8d9f2` |
| 74 | `theorem` | [disunion_accepted_exactly_once](../../../../NumberTheory/FrontierReview.lean/declarations/disunion-accepted-exactly-once.md) | 578 | `result-track:c022ae9056c10d94819e48e66c218ef26b205ff8b579c022ee178b4c5f9f3762` |
| 75 | `def` | [logBase](../../../../NumberTheory/FrontierReview.lean/declarations/logbase.md) | 591 | `declaration-track:5d9f4e34badf0c036b805e817dff0a7e87be0ea706eef39cfd601078cd88b510` |
| 76 | `def` | [cascadeScore](../../../../NumberTheory/FrontierReview.lean/declarations/cascadescore.md) | 595 | `declaration-track:6f186dbdd414269b5a5fad6a737618485546404a2ee97fd446b3c32ed5a94ce1` |
| 77 | `def` | [CascadeBoundsStatement](../../../../NumberTheory/FrontierReview.lean/declarations/cascadeboundsstatement.md) | 602 | `declaration-track:72b04450282267fb1be217a0dd06112e9f21796b3e0955fcf1d84673d3278e25` |
| 78 | `def` | [CascadeMonotonicityStatement](../../../../NumberTheory/FrontierReview.lean/declarations/cascademonotonicitystatement.md) | 615 | `declaration-track:4901454a3ea517a3b149244c3fcf3ffc0a3b3aadbe978e5194562ad9ff1cd52d` |
| 79 | `def` | [cascadePowerSum](../../../../NumberTheory/FrontierReview.lean/declarations/cascadepowersum.md) | 627 | `declaration-track:f9f74db666a4655f1f8ca838f452905ea9e9de61512dd698939581e57c7b620c` |
| 80 | `theorem` | [cascade_power_sum_positive](../../../../NumberTheory/FrontierReview.lean/declarations/cascade-power-sum-positive.md) | 632 | `result-track:a85eda99da273184074a5edb814b2aee8f1b6027df34bf0c7b28402ac3aa74a9` |
| 81 | `structure` | [FiniteCascadeDag](../../../../NumberTheory/FrontierReview.lean/declarations/finitecascadedag.md) | 638 | `declaration-track:f92039dae2f4fd5f90d9dc3cc15ec1f763604306d5dcedc56c36a9ce2d3d0733` |
| 82 | `theorem` | [finite_cascade_dag_terminates](../../../../NumberTheory/FrontierReview.lean/declarations/finite-cascade-dag-terminates.md) | 651 | `result-track:9958b9e53d634b276797583d65c29b07c239c02768a21a0c269108680fb305a5` |
| 83 | `theorem` | [finite_cascade_dag_has_no_self_edge](../../../../NumberTheory/FrontierReview.lean/declarations/finite-cascade-dag-has-no-self-edge.md) | 656 | `result-track:c5b7b8688e021838ab9b76183bf6e5faa0a52959db146acf1997ebf5b0ed3845` |
| 84 | `theorem` | [projection_owner_is_functional](../../../../NumberTheory/FrontierReview.lean/declarations/projection-owner-is-functional.md) | 664 | `result-track:2731a0395fd79a023fdfb204360c4fd220530c1f55ad3bd3ee6b68a9dc199d99` |
| 85 | `structure` | [CascadeAttenuation](../../../../NumberTheory/FrontierReview.lean/declarations/cascadeattenuation.md) | 673 | `declaration-track:416cb21e87837ce17ca3aa8b9b0ee5f420ab95d0ef094ea00dd0242023a70473` |
| 86 | `opaque` | [CheckedCertificate](../../../../NumberTheory/FrontierReview.lean/declarations/checkedcertificate.md) | 684 | `declaration-track:df660ba407740b4b0103852708d3093031fec140f95dd4b58ed5cc68b14d111d` |
| 87 | `inductive` | [AuthorityProjection](../../../../NumberTheory/FrontierReview.lean/declarations/authorityprojection.md) | 686 | `declaration-track:4fed070a543544b36e43ef481a1b3f8eca727907553bdb9cd94a6ec9453eb466` |
| 88 | `structure` | [ImageCacheEvidence](../../../../NumberTheory/FrontierReview.lean/declarations/imagecacheevidence.md) | 690 | `declaration-track:fe8e1ae6fc2f826c90eb907970bac84ad23f0fab445d5120b119d0c41b10a2be` |
| 89 | `structure` | [AliasResolutionEvidence](../../../../NumberTheory/FrontierReview.lean/declarations/aliasresolutionevidence.md) | 694 | `declaration-track:76d67359d1e00baa0063cc32c696fb6fa403d67995e92b29ca9dbd83dfa1ffba` |
| 90 | `structure` | [CascadeMetadata](../../../../NumberTheory/FrontierReview.lean/declarations/cascademetadata.md) | 698 | `declaration-track:e8d21cb25dacbcde853a5c9c7245ca55d512fc800ac52be130364b0819ce167c` |
| 91 | `def` | [projectImageEvidence](../../../../NumberTheory/FrontierReview.lean/declarations/projectimageevidence.md) | 703 | `declaration-track:d344f0bf9b083e031ca3944d878fcfa9768063ba52f425f7a7f9249a170d5ac9` |
| 92 | `def` | [projectAliasResolution](../../../../NumberTheory/FrontierReview.lean/declarations/projectaliasresolution.md) | 707 | `declaration-track:97992aaf8429bc49fd9a1544c36035b753873a3f56ff56734df1fc36428decc7` |
| 93 | `def` | [projectAnalyticalCorrection](../../../../NumberTheory/FrontierReview.lean/declarations/projectanalyticalcorrection.md) | 711 | `declaration-track:ce8a7a5c56dd32e570d622caf141c971270112cb8a6b6652b5c47d97cb36abb7` |
| 94 | `def` | [projectCascadeMetadata](../../../../NumberTheory/FrontierReview.lean/declarations/projectcascademetadata.md) | 716 | `declaration-track:4236cf565e7f19074f68d0e22c5f1fee6d24ac01f4806a13a536e4b0adb8e9fe` |
| 95 | `theorem` | [image_evidence_has_no_theorem_authority](../../../../NumberTheory/FrontierReview.lean/declarations/image-evidence-has-no-theorem-authority.md) | 720 | `result-track:e437cabf87741e2356f2b37c3365cd6e336206552a8849f127e7edbfc665628c` |
| 96 | `theorem` | [alias_resolution_has_no_theorem_authority](../../../../NumberTheory/FrontierReview.lean/declarations/alias-resolution-has-no-theorem-authority.md) | 725 | `result-track:ca401630899bc5f1557b77d4208a3807ef28e0bad9080eb1c970b54542316792` |
| 97 | `theorem` | [analytical_correction_has_no_theorem_authority](../../../../NumberTheory/FrontierReview.lean/declarations/analytical-correction-has-no-theorem-authority.md) | 730 | `result-track:34312f525d41c3b6536561852e6ab4e6e5dd9890681449efd01504cf9e1de930` |
| 98 | `theorem` | [cascade_metadata_has_no_theorem_authority](../../../../NumberTheory/FrontierReview.lean/declarations/cascade-metadata-has-no-theorem-authority.md) | 735 | `result-track:033dabcdf09d2e343381b3d0c9da6c515f536cbf221b798b92aabfac13b93293` |
| 99 | `structure` | [FamilyAnalyticalState](../../../../NumberTheory/FrontierReview.lean/declarations/familyanalyticalstate.md) | 742 | `declaration-track:daa839c8c1913d55f6742e851ab857eaa5754884b0a01d41787ede22acf52d95` |
| 100 | `structure` | [FamilyCorrectionState](../../../../NumberTheory/FrontierReview.lean/declarations/familycorrectionstate.md) | 750 | `declaration-track:5783faf316001a755be25818a84cf27c991f02faa43354648199538aa611a279` |
| 101 | `def` | [applyCorrectionToFamilyState](../../../../NumberTheory/FrontierReview.lean/declarations/applycorrectiontofamilystate.md) | 754 | `declaration-track:95289a611d5f612328057e4e91a43757975dd2ae2aed380344676c64d876241b` |
| 102 | `theorem` | [analytical_correction_preserves_lineage_snapshot](../../../../NumberTheory/FrontierReview.lean/declarations/analytical-correction-preserves-lineage-snapshot.md) | 764 | `result-track:3097de963837e1d6c280cb1170ba5a9728411b01c4b764dc2b9250c719d3edc4` |
| 103 | `theorem` | [analytical_correction_preserves_image_digest](../../../../NumberTheory/FrontierReview.lean/declarations/analytical-correction-preserves-image-digest.md) | 774 | `result-track:54b8943a6a1c13da9e18e94ab5a2c0f5f58d96a9b80840f2fd41f06307d32e3d` |
| 104 | `theorem` | [analytical_correction_preserves_annotations_digest](../../../../NumberTheory/FrontierReview.lean/declarations/analytical-correction-preserves-annotations-digest.md) | 784 | `result-track:cbca2db64ed942f4acd85ec732372cc151ec0bfc593e3d7ec301f6285b03b9c0` |
| 105 | `def` | [closeLifeWindow](../../../../NumberTheory/FrontierReview.lean/declarations/closelifewindow.md) | 794 | `declaration-track:ab43045b90e70accb70ca1624852bbfc3a5e90f7814099f73803b4096c6e1505` |
| 106 | `theorem` | [life_window_mutation_preserves_analytical_label](../../../../NumberTheory/FrontierReview.lean/declarations/life-window-mutation-preserves-analytical-label.md) | 808 | `result-track:67376d3974e367fe3fe80b8ad11b3534e168e81e463fcc5d358e0d8fae91b3fc` |
| 107 | `theorem` | [life_window_mutation_preserves_prime_index](../../../../NumberTheory/FrontierReview.lean/declarations/life-window-mutation-preserves-prime-index.md) | 823 | `result-track:533cbf61273e8bc0ed79d68a79cf07cdbc7fad1dad27668d1e19b8beaaec0bf3` |
| 108 | `theorem` | [life_window_mutation_preserves_lineage_snapshot](../../../../NumberTheory/FrontierReview.lean/declarations/life-window-mutation-preserves-lineage-snapshot.md) | 838 | `result-track:00e0ce201bcfd7146d8fb05f2796029e127763e542c5094062af550d62f1c539` |
| 109 | `theorem` | [life_window_mutation_preserves_image_digest](../../../../NumberTheory/FrontierReview.lean/declarations/life-window-mutation-preserves-image-digest.md) | 853 | `result-track:633052d32051d7927cfad322dd41dd5067fb710d5b6a8db951b7d56963acd441` |
| 110 | `theorem` | [life_window_mutation_preserves_annotations_digest](../../../../NumberTheory/FrontierReview.lean/declarations/life-window-mutation-preserves-annotations-digest.md) | 868 | `result-track:c9c3f8cbd6ffd3951e4308d19fbe579cf8594351a5682d83f74610eaf495282b` |
| 111 | `def` | [primalityClassifier](../../../../NumberTheory/FrontierReview.lean/declarations/primalityclassifier.md) | 883 | `declaration-track:77e6dc27df42ee78b1d66167aa8babe26a72838f241f5eb06f7b00a5b3781c4d` |
| 112 | `theorem` | [classifier_depends_only_on_analytical_label](../../../../NumberTheory/FrontierReview.lean/declarations/classifier-depends-only-on-analytical-label.md) | 886 | `result-track:2f582add74ed72a193dd129702bdd2f331165c1ef9da5c5a78f7cb57f7e5900e` |
| 113 | `inductive` | [ProvenanceNode](../../../../NumberTheory/FrontierReview.lean/declarations/provenancenode.md) | 893 | `declaration-track:a637734330bd498c540be8c464e960884b6548b9ed2aee0707c395e4c112ca93` |
| 114 | `def` | [requiredProvenanceEdges](../../../../NumberTheory/FrontierReview.lean/declarations/requiredprovenanceedges.md) | 900 | `declaration-track:9fbb0932abb19f19bc991edaac87a40134e0b5306b483f25df39441d6934302c` |
| 115 | `theorem` | [death_supports_audit_not_arithmetic_correction](../../../../NumberTheory/FrontierReview.lean/declarations/death-supports-audit-not-arithmetic-correction.md) | 908 | `result-track:1df3e83244aabe3acd56c76a53c3a503ab76838a3a806a22cec7f3538701803e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c04e2108538eca67aecb919563dc2a156b788ea01ce50e0fa6cf22f5263d693d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/FrontierReview/Varianta4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/FrontierReview/Varianta4ea0345990ec9487ea59b18bb6cc25358930414e9f5655ac2ce25a23aa49c80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
