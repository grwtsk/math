# Verification target: Dedekind Domain Ideal Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a176c48299db7edda9f4c7c6260619dc50fd6611",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd4d1c69d15f5b052ec7cc9dbf64bb9a4b8f87ed041c349b7b7be60cb354769de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a176c48299db7edda9f4c7c6260619dc50fd6611`.

Source path: `GRWTSK/Algebra/Basic/Variantd4d1c69d15f5b052ec7cc9dbf64bb9a4b8f87ed041c349b7b7be60cb354769de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd4d1c69d15f5b052ec7cc9dbf64bb9a4b8f87ed041c349b7b7be60cb354769de.lean.json)

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
| 1 | `theorem` | [FractionalIdeal.adjoinIntegral_eq_one_of_isUnit](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/fractionalideal-adjoinintegral-eq-one-of-isunit.md) | 61 | `result-track:a2b50c9107b09e089af2fc4196d421f5bd9b7e8e45e47c9363336d7ac070b225` |
| 2 | `theorem` | [FractionalIdeal.one_mem_inv_coe_ideal](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/fractionalideal-one-mem-inv-coe-ideal.md) | 71 | `result-track:d49a50757f0cf0c0cabe4ba6d4963a820d4123e821c3483a114dde67afab7fb9` |
| 3 | `theorem` | [PrimeSpectrum.exists_multiset_prod_cons_le_and_prod_not_le](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/primespectrum-exists-multiset-prod-cons-le-and-prod-not-le.md) | 87 | `result-track:607818e74d95a7b0112290c144a9448b9f212742c5a40cf404ec72366a05e04b` |
| 4 | `lemma` | [not_inv_le_one_of_ne_bot](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/not-inv-le-one-of-ne-bot.md) | 125 | `result-track:6cb8f20dc5f2d4c8236deed25f228cf08a3240c7971348a7d6622da55570c5d1` |
| 5 | `theorem` | [mul_inv_cancel_of_le_one](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/mul-inv-cancel-of-le-one.md) | 166 | `result-track:1a6fe03696be9cdd51204e88cb56972549f0d077ac9067bb9d3878d4e58da372` |
| 6 | `theorem` | [coe_ideal_mul_inv](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/coe-ideal-mul-inv.md) | 186 | `result-track:19ed1f2a2154c3a23b11483fe2dfc10762d78f3dba1ff43bbfd652776ba4826c` |
| 7 | `def` | [IsDedekindDomainInv](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/isdedekinddomaininv.md) | 226 | `declaration-track:74f206b7cf109b9b401f03c7e11fab881107b37a9059dc73a418f2bbbc2d92cc` |
| 8 | `theorem` | [isDedekindDomainInv_iff](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/isdedekinddomaininv-iff.md) | 234 | `result-track:5c3e5a6e870e6c75112ab7d1ce697abd33fbc2a8d18766ea2372791be67e329f` |
| 9 | `abbrev` | [commGroupWithZero](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/commgroupwithzero.md) | 249 | `declaration-track:2a83194679fb0b9b094356624dec588136b2fb63e71f6e775ec38adec77e484b` |
| 10 | `theorem` | [isNoetherianRing](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/isnoetherianring.md) | 261 | `result-track:665a0b363e6abc2bbf0bba2a9054ade4e753e083d7a8e6b6421c87ab84bb06df` |
| 11 | `theorem` | [integrallyClosed](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/integrallyclosed.md) | 269 | `result-track:3e88eef299fa4eabbadcfeca19def729e1f2ade0a097b8482a5e75d828e3293f` |
| 12 | `theorem` | [dimensionLEOne](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/dimensionleone.md) | 282 | `result-track:a491d8c2618a1e3cebf1468a1584dc73898b731f67df2cc6284d3e3c4b7676d2` |
| 13 | `theorem` | [isDedekindDomain_iff_isDedekindDomainInv](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/isdedekinddomain-iff-isdedekinddomaininv.md) | 319 | `result-track:2a5f68213a9d4e666fb7f5fa926567f457853dc7c1daf875d545db343bbcff84` |
| 14 | `theorem` | [isDedekindDomain_iff_mul_inv_cancel](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/isdedekinddomain-iff-mul-inv-cancel.md) | 333 | `result-track:7f913a85937158711d46c0260780c76ae095164999a40e497d26b1b7bce7f60d` |
| 15 | `instance` | [semifield](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/semifield.md) | 348 | `declaration-track:a9bdd3a82a42d6ec8c93a365c4e7df65683b69e422890b88b8dd80a7ab2e9921` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/instance-source-edition-8.md) | 358 | `declaration-track:f4ff6671d13a027049ef501282a292ad62808d0dc1124a77aa69d4342f947c1c` |
| 17 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/instance-source-edition-3.md) | 359 | `declaration-track:c467d3f295b84872be0be8c81b75562c521a8163c4bc2661ff66e41b3d954a7c` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/instance-source-edition-5.md) | 361 | `declaration-track:ddd4a15eff7549d0dec9b0f1f8b48226d902006a97997a295d9fb5e34d74c8cd` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/instance.md) | 364 | `declaration-track:3b2e122540292249e6099de740011671a66bdb92a152a6b95548d96a4c7ac9f7` |
| 20 | `lemma` | [mul_left_strictMono](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/mul-left-strictmono.md) | 367 | `result-track:74f5878ada70ddba7b2c16354745baec2d2fd5afd25a741a7afb107b9f719c19` |
| 21 | `lemma` | [mul_right_strictMono](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/mul-right-strictmono.md) | 370 | `result-track:3849d1c0a9b406632d9dfd7395d9101d04d354f7668c95093d36478470f5b9d6` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/instance-source-edition-4.md) | 373 | `declaration-track:cf9e279ccb6a04ec667e16d42940806537a9d00cb26487ae00d3f8c292d12891` |
| 23 | `instance` | [Ideal.isCancelMulZero](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/ideal-iscancelmulzero.md) | 384 | `declaration-track:0804f041ddcae28b5c8d5fdc8eeae52f1e7d8a377310833487929373df48675b` |
| 24 | `instance` | [Ideal.isDomain](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/ideal-isdomain.md) | 388 | `declaration-track:fc135364792cfe3466b0bb3b45f1f4490117335a930713248051763619524fa4` |
| 25 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/instance-source-edition-6.md) | 390 | `declaration-track:e668785b6448a30b95852ece4edd970fc8ced86b73c3cd8e71318c680a014f7f` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/instance-source-edition-2.md) | 392 | `declaration-track:90f47aa30bd8688e29ad652d057bcd04ea5774586fc0e6865aa924b5efc48ca2` |
| 27 | `theorem` | [Ideal.dvd_iff_le](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/ideal-dvd-iff-le.md) | 395 | `result-track:c18139b45a32e32eaaba327b14bfbeded58f0a900650b85f00104e359ce5bc20` |
| 28 | `theorem` | [Ideal.liesOver_iff_dvd_map](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/ideal-liesover-iff-dvd-map.md) | 408 | `result-track:7afdc71006ace985b2a4d070ef2d5a525f5ea242b79a3783564b922ec020f2c4` |
| 29 | `theorem` | [Ideal.dvdNotUnit_iff_lt](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/ideal-dvdnotunit-iff-lt.md) | 414 | `result-track:26573c44f6ab9f46ce4464e4782e518ec939cd571c33d866c013c3094f3d1e53` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/instance-source-edition-7.md) | 426 | `declaration-track:ebb1161a34d4a49d0ab0f4212f71ecf6805d463d921babf29e116096ba91a2eb` |
| 31 | `instance` | [Ideal.uniqueFactorizationMonoid](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/ideal-uniquefactorizationmonoid.md) | 431 | `declaration-track:f5af3e6f4bfa18d4a088b9262759324bf4ae9ff443d530455290ccbb6c103efe` |
| 32 | `instance` | [Ideal.strongNormalizationMonoid](../../../../CommutativeAlgebra/DedekindDomainIdealBasicPublic.lean/declarations/ideal-strongnormalizationmonoid.md) | 448 | `declaration-track:528d800ff2c20ac613e321cd194b2decc826f6c4ce0c7b2f225e0ff3b6dc8834` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ad916ba8ee60436ddb484fbfe1c42424f25b9a4298788c0cb3306b277fc0502 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantd4d1c69d15f5b052ec7cc9dbf64bb9a4b8f87ed041c349b7b7be60cb354769de.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantd4d1c69d15f5b052ec7cc9dbf64bb9a4b8f87ed041c349b7b7be60cb354769de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
