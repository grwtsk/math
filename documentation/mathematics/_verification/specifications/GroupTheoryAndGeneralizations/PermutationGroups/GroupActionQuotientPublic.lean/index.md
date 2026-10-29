# Verification target: Group Action Quotient Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4df39bc62b6f7bd0db4e947537c0f02a634d019",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4df39bc62b6f7bd0db4e947537c0f02a634d019`.

Source path: `GRWTSK/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuotientAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotientaction.md) | 52 | `declaration-track:304d58d21416bf53be8d28dc961a2e4c6d32bc90ed3b52104d318cfe329e5d6b` |
| 2 | `class` | [_root_.AddAction.QuotientAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/root-addaction-quotientaction.md) | 58 | `declaration-track:7a26d4734087300af66e097e586a5377718d4e119783650d468bda1ad4138814` |
| 3 | `instance` | [left_quotientAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/left-quotientaction.md) | 67 | `declaration-track:5b3e7523eda2c0258c8d3d84f358cc209344af35508a8557fef6c9c0b9b0390d` |
| 4 | `instance` | [right_quotientAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/right-quotientaction.md) | 71 | `declaration-track:b4ed77befac8f5392152cbe6986eb68d06a49378fedc7c532761323f115934cc` |
| 5 | `instance` | [right_quotientAction'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/right-quotientaction-source-edition-2.md) | 77 | `declaration-track:f0f4f8176e6dcba43a012ddba7922ad427108482658d8f422946d4b479bcbc8f` |
| 6 | `instance` | [quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotient.md) | 83 | `declaration-track:f8aa2d5e7d7c24ff5bf3e651d6a6a07c60f1fc8e248da117a1a5a347797b4c1c` |
| 7 | `theorem` | [Quotient.smul_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotient-smul-mk.md) | 93 | `result-track:96f10dfffa4302844e8a49bd691d2adcde0a5472a2f856b42b6b0aef8da6e7f0` |
| 8 | `theorem` | [Quotient.smul_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotient-smul-coe.md) | 98 | `result-track:eab0af4f470d04b5f53c62d3dfa4e41c82372dbd33c628f6f4056e11f8595e6d` |
| 9 | `theorem` | [Quotient.mk_smul_out](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotient-mk-smul-out.md) | 103 | `result-track:390992548a476703215e1f7c209794f4e3f3e8c9786df053e1301ac8fac9c196` |
| 10 | `theorem` | [Quotient.coe_smul_out](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotient-coe-smul-out.md) | 107 | `result-track:db70636cbdf6c0d3d67dba883d323da66537c0e4a945b303fb5e4f2a2688393f` |
| 11 | `theorem` | [_root_.QuotientGroup.out_conj_pow_minimalPeriod_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/root-quotientgroup-out-conj-pow-minimalperiod-mem.md) | 110 | `result-track:944b6f5c67a18282d815b330924b0df0327493da854b2360d4f28be6797c0c0e` |
| 12 | `def` | [_root_.MulActionHom.toQuotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/root-mulactionhom-toquotient.md) | 120 | `declaration-track:b6176b30e35eb801b0e63d35aa3581737a09b586c2d1c20b3b5e20610b3b92cd` |
| 13 | `theorem` | [_root_.MulActionHom.toQuotient_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/root-mulactionhom-toquotient-apply.md) | 124 | `result-track:f2aeadb4174d0976aded0323f4aac57fffcdcac6c13dfc5135085af4173f0b1b` |
| 14 | `theorem` | [coe_quotient_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/coe-quotient-smul.md) | 129 | `result-track:15f7377df749fd75c12574ff13b79fe0a27b9018125aa4d948b3f7211b3b467c` |
| 15 | `def` | [ofQuotientStabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/ofquotientstabilizer.md) | 140 | `declaration-track:4534ef374b69aff96d267fcc6096193837ffd73839da7dafa15e4218de75a72c` |
| 16 | `theorem` | [ofQuotientStabilizer_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/ofquotientstabilizer-mk.md) | 147 | `result-track:c15dffb2a0589dc5930b954f70d423cbeab2b38e2bf55b5abeee29224b0a696a` |
| 17 | `theorem` | [ofQuotientStabilizer_mem_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/ofquotientstabilizer-mem-orbit.md) | 151 | `result-track:2a5b0f9b4642f7b9458b58b94c0eb201e45649d3c4fdd29286ea9634085f4dec` |
| 18 | `theorem` | [ofQuotientStabilizer_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/ofquotientstabilizer-smul.md) | 155 | `result-track:1ddd2144a5615f966036343ff065088bd7922a080cabf3b3632612a01918b893` |
| 19 | `theorem` | [injective_ofQuotientStabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/injective-ofquotientstabilizer.md) | 160 | `result-track:832c98d4462a54dec3a60cf1f37b15b1c2e9b0aea39b56ddb0ea581bf1b40fd2` |
| 20 | `def` | [orbitEquivQuotientStabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/orbitequivquotientstabilizer.md) | 170 | `declaration-track:75488800057fa78ce9f0635e126da1e0f2f58681e9a5720c8d143d5f6212967f` |
| 21 | `def` | [orbitProdStabilizerEquivGroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/orbitprodstabilizerequivgroup.md) | 178 | `declaration-track:035572a1c1d9ab838873a0137487d7323388119c4702afd7649ad16ab0fe62ec` |
| 22 | `theorem` | [card_orbit_mul_card_stabilizer_eq_card_group](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/card-orbit-mul-card-stabilizer-eq-card-group.md) | 185 | `result-track:07a156601eb8f1b56d5f5243f90dfc9eeb7b2a22bf1c7f5cae5c4a0556fbd71a` |
| 23 | `theorem` | [orbitEquivQuotientStabilizer_symm_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/orbitequivquotientstabilizer-symm-apply.md) | 191 | `result-track:9e01aba1db00504c62f9cc282950f445115e7b5c78dcb82c368a2223704163b5` |
| 24 | `theorem` | [stabilizer_quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/stabilizer-quotient.md) | 196 | `result-track:aa47fd8e766bcbe1c77bced444fa17ad1da488d65b1f0cf6975405307be657f3` |
| 25 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/selfequivsigmaorbitsquotientstabilizer.md) | 218 | `declaration-track:1a8c03cc7e621894344a46f10fa307960b6ec40d11e20c5ddac2703b36f05f00` |
| 26 | `def` | [selfEquivSigmaOrbitsQuotientStabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/selfequivsigmaorbitsquotientstabilizer-source-edition-2.md) | 232 | `declaration-track:c46f5ab928395e00790e166f64ecb39fa4e06b2a483051014020b2dc91dc5082` |
| 27 | `def` | [sigmaFixedByEquivOrbitsProdGroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/sigmafixedbyequivorbitsprodgroup.md) | 242 | `declaration-track:682866de4e3c089766125c298033ff3156ace086db76f9c2660960c859c90d4d` |
| 28 | `theorem` | [sum_card_fixedBy_eq_card_orbits_mul_card_group](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/sum-card-fixedby-eq-card-orbits-mul-card-group.md) | 268 | `result-track:9b2c2e3906c3778c2df7563ba4c7297c9f92ea8d7ef1c7bc7646b0990d0f81e1` |
| 29 | `instance` | [isPretransitive_quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/ispretransitive-quotient.md) | 274 | `declaration-track:5c7a4db9bc9b84791734f145a024c31e6a0050e94b678d1a979937e4cdb959db` |
| 30 | `instance` | [finite_quotient_of_pretransitive_of_finite_quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/finite-quotient-of-pretransitive-of-finite-quotient.md) | 283 | `declaration-track:ce97beea510ddeef7745ca06aef7d20d648ddde8943ee0695811ebd1f39b0dd6` |
| 31 | `def` | [equivSubgroupOrbitsSetoidComap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/equivsubgrouporbitssetoidcomap.md) | 303 | `declaration-track:57f03ed5fa72ec592b126e0f2538129e042ccdc2339f99f4244815249747eb17` |
| 32 | `def` | [equivSubgroupOrbits](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/equivsubgrouporbits.md) | 335 | `declaration-track:09f5527f8f16c0398c09b355588e0988383760586575f7eb032bbb70e7827812` |
| 33 | `instance` | [finite_quotient_of_finite_quotient_of_finite_quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/finite-quotient-of-finite-quotient-of-finite-quotient.md) | 343 | `declaration-track:aff4d901549f7a8a99ae733d09d844fa9433762be9cde6959933390354cff6a0` |
| 34 | `def` | [equivSubgroupOrbitsQuotientGroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/equivsubgrouporbitsquotientgroup.md) | 353 | `declaration-track:93d1fb6fcff754227772668dab062bd85dcb7ee41b66c5372150bc5314dbf10a` |
| 35 | `def` | [selfEquivOrbitsQuotientProd'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/selfequivorbitsquotientprod.md) | 395 | `declaration-track:387644d719de3ca63f20d75f6e7eed340a7606fe1e542317c9cb5e9d239013bc` |
| 36 | `def` | [selfEquivOrbitsQuotientProd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/selfequivorbitsquotientprod-source-edition-2.md) | 409 | `declaration-track:d7412def54460efdf5cfb8b35bc77a5165a5707f7baa331fe75944bce728da31` |
| 37 | `theorem` | [ConjClasses.card_carrier](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/conjclasses-card-carrier.md) | 415 | `result-track:6e74047572a82feb21e0f838650be87fb2a92434f5d0d84ca6219e24a2d58c03` |
| 38 | `theorem` | [normalCore_eq_ker](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/normalcore-eq-ker.md) | 429 | `result-track:0e8a1c071c0666c683c4716d333cdbd15aecf43a3de6780ebf6d3e0053e5c2e1` |
| 39 | `def` | [quotientCentralizerEmbedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotientcentralizerembedding.md) | 444 | `declaration-track:946666269aa5563aad0f6d762b1ece64959ff7c2e0a26d4f70a6740c6556a941` |
| 40 | `theorem` | [quotientCentralizerEmbedding_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotientcentralizerembedding-apply.md) | 454 | `result-track:fbceca2829102685dc621f763d0141d9cfcc5ead20fd7f07bc7680f47c8d3382` |
| 41 | `def` | [quotientCenterEmbedding](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotientcenterembedding.md) | 460 | `declaration-track:b392f01908085782a4182743ab9b58f283fa3175156d8ab50e9d107aa6c730b0` |
| 42 | `theorem` | [quotientCenterEmbedding_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionQuotientPublic.lean/declarations/quotientcenterembedding-apply.md) | 466 | `result-track:916daacaccdff0e0129e2a1d895d703cbd32697fa1da375e8cf1908e89522c4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3eaedb174b8cf0c638cf574ccdbe46e7132f51e1a59ddebaf0da4dfd7f0ae248 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
