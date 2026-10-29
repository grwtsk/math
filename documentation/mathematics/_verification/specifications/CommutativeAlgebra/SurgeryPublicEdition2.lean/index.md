# Verification target: Surgery Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2099e3deacd09a3c9a0fe1ef93e4def56f41d7f",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2099e3deacd09a3c9a0fe1ef93e4def56f41d7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CubicFrobeniusRewriteBase](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/cubicfrobeniusrewritebase.md) | 49 | `declaration-track:36cb5f9d6b54b9f84fa3cebee1208d6af95f1bcb032dbd7b331ca10d47318949` |
| 2 | `def` | [deltaTypeIICoefficientBaseAdapter](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/deltatypeiicoefficientbaseadapter.md) | 70 | `declaration-track:822d47c86eff39727f704a69c1be536c368fedc10731135d314781687fc100ea` |
| 3 | `theorem` | [deltaTypeIICoefficientBaseAdapter_universalCoefficient](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/deltatypeiicoefficientbaseadapter-universalcoefficient.md) | 88 | `result-track:36f3990305ac2d73fe17462f5b22c89d698b3bb3401ebbfc4a29ed8a6cb722a1` |
| 4 | `def` | [universalPrefix](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/universalprefix.md) | 97 | `declaration-track:96e63551973c5856ed416749b6333bafac417ce26f6950d0cb68fa7e8c3be72b` |
| 5 | `theorem` | [realization_universalPrefix](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/realization-universalprefix.md) | 106 | `result-track:911d3751926d7b48f051fe0112351cfae7dab8d547456edfef1a794ac11f3d23` |
| 6 | `def` | [iterateFrobenius](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/iteratefrobenius.md) | 120 | `declaration-track:343991db15e7d47f319f94b027b77b9731a869f32eec8953db2001e38fa50d2c` |
| 7 | `theorem` | [realization_iterateFrobenius](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/realization-iteratefrobenius.md) | 128 | `result-track:a85bce85d8796f72dcc283933903a4207114408be2e4291188442c3a43e3cf8f` |
| 8 | `structure` | [TypeIIComplexity](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiicomplexity.md) | 142 | `declaration-track:438c00f3901abc40cb96345b89bb2c90377ea2187049dbd281254bd231b9818f` |
| 9 | `def` | [TypeIIComplexity.Decreases](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiicomplexity-decreases.md) | 150 | `declaration-track:54b04b89028c097a5a5051fbc89aceeced82db74ee6c9a6b3ecf2b7225acec90` |
| 10 | `theorem` | [TypeIIComplexity.not_decreases_self](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiicomplexity-not-decreases-self.md) | 160 | `result-track:847ed5ccec860631832da4e3dfca72f95f6ade0c7452c409ef002968dd772f4b` |
| 11 | `structure` | [TypeIISurgeryState](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiisurgerystate.md) | 170 | `declaration-track:e854de1740283bca76b04495cd7911c53ce612fc164e53f29fd7d26028871968` |
| 12 | `def` | [TypeIISurgeryState.residual](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiisurgerystate-residual.md) | 191 | `declaration-track:bfb705333b0cc766df00ee7a29135f1231c94f8b3a68bcce7fcc231f15377a9e` |
| 13 | `theorem` | [TypeIISurgeryState.residual_norm_sq_le_budget](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiisurgerystate-residual-norm-sq-le-budget.md) | 198 | `result-track:e1f80647c5ee7fbb34c5f151d0c69b5370688fe5e42f27a65e7bfe5ef1b18fd0` |
| 14 | `def` | [TypeIISurgeryState.universalPrefix](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiisurgerystate-universalprefix.md) | 207 | `declaration-track:de41b260ed05e85605bfb0e4c3b1e096b8a0d0488fc4b519d67887d5572c5450` |
| 15 | `theorem` | [TypeIISurgeryState.realization_universalPrefix](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiisurgerystate-realization-universalprefix.md) | 214 | `result-track:1b7367713f1fea406bf5914fa248ca43561309a05169594cdfbd435d82841e34` |
| 16 | `def` | [FiniteInteractionComplex.interactionDegree](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/finiteinteractioncomplex-interactiondegree.md) | 227 | `declaration-track:92c8d4901895eca1ed7267bb4fdcaa3608d426ca8dbb188ffcd44a0c506ca373` |
| 17 | `def` | [FiniteInteractionComplex.weightedDegree](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/finiteinteractioncomplex-weighteddegree.md) | 234 | `declaration-track:55b90c1b238e3a2afc5de2b0b474dc3997f6752339d0ecba0dcdc6077fcf1dfa` |
| 18 | `def` | [FiniteInteractionComplex.combinatorialEdgeCurvature](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/finiteinteractioncomplex-combinatorialedgecurvature.md) | 245 | `declaration-track:a751a44ef5f4f571dc3e38a656c6059a4704e89ed7d9f3f784be78f90811b5ba` |
| 19 | `def` | [pathWeightedDegree](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/pathweighteddegree.md) | 253 | `declaration-track:6d33af426ec8afcf75ac4629fd436b150cbba2c53960d8c6de5e1b89b7edad23` |
| 20 | `def` | [pathCombinatorialEdgeCurvature](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/pathcombinatorialedgecurvature.md) | 262 | `declaration-track:88bfb94bad12c2a3b851c9284ee8cfb0b69208cb97fe73fc4d9926a25b5fd5fb` |
| 21 | `structure` | [CombinatorialIncidenceFlowSegment](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/combinatorialincidenceflowsegment.md) | 276 | `declaration-track:a1d97440ea3bf38a200b125d60204716ab3927e34bbdff4c9072d3c9ce02833a` |
| 22 | `structure` | [CombinatorialRicciFlow](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/combinatorialricciflow.md) | 304 | `declaration-track:edb6ee2ab3d52850d9f7e06037ecf584c1c4e0e9ba6b957fd15cbf961adc64f0` |
| 23 | `structure` | [CombinatorialFlowCorrelationControl](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/combinatorialflowcorrelationcontrol.md) | 338 | `declaration-track:b30ff1bce594114bd61bd915aae33cacf84ba1eab5c5e01a55590df5e20a23bc` |
| 24 | `inductive` | [TypeIISurgeryMove](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiisurgerymove.md) | 356 | `declaration-track:99eb9ea70b3ff63b8c877abc1da62a1df213c1901f82d7ba2355886c3cb2036a` |
| 25 | `structure` | [SphericalLinkCandidate](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/sphericallinkcandidate.md) | 371 | `declaration-track:57b5e797723540436d39dff97ab3b55d2ff3491cb06e64800901421066633ab9` |
| 26 | `def` | [SphericalLinkCandidate.RealizedInNerve](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/sphericallinkcandidate-realizedinnerve.md) | 398 | `declaration-track:817de7e9d6e7e268ea04736a30f0f39ab6746e24e7b0eac086ef1956fa6d5ada` |
| 27 | `structure` | [SurgeryCorrelationControl](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/surgerycorrelationcontrol.md) | 407 | `declaration-track:a8d205ec23d8222ff00408cced15cb8e060daf5ec6f452f844247cb88dba7802` |
| 28 | `theorem` | [SurgeryCorrelationControl.realizedDecomposition](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/surgerycorrelationcontrol-realizeddecomposition.md) | 430 | `result-track:39e27e65578e1f4ff3e74b07e76fae260c4b3acd9b9e93297ce3f48c8d87e512` |
| 29 | `def` | [IsDiffuse](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/isdiffuse.md) | 449 | `declaration-track:04261c92064571844698c0608882c181f7d13a108be493c95c537141c8297b16` |
| 30 | `def` | [DirectionSeparated](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/directionseparated.md) | 460 | `declaration-track:c8d1d1937e7774a01ee473e9dafaa5bffa3b33bc246c494292a7de06de11542c` |
| 31 | `structure` | [TransverseTwoBlockDecomposition](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/transversetwoblockdecomposition.md) | 473 | `declaration-track:3f8b93ec08e7379ea7fee50963f55740958b296323a36483014643bd831598cc` |
| 32 | `def` | [TransverseAlternative](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/transversealternative.md) | 490 | `declaration-track:424534b353d55e79b6be0f842dfc84a36bd62f155ee682efc1f3b5e2c9cd2b14` |
| 33 | `theorem` | [TransverseAlternative.two_le_active_card](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/transversealternative-two-le-active-card.md) | 499 | `result-track:ed0358732e613e9820a1982611ead7f7b26313245ab3eb6f55f9ac2d008be571` |
| 34 | `def` | [transverseCrossCorrelationAt](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/transversecrosscorrelationat.md) | 516 | `declaration-track:886b44bf28c3109046f1a1c0bbc25b33b0b412c5a2605167835eaca0215199e6` |
| 35 | `def` | [CoefficientSensitiveTTStarApplicable](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/coefficientsensitivettstarapplicable.md) | 533 | `declaration-track:e04bea930760473f6de6b4eac9af71f900d4c88e6be06349ec9fb4193833babb` |
| 36 | `def` | [WangZahlDiffuseAlternative](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/wangzahldiffusealternative.md) | 546 | `declaration-track:d8599b7e8b5bfa0fa8f49aa01dfb5b8b43912f83a1193ef3875cd57a99ed9aec` |
| 37 | `def` | [SurgicalNeckAt](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/surgicalneckat.md) | 565 | `declaration-track:c9dec1c60aac1f93ea4efa951b34b44601d909586c4c914e8f5d51cfb78168e7` |
| 38 | `def` | [SurgicalNeckAlternative](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/surgicalneckalternative.md) | 585 | `declaration-track:d1dbfe27e5337a1dc0d4659c7734763da9dd968d22a87503b5af51e180a20ae1` |
| 39 | `def` | [NeckOrTransversalityAt](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/neckortransversalityat.md) | 593 | `declaration-track:4a4b036bebc7c476eeac87ed11c6598dc6b402a43c10b9a93f0bdf7d5d536f9f` |
| 40 | `def` | [NeckOrTransversalityResearchStatement](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/neckortransversalityresearchstatement.md) | 603 | `declaration-track:a3d824b665a048bb3d14d23d1546dd7905d489e2de76c94cd2d36ab76ce08f32` |
| 41 | `def` | [TypeIIMoveSound](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiimovesound.md) | 614 | `declaration-track:13583caa29d3bf3fd808eaa3a33ac6479b5781b10e749a0c95d705cb444046e6` |
| 42 | `inductive` | [TypeIIClaimKind](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiiclaimkind.md) | 659 | `declaration-track:179c3288870bc6ae56d76f2b27846c8190a622fca3989c240a5a540bedf78905` |
| 43 | `inductive` | [TypeIIAuthorityStatus](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiiauthoritystatus-source-edition-2.md) | 671 | `declaration-track:b99c91b32160b7f4a73cc7775c20025a123b70a3367afbc8f2b8156ac3a0e919` |
| 44 | `def` | [typeIIAuthorityStatus](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiiauthoritystatus.md) | 680 | `declaration-track:3d4b7f6e75458483da30f69b86b1af76404467c58ef95bddc206fad5d99ba380` |
| 45 | `inductive` | [TypeIIFalsificationCheck](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/typeiifalsificationcheck.md) | 692 | `declaration-track:eafcd5ecac23fb69afcea122b97fcaf93d388740e2e1e35d2c98719ec28f9ffd` |
| 46 | `def` | [requiredFalsificationChecks](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/requiredfalsificationchecks.md) | 706 | `declaration-track:9ccf73ceb75ed66d65f34c4101e43574dfa71971233be3ec66656bd4cc7091eb` |
| 47 | `theorem` | [smoothRicciFlow_is_outside_finite_incidence_authority](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/smoothricciflow-is-outside-finite-incidence-authority.md) | 730 | `result-track:9943ae6e02eacf234a2e7c5f9f4ee5c0af0fe2efce5e85f063fe4798a8db9793` |
| 48 | `theorem` | [signedTypeII_bound_remains_research_open](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/signedtypeii-bound-remains-research-open.md) | 735 | `result-track:d7bacd5d8bba82b8e61b72f259d5b93c44e341462d0ee4f9465c5b1a5c696e50` |
| 49 | `theorem` | [bhattScholze_prism_is_not_spatial_surgery_authority](../../../../CommutativeAlgebra/SurgeryPublicEdition2.lean/declarations/bhattscholze-prism-is-not-spatial-surgery-authority.md) | 740 | `result-track:940f7707b233deb3a86f2b55dd511deb01c5b5d0e930c17b505a3a974e545bd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=700bc0e474a7b603e94bb25abf7dba48521bbf3651fe9d52bae973f9210b4c76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Surgery/Variant505f92d8df27e7293953f59dfdfb795d7e04295d55c1a1f4d9f92a9a62b0a870.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
