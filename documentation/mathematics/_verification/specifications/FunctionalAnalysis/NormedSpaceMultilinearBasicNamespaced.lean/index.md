# Verification target: Normed Space Multilinear Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99c54afef0043a93d86986320aa79171a7001433",
  "lexical_observation_count": 124,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99c54afef0043a93d86986320aa79171a7001433`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.NormedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Embedding.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.CardEmbedding` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Multilinear.Topology` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [ContinuousMultilinearMap.instContinuousEval](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/continuousmultilinearmap-instcontinuouseval.md) | 82 | `declaration-track:bda6eb2fdc5a07afe697603da2ee9b96e43e92da932967df36bfdff17861b014` |
| 2 | `lemma` | [continuous_uncurry_of_multilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/continuous-uncurry-of-multilinear.md) | 97 | `result-track:114d3cb242e2747bf69ceba4734f274f77b551ab2b76a8884f4b45b03b89b71a` |
| 3 | `lemma` | [continuousOn_uncurry_of_multilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/continuouson-uncurry-of-multilinear.md) | 101 | `result-track:ef39cd1ac98c22bcafcd0ad7780300220e6e2aac33842ede5cfeebde9a4566f3` |
| 4 | `lemma` | [continuousAt_uncurry_of_multilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/continuousat-uncurry-of-multilinear.md) | 105 | `result-track:be925f6151edb66047ab71492841afa9062d2ba87f91c9081adf9a554ccf2d15` |
| 5 | `lemma` | [continuousWithinAt_uncurry_of_multilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/continuouswithinat-uncurry-of-multilinear.md) | 109 | `result-track:c7292d8584e611e9c95834bb2c7cbe40c19671cedfe561ba6d3d647f3456e230` |
| 6 | `lemma` | [norm_map_coord_zero](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-map-coord-zero.md) | 141 | `result-track:c2842102db6056cbee06bd8b1055e47a0dc2b87c65621ca3d00d409a57db81e9` |
| 7 | `theorem` | [bound_of_shell_of_norm_map_coord_zero](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/bound-of-shell-of-norm-map-coord-zero.md) | 160 | `result-track:5de0c70cc1b8a90e5f60a6bf3e09b157f6ba51d3ee7701a66cd2a6142502772c` |
| 8 | `theorem` | [bound_of_shell_of_continuous](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/bound-of-shell-of-continuous.md) | 176 | `result-track:34ba415aa3a573208a19f3f9f4d07687eeebda387625723f95659cc16b04c101` |
| 9 | `theorem` | [exists_bound_of_continuous](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/exists-bound-of-continuous.md) | 185 | `result-track:5597815a935eeec830a1f7adfa4d189af714b5a29f40d7635d4a00d76ff877c0` |
| 10 | `theorem` | [norm_image_sub_le_of_bound'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-image-sub-le-of-bound-source-edition-2.md) | 211 | `result-track:b2c70705ac71d767b872885498049ece565211fac36d1716368bd318c093a384` |
| 11 | `theorem` | [norm_image_sub_le_of_bound](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-image-sub-le-of-bound.md) | 253 | `result-track:a81e27437f50155b98626eaf13d76fda84a96da251706d4f1952ed10fd5faaec` |
| 12 | `theorem` | [continuous_of_bound](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/continuous-of-bound.md) | 283 | `result-track:91b930ec28bf03823dab8a0813dd91b895579ef6c334d34f489720bec051ea20` |
| 13 | `def` | [mkContinuous](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/mkcontinuous.md) | 303 | `declaration-track:4b0f06137cf899c7643be24e4f4d38d7a64074196274731573af637e568da5c0` |
| 14 | `theorem` | [coe_mkContinuous](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/coe-mkcontinuous.md) | 308 | `result-track:4e8ecaab05c973579672125b13a9974975bcf0797b4f3126fbb2b0d23cdfe229` |
| 15 | `theorem` | [restr_norm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/restr-norm-le.md) | 315 | `result-track:eeb57b609d5480b39e973a29616569a6eed888c46a0f9f0229f6197f66537f8a` |
| 16 | `theorem` | [bound](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/bound.md) | 339 | `result-track:0c3d6af31db601f4c0daaa889cd6fd628371594afafbc9705de7fba105c7d016` |
| 17 | `def` | [opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm.md) | 346 | `declaration-track:716e74d54beb46124d549e4fa797a9a7283dd2b1573fa7d3dbdce35ab38044ec` |
| 18 | `instance` | [hasOpNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/hasopnorm-source-edition-2.md) | 349 | `declaration-track:cc428f0f062dfcbdb52e47fab1dde839f47cc6b448180e3030a9e042af6f9d25` |
| 19 | `instance` | [hasOpNorm'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/hasopnorm.md) | 354 | `declaration-track:aae8d6901126923d3ccddba53b574ca8b346395613b17c0cc57e3ca3028a5ac1` |
| 20 | `theorem` | [norm_def](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-def.md) | 357 | `result-track:01269ad7a2a48991952662b08d59b7e682ffe90b01a90eeae9cedfaba97b14fd` |
| 21 | `theorem` | [bounds_nonempty](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/bounds-nonempty.md) | 363 | `result-track:d23b9866da7f98c448b0270125c9a0373398a6e57f5ee0ef6e6507fb290e8d43` |
| 22 | `theorem` | [bounds_bddBelow](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/bounds-bddbelow.md) | 368 | `result-track:deba571fccd8206902ca93a4afc6f1c7fb7dd04e958df2d38ab05589878a6e3d` |
| 23 | `theorem` | [isLeast_opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/isleast-opnorm.md) | 372 | `result-track:5e042bd0da79cbfaf865be7f271839e5e67ff159aadec52c605f5b490cccf257` |
| 24 | `theorem` | [opNorm_nonneg](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-nonneg.md) | 379 | `result-track:8ac03ac2430a7ede9684d9597ce8c7cead7274c8d34858a1457be8c20e42422d` |
| 25 | `theorem` | [le_opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/le-opnorm.md) | 384 | `result-track:02a9d07fcb80d1938f7e2a42eefb8ca31433e38d5cba3f17fe34e105d6591f10` |
| 26 | `theorem` | [le_mul_prod_of_opNorm_le_of_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/le-mul-prod-of-opnorm-le-of-le.md) | 388 | `result-track:221284843ce3d939c201f2d30a8e5eba4f387e0df0f2e2330a636646bcce9cc8` |
| 27 | `theorem` | [le_opNorm_mul_prod_of_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/le-opnorm-mul-prod-of-le.md) | 396 | `result-track:c069b658377c24fdb4a8bdd7f41f6a0284cc0cb559c76227403a7648ce0f7f08` |
| 28 | `theorem` | [le_opNorm_mul_pow_card_of_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/le-opnorm-mul-pow-card-of-le.md) | 400 | `result-track:f515b4f27e44c146f5e26c19807d0243dc4ee3a6aa6db970ff0f0843331605ac` |
| 29 | `theorem` | [le_opNorm_mul_pow_of_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/le-opnorm-mul-pow-of-le.md) | 404 | `result-track:8005bef9f7da1137324598e96bf3357c32fe78604c6f2b8818b3fea569f01284` |
| 30 | `theorem` | [le_of_opNorm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/le-of-opnorm-le.md) | 409 | `result-track:f5e62912824518b4c0f27b075f0c31262e872f5bc6faa31cae740f253db29611` |
| 31 | `theorem` | [ratio_le_opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/ratio-le-opnorm.md) | 413 | `result-track:6912e0420be3a9c0dfb7c0c25977f72e327685e757e804636fa4d52f075a05d6` |
| 32 | `theorem` | [unit_le_opNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/unit-le-opnorm.md) | 418 | `result-track:9ec1f3ab5c6239260096512645d53762509cd4ebec5b460ba005aeb9d5d776a7` |
| 33 | `theorem` | [opNorm_le_bound](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-le-bound.md) | 423 | `result-track:83f6dabcc3c968b3e40120c5f34e394a367064ce37bd3fe888b503019d85a589` |
| 34 | `theorem` | [opNorm_le_iff](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-le-iff.md) | 427 | `result-track:35a5637e84469be7926d52ad5440d4985843f45fcdeed27076b358267c3667af` |
| 35 | `theorem` | [opNorm_add_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-add-le.md) | 432 | `result-track:2e4a842c3e203b4a5dfead2dc5083621263c49ee3ea1f8646e5a3b09d2fe4c98` |
| 36 | `theorem` | [opNorm_zero](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-zero.md) | 437 | `result-track:1fac23b45c2392649b7985ad938974f1a402b2433394dafb7377afb208a623fe` |
| 37 | `theorem` | [opNorm_smul_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-smul-le.md) | 444 | `result-track:7c0bdaec7c25db08e350711a8fae85f3fa4d7943a74596fa07f503dbbbc74349` |
| 38 | `def` | [seminorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/seminorm.md) | 456 | `declaration-track:e1a52088b6ba174bac1cb5625e49480ae39b9e95a62da5de7b547b2554d60bb8` |
| 39 | `lemma` | [uniformity_eq_seminorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/uniformity-eq-seminorm.md) | 459 | `result-track:18850dcaeb8c4ad16ba73493a1d4cdda99c208ce6550cd6da0d136dc784155ce` |
| 40 | `instance` | [instPseudoMetricSpace](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/instpseudometricspace.md) | 489 | `declaration-track:3759ca0297b4bc24d6b130eb095d966535c2d79d747148e359ca040cca1c4e66` |
| 41 | `instance` | [seminormedAddCommGroup](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/seminormedaddcommgroup-source-edition-2.md) | 496 | `declaration-track:9d54b91eee49e2f082500bff4b4a25aac4df3a6d8194e813f8152b6baad55dc4` |
| 42 | `instance` | [seminormedAddCommGroup'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/seminormedaddcommgroup.md) | 501 | `declaration-track:736d5e64d9a957603a029fe326f34fd9f8256c04e86808c9da745391bc54b5ad` |
| 43 | `instance` | [normedSpace](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/normedspace.md) | 505 | `declaration-track:47d174dce3d6873545c16be1ecee15531b5f98d99a1b12c263622c8478f98b5c` |
| 44 | `instance` | [normedSpace'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/normedspace-source-edition-2.md) | 510 | `declaration-track:ed3831481fe205d5ce41a4ce1c270f646c1139526d20317f6609f4e0130959a8` |
| 45 | `theorem` | [opNorm_neg](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-neg.md) | 514 | `result-track:4d109e4652c3ab5be6047257f2181274fd2d7df14e1ca599c9d00a16af2bc1af` |
| 46 | `theorem` | [le_opNNNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/le-opnnnorm.md) | 518 | `result-track:dcde28db49b0155db1fab9c9a19791b9513aeb592d1536262037cccd28512da6` |
| 47 | `theorem` | [le_of_opNNNorm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/le-of-opnnnorm-le.md) | 524 | `result-track:60dbb5f5148d6fb99579f2bea463026b6c15a6dbe7d2ce85ff79b8f59ebba3bb` |
| 48 | `theorem` | [opNNNorm_le_iff](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnnnorm-le-iff.md) | 528 | `result-track:927250782e01d41785375bc5ac161aa8062f00aeb2ee8cfd76ae354ea69a8315` |
| 49 | `theorem` | [isLeast_opNNNorm](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/isleast-opnnnorm.md) | 532 | `result-track:b8019958b789dcb397c8e6bf1a372c0d27decacda5063efcc8124cb1b5f1eea3` |
| 50 | `theorem` | [opNNNorm_prod](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnnnorm-prod.md) | 536 | `result-track:35082b649d04e6f72ed02dc554cda5fb472cc770807cd3e88a295b7b52e44881` |
| 51 | `theorem` | [opNorm_prod](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-prod.md) | 541 | `result-track:b8595f0662090b8cea384e472e3b586b073b4e915761eed7cc351103ccbe330f` |
| 52 | `theorem` | [opNNNorm_pi](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnnnorm-pi.md) | 545 | `result-track:bc128e68df8dd36183a2c43e4392a9cff78a156aab662fd9654dfb0d7402f9e3` |
| 53 | `theorem` | [opNorm_pi](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-pi.md) | 550 | `result-track:d81adc6cb8805b07d706934591eb66f544f09b5c27f9b362b21bccd2ab449491` |
| 54 | `theorem` | [norm_ofSubsingleton](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-ofsubsingleton.md) | 559 | `result-track:307ac524c59ca4b932d4bf608b421636d7fa026f4b8a5d3c41b51ca2ff9720dc` |
| 55 | `theorem` | [nnnorm_ofSubsingleton](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/nnnorm-ofsubsingleton.md) | 565 | `result-track:e4ca5f01eb727e6666c6836100fb857379fff325b61d830976915e6792795083` |
| 56 | `def` | [ofSubsingletonₗᵢ](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/ofsubsingleton.md) | 574 | `declaration-track:93a017dd58edab3f80fbc6049f047a18c50892834533597c66ba0d7269f78fd4` |
| 57 | `theorem` | [norm_ofSubsingleton_id_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-ofsubsingleton-id-le.md) | 581 | `result-track:609a35bfb2f889d2509cf3acdf01f49545b648d3d47d2f5382bb70bbfafcdadc` |
| 58 | `theorem` | [nnnorm_ofSubsingleton_id_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/nnnorm-ofsubsingleton-id-le.md) | 586 | `result-track:7f174e5b5c3dc8f79c0f242a1d6dfdada6c58f3a4998989a9f58bf764b6c5619` |
| 59 | `theorem` | [norm_constOfIsEmpty](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-constofisempty.md) | 593 | `result-track:db8df96ffad31847df73d6b50a9794806e0f011bc8a01cf2f1fb3d48c69846a9` |
| 60 | `theorem` | [nnnorm_constOfIsEmpty](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/nnnorm-constofisempty.md) | 600 | `result-track:6eb8dce051e5cfc5e2470881dfcfcc56fd8cbbfef9463ebd265b703a0d381a11` |
| 61 | `def` | [prodL](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/prodl.md) | 611 | `declaration-track:492256bbd0dd6b13782e2b9117bd16f74479e7373c4b0ed80b9b69ea6a309d11` |
| 62 | `def` | [piₗᵢ](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/pi.md) | 621 | `declaration-track:c7a891f3ce5d572f3260543c5c472c30d92af2cd35ed5467bb17d2b70e9e0f73` |
| 63 | `theorem` | [norm_restrictScalars](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-restrictscalars.md) | 639 | `result-track:9be920a14a34f451e4b9db249275713bd30ed5b883a8692fc2c300a208fe8136` |
| 64 | `def` | [restrictScalarsₗᵢ](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/restrictscalars.md) | 646 | `declaration-track:37aa2c786ee3ca2b200f4eb423c79b0466bb86193751a86071123a8e09e18496` |
| 65 | `theorem` | [norm_image_sub_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-image-sub-le.md) | 659 | `result-track:0529068b2a9d97d9e49a76bfda9ec73d77ee9413b0ce30effab85e4f09923d2e` |
| 66 | `theorem` | [norm_image_sub_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-image-sub-le-source-edition-2.md) | 666 | `result-track:883d882af6f8894099a9b795ca1e85ca4432db3fb98bc0c0ba8770afbc922595` |
| 67 | `theorem` | [MultilinearMap.mkContinuous_norm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/multilinearmap-mkcontinuous-norm-le-source-edition-2.md) | 677 | `result-track:9e81b6fc087db6d94cc0b94cceb2fb3ce20959d2aaa0d058af8b423937ce1a26` |
| 68 | `theorem` | [MultilinearMap.mkContinuous_norm_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/multilinearmap-mkcontinuous-norm-le.md) | 684 | `result-track:9da6a658de1f1a1191cd52f62f8c4b142cb1536f6e33a31de52cf18756b86b19` |
| 69 | `def` | [restr](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/restr.md) | 696 | `declaration-track:d075dd831c4aa1a71ce7e409f78785ec687a89b101057a1feb6a40e2e3ddeb59` |
| 70 | `theorem` | [norm_restr](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-restr.md) | 701 | `result-track:089c513651bcafdd5b2b23d34cec86f3f60319ad5269e746c57bf8c897a963bc` |
| 71 | `theorem` | [norm_mkPiAlgebra_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-mkpialgebra-le.md) | 711 | `result-track:11ae8ef1185e3d5ce6a12d3d98d9a2b054043779c25d2853243736f9cea8c37a` |
| 72 | `theorem` | [norm_mkPiAlgebra_of_empty](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-mkpialgebra-of-empty.md) | 716 | `result-track:e05d429e5d6e1329c3dc1b4b005f64617b4e238ee4f23cfb2523d8b9f1a2b52e` |
| 73 | `theorem` | [norm_mkPiAlgebra](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-mkpialgebra.md) | 724 | `result-track:32180b394419d77ab1a2bdf8bcc07f7cbbbfa64491232637b7abe5e8cc012343` |
| 74 | `theorem` | [norm_mkPiAlgebraFin_succ_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-mkpialgebrafin-succ-le.md) | 737 | `result-track:ea212783fc71969c25de465958e33e32b8c8cb01a73cdd27439c411f9120e5a6` |
| 75 | `theorem` | [norm_mkPiAlgebraFin_le_of_pos](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-mkpialgebrafin-le-of-pos.md) | 746 | `result-track:eab39f30bca68bec879c32259fb3d8550a05af3a5d1f499eae858a04a6f2cf12` |
| 76 | `theorem` | [norm_mkPiAlgebraFin_zero](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-mkpialgebrafin-zero.md) | 751 | `result-track:2f6392623240deea6431b372cc853ea55f68dd8fa2a048970e5447e81ad058ad` |
| 77 | `theorem` | [norm_mkPiAlgebraFin_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-mkpialgebrafin-le.md) | 758 | `result-track:c4367e037c6ad396a484e66d9cad85f295f1c9fb386e78a5320d4c8210821868` |
| 78 | `theorem` | [norm_mkPiAlgebraFin](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-mkpialgebrafin.md) | 765 | `result-track:2bdb056e7263de97cdf7ab569a6011380693febe8bcab12ca7cfebfdfa74e4e5` |
| 79 | `theorem` | [nnnorm_smulRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/nnnorm-smulright.md) | 778 | `result-track:592f5e06d701614b23aeeca2342d95b1d129ad240b8633cee8f73bf9a56a50ff` |
| 80 | `theorem` | [norm_smulRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-smulright.md) | 794 | `result-track:a985bef723e5dd919b3703b6a49872dc3c6bdbd3c1fc4e12a325f1850c67be72` |
| 81 | `theorem` | [norm_mkPiRing](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-mkpiring.md) | 799 | `result-track:25104eef385c34dfe3e1cacc474582c901259606dc60128067b0b2f3b8e2796f` |
| 82 | `def` | [smulRightL](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/smulrightl.md) | 804 | `declaration-track:acab7321883dad2d1cc80e04f5255448ea71154b0e68d22df72a85a785d214e8` |
| 83 | `lemma` | [smulRightL_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/smulrightl-apply.md) | 814 | `result-track:f5f3f033d4e996cd14b0bc6092897861b088f82875a38fab3a3a7ad98f5275e0` |
| 84 | `lemma` | [norm_smulRightL_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-smulrightl-le.md) | 817 | `result-track:4df0e92ce2a628ffc895ae035d8ba9477cbf8d1c8be0cdefa6d610ee6d0ccd97` |
| 85 | `def` | [piFieldEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/pifieldequiv.md) | 826 | `declaration-track:30c3f4eded722c448a177bd445cab06dd5e019bd98a44c5dde20c929539bc065` |
| 86 | `theorem` | [norm_compContinuousMultilinearMap_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-compcontinuousmultilinearmap-le.md) | 843 | `result-track:99a782036d538fce09dc55d2067447cfc95b89c2b0cdc616e4832cc50d4a7bc5` |
| 87 | `def` | [compContinuousMultilinearMapL](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/compcontinuousmultilinearmapl.md) | 853 | `declaration-track:8b55f9890fa05a9d33d74d24dee510f7682bb449b9018c1bc5ed342ad6ac7d54` |
| 88 | `def` | [Normed Space Multilinear Basic Namespaced](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/root-grwtsk-topology-generaltopology-continuousuncurryofmultilinear-vari-source-edition-6.md) | 866 | `declaration-track:e17dc7dde4763aed199a1405d4bf97b7da94aea1c2eff094c567dffedeea7cf0` |
| 89 | `theorem` | [Normed Space Multilinear Basic Namespaced](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/root-grwtsk-topology-generaltopology-continuousuncurryofmultilinear-vari-source-edition-3.md) | 886 | `result-track:8b586e7f654db29a23fc42fefc818a9938f5f440f6dfa80e4858fe42b6399d7c` |
| 90 | `theorem` | [Normed Space Multilinear Basic Namespaced](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/root-grwtsk-topology-generaltopology-continuousuncurryofmultilinear-vari-source-edition-5.md) | 897 | `result-track:bc67a1e9760223859e64901c88e76a28fefd3a1be9ef3d423cb3423bb72a82e3` |
| 91 | `def` | [flipMultilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/flipmultilinear.md) | 909 | `declaration-track:40e9e1f32b78fb84af122f5a699e522e790123f663fbf47a1c06d7e556294ea0` |
| 92 | `theorem` | [LinearIsometry.norm_compContinuousMultilinearMap](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/linearisometry-norm-compcontinuousmultilinearmap.md) | 935 | `result-track:26b527f1994d09127d370d92265eb464a8f94d4da037c370ddf5f8c64728a733` |
| 93 | `def` | [mkContinuousLinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/mkcontinuouslinear.md) | 954 | `declaration-track:71b02347180b9f8cf8680acc1298c83dd53a98f74033265b0e7b2d0191d16f73` |
| 94 | `theorem` | [mkContinuousLinear_norm_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/mkcontinuouslinear-norm-le.md) | 968 | `result-track:43fff1038d4b4a7c5f36520599b9d1a3bd6744d92a264bdd1ca589cc9cfe4e6a` |
| 95 | `theorem` | [mkContinuousLinear_norm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/mkcontinuouslinear-norm-le-source-edition-2.md) | 973 | `result-track:9d7de3a0ff8cc23fd7e880db57fc5af25c3804d4d57da3ecbcd5f2998df9c1cf` |
| 96 | `def` | [mkContinuousMultilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/mkcontinuousmultilinear.md) | 982 | `declaration-track:f0ba6f944ec5f75a53d92eb98e2c716aacdcf4396f019ba48bf3f12feedb828e` |
| 97 | `theorem` | [mkContinuousMultilinear_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/mkcontinuousmultilinear-apply.md) | 1000 | `result-track:a151cee7f1ad8c691fa4514a5c42743c0beb8bdaee31570c30b14d15cfbc2f88` |
| 98 | `theorem` | [mkContinuousMultilinear_norm_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/mkcontinuousmultilinear-norm-le-source-edition-2.md) | 1005 | `result-track:fa1b61ffaaf4264cca0c11ef7badf1cfd34025ea9925af65dd3b5ef5262c8d63` |
| 99 | `theorem` | [mkContinuousMultilinear_norm_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/mkcontinuousmultilinear-norm-le.md) | 1011 | `result-track:824af3b796ce16a7fce4e3d22a6cfc95682edcbfb8d52b7ca216249be7ba4a10` |
| 100 | `theorem` | [norm_compContinuousLinearMap_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-compcontinuouslinearmap-le.md) | 1021 | `result-track:2e9de64fc441a626a4ac8c091d9db719913ecb7c58df7c70f35c92b29fa04aed` |
| 101 | `theorem` | [norm_compContinuous_linearIsometry_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-compcontinuous-linearisometry-le.md) | 1029 | `result-track:fb23bb9925874443c144f803592c95be6938191c900d9eb99523dbfe570ccfbe` |
| 102 | `theorem` | [norm_compContinuous_linearIsometryEquiv](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-compcontinuous-linearisometryequiv.md) | 1037 | `result-track:03be79b59a318c86e1f97a432ed497ec8c34fc3d40823c6c4b3b235c09f4299a` |
| 103 | `def` | [compContinuousLinearMapL](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/compcontinuouslinearmapl.md) | 1058 | `declaration-track:301e89b2daea44bbbb3525ea5ea79982696aeb37ae5865c8904ea8036d9524b1` |
| 104 | `theorem` | [compContinuousLinearMapL_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/compcontinuouslinearmapl-apply.md) | 1068 | `result-track:33d15e9d7cac0718ce7b1e25170f3b51e9e046152d88ec89408bfa6657a5a1ce` |
| 105 | `theorem` | [norm_compContinuousLinearMapL_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-compcontinuouslinearmapl-le.md) | 1073 | `result-track:c493a6ff2af519962649c15a93fd318bf87c13c3ca53c7f2ff215d4ef1e185d2` |
| 106 | `def` | [compContinuousLinearMapLRight](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/compcontinuouslinearmaplright.md) | 1084 | `declaration-track:178ac4189d8759b07717be837ed15eb822f1d367df96d14964055ccde5a63105` |
| 107 | `theorem` | [compContinuousLinearMapLRight_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/compcontinuouslinearmaplright-apply.md) | 1103 | `result-track:2e20a549d830e130b90e1eb368be01b0eeb539a9f863e859e1681adc53d26383` |
| 108 | `theorem` | [norm_compContinuousLinearMapLRight_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-compcontinuouslinearmaplright-le.md) | 1108 | `result-track:585f9531340a91704a1d499be78ef3ef43b47a4703458a2290dbf5e040442b56` |
| 109 | `def` | [compContinuousLinearMapMultilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/compcontinuouslinearmapmultilinear.md) | 1119 | `declaration-track:fea4ce16b2abc09242be5fef181f9cd383bd45e05cc438ad1ee5b79687bc3188` |
| 110 | `def` | [compContinuousLinearMapContinuousMultilinear](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/compcontinuouslinearmapcontinuousmultilinear.md) | 1139 | `declaration-track:12812edcf41039836af1e929041eac663edc52a93d62fbb5541557f825c9b80c` |
| 111 | `def` | [Normed Space Multilinear Basic Namespaced](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/root-grwtsk-topology-generaltopology-continuousuncurryofmultilinear-vari-source-edition-4.md) | 1152 | `declaration-track:8ff37f29f8feb0eac40c4d7fa0d88b7c15da57b07bd383c7dcf66180515f4b1e` |
| 112 | `theorem` | [Normed Space Multilinear Basic Namespaced](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/root-grwtsk-topology-generaltopology-continuousuncurryofmultilinear-vari-source-edition-2.md) | 1176 | `result-track:6a56f86741ca8fa7e2012c5921be943522ff7ea49a26357ce8a9551e0aa939c8` |
| 113 | `theorem` | [Normed Space Multilinear Basic Namespaced](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/root-grwtsk-topology-generaltopology-continuousuncurryofmultilinear-vari.md) | 1189 | `result-track:460315227402beb1c336bacd75593a1a70974055add54f4b78dc7a2d33c893c1` |
| 114 | `def` | [iteratedFDerivComponent](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/iteratedfderivcomponent.md) | 1205 | `declaration-track:8d2b120239458a335c046206acb63287c8f17af6e278083c4e4c385a38812dd0` |
| 115 | `lemma` | [iteratedFDerivComponent_apply](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/iteratedfderivcomponent-apply.md) | 1226 | `result-track:6df692ddfc0d6e77f27ba01f5a7ee1d719cb677f0a80446629a8d1b2178f3fa5` |
| 116 | `lemma` | [norm_iteratedFDerivComponent_le](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-iteratedfderivcomponent-le.md) | 1234 | `result-track:58c4c6349aefef93cce6c34cd2f0fce3f81db7938cd3d79273eb7c5a785fb375` |
| 117 | `def` | [iteratedFDeriv](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/iteratedfderiv.md) | 1259 | `declaration-track:ca27fe9a6292a06944ce20602b197099e7027e1276f2f4d300c95dfc2fbd8f5f` |
| 118 | `lemma` | [norm_iteratedFDeriv_le'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-iteratedfderiv-le.md) | 1266 | `result-track:49a22a00bec658071b9328aae56a1808da2ca688a7ceab3245f2311fca58ce99` |
| 119 | `theorem` | [opNorm_zero_iff](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/opnorm-zero-iff.md) | 1294 | `result-track:6c31beac0e14db0d3499613129c4e8eb304995456201cb87300c862e3b6a855f` |
| 120 | `instance` | [normedAddCommGroup](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/normedaddcommgroup-source-edition-2.md) | 1299 | `declaration-track:5b9cf96481bb2a9e74222032260428accfd9b4ab609036a67ec7a65cf0ce5ae7` |
| 121 | `instance` | [normedAddCommGroup'](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/normedaddcommgroup.md) | 1304 | `declaration-track:1580f0a06e736f4dc83111099f2ebab739f55b82631ee790deb39c4d0648fe9d` |
| 122 | `theorem` | [norm_ofSubsingleton_id](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/norm-ofsubsingleton-id.md) | 1310 | `result-track:1a1ca90aee142f03760f044c17cb256d02dc4584d47e4291c218921e3ddc60c9` |
| 123 | `theorem` | [nnnorm_ofSubsingleton_id](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/nnnorm-ofsubsingleton-id.md) | 1314 | `result-track:078e7af6fd1c1f93877a4077a011c0f005b641884261fd9f04b439b69ec7d972` |
| 124 | `theorem` | [bound_of_shell](../../../../FunctionalAnalysis/NormedSpaceMultilinearBasicNamespaced.lean/declarations/bound-of-shell.md) | 1336 | `result-track:2eb09b44c2a2260cf978dea636707993a552ddee21df613e8606717b3ece7297` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70331c7bdeb4dc8700028a6932d58b8671ee38d06e6657f8463b8604390e4bbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
