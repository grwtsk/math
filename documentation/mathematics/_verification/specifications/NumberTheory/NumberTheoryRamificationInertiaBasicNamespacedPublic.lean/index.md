# Verification target: Number Theory Ramification Inertia Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83b7ec0fd879c386ae3d6e7aedb74acd0b899622",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83b7ec0fd879c386ae3d6e7aedb74acd0b899622`.

Source path: `GRWTSK/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean.json)

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
| 1 | `theorem` | [FinrankQuotientMap.span_eq_top](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/finrankquotientmap-span-eq-top.md) | 102 | `result-track:9020bcf5eb2995f3ce56d508121bd40878cb01967625e97d6578d699beb6b60b` |
| 2 | `theorem` | [FinrankQuotientMap.linearIndependent_of_nontrivial](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/finrankquotientmap-linearindependent-of-nontrivial.md) | 201 | `result-track:87842d10470214c5d25e46c867c3780adc53ce871313a0a628a355824c6abda8` |
| 3 | `theorem` | [finrank_quotient_map](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/finrank-quotient-map.md) | 238 | `result-track:4fcbafff78ce773bf2042c70bd1c2e03a5e275ea032beb616fecf1d0fff701e2` |
| 4 | `instance` | [Quotient.algebraQuotientPowRamificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotient-algebraquotientpowramificationidx.md) | 293 | `declaration-track:b834d4ada9173f89561732321ff4167d52d696da587bf868b5e057777a1acf29` |
| 5 | `theorem` | [Quotient.algebraMap_quotient_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotient-algebramap-quotient-pow-ramificationidx.md) | 297 | `result-track:71be40d01da82ca7d03eccef3ccc8064e89082ade750de1f8d5496cf3beec247` |
| 6 | `def` | [Quotient.algebraQuotientOfRamificationIdxNeZero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotient-algebraquotientoframificationidxnezero.md) | 306 | `declaration-track:e5db1fdbf88a9215ba8e08d28c0b7b7768665f9b63e36afef97855ab64fa01de` |
| 7 | `theorem` | [Quotient.algebraMap_quotient_of_ramificationIdx_neZero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotient-algebramap-quotient-of-ramificationidx-nezero.md) | 313 | `result-track:91ae3c8a3277622bf7610fa1ac8692f6a8f019744de1bceeafb162281d252f45` |
| 8 | `def` | [powQuotSuccInclusion](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/powquotsuccinclusion.md) | 319 | `declaration-track:1a07af94d87577a3462d555c1cfc2e272fcf52df9712741639328bd0905cd894` |
| 9 | `theorem` | [powQuotSuccInclusion_injective](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/powquotsuccinclusion-injective.md) | 327 | `result-track:0ad8e0b0ce056ab830c708be906d6eba1bb6bbd1a0b27a00809deceb97f0c96c` |
| 10 | `def` | [quotientToQuotientRangePowQuotSuccAux](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotienttoquotientrangepowquotsuccaux.md) | 337 | `declaration-track:326b7029b17fe02bc9621894ba73a3befb9c1ab9a5082243c84952697fdf0aa8` |
| 11 | `theorem` | [quotientToQuotientRangePowQuotSuccAux_mk](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotienttoquotientrangepowquotsuccaux-mk.md) | 350 | `result-track:72f6349e3afa8f2fd4dbafb65b637574bcdfc131cd77fa7cf14e62bbc4642420` |
| 12 | `def` | [quotientToQuotientRangePowQuotSucc](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotienttoquotientrangepowquotsucc.md) | 360 | `declaration-track:c8cff904861e195af139282edbc4879146a45f537f9d3a84a662d769577d1270` |
| 13 | `theorem` | [quotientToQuotientRangePowQuotSucc_mk](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotienttoquotientrangepowquotsucc-mk.md) | 380 | `result-track:fc6b0d4fcf3a3d5f2a9c83351ed64a40a4774e33b828de339109fd20a9be91b8` |
| 14 | `theorem` | [quotientToQuotientRangePowQuotSucc_injective](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotienttoquotientrangepowquotsucc-injective.md) | 387 | `result-track:6423c3d8a35691a288275f223cbf2a74d28a5ceba5401fbde7e9b5d7298b0063` |
| 15 | `theorem` | [quotientToQuotientRangePowQuotSucc_surjective](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotienttoquotientrangepowquotsucc-surjective.md) | 407 | `result-track:99149d5a6a2b27c766534f1d42fcae90c8171ea24de80bb061e7452ccb1f1cce` |
| 16 | `def` | [quotientRangePowQuotSuccInclusionEquiv](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/quotientrangepowquotsuccinclusionequiv.md) | 433 | `declaration-track:0b4804bf0cfd9de1716818e9eb214f5195074bf5c4897fd851567cb6bce77333` |
| 17 | `theorem` | [rank_pow_quot_aux](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/rank-pow-quot-aux.md) | 448 | `result-track:bc0eb5bb19e6b6808f029dc57a5c725af12c8b032ee96d64dd7417651db5e51c` |
| 18 | `theorem` | [rank_pow_quot](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/rank-pow-quot.md) | 458 | `result-track:5e8dec86cc07e9ce011a232dd5110de7edc311e3966acab427997426e6c1d11a` |
| 19 | `theorem` | [rank_prime_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/rank-prime-pow-ramificationidx.md) | 478 | `result-track:8f2c7bfe07154c9afbdb698aa23aa9608837e7f2d74b6802aec537b8985e659f` |
| 20 | `theorem` | [finrank_prime_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/finrank-prime-pow-ramificationidx.md) | 493 | `result-track:5af2589f0b3482d7b66f58347b9cf2f52780efcb74b79767d711c34aa36321f2` |
| 21 | `theorem` | [Factors.ne_bot](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-ne-bot.md) | 521 | `result-track:4acbaa2e878873b530d9be38c32bba7684dc278d1726c6907d7427bba6c1b529` |
| 22 | `instance` | [Factors.isPrime](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-isprime.md) | 525 | `declaration-track:16f648ab67a81bbf47b6f47e9240007d6d9cd926d4f77911ed83abf775cbb3fd` |
| 23 | `theorem` | [Factors.ramificationIdx_ne_zero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-ramificationidx-ne-zero.md) | 530 | `result-track:92fb55d35d669337a8db0521e008d7a9ecc01d78c51ab522eaede9cb4dd323e6` |
| 24 | `instance` | [Factors.fact_ramificationIdx_neZero](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-fact-ramificationidx-nezero.md) | 536 | `declaration-track:5457bf6f7e817edc94110913e723e7d3e84652920cb74c1ab4aa508789664ff0` |
| 25 | `instance` | [Factors.isScalarTower](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-isscalartower.md) | 543 | `declaration-track:862ee9820fb8a4600bc9371ec8c97415e7b850191abdea9b1dd1a91f579073ac` |
| 26 | `instance` | [Factors.liesOver](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-liesover.md) | 548 | `declaration-track:37c04abd58abc8f56ba9c066a38bd4bbabbc3a4cb68cb9634917dd41ad8518aa` |
| 27 | `theorem` | [Factors.finrank_pow_ramificationIdx](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-finrank-pow-ramificationidx.md) | 553 | `result-track:6e7fed3a0449215ebfcb84f878ec38dbfa6384165f824c37c80add4ab2006726` |
| 28 | `instance` | [Factors.finiteDimensional_quotient_pow](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-finitedimensional-quotient-pow.md) | 561 | `declaration-track:957018b37632dc0d9b82c40f9ace78a1c07f1e0a706a56d963d9bf862d26ccb7` |
| 29 | `def` | [Factors.piQuotientEquiv](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-piquotientequiv.md) | 573 | `declaration-track:072e79cabea7bd411e14e2212e14c4d114b3b9c70e5400d364cb500c8efc752d` |
| 30 | `theorem` | [Factors.piQuotientEquiv_mk](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-piquotientequiv-mk.md) | 587 | `result-track:bf641e62634167003f02abb60d97c01fa0eb2c1a98819493952f075935008bea` |
| 31 | `theorem` | [Factors.piQuotientEquiv_map](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-piquotientequiv-map.md) | 591 | `result-track:fa00e3f3ee172e09811103acd2b72cb6fabc18a2b1d8a41062f1bb4d6c253bdc` |
| 32 | `def` | [Factors.piQuotientLinearEquiv](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/factors-piquotientlinearequiv.md) | 601 | `declaration-track:d4bfe484b009e6ea3e1482470fa8e3548f1b17f09cb31346796b3e49517b3076` |
| 33 | `theorem` | [sum_ramification_inertia](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/sum-ramification-inertia.md) | 622 | `result-track:e3b04e2524cd9d1971212f9054b1a0ef222252a9f9e493309f63f2f9b267881a` |
| 34 | `theorem` | [inertiaDeg_le_finrank](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/inertiadeg-le-finrank.md) | 644 | `result-track:5c537cb9ba0d3dd9ca7568677f23620f484dfa613b8ac10d1587397285f9025a` |
| 35 | `theorem` | [ramificationIdx_le_finrank](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/ramificationidx-le-finrank.md) | 654 | `result-track:fa7e0c2cd97c284f816e01a6dc6f0d64d2b0c95c3dcffca6b59dd3d4410c9047` |
| 36 | `theorem` | [card_primesOverFinset_le_finrank](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/card-primesoverfinset-le-finrank.md) | 666 | `result-track:081b08d18e25232183b889c534673af0dd9e39a6f490e71659706ed41aa2cb3b` |
| 37 | `lemma` | [ramificationIdx_mul_inertiaDeg_of_isLocalRing](../../../../NumberTheory/NumberTheoryRamificationInertiaBasicNamespacedPublic.lean/declarations/ramificationidx-mul-inertiadeg-of-islocalring.md) | 678 | `result-track:5f7ed6600953f28e0271a258be001a5bd051b326c78db678d16a6c022e0da6bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a077c3cf4e4f9684d00ada8cd74a70b12b7e7ea0d67d11f1c7bea2addc4a2341 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
