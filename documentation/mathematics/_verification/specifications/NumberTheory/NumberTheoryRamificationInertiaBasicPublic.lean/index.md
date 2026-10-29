# Verification target: Number Theory Ramification Inertia Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d8bc311279ec33de014306a9b3912335ce2fbde",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d8bc311279ec33de014306a9b3912335ce2fbde`.

Source path: `GRWTSK/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean.json)

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
| 1 | `theorem` | [FinrankQuotientMap.span_eq_top](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/finrankquotientmap-span-eq-top.md) | 94 | `result-track:758d598535bafa41771ec68b65e8334525caab448ac54e5e8a66a51ecc26046a` |
| 2 | `theorem` | [FinrankQuotientMap.linearIndependent_of_nontrivial](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/finrankquotientmap-linearindependent-of-nontrivial.md) | 193 | `result-track:b9bb9ee9cb020263f39ac078129c18db109f14fde891e4da59c311fbd8edf7b3` |
| 3 | `theorem` | [finrank_quotient_map](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/finrank-quotient-map.md) | 230 | `result-track:f401c3976a04c226a2ba464097b260ef213f0f627303a738f12269f6cc86e629` |
| 4 | `instance` | [Quotient.algebraQuotientPowRamificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotient-algebraquotientpowramificationidx.md) | 285 | `declaration-track:01fdb03ca7d1441e922f7a8b71f76d91da5809464a0b6080d7cc55323c9bd9cf` |
| 5 | `theorem` | [Quotient.algebraMap_quotient_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotient-algebramap-quotient-pow-ramificationidx.md) | 289 | `result-track:f8f342a3dfc4c134116ff0b5687efb61befd77a7d86b0196c3a0d1e93a5409d0` |
| 6 | `def` | [Quotient.algebraQuotientOfRamificationIdxNeZero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotient-algebraquotientoframificationidxnezero.md) | 298 | `declaration-track:2c30586de58f5104f51c6b591e832d265fed15af626715121c5aefbb48a01faf` |
| 7 | `theorem` | [Quotient.algebraMap_quotient_of_ramificationIdx_neZero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotient-algebramap-quotient-of-ramificationidx-nezero.md) | 305 | `result-track:d8f80ad9c996cdb137a61383d0291bfb54f39f85f6af440130763ed287f933b3` |
| 8 | `def` | [powQuotSuccInclusion](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/powquotsuccinclusion.md) | 311 | `declaration-track:3a778f435ac28d5ed74e4f151ccd4a957b9d459c256735e6887b2d4a06a0e242` |
| 9 | `theorem` | [powQuotSuccInclusion_injective](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/powquotsuccinclusion-injective.md) | 319 | `result-track:aa79d064003d82ed75ed3cbe309824e35507ed92c18896b9c0adaa00e0550ce0` |
| 10 | `def` | [quotientToQuotientRangePowQuotSuccAux](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotienttoquotientrangepowquotsuccaux.md) | 329 | `declaration-track:bad33659089ab72ca4e393dc742dc2f55b44d39113a872d2ea073641aa9c61d2` |
| 11 | `theorem` | [quotientToQuotientRangePowQuotSuccAux_mk](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotienttoquotientrangepowquotsuccaux-mk.md) | 342 | `result-track:443552d371d9d1e8f66a3c10b59251deae85b9fe6302835bc3e4ff5845059f59` |
| 12 | `def` | [quotientToQuotientRangePowQuotSucc](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotienttoquotientrangepowquotsucc.md) | 352 | `declaration-track:a7adc9b2bc098d03f303d1f53f950efb69af5a87ed367b999190e28e9edd4bf6` |
| 13 | `theorem` | [quotientToQuotientRangePowQuotSucc_mk](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotienttoquotientrangepowquotsucc-mk.md) | 372 | `result-track:6536a3f51bcb5b9b1995ab30834e3a03414426d7a9fa83e9c91953277cc686f5` |
| 14 | `theorem` | [quotientToQuotientRangePowQuotSucc_injective](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotienttoquotientrangepowquotsucc-injective.md) | 379 | `result-track:a8e945ef4d3547fb6ce2993b5474be4c4dfb4b3d9e35c6a5eb2f65caf72f5886` |
| 15 | `theorem` | [quotientToQuotientRangePowQuotSucc_surjective](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotienttoquotientrangepowquotsucc-surjective.md) | 399 | `result-track:bd450ce988153f8c7b0ae794937885df90eaffaf24a26dee8c72e796a3e62652` |
| 16 | `def` | [quotientRangePowQuotSuccInclusionEquiv](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/quotientrangepowquotsuccinclusionequiv.md) | 425 | `declaration-track:b6d448bbb6ddd645e036c58cda0d5debdb5458257e3ce7711f86f77bcea26ab5` |
| 17 | `theorem` | [rank_pow_quot_aux](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/rank-pow-quot-aux.md) | 440 | `result-track:1718a2ba4bfb97ab683949a57e604fd7fc85378b8fc6bac21098aaa870bfaabc` |
| 18 | `theorem` | [rank_pow_quot](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/rank-pow-quot.md) | 450 | `result-track:04909a5e6de2d9a2add133468c3fa8485725de0896848ac93cd393b1d10f6e52` |
| 19 | `theorem` | [rank_prime_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/rank-prime-pow-ramificationidx.md) | 470 | `result-track:0f2ed6e587bda30dca3e23396cb6c623a1043050420b7cd8ae7c45cb38b14a6b` |
| 20 | `theorem` | [finrank_prime_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/finrank-prime-pow-ramificationidx.md) | 485 | `result-track:311054a6739724b97d1f11d033afeefcaa7984590c64e95f150131c1f6b1a1c2` |
| 21 | `theorem` | [Factors.ne_bot](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-ne-bot.md) | 513 | `result-track:40c003a8c0a3ed32ff71f0a153134c81866fc50ca4d46bc71ed83a948bffda2c` |
| 22 | `instance` | [Factors.isPrime](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-isprime.md) | 517 | `declaration-track:e9aa84cd28f81cb64b400134fc7e89a7262004e8e70e966863553f38866ca14f` |
| 23 | `theorem` | [Factors.ramificationIdx_ne_zero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-ramificationidx-ne-zero.md) | 522 | `result-track:a90c7afdbeb584a81b1a2da21c2b7375f51301af5ea700727fa3a5fbf35a81c5` |
| 24 | `instance` | [Factors.fact_ramificationIdx_neZero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-fact-ramificationidx-nezero.md) | 528 | `declaration-track:498cb89ae81f61f45eb19571368d220b1fcb8dd7c3339ce9e8e1794a4831633f` |
| 25 | `instance` | [Factors.isScalarTower](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-isscalartower.md) | 535 | `declaration-track:7c9b1d47d8d9bacf1762dac09513ce17a36a846e803ba2dc1605651ae630d326` |
| 26 | `instance` | [Factors.liesOver](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-liesover.md) | 540 | `declaration-track:9ea2ba6b8e7d487233db82340d6060a15f03be574361be385fde79e4067e65bb` |
| 27 | `theorem` | [Factors.finrank_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-finrank-pow-ramificationidx.md) | 545 | `result-track:54bb97676a38178328fca2b572f4500705a63a1ac26bf9f0f18adccfe07683ee` |
| 28 | `instance` | [Factors.finiteDimensional_quotient_pow](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-finitedimensional-quotient-pow.md) | 553 | `declaration-track:bbecd811ad3defd51e7b83a059528d0dca06ff02232fd4b2f411d8057e8bc0f1` |
| 29 | `def` | [Factors.piQuotientEquiv](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-piquotientequiv.md) | 565 | `declaration-track:37b1a7702d91922cd2914ed2cb51fc50b8876c6e99e97b6ba6007f76567677df` |
| 30 | `theorem` | [Factors.piQuotientEquiv_mk](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-piquotientequiv-mk.md) | 579 | `result-track:651c746466270140815cbb9ddf4455b3636f9e9fc41f6d8cf5388f6c55cbb435` |
| 31 | `theorem` | [Factors.piQuotientEquiv_map](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-piquotientequiv-map.md) | 583 | `result-track:22822dcd100e8454cf18fa6dc2da7a216ea3caa8d53e4599206280c37e64ac11` |
| 32 | `def` | [Factors.piQuotientLinearEquiv](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/factors-piquotientlinearequiv.md) | 593 | `declaration-track:d9b29369a2fab3532abbff4c969c7513ff01f58d118505fd1bec6b44a267b44b` |
| 33 | `theorem` | [sum_ramification_inertia](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/sum-ramification-inertia.md) | 614 | `result-track:c0a0a54b5772495c7187fe6dcffd510119a2e601da5b36a8a5521f3be1852855` |
| 34 | `theorem` | [inertiaDeg_le_finrank](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/inertiadeg-le-finrank.md) | 636 | `result-track:696d81d6383883d6654754cdc1b4f13671e20c336419d1a249fd2f5bed3f3913` |
| 35 | `theorem` | [ramificationIdx_le_finrank](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/ramificationidx-le-finrank.md) | 646 | `result-track:4eb338d4f14213ac846dac5847375508fc67289489a28e25b5d851f19a641486` |
| 36 | `theorem` | [card_primesOverFinset_le_finrank](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/card-primesoverfinset-le-finrank.md) | 658 | `result-track:b77c0b26ee8dccbc38b42ac8536c132fbd7c80b334d29763db2c38b94d99ec29` |
| 37 | `lemma` | [ramificationIdx_mul_inertiaDeg_of_isLocalRing](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicPublic.lean/declarations/ramificationidx-mul-inertiadeg-of-islocalring.md) | 670 | `result-track:bf2925e0fafad872d46692ccc3a412947fbf3ffe348e8c20799a7224966bd31c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac31736a6d613835380e998aeeec55cf2d2fd85933be105b61255aa4a49a0b2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant08ac6d0cc227209ca580143cc7eb9083a720f6d956693db7be3fb6f1e2df71d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
