# Verification target: Algebraic Independent Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3ed4d6233f0dcbd821b2b8947f4902f5575eed0",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1ab415773f3c8d1b0b8cd5db86fd7a7cfc1073e8c007e0be6be580fb78746efc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3ed4d6233f0dcbd821b2b8947f4902f5575eed0`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1ab415773f3c8d1b0b8cd5db86fd7a7cfc1073e8c007e0be6be580fb78746efc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant1ab415773f3c8d1b0b8cd5db86fd7a7cfc1073e8c007e0be6be580fb78746efc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Monad` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Supported` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPolynomial.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Algebra.trdeg](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebra-trdeg.md) | 41 | `declaration-track:5578f6fe28297ec38cf881e766a9a1f34359861a4a890e4d1c0cff88d01afa9c` |
| 2 | `theorem` | [algebraicIndependent_iff_ker_eq_bot](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-iff-ker-eq-bot.md) | 44 | `result-track:f713b8282b58655dcbe90bc5d2e7879adfa11c8e48b84e1198dd95b2847f11ac` |
| 3 | `theorem` | [algebraicIndependent_empty_type_iff](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-empty-type-iff.md) | 50 | `result-track:a6789f63381f6fbce63fbb306a984e68fd61115e050f78484c7b95ffb6c6461a` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/instance.md) | 54 | `declaration-track:9d23bbfe13d58bdaab6d76cbb55f78b2d16237b60937c181bcc782d66ed5439e` |
| 5 | `theorem` | [algebraMap_injective](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebramap-injective.md) | 62 | `result-track:4928390ca47acb483d95b1c8eee5044685985181a08d36e8794ba1cf058c3187` |
| 6 | `theorem` | [linearIndependent](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/linearindependent.md) | 67 | `result-track:701a5b84853461cf2ed6d796c7f08086f6a93d6d19c97b4428794d388ee25250` |
| 7 | `theorem` | [injective](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/injective.md) | 78 | `result-track:691901726d2efc5ed4cd887946030c320b7ab51b4bab9c4b42ac94fd42ee36e7` |
| 8 | `theorem` | [ne_zero](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/ne-zero.md) | 81 | `result-track:96309871940aae34dc773b1af6e75348988b8fef912fbd4dce03895c16af97dc` |
| 9 | `theorem` | [map](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/map.md) | 84 | `result-track:066e778dc6c771a9319bfd54ce08789f8a0d886cbb83c508b157efb308bfbeaf` |
| 10 | `theorem` | [map'](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/map-source-edition-2.md) | 97 | `result-track:ad2dc23fa5caea9abd146e49185c42b8590a3bd94684ac2fa875e4557667fcac` |
| 11 | `theorem` | [aeval_of_algebraicIndependent](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/aeval-of-algebraicindependent.md) | 103 | `result-track:af9c0e3b8601e3a5cd11022ac4a84dd7db4da07d00cac7ae36fac16f75ac29ff` |
| 12 | `theorem` | [of_aeval](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/of-aeval.md) | 115 | `result-track:afcef3bc3a23d361411ee379e5ad61ab1b1f79e72c699e876c54f29d752e2d84` |
| 13 | `theorem` | [isEmpty_algebraicIndependent](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/isempty-algebraicindependent.md) | 124 | `result-track:74560015daad5686c4cd7ad6691a8bfce2118a38919e7f733458225300499b30` |
| 14 | `theorem` | [trdeg_eq_zero_of_not_injective](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/trdeg-eq-zero-of-not-injective.md) | 128 | `result-track:f2d2ab10ddbba99b74865066c5aaa6b793d4cd690749791f3ba1a5bc7ff040c7` |
| 15 | `theorem` | [MvPolynomial.algebraicIndependent_X](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/mvpolynomial-algebraicindependent-x.md) | 132 | `result-track:5a0eeeecec051a1943b40a3dee53093132d987610a264dffc408278caba20017` |
| 16 | `theorem` | [AlgHom.algebraicIndependent_iff](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/alghom-algebraicindependent-iff.md) | 139 | `result-track:599d67f57e870433e4157305a32ac1949a1cee77b82e79ef7f9fe1d6446366a6` |
| 17 | `theorem` | [AlgebraicIndependent.of_subsingleton](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-of-subsingleton.md) | 144 | `result-track:e5de7bddafa85f2ad961cdf7c09783f36aca8da0f0d05317f5bc163c22a3e0c5` |
| 18 | `theorem` | [isTranscendenceBasis_iff_of_subsingleton](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/istranscendencebasis-iff-of-subsingleton.md) | 150 | `result-track:8a6d7c38972ee7d6d5c5fce46f24f0d3820445d9d45b43986e7b4bc5e87b973c` |
| 19 | `theorem` | [IsTranscendenceBasis.of_subsingleton](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/istranscendencebasis-of-subsingleton.md) | 159 | `result-track:f510b02aa414a6db237f736f555834c39ebb46cc733fdf2a1a9e6a9a189f2708` |
| 20 | `theorem` | [trdeg_subsingleton](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/trdeg-subsingleton.md) | 163 | `result-track:fc810975b4437861e8ccbb3777f1c5af88dd334baf50c334aa969e63d1ec0739` |
| 21 | `theorem` | [algebraicIndependent_adjoin](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-adjoin.md) | 168 | `result-track:9a7691218184458e01a81d86c5b928933f58600ef6546692112e61f8b437d471` |
| 22 | `theorem` | [AlgebraicIndependent.restrictScalars](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-restrictscalars.md) | 175 | `result-track:838d142dbe0502c1a35c7dd35d7420193d08b6a7886ac3bdc067841b8dcb4a89` |
| 23 | `theorem` | [AlgebraicIndependent.of_ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-of-ringhom-of-comp-eq.md) | 194 | `result-track:8d4399b3e25eb584794afc009e5ffcf80adba43fd9419417ab79d28a82cf3b69` |
| 24 | `theorem` | [AlgebraicIndependent.ringHom_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-ringhom-of-comp-eq.md) | 205 | `result-track:5f1422a79806a74b3dd00fea91010e4fa3f0ec465a6d47cdde4bed470595fb08` |
| 25 | `theorem` | [algebraicIndependent_ringHom_iff_of_comp_eq](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-ringhom-iff-of-comp-eq.md) | 222 | `result-track:99d7d5f1ddd0cd3a1fd5530a3345632453ac15ac27184b78b46534953d352c49` |
| 26 | `theorem` | [algebraicIndependent_finset_map_embedding_subtype](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-finset-map-embedding-subtype.md) | 234 | `result-track:d9470fc00c1dbc342aeb3730936ba85d0c49f4dc0aad40825b46bfd74267c4e0` |
| 27 | `theorem` | [algebraicIndependent_bounded_of_finset_algebraicIndependent_bounded](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-bounded-of-finset-algebraicindependent-bounded.md) | 252 | `result-track:ab57a5b042fec089a9a8c6cf9147d2197a947dd1b95ce5cf73b785c2ee1ec259` |
| 28 | `theorem` | [AlgebraicIndependent.restrict_of_comp_subtype](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-restrict-of-comp-subtype.md) | 264 | `result-track:6c078961dc85b01a8926401abde91ba078be72470b2d28aaeee26d03256b1065` |
| 29 | `theorem` | [algebraicIndependent_empty_iff](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-empty-iff.md) | 270 | `result-track:51012aee0140c4c2e767e877c68c6cabc02d2221002cd070e890451696bd3516` |
| 30 | `theorem` | [AlgebraicIndependent.to_subtype_range](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-to-subtype-range.md) | 275 | `result-track:2f7293d642d9d61552cb46275ce71302352c3482c172850fe55a846fd333e648` |
| 31 | `theorem` | [AlgebraicIndependent.to_subtype_range'](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-to-subtype-range-source-edition-2.md) | 280 | `result-track:8b323aa809d6b950b6176ae472707493fa32c9b23185771011e825601606adbf` |
| 32 | `theorem` | [IsTranscendenceBasis.to_subtype_range](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/istranscendencebasis-to-subtype-range-source-edition-2.md) | 284 | `result-track:e322514b18ed8eaf0e527e8406308f5b6860aa59747d5cd8940c9e9a33e655ef` |
| 33 | `theorem` | [IsTranscendenceBasis.to_subtype_range'](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/istranscendencebasis-to-subtype-range.md) | 290 | `result-track:8be68df29c67496c1e46508056e3a4aba5591cace0a75eb6c477c7f30b50fd08` |
| 34 | `lemma` | [IsTranscendenceBasis.of_comp](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/istranscendencebasis-of-comp.md) | 294 | `result-track:d0f4480f2a4ebcd0b5c22bdb3281bb0b248c51bcf668e3002cbc7a5177f813de` |
| 35 | `lemma` | [IsTranscendenceBasis.of_comp_algebraMap](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/istranscendencebasis-of-comp-algebramap.md) | 304 | `result-track:7aeb16c3830f28b65dc7aa9be3ef4b1193b4112dfe7acc658f4ecdff6ada27ce` |
| 36 | `theorem` | [AlgEquiv.isTranscendenceBasis](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algequiv-istranscendencebasis.md) | 311 | `result-track:97d39d4ff9f4e61e37d8e17dd1a4b13e54c30c1618e94288a7c64b1cd450bff4` |
| 37 | `theorem` | [AlgEquiv.isTranscendenceBasis_iff](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algequiv-istranscendencebasis-iff.md) | 315 | `result-track:e7f6fbee374cf10227c6f94cfc4823bac5b3176e053931b09527a57029f7d47e` |
| 38 | `theorem` | [AlgebraicIndependent.lift_cardinalMk_le_trdeg](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-lift-cardinalmk-le-trdeg.md) | 323 | `result-track:c9994d95275818d5bb240a183e40cb50b14a3a0b72585f9003c888755b67e2ad` |
| 39 | `theorem` | [AlgebraicIndependent.cardinalMk_le_trdeg](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-cardinalmk-le-trdeg.md) | 328 | `result-track:2bf70ab8bfd221cb7e592b29b7571f1e1c7f5421a0dc739b8c3d0edab6b2196c` |
| 40 | `theorem` | [lift_trdeg_le_of_injective](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/lift-trdeg-le-of-injective.md) | 332 | `result-track:72b7ebceaa00eca15a830996fd89f225ab64c8dbabe38671f2580812eeb9c206` |
| 41 | `theorem` | [trdeg_le_of_injective](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/trdeg-le-of-injective.md) | 338 | `result-track:7a0a279a406383fbe577f123688f3f78ec23f61661104d4c3c54455db6426419` |
| 42 | `theorem` | [lift_trdeg_le_of_surjective](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/lift-trdeg-le-of-surjective.md) | 342 | `result-track:71509668349d45c0d964f719778002880374838306edab4a2e586322a32112e1` |
| 43 | `theorem` | [trdeg_le_of_surjective](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/trdeg-le-of-surjective.md) | 350 | `result-track:bb6c19f44e3865a30a5409e704f9aa21506d950bf57a3161c61f3eb2338979dc` |
| 44 | `theorem` | [AlgEquiv.lift_trdeg_eq](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algequiv-lift-trdeg-eq.md) | 354 | `result-track:f096b52303a20e33c0558b69fc4504c2e21c7a106856a2685144e599b8a5c09b` |
| 45 | `theorem` | [AlgEquiv.trdeg_eq](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algequiv-trdeg-eq.md) | 359 | `result-track:6cae5ff379d910ae6aece1b8836fb14df063ab9568292660ad29417a2052f2dc` |
| 46 | `theorem` | [algebraicIndependent_comp_subtype](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-comp-subtype.md) | 365 | `result-track:24ed692cbe5274d84940adeff328bca317513d68080fc30cc5911c6e5ae74460` |
| 47 | `theorem` | [algebraicIndependent_subtype](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-subtype.md) | 374 | `result-track:160a3c5ac1b0a32e2c90db629066ae8d9b652fbc9999b48e30752e215d4cdc22` |
| 48 | `theorem` | [algebraicIndependent_of_finite](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-of-finite.md) | 379 | `result-track:8b158e25d93fadfd6244e7d206b78b8aa49e68eb1a579639b60bd91045597029` |
| 49 | `theorem` | [algebraicIndependent_of_finite_type](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-of-finite-type.md) | 385 | `result-track:3f77460d02ec7446fbd3bb295c400bf1cf67fb28cb9bb0801a7f84a465c409c8` |
| 50 | `theorem` | [AlgebraicIndependent.image_of_comp](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-image-of-comp.md) | 391 | `result-track:8125de486379e0d2e23b4e59d2a9344c91201deeca32ed08637b986874158f4c` |
| 51 | `theorem` | [AlgebraicIndependent.image](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-image.md) | 398 | `result-track:8ccab290a9f6ed2e18756888dfb5b2b05b280f8c222f5b0604aeb8058fa10beb` |
| 52 | `theorem` | [algebraicIndependent_iUnion_of_directed](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-iunion-of-directed.md) | 403 | `result-track:dd46ed7bb669098005acb38818b50d36d53ebc194d609665a60dd7e88fbd968b` |
| 53 | `theorem` | [algebraicIndependent_sUnion_of_directed](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-sunion-of-directed.md) | 411 | `result-track:4117b98c8a287ef86b9af081920d41de8d6e31204df91fbbd521d23696e7ccb9` |
| 54 | `theorem` | [exists_maximal_algebraicIndependent](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/exists-maximal-algebraicindependent.md) | 418 | `result-track:bd48e138b3c88578eeded9e6ad86fc0193235fbdb6a96cad4d1764cb7cd8f8dd` |
| 55 | `theorem` | [AlgebraicIndependent.repr_ker](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-repr-ker.md) | 426 | `result-track:a0b1194d6cdb1143bdec5e0633090083ac784107018ac5842108980d36c87bbb` |
| 56 | `def` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin.md) | 433 | `declaration-track:df53adab4f8d42f0f491f9997b9a21f2bbabc54478bacdf34d55dd61338ac964` |
| 57 | `theorem` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin_apply](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin-apply.md) | 439 | `result-track:e71392aa69a54d1ca5858d3e0c0914e76ff163494f5023ac3a0d701267afd862` |
| 58 | `theorem` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin_C'](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin-c.md) | 448 | `result-track:c1de0e18ff18ada99f57c7c41836f7d5c546ec53f09e0c8cacc70ead596d844e` |
| 59 | `theorem` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin_C](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin-c-source-edition-2.md) | 455 | `result-track:ce4f4736f54c092fbf1022c2b2e7c9d0bbe8045d2dfc6c010d1f915742284a9d` |
| 60 | `theorem` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin_X_none](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin-x-none.md) | 460 | `result-track:eb3fda756f6d64925a315918096cbdae2f0474aa1bef9a956535ed1a841cf7ed` |
| 61 | `theorem` | [AlgebraicIndependent.mvPolynomialOptionEquivPolynomialAdjoin_X_some](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-mvpolynomialoptionequivpolynomialadjoin-x-some.md) | 466 | `result-track:76637b3559915c4fd5d190c740bcbf85de6256c27b017534696c33c4e5287e8c` |
| 62 | `theorem` | [AlgebraicIndependent.aeval_comp_mvPolynomialOptionEquivPolynomialAdjoin](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-aeval-comp-mvpolynomialoptionequivpolynomialadjoin.md) | 473 | `result-track:1a06927cc41e83fa8a291a4ae94caf02c402ea097c3d1519273fd59cb5e2cb83` |
| 63 | `theorem` | [algebraicIndependent_empty_type](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-empty-type.md) | 498 | `result-track:0d1a683a322e714c7a9dfc724cb1933afe993cc748ffc2fa5a8ba213b6144c84` |
| 64 | `theorem` | [algebraicIndependent_empty](../../../../CommutativeAlgebra/AlgebraicIndependentBasic.lean/declarations/algebraicindependent-empty.md) | 502 | `result-track:2af182e25b97c0b9cd5f233632039cb9c4cb4e3c3b86f2b90422133dcc044c2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f941a6dbe4f9a9de7f33eddfb7b56b2ba47dd9fc1521d462b21559e8d073d13c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant1ab415773f3c8d1b0b8cd5db86fd7a7cfc1073e8c007e0be6be580fb78746efc.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant1ab415773f3c8d1b0b8cd5db86fd7a7cfc1073e8c007e0be6be580fb78746efc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
