# Verification target: Number Theory Ramification Inertia Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "214987fc573f06b8a8eb986446b46aedfd1d3ec9",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant7c1e4c5d5b2de1ab2647eb0bf0224713ca282138edba7870eae393cdfb2b275b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `214987fc573f06b8a8eb986446b46aedfd1d3ec9`.

Source path: `GRWTSK/Algebra/Basic/Variant7c1e4c5d5b2de1ab2647eb0bf0224713ca282138edba7870eae393cdfb2b275b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant7c1e4c5d5b2de1ab2647eb0bf0224713ca282138edba7870eae393cdfb2b275b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.DivisionRing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Quotient` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Norm.AbsNorm` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx.md) | 68 | `declaration-track:ef43583ac80c4d6662e18cb9e471ca2258bf16f6311b61dbeda3f352ea0ad4b2` |
| 2 | `theorem` | [ramificationIdx_eq_find](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-eq-find.md) | 72 | `result-track:1aca4b74e293a322a6e7f237dfb22d8b9ac8377b1664d5f1fcd989fd542cbf1e` |
| 3 | `theorem` | [ramificationIdx_eq_zero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-eq-zero.md) | 77 | `result-track:990ee584be90e70a4ab99abcc9faa31fbebd3f82fda2db18c9b85b964b17faa9` |
| 4 | `theorem` | [ramificationIdx_spec](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-spec.md) | 81 | `result-track:f18c3f1f147b0976a5103b516954d847013eaaa9c86a35a4fa181ea71d126f08` |
| 5 | `theorem` | [ramificationIdx_lt](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-lt.md) | 94 | `result-track:fee66ce17dbc3f1a204d1ec299d70c716148956b96e607e422b9204e8c23eb2c` |
| 6 | `theorem` | [ramificationIdx_bot](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-bot.md) | 106 | `result-track:392ba5c1ff5bef205b1955dccab4a3f6be112f1f8cc5846c3494d76658f756b4` |
| 7 | `theorem` | [ramificationIdx_of_not_le](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-of-not-le.md) | 110 | `result-track:26591020dbab250901e3624351d1184ebb2c099200391978d8901262aedc5b09` |
| 8 | `theorem` | [ramificationIdx_ne_zero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-ne-zero-source-edition-2.md) | 113 | `result-track:f3a20f7ec09a9c19301496c253a67ccbb626d14fe07cbc6bde20b3fae3b03af9` |
| 9 | `theorem` | [le_pow_of_le_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/le-pow-of-le-ramificationidx.md) | 117 | `result-track:5e6408fd454fe54b9f92eab3d14a5e30019782981bddc02e1aa6f85a1e2670f6` |
| 10 | `theorem` | [le_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/le-pow-ramificationidx.md) | 122 | `result-track:a679f486180d5d1887282ab4b1847fb8827a85350fcc4ff7ca75a70dac459ebf` |
| 11 | `theorem` | [le_comap_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/le-comap-pow-ramificationidx.md) | 125 | `result-track:3f799c71c08ecda19a0eef7bbfe13192ae6adf79053b406b53f96f1d30db0e8c` |
| 12 | `theorem` | [le_comap_of_ramificationIdx_ne_zero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/le-comap-of-ramificationidx-ne-zero.md) | 128 | `result-track:97dcf40cdd4fd876924e42e224ec587566206b3de107248c29f264e77fa6e7ed` |
| 13 | `lemma` | [ramificationIdx_comap_eq](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-comap-eq.md) | 134 | `result-track:b60eb8d17f4e60e1b60a7ba38393235f4f6f0b608e59f1f80f9ba3d8c90b32e0` |
| 14 | `lemma` | [ramificationIdx_map_eq](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-map-eq.md) | 146 | `result-track:0dee3f2f28ffce6373efdeefb90ce07d5a0de95bcd0925ae033e7f0fa4fe2afc` |
| 15 | `theorem` | [ramificationIdx_eq_normalizedFactors_count](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-eq-normalizedfactors-count.md) | 156 | `result-track:2d27d01794ad0516f2c4f5eb2bd24c04a675da5da0a4037cf8d48a4097af6213` |
| 16 | `theorem` | [ramificationIdx_eq_factors_count](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-eq-factors-count.md) | 166 | `result-track:9c2ab6ee5c3b1227d5353d6cf854998bf295e86d142efd400c7b882aa3530848` |
| 17 | `theorem` | [ramificationIdx_ne_zero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-ne-zero.md) | 172 | `result-track:2259646ec18fbc241ba71424f6d2dd2786240ac179a486e383306172a656d653` |
| 18 | `def` | [inertiaDeg](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/inertiadeg.md) | 199 | `declaration-track:d2d3337baf40121332a8663fd8f624696911eb8ebc81bf6bbf037015a7f27161` |
| 19 | `theorem` | [inertiaDeg_of_subsingleton](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/inertiadeg-of-subsingleton.md) | 207 | `result-track:295ca08f955d9e03567fdd5b175fc60fac784ce2bedbdfbc097a7f7243546669` |
| 20 | `theorem` | [inertiaDeg_algebraMap](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/inertiadeg-algebramap.md) | 214 | `result-track:52ec832208388349c55e0fcbc89e029cd35d63fe50744292eef95790ec9889f8` |
| 21 | `theorem` | [inertiaDeg_pos](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/inertiadeg-pos.md) | 219 | `result-track:10355ec708ba66894067361f684540128ebeb01b8655b15984ed2bc9d245a57c` |
| 22 | `lemma` | [inertiaDeg_comap_eq](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/inertiadeg-comap-eq.md) | 224 | `result-track:81d96ef907f4bb51723f71955a40e4bfa053a00e69a15fc1f24305781c2059db` |
| 23 | `lemma` | [inertiaDeg_map_eq](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/inertiadeg-map-eq.md) | 234 | `result-track:821b43cd25dd735031dededcc5938c47cf83011d89f55583d380ee8ce3504fac` |
| 24 | `lemma` | [absNorm_eq_pow_inertiaDeg](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/absnorm-eq-pow-inertiadeg.md) | 247 | `result-track:32a47a551064e671953f1642527de9ff6e906a2930ffd82e11d00d4e28027f8e` |
| 25 | `theorem` | [FinrankQuotientMap.span_eq_top](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/finrankquotientmap-span-eq-top.md) | 285 | `result-track:ed92a2cbcd1475cd375ee42e0259cea0e965aa970b8d9fd1d46cc19223a6ab21` |
| 26 | `theorem` | [FinrankQuotientMap.linearIndependent_of_nontrivial](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/finrankquotientmap-linearindependent-of-nontrivial.md) | 384 | `result-track:496dbee7aba5fe76fe59fac5ae9782686e7c4b3d7698d0b5f9f185036589c769` |
| 27 | `theorem` | [finrank_quotient_map](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/finrank-quotient-map.md) | 420 | `result-track:64b438eec03852d3c0a9ae7394f19110fe1a6238cb881e1b5b109731523143bd` |
| 28 | `instance` | [Quotient.algebraQuotientPowRamificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotient-algebraquotientpowramificationidx.md) | 476 | `declaration-track:ce55ae3e0c256209209b76d2e8f49767c5d14ded5ca2474cca6d4ec97d910717` |
| 29 | `theorem` | [Quotient.algebraMap_quotient_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotient-algebramap-quotient-pow-ramificationidx.md) | 480 | `result-track:06260cc0b28b1c75b4fcd97959e17a56b274d66562f420176b85a947b6930d65` |
| 30 | `def` | [Quotient.algebraQuotientOfRamificationIdxNeZero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotient-algebraquotientoframificationidxnezero.md) | 487 | `declaration-track:0dfe9020a1fb9cfc8f2ecd44a27a3005360b00162e0beab79b4b697e63405711` |
| 31 | `theorem` | [Quotient.algebraMap_quotient_of_ramificationIdx_neZero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotient-algebramap-quotient-of-ramificationidx-nezero.md) | 494 | `result-track:dcc3f2c11c4a96a4818116d6a411798517654d90fd74ed289f92a78b0bd93ccc` |
| 32 | `def` | [powQuotSuccInclusion](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/powquotsuccinclusion.md) | 500 | `declaration-track:9f53895e64c340f523cb6120be447032ac5795ae3a6ccc4200807e3ba9bfd316` |
| 33 | `theorem` | [powQuotSuccInclusion_injective](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/powquotsuccinclusion-injective.md) | 507 | `result-track:5186a8082e917c34f0b01e1edaef2f47a4881574ebffd7ed4bce4553d31feddb` |
| 34 | `def` | [quotientToQuotientRangePowQuotSuccAux](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotienttoquotientrangepowquotsuccaux.md) | 518 | `declaration-track:ea12038b74446ec21f2b58bbcf80e4e080f5efcc6ece480e2c0dc46b4a03f627` |
| 35 | `theorem` | [quotientToQuotientRangePowQuotSuccAux_mk](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotienttoquotientrangepowquotsuccaux-mk.md) | 530 | `result-track:300ff2a74ec45c413adb7a83d90ff264dc701311ad4292c8f0c5a7761c9e1c9e` |
| 36 | `def` | [quotientToQuotientRangePowQuotSucc](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotienttoquotientrangepowquotsucc.md) | 539 | `declaration-track:b5d4fd380dfcf1bf69d2236a6cc2a6eb7d182d9cdd49a0971c8ec8d80506306b` |
| 37 | `theorem` | [quotientToQuotientRangePowQuotSucc_mk](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotienttoquotientrangepowquotsucc-mk.md) | 559 | `result-track:2b7533d2a8aa08fc289b4508798bf13596c0128e60d229a17418679db11885a7` |
| 38 | `theorem` | [quotientToQuotientRangePowQuotSucc_injective](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotienttoquotientrangepowquotsucc-injective.md) | 564 | `result-track:aa4088225a416251634d6ebfbed88b2e307d34c85a0c7ce1cd56c444eea221d3` |
| 39 | `theorem` | [quotientToQuotientRangePowQuotSucc_surjective](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotienttoquotientrangepowquotsucc-surjective.md) | 583 | `result-track:ce518b69d3245f1577df65b79f046f39f0b1bfacb38f7d5264e1d17737039461` |
| 40 | `def` | [quotientRangePowQuotSuccInclusionEquiv](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/quotientrangepowquotsuccinclusionequiv.md) | 614 | `declaration-track:6476da77293e461e06b645fbaec76bbbed9f3700c9fac75536e05b507fa7a733` |
| 41 | `theorem` | [rank_pow_quot_aux](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/rank-pow-quot-aux.md) | 628 | `result-track:f9420f8b5bdcc2fc26ffeec75bf3985e661974ee3f73d420aae5945d46a31fc9` |
| 42 | `theorem` | [rank_pow_quot](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/rank-pow-quot.md) | 637 | `result-track:68bf5891942e12143bf9b452709afad1fe52815054d7623c8305cb4b42d8b1ed` |
| 43 | `theorem` | [rank_prime_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/rank-prime-pow-ramificationidx.md) | 657 | `result-track:6ef8b8c8fd92dc45570a2c6da55a89872d8742b47fe8246b06b853eac2941604` |
| 44 | `theorem` | [finrank_prime_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/finrank-prime-pow-ramificationidx.md) | 671 | `result-track:62899a93502ddb822ab30a1b73cf6ebb795ee3fa84466028e24e974880dc7ac1` |
| 45 | `theorem` | [Factors.ne_bot](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-ne-bot.md) | 700 | `result-track:b2903d6625e02a2b641203698adb31bd41f38b723a69a50e4ae47ef446f30036` |
| 46 | `instance` | [Factors.isPrime](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-isprime.md) | 704 | `declaration-track:3bfd5cf03c6a608cf1025d30d4f56c1def63c1d27def88ddf94741524e8f0ad6` |
| 47 | `theorem` | [Factors.ramificationIdx_ne_zero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-ramificationidx-ne-zero.md) | 709 | `result-track:4ac69e12fdae5e20ed63e366ad5e17776b46ca5305855736f8864ad3dea74c90` |
| 48 | `instance` | [Factors.fact_ramificationIdx_neZero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-fact-ramificationidx-nezero.md) | 715 | `declaration-track:2147a9f87d80bc06331767b55422922fbb08cf663707b3192197da2fd314aab3` |
| 49 | `instance` | [Factors.isScalarTower](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-isscalartower.md) | 722 | `declaration-track:522771bb485bf73179a2645fffc4cbd51dec2979e3ee7bf3fd2faee1096d4839` |
| 50 | `instance` | [Factors.liesOver](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-liesover.md) | 727 | `declaration-track:96341cf9c7da981225435e8814d8b1dccdd7c8b2fe6d045fc8a9876cad182e14` |
| 51 | `theorem` | [Factors.finrank_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-finrank-pow-ramificationidx.md) | 732 | `result-track:1a7f49070cf72e4d0a7c0babaa7cb1429054a214b40eb381d913652eea0d496c` |
| 52 | `instance` | [Factors.finiteDimensional_quotient_pow](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-finitedimensional-quotient-pow.md) | 740 | `declaration-track:5b525ea3a36543800ab728e3b5ede365b22a7c8cc986e37b8134356fc1ca7ffb` |
| 53 | `def` | [Factors.piQuotientEquiv](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-piquotientequiv.md) | 752 | `declaration-track:c656254eef687b70d834cf53450d171093c1d1a8243d03f252b9e5c9de8afb05` |
| 54 | `theorem` | [Factors.piQuotientEquiv_mk](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-piquotientequiv-mk.md) | 766 | `result-track:334eda54d5f678d26cd4f0237796ea124fb3e7440d60b0f2950b868b256f4a8d` |
| 55 | `theorem` | [Factors.piQuotientEquiv_map](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-piquotientequiv-map.md) | 770 | `result-track:7c4c74b201bb38d222a05031a53d8e442b9dfe81a4b8af68d01b131d298bd463` |
| 56 | `def` | [Factors.piQuotientLinearEquiv](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/factors-piquotientlinearequiv.md) | 780 | `declaration-track:a14ca09805d9c72cf5e2d99638733f83b600ab7bd024d38a7f6d47486d484162` |
| 57 | `theorem` | [sum_ramification_inertia](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/sum-ramification-inertia.md) | 797 | `result-track:b69c24247cfa2a4a90a3071b69e3311348f8b8041f08e31e6fb7621d9a73f461` |
| 58 | `theorem` | [ramificationIdx_tower](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-tower.md) | 829 | `result-track:f8729a0e3fe239654bd9afcabb6bae00ef9d904e17a6d1333faf3f12266bccd3` |
| 59 | `theorem` | [ramificationIdx_algebra_tower](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/ramificationidx-algebra-tower.md) | 856 | `result-track:730db28fa96f563367c91b28f66ac6e4746876f2f25568485f4b500f1621bce6` |
| 60 | `theorem` | [inertiaDeg_algebra_tower](../../../../NumberTheory/NumberTheoryRamificationInertiaBasic.lean/declarations/inertiadeg-algebra-tower.md) | 868 | `result-track:8c2918495c81a370b9b5a67262f439145a4e2d0b2cb5f1ed0835071dd32ca0d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89906a090780929115c5aee559c58c9f0aba8b4f6fe05008c589735cedadb9bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant7c1e4c5d5b2de1ab2647eb0bf0224713ca282138edba7870eae393cdfb2b275b.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant7c1e4c5d5b2de1ab2647eb0bf0224713ca282138edba7870eae393cdfb2b275b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
