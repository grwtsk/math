# Verification target: Ramification Inertia

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "418ceefcf4d9849fd851b34c138c5303e79a1b14",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/RamificationInertia.lean/index.md) · [Full source](../../../../NumberTheory/RamificationInertia.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `418ceefcf4d9849fd851b34c138c5303e79a1b14`.

Source path: `GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Finite.Rank` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ramificationIdx](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx.md) | 70 | `declaration-track:be28a7eeaba3c4323c8ef5c44788c9b1355bb107e5229e81f7f5790e6094b20e` |
| 2 | `theorem` | [ramificationIdx_eq_find](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-eq-find.md) | 75 | `result-track:3aed90b568780c36bdd695eb67266cafa16ce50d7ed751de47f1dbcad870cb99` |
| 3 | `theorem` | [ramificationIdx_eq_zero](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-eq-zero.md) | 80 | `result-track:75e02a40a59cf1c75980de56e4eb8dbb22ff710e4a82164650183adc8449d1e5` |
| 4 | `theorem` | [ramificationIdx_spec](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-spec.md) | 85 | `result-track:39be3a36d83053aabedc2686c9c528e410c7ff20cbbf90f4b459440193abb1c7` |
| 5 | `theorem` | [ramificationIdx_lt](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-lt.md) | 98 | `result-track:ca6cc86c15c3ceb6ad0066e26ff332175f075dea388fbe50f7254e7057d3a66f` |
| 6 | `theorem` | [ramificationIdx_bot](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-bot.md) | 110 | `result-track:1e2b4f6255c1d3b50cfef1379e2f773b9587ce532132b1ac302a0047a476b755` |
| 7 | `theorem` | [ramificationIdx_of_not_le](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-of-not-le.md) | 115 | `result-track:a2310c6b605badc4f40cdd15fb88bfc0b5eca42fe58f7b83ca597f8205bcfd87` |
| 8 | `theorem` | [ramificationIdx_ne_zero](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-ne-zero-source-edition-2.md) | 119 | `result-track:55f30e1d04b2ef24baa91ed72932725f1660f55fd57213c32a024d64df0a2875` |
| 9 | `theorem` | [le_pow_of_le_ramificationIdx](../../../../NumberTheory/RamificationInertia.lean/declarations/le-pow-of-le-ramificationidx.md) | 124 | `result-track:df8dd391fc200a8af1da762f838e9ad46ae2b51c70b8c56bee578c9b491f0ca1` |
| 10 | `theorem` | [le_pow_ramificationIdx](../../../../NumberTheory/RamificationInertia.lean/declarations/le-pow-ramificationidx.md) | 130 | `result-track:168fb1b5394b6743369d38a810878d96ad38794027359f5eb72304da0a04bccc` |
| 11 | `theorem` | [le_comap_pow_ramificationIdx](../../../../NumberTheory/RamificationInertia.lean/declarations/le-comap-pow-ramificationidx.md) | 134 | `result-track:28d3e0d96ba8b431b3020e239bffa8815a7ab7db8fe61ae4d3131feefcfd5e97` |
| 12 | `theorem` | [le_comap_of_ramificationIdx_ne_zero](../../../../NumberTheory/RamificationInertia.lean/declarations/le-comap-of-ramificationidx-ne-zero.md) | 138 | `result-track:7123ab25433140bdcf5d913bfecc22d509330c77df4fb544ee4456221259aa20` |
| 13 | `theorem` | [ramificationIdx_eq_normalizedFactors_count](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-eq-normalizedfactors-count.md) | 146 | `result-track:39aac205c10b93c2ab4fd489a9397898fd38511a64f29332c054fa394acfd744` |
| 14 | `theorem` | [ramificationIdx_eq_factors_count](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-eq-factors-count.md) | 156 | `result-track:919da1dcf16cac88c8ad0905bac695f4a5af3c9498ee7f8a21be7133bfb7778e` |
| 15 | `theorem` | [ramificationIdx_ne_zero](../../../../NumberTheory/RamificationInertia.lean/declarations/ramificationidx-ne-zero.md) | 162 | `result-track:4b20d773f6eb4215d3e3957fba95d56ccc0522532a833933725500035e0a230a` |
| 16 | `def` | [inertiaDeg](../../../../NumberTheory/RamificationInertia.lean/declarations/inertiadeg.md) | 189 | `declaration-track:11980b599cb0e814c9981e2d9345ff1d968f5a62b77679695a100c88e3464e09` |
| 17 | `theorem` | [inertiaDeg_of_subsingleton](../../../../NumberTheory/RamificationInertia.lean/declarations/inertiadeg-of-subsingleton.md) | 201 | `result-track:656a06575e98f4b54fcee31af363f8d26ae48d506332587a6dba6d193e05159e` |
| 18 | `theorem` | [inertiaDeg_algebraMap](../../../../NumberTheory/RamificationInertia.lean/declarations/inertiadeg-algebramap.md) | 209 | `result-track:94e80ed2b4321959dcba0a31410bbbe2c601b2fee985703836ed0ae0b82821d0` |
| 19 | `theorem` | [FinrankQuotientMap.linearIndependent_of_nontrivial](../../../../NumberTheory/RamificationInertia.lean/declarations/finrankquotientmap-linearindependent-of-nontrivial.md) | 254 | `result-track:c29bbb11ba7400fcf23f70457e844591b6a1dad229fc83acea84de7073af22df` |
| 20 | `theorem` | [FinrankQuotientMap.span_eq_top](../../../../NumberTheory/RamificationInertia.lean/declarations/finrankquotientmap-span-eq-top.md) | 301 | `result-track:3628cfb951234600227090526a4068ed71822ff63bd2d5e3b76ec5acaf7786f2` |
| 21 | `theorem` | [finrank_quotient_map](../../../../NumberTheory/RamificationInertia.lean/declarations/finrank-quotient-map.md) | 401 | `result-track:2625606802cbdd6a75d2117e026a262390d28f75d9c354ce0db3f3032ada8ad6` |
| 22 | `instance` | [Quotient.algebraQuotientPowRamificationIdx](../../../../NumberTheory/RamificationInertia.lean/declarations/quotient-algebraquotientpowramificationidx.md) | 456 | `declaration-track:73481f7f0cde63adbb033f1df009743a4fedd6b008ea92f33df73e23b3de4ccb` |
| 23 | `theorem` | [Quotient.algebraMap_quotient_pow_ramificationIdx](../../../../NumberTheory/RamificationInertia.lean/declarations/quotient-algebramap-quotient-pow-ramificationidx.md) | 461 | `result-track:46fa09f914693c0ea5438ab9d7c05c1b7b38c8a622de84ac422307ec5b076d18` |
| 24 | `def` | [Quotient.algebraQuotientOfRamificationIdxNeZero](../../../../NumberTheory/RamificationInertia.lean/declarations/quotient-algebraquotientoframificationidxnezero.md) | 471 | `declaration-track:92f9b253121caca4780082343ea277200fd196b581191906590fb54a20639e8a` |
| 25 | `theorem` | [Quotient.algebraMap_quotient_of_ramificationIdx_neZero](../../../../NumberTheory/RamificationInertia.lean/declarations/quotient-algebramap-quotient-of-ramificationidx-nezero.md) | 480 | `result-track:eb40fd631a0d2c96e855cf88ba7c1877ccc98b664fcee5325def24c1ba5db40a` |
| 26 | `def` | [powQuotSuccInclusion](../../../../NumberTheory/RamificationInertia.lean/declarations/powquotsuccinclusion.md) | 486 | `declaration-track:b160936ec79a8a38e84ac23bd9b05950d5f324c5e5df48956a5a95ecedfca391` |
| 27 | `theorem` | [powQuotSuccInclusion_injective](../../../../NumberTheory/RamificationInertia.lean/declarations/powquotsuccinclusion-injective.md) | 494 | `result-track:879ab04b9ac6c1623926ed0e08b48c1eb8a95219c09c0c803f68d9fce1a076ad` |
| 28 | `def` | [quotientToQuotientRangePowQuotSuccAux](../../../../NumberTheory/RamificationInertia.lean/declarations/quotienttoquotientrangepowquotsuccaux.md) | 506 | `declaration-track:b46aa6faad6ef65c234e8f0c7b039770369d63994cd1dbd7c47df2043f23e89a` |
| 29 | `theorem` | [quotientToQuotientRangePowQuotSuccAux_mk](../../../../NumberTheory/RamificationInertia.lean/declarations/quotienttoquotientrangepowquotsuccaux-mk.md) | 519 | `result-track:0ba0c9d6187ca9017d75eb5cf0b663ad02c65e83bd9c9e2fc77b5535fa674463` |
| 30 | `def` | [quotientToQuotientRangePowQuotSucc](../../../../NumberTheory/RamificationInertia.lean/declarations/quotienttoquotientrangepowquotsucc.md) | 526 | `declaration-track:89d9d737c0c192530590dc50e310ad90ddf30db37f3b27c92bd5db72cbc611ef` |
| 31 | `theorem` | [quotientToQuotientRangePowQuotSucc_mk](../../../../NumberTheory/RamificationInertia.lean/declarations/quotienttoquotientrangepowquotsucc-mk.md) | 545 | `result-track:6cb074e7d59977784c15b34653828c80432a9390c6551f541f04e41d31281e0b` |
| 32 | `theorem` | [quotientToQuotientRangePowQuotSucc_injective](../../../../NumberTheory/RamificationInertia.lean/declarations/quotienttoquotientrangepowquotsucc-injective.md) | 551 | `result-track:d858f2a2378d71618eb885b1dee61cb1624ccf9e478e08c3dd5c8807eea83493` |
| 33 | `theorem` | [quotientToQuotientRangePowQuotSucc_surjective](../../../../NumberTheory/RamificationInertia.lean/declarations/quotienttoquotientrangepowquotsucc-surjective.md) | 571 | `result-track:b4217624e195f669db79232c62fc6ad5a37fb683ed9a3e864257caf2ccec517a` |
| 34 | `def` | [quotientRangePowQuotSuccInclusionEquiv](../../../../NumberTheory/RamificationInertia.lean/declarations/quotientrangepowquotsuccinclusionequiv.md) | 603 | `declaration-track:cc9c22c045c6852efbfe8df59136450685de3ed10670162ccd28c18b5b9e2723` |
| 35 | `theorem` | [rank_pow_quot_aux](../../../../NumberTheory/RamificationInertia.lean/declarations/rank-pow-quot-aux.md) | 618 | `result-track:f0b668dd92320c5016cd49b1f5fc6da0890664c5bcd1ca43308b34a391c0703b` |
| 36 | `theorem` | [rank_pow_quot](../../../../NumberTheory/RamificationInertia.lean/declarations/rank-pow-quot.md) | 629 | `result-track:ecfc0ee976cc2507fc7ded209f7c42a14235ed14e212b65cdcf748e7dc39dd40` |
| 37 | `theorem` | [rank_prime_pow_ramificationIdx](../../../../NumberTheory/RamificationInertia.lean/declarations/rank-prime-pow-ramificationidx.md) | 649 | `result-track:a210513c06b225812e275addcd5d7a52e8ef58e088181c8c68ec8b375ec1efdd` |
| 38 | `theorem` | [finrank_prime_pow_ramificationIdx](../../../../NumberTheory/RamificationInertia.lean/declarations/finrank-prime-pow-ramificationidx.md) | 664 | `result-track:8f5ef3e075c74bbc2c1ee40b410503521e0dcccc5aff87d83371ffbeb4e7248e` |
| 39 | `theorem` | [Factors.ne_bot](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-ne-bot.md) | 696 | `result-track:92b1552fdbdd8392e089e1fb330ad4662adf01c6ecc624f9cf6ad2a387741c01` |
| 40 | `instance` | [Factors.isPrime](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-isprime.md) | 700 | `declaration-track:234e1d14e84a83d07c21030a92227cdda094e80389abf8ff47625c5bd4adea3f` |
| 41 | `theorem` | [Factors.ramificationIdx_ne_zero](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-ramificationidx-ne-zero.md) | 705 | `result-track:507fed14da4634507669df94fab84f37f59021095860417711cbf853a511c560` |
| 42 | `instance` | [Factors.fact_ramificationIdx_neZero](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-fact-ramificationidx-nezero.md) | 711 | `declaration-track:09b6e9c6cbd332dfbf456283dd016b46c12f07fe6e16185ac9d4320858d414c5` |
| 43 | `instance` | [Factors.isScalarTower](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-isscalartower.md) | 720 | `declaration-track:1821292278c8b6e96f7a91daeb516f80027d326ddcb1cfe5047178495f003b75` |
| 44 | `theorem` | [Factors.finrank_pow_ramificationIdx](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-finrank-pow-ramificationidx.md) | 727 | `result-track:5831bcb8f9caecf5a7dfdac11946dd8e41732a73209c6867336caef59c4fd9a8` |
| 45 | `instance` | [Factors.finiteDimensional_quotient](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-finitedimensional-quotient.md) | 735 | `declaration-track:c0fcc9656e1913ef414105c2d15a542e8cf2518cce1685c49df0ebb9b7defae0` |
| 46 | `theorem` | [Factors.inertiaDeg_ne_zero](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-inertiadeg-ne-zero.md) | 744 | `result-track:90a534772ef7d6fd0faa3dd4c507cce41dbd830c1b7dfa372d0d184c6738884f` |
| 47 | `instance` | [Factors.finiteDimensional_quotient_pow](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-finitedimensional-quotient-pow.md) | 749 | `declaration-track:309a8677918ec2612cede292545dd86fb3284f681e64ae5872df54e2656e039c` |
| 48 | `def` | [Factors.piQuotientEquiv](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-piquotientequiv.md) | 761 | `declaration-track:8a29bcaaa2b4f78feb2d1e806ebbefd073e1cf1d5e49066dfefa2192b1f7b5fc` |
| 49 | `theorem` | [Factors.piQuotientEquiv_mk](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-piquotientequiv-mk.md) | 776 | `result-track:f57a7fce8b836384e82ce057cda888b6769fcbad6c1b7341808309f6d4d8599e` |
| 50 | `theorem` | [Factors.piQuotientEquiv_map](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-piquotientequiv-map.md) | 781 | `result-track:21aba01b29d651da603446e6df479fe1c26e7312671b96ec75329dab69a71091` |
| 51 | `def` | [Factors.piQuotientLinearEquiv](../../../../NumberTheory/RamificationInertia.lean/declarations/factors-piquotientlinearequiv.md) | 791 | `declaration-track:d9c3647df95e12c45b7cdb0dcf70d57eb8cf025da44303ddbfb3ad308a9b3a48` |
| 52 | `theorem` | [sum_ramification_inertia](../../../../NumberTheory/RamificationInertia.lean/declarations/sum-ramification-inertia.md) | 813 | `result-track:1af20632d24df5f1f1e1eba8f03363042fedf03e2cfb619cdd738507f302c9be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af38b295b79f64419880bc62c1b56dd52b0b9081c2b8e6df3492cb36031ff436 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/RamificationInertia/Variant017a3d75bc1d213c2606f0a4f6cb68512d241d7e95647491d44b731cbffbb35c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
