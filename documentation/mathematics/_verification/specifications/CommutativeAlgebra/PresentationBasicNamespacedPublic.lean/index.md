# Verification target: Presentation Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1309cf19c9e39d525dc6d17e66d4e379b199bee",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1309cf19c9e39d525dc6d17e66d4e379b199bee`.

Source path: `GRWTSK/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean.json)

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
| 1 | `structure` | [Algebra.Presentation](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/algebra-presentation.md) | 69 | `declaration-track:993062f42ae3f5645c61cdc0067aa701cd5a2b2d5420f8071f299a8b6ca2ee15` |
| 2 | `lemma` | [aeval_val_relation](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/aeval-val-relation.md) | 82 | `result-track:82ce517b95abe8767e7353e61485c43c0456bc159220de5e220df0f437d59922` |
| 3 | `lemma` | [relation_mem_ker](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/relation-mem-ker.md) | 86 | `result-track:340d323abfe220b3b294b5f8fa6478a6fd2f62c09721ee05c1f2cfc5a949e7cd` |
| 4 | `abbrev` | [Quotient](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/quotient.md) | 92 | `declaration-track:1e8594d4836a4bcc515e05f4b758763df4958d3456e51b8727ac9b7e501ca397` |
| 5 | `def` | [quotientEquiv](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/quotientequiv.md) | 95 | `declaration-track:408d54343f3f6d52643068a1730eb0f1ce6e15849c9056700dbf601b7a8a2c69` |
| 6 | `lemma` | [quotientEquiv_mk](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/quotientequiv-mk.md) | 100 | `result-track:988919a6fd792b3906bc0cdeee6f644c3db905ed01931ee1d1f874d661395688` |
| 7 | `lemma` | [quotientEquiv_symm](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/quotientequiv-symm.md) | 104 | `result-track:6182712a52853b620d4815353ef7b20ff13cceac3800bd52ea3b259ad534b2ac` |
| 8 | `def` | [dimension](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/dimension.md) | 117 | `declaration-track:7a57e5f34e4739a7b9729e5f6bd1eff7cacbfc8d582c56adb2bb9d53417c41c2` |
| 9 | `lemma` | [fg_ker](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/fg-ker.md) | 120 | `result-track:eb0c922e275966ebc0cdbf02b401578e77399cd08920d620bd271d4771f94326` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/instance.md) | 126 | `declaration-track:b0fd142c35aafc2fa17b65bd53e65c24054a46b09bf0e1b4905048681fc2e354` |
| 11 | `lemma` | [finitePresentation_of_isFinite](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/finitepresentation-of-isfinite.md) | 129 | `result-track:c8149c7ec1246e802ad2b0e179b5fe24a34e2419c498524942ef2d7fbb756dcf` |
| 12 | `lemma` | [exists_presentation_fin](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/exists-presentation-fin.md) | 134 | `result-track:9168cb5c0a1c7453b89aa55227b1c9dc088ab58554453e4823673bebbda8ab0f` |
| 13 | `def` | [ofFinitePresentationVars](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/offinitepresentationvars.md) | 153 | `declaration-track:affed1050996cef4e7e47b51ec8f51e31e4a09a4e7095286f7d7505cf8141839` |
| 14 | `def` | [ofFinitePresentationRels](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/offinitepresentationrels.md) | 159 | `declaration-track:17bb15e1480c2951eb07b26420e498fc2e89aabb302c4fcc4852f09d4d5405ef` |
| 15 | `def` | [ofFinitePresentation](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/offinitepresentation.md) | 165 | `declaration-track:07f9c179b55493a4cb21235b07eef1669028819a4ef46f45f2bbea2413f321e8` |
| 16 | `def` | [ofAlgEquiv](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/ofalgequiv.md) | 173 | `declaration-track:c3c71d940894ff5069c282ee72e024ea010802cdf27327230fb9fa865f934e7c` |
| 17 | `lemma` | [dimension_ofAlgEquiv](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/dimension-ofalgequiv.md) | 181 | `result-track:04fe456108b0942431eadb811f0d4e29b884b23616783062d9a17b2967b09b4a` |
| 18 | `def` | [ofBijectiveAlgebraMap](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/ofbijectivealgebramap.md) | 187 | `declaration-track:cc2bd1f3f3c8db5b9d775c6ee1a782b4766f64096a607d321d992ef86ea30782` |
| 19 | `lemma` | [ofBijectiveAlgebraMap_dimension](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/ofbijectivealgebramap-dimension.md) | 199 | `result-track:d3ca6f6470bd8e6c512293ca613f35fe8670b99001a6e636aed4dcb5ed6a6205` |
| 20 | `def` | [id](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/id.md) | 205 | `declaration-track:74a0ce9ca76dc188802a825b6cb2c52963175aa9370903107deba30b6a3eca4d` |
| 21 | `lemma` | [id_dimension](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/id-dimension.md) | 208 | `result-track:de6257b646280ce7edf1c9565a4614d7359ed9692a32b10fb950a87cc000b403` |
| 22 | `def` | [mvPolynomial](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/mvpolynomial.md) | 215 | `declaration-track:f2353aed7a9b47fd2e024b7e99678f83c9e862345b1279b9822fee4192aa3a37` |
| 23 | `lemma` | [dimension_mvPolynomial](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/dimension-mvpolynomial.md) | 222 | `result-track:4591dac7650085aeeb5f1d6a4141a6b7bf112db50d6196b329e56073fa3a0d04` |
| 24 | `lemma` | [Presentation Basic Namespaced Public](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/ker-localizationaway.md) | 231 | `result-track:8c53e38cd1c3f6c89755a3e4bac0d5dbc670118880d95f5c97763d4cf3dc4cce` |
| 25 | `def` | [localizationAway](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/localizationaway.md) | 250 | `declaration-track:a6dea8c52c56f81c25c4d02c15454ad5162a3b8e1469945af7d1210ec5326bd0` |
| 26 | `lemma` | [localizationAway_dimension_zero](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/localizationaway-dimension-zero.md) | 258 | `result-track:e642e5071f4cb0ab17d8bae8cde0fdadacf534de837cf109db0ddb7a29e8192b` |
| 27 | `lemma` | [Presentation Basic Namespaced Public](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/c-mul-x-sub-one-mem-ker.md) | 261 | `result-track:9f576e1918b8aff2475df41797901f4aff8abc5ea2c6d2c20d7c9e5ab2f51358` |
| 28 | `lemma` | [span_range_relation_eq_ker_baseChange](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/span-range-relation-eq-ker-basechange.md) | 271 | `result-track:702b8a3615689eb569b83a089c7ce85599a814339ace3ffbea5ca635194f5168` |
| 29 | `def` | [baseChange](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/basechange.md) | 319 | `declaration-track:301d59d5420b6bc35a63307339a1fcf57d41e3c192058b0bdbbb7d4850efbf68` |
| 30 | `lemma` | [baseChange_toGenerators](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/basechange-togenerators.md) | 324 | `result-track:226a867f9bc12f042182b641250f940062be6513e859dd11cbef2e58cf5b2cad` |
| 31 | `def` | [aux](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/aux.md) | 371 | `declaration-track:7e448707c3898d1cf1805ad38252104790cdb5992b0235226e6df35eb0980584` |
| 32 | `def` | [compRelationAux](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/comprelationaux.md) | 377 | `declaration-track:0fb17a9d446ef91d3f1d6d8f112a404e9962e317377d0ae276c87807e2642361` |
| 33 | `lemma` | [aux_X](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/aux-x.md) | 382 | `result-track:80274b090b28dc0d889acc2f2098e9d4cf97d29def7279c578f095b009d4b8d8` |
| 34 | `lemma` | [compRelationAux_map](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/comprelationaux-map.md) | 386 | `result-track:3bbefbe3c6aaf03ee60b057ad633b9c7b799c28764b9a836115e2a499f0e2658` |
| 35 | `lemma` | [aux_surjective](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/aux-surjective.md) | 402 | `result-track:cf79aaee839b1cf7b8a425661ec965d5a2b4b5b1db30958c9683006e018fa12c` |
| 36 | `lemma` | [aux_image_relation](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/aux-image-relation.md) | 415 | `result-track:85d819a226640ff056c1f0ccca268ba0959e02731ef0371f9b24380cde71d407` |
| 37 | `lemma` | [aux_eq_comp](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/aux-eq-comp.md) | 425 | `result-track:d0ad9c967cf57d1dc1bd6e5f27f45d21be68130208338752a870f628bfffc946` |
| 38 | `lemma` | [aux_ker](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/aux-ker.md) | 430 | `result-track:c986086e456f3ab4dc82ffa0ed99e355385545e7c424226165bbbf037648c0f2` |
| 39 | `lemma` | [aeval_comp_val_eq](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/aeval-comp-val-eq.md) | 439 | `result-track:90a018feab8977115509248ce8fb3959acccc1e0ad5744b33c5d27639accd012` |
| 40 | `lemma` | [span_range_relation_eq_ker_comp](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/span-range-relation-eq-ker-comp.md) | 446 | `result-track:2d0111c3c069c843eb7d7e12284be784649c26f365feec77da8a768c888c0db8` |
| 41 | `def` | [comp](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/comp.md) | 462 | `declaration-track:44b6f3efa4e71f95a67d0fc0b99126c52cf1c31bea6b0e52594b59784c57a760` |
| 42 | `lemma` | [toGenerators_comp](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/togenerators-comp.md) | 468 | `result-track:bff04cc54ed65a84869a3891236086d7dc96f88e22abb0dd3a68ac53a3260ab2` |
| 43 | `lemma` | [comp_relation_inr](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/comp-relation-inr.md) | 471 | `result-track:ed64f2c3e104ce00408bcb9ba84772257a0a5f2531e491f4564b96087b90fd54` |
| 44 | `lemma` | [comp_aeval_relation_inl](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/comp-aeval-relation-inl.md) | 475 | `result-track:0e513906bf69d413a976346e715819fbc5abcb30da91018bf0e3b4f8413b6504` |
| 45 | `lemma` | [relation_comp_localizationAway_inl](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/relation-comp-localizationaway-inl.md) | 487 | `result-track:77455538683e6adc7286b8dd47a858ef5d46389dd596981f4176ae1a2a7df0db` |
| 46 | `def` | [reindex](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/reindex.md) | 505 | `declaration-track:4e8f93bc54a0985fa94b69863fe1ec22bb459fc2656f61c5ad0b93c7fd82ba36` |
| 47 | `lemma` | [dimension_reindex](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/dimension-reindex.md) | 521 | `result-track:5bd64962c54b0d724b2818ee9582d408c82f8fcdb2658c7e80ab645e4e371ea2` |
| 48 | `def` | [naive](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/naive.md) | 537 | `declaration-track:68769dda300876f53dc9672e42278c58d492607974b6eba1cca4449aac24ba36` |
| 49 | `lemma` | [naive_relation](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/naive-relation.md) | 546 | `result-track:c90acac834d0fe72743978bee6da1e4eb4d9572f761565925892bd2238fb474c` |
| 50 | `lemma` | [naive_relation_apply](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/naive-relation-apply.md) | 548 | `result-track:aa81940fd6d632f71fce60b9e2c3eb7c0014a8208350d890cfdc25af82b91d7f` |
| 51 | `lemma` | [mem_ker_naive](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/mem-ker-naive.md) | 550 | `result-track:f0fa98b7f8ab5d3939994f49d5094a6fbd31206c0850c76f8b0c7a2492b8d380` |
| 52 | `lemma` | [Generators.fg_ker_of_finitePresentation](../../../../CommutativeAlgebra/PresentationBasicNamespacedPublic.lean/declarations/generators-fg-ker-of-finitepresentation.md) | 558 | `result-track:58397617cff44f253e1096d2a98ae849f00c5b7c7a7b8eb98b8d17a38eb64181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ae9a76b5b097be179b81c66d717204935d8d37b012c62a1642d7c1d726459ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant6eec0f67b0a25d9201ac9c4b67d797a1c8ddf99ce432380b635bd024590216fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
