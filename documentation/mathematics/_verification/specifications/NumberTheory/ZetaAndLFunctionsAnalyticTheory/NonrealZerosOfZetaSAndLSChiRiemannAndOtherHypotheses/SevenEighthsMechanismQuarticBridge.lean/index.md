# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SevenEighthsMechanismQuarticBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ArithmeticScaleBijectiveWitness`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ArithmeticScaleBijectiveWitness.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/OpenAISevenEighthsPort.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticTraceCriterion`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/QuadraticTraceCriterion.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OneWayRawHalfPlaneTransport](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/onewayrawhalfplanetransport.md) | 51 | `declaration-track:8537721d4590780ff4436bff284ba1c7513d0d92bd9b737096ecee9fc6544f15` |
| 2 | `theorem` | [localTheorem](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/localtheorem.md) | 59 | `result-track:d8b49999fae048f41bbb282c1f98f4c1050c14c4f3cc8c8cefb127808bf9e246` |
| 3 | `def` | [toAcceptedPort](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/toacceptedport.md) | 66 | `declaration-track:cc6023478319cc67225f6d97406edadba98a52f3bec4d0f1523ce6708cb1d593` |
| 4 | `theorem` | [openAISevenEighthsClaim_toLocal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsclaim-tolocal.md) | 80 | `result-track:51ea2a6030b748c35f0cdb0e6e6ce3bdf4afcdb740254b87478615b07af9ead9` |
| 5 | `def` | [openAISevenEighthsOneWayTransport](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsonewaytransport.md) | 88 | `declaration-track:c1e6183939319f67d32de3c45dfe8ac512ce754e9372c8b163ebcf6196ea5b1c` |
| 6 | `structure` | [PortAccepted](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/portaccepted.md) | 97 | `declaration-track:de2daa71f759bec4c927d06da8c3adc770b577316b6e1e5f0bee984b5197d327` |
| 7 | `structure` | [SevenEighthsMechanismSourceRecord](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/seveneighthsmechanismsourcerecord.md) | 104 | `declaration-track:9aec7f2c410f8fb5dacafef41afcd06c65d5db652478aa98c4c8bb06d933afa1` |
| 8 | `def` | [openAISevenEighthsMechanismSource](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsmechanismsource.md) | 127 | `declaration-track:b350c880ef00f9e6aaa1164981dca370f9efac6efbfbc2da13e185d0c61c45fd` |
| 9 | `inductive` | [MechanismFormalCheck](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/mechanismformalcheck.md) | 161 | `declaration-track:4c227515be574f2928dffcfe99f9ce7dafe174af4c817d624e335edb8ad3db8e` |
| 10 | `structure` | [ExternalMechanismReview](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/externalmechanismreview.md) | 174 | `declaration-track:e743a1764bf96704e513d1f133963af98d45d448e6e033a63633ad7d47bbf610` |
| 11 | `def` | [Has](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/has.md) | 181 | `declaration-track:3c1a4c59764281b5c7ee11b97a4731d33830b80fad90df64e355cff04d374b08` |
| 12 | `def` | [requiredChecks](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/requiredchecks.md) | 185 | `declaration-track:2177de3efd3c7821f7879a8e866c1b8b3516ab851425de6fe66ef4512b9e5d36` |
| 13 | `def` | [AdmissionReady](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/admissionready.md) | 196 | `declaration-track:2c4e6bc607660585b021fb8efe028d959dd960646f3e44ce2020407ca8e1a9a0` |
| 14 | `def` | [openAISevenEighthsMechanismReview](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsmechanismreview.md) | 203 | `declaration-track:8523cd8ade05dfc3761623ae4a3a1fe5315c47d84df75e9f4e90159dee24aa59` |
| 15 | `theorem` | [openAISevenEighthsMechanismReview_not_admissionReady](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/openaiseveneighthsmechanismreview-not-admissionready.md) | 207 | `result-track:a6480dfb9a739254ba738a365d89699e56647d060d44792adcfb435a220eeddb` |
| 16 | `structure` | [SevenEighthsMechanismChain](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/seveneighthsmechanismchain.md) | 220 | `declaration-track:4b51c7ac05e772c4f90d4cbd383b351d3e3725a856ca6c0239ed5546a13be0a2` |
| 17 | `theorem` | [SevenEighthsMechanismChain.toZeta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/seveneighthsmechanismchain-tozeta.md) | 238 | `result-track:86d982e6d97427dad281de75d591809eac70c7fa0e7ee713e3701420f7fb90a4` |
| 18 | `structure` | [AcceptedSevenEighthsMechanismPort](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/acceptedseveneighthsmechanismport.md) | 250 | `declaration-track:430dbe675600ba6d622a081db08ab9029e8beba6bf25951931c0e6ad3c54e019` |
| 19 | `structure` | [ContinuousLinearEquivalence](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/continuouslinearequivalence.md) | 260 | `declaration-track:009feb5c387cef31932a43481d5f62d80ea194a1efe1658c53437a3994b6b7d1` |
| 20 | `structure` | [FaithfulContinuousLinearEmbedding](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/faithfulcontinuouslinearembedding.md) | 270 | `declaration-track:0b8e5a294b78f49e0bc52b8c3af7ea16f299405f3342e0d8cf255439248bbc4b` |
| 21 | `structure` | [ContinuousLinearQuotient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/continuouslinearquotient.md) | 280 | `declaration-track:cbcfcd940ba0ae32e1ea5dcc1101bec7a21fb051c96564264e6d272c4c3b0c81` |
| 22 | `inductive` | [WitnessCarrierBridge](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/witnesscarrierbridge.md) | 290 | `declaration-track:c0cb06118caad85312192606feb9c0c647d71a227572f661aef0ea7a45764bc9` |
| 23 | `def` | [WitnessCarrierBridge.toFun](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/witnesscarrierbridge-tofun.md) | 300 | `declaration-track:a639fdd87bd34ff2b152fb5be8decfcce86972c56209b2fdc5fa83a080efdd5d` |
| 24 | `structure` | [CommutingInvolutionPair](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/commutinginvolutionpair.md) | 311 | `declaration-track:b4706280e02a0f324df5d9f24ea547076e08a989181dad7466b167e0fe5dee1e` |
| 25 | `structure` | [RealBilinearMechanismBridge](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/realbilinearmechanismbridge.md) | 323 | `declaration-track:3de5092d1a2315e72f4c4be6acc2d7a3c132161227c154e967b7fb14f81c8cc0` |
| 26 | `structure` | [PNTIndependentDependencyAudit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/pntindependentdependencyaudit.md) | 360 | `declaration-track:7dd760535abbc5f59b269fcd6fb6ea9597422c36f36d92f248f3b8eb56dda689` |
| 27 | `inductive` | [PrimeQuarticResidualKey](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticresidualkey.md) | 377 | `declaration-track:0c7b89ae99795015230c0d9ce4aca7d44a56247164e2e2df9a5d329cd1c521af` |
| 28 | `instance` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/instance.md) | 392 | `declaration-track:63b79191fa7a20bb9e63cd46b5d4e43f058c5d0a6cf1cbd98186b037d1941350` |
| 29 | `structure` | [PrimeQuarticResidualLedger](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticresidualledger.md) | 401 | `declaration-track:3eace97ece15e3e6c8f9ab91277f5ab40c96b03a420025fd26fdd1f573da0eb0` |
| 30 | `structure` | [QuarticExtractionAtZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/quarticextractionatzero.md) | 408 | `declaration-track:dd31ce40f0fad3532077619bece3e865eb0238ff6369a574e7f8f2f1b0a5841f` |
| 31 | `def` | [PrimeQuarticClaim](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticclaim.md) | 422 | `declaration-track:80cd9c3b8ec551a1b553d44f7fa90b305f2d081663df288ca55e178dd18e3394` |
| 32 | `structure` | [PrimeQuarticExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticextraction.md) | 427 | `declaration-track:678604a0d9e45f48d5f6cda60e3165a3096d2c5de6d81f0deab924c4b7d6a0c5` |
| 33 | `theorem` | [riemannHypothesis_of_primeQuarticExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/riemannhypothesis-of-primequarticextraction.md) | 434 | `result-track:7f30d70d77c41b2b689bea8f2298d210c2ec955239b2c1ba7440954fc58150aa` |
| 34 | `structure` | [DetectorToLocalWitnessBridge](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/detectortolocalwitnessbridge.md) | 448 | `declaration-track:18f55663c6f35f0bd43403b0da4eb7d931bc445a1a455e676dea4a19a17d3464` |
| 35 | `def` | [DetectorToLocalWitnessBridge.localWitness](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/detectortolocalwitnessbridge-localwitness.md) | 459 | `declaration-track:e605c2495981c3a4d24dc14600bbe9309bbfc6d88119f688a9df50b1bd1e237c` |
| 36 | `structure` | [LocalPrimeQuarticExtractor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/localprimequarticextractor.md) | 470 | `declaration-track:2920c97c88515ab09419bc8e8ad89bfd390c33c4f45c16b96cf3bb9f5798b416` |
| 37 | `structure` | [MechanismBridgeAccepted](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/mechanismbridgeaccepted.md) | 475 | `declaration-track:7f928ff579beeca2d9e31a520ded185371cb3a0ab80d811b9e2b7722ffa39a0b` |
| 38 | `structure` | [QuadraticExtractionAccepted](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/quadraticextractionaccepted.md) | 485 | `declaration-track:efef5f51f37eb306637a8ac548db255537a261435d6a77d05c8c4a92a151c99c` |
| 39 | `def` | [MechanismBridgeAccepted.toQuadraticExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/mechanismbridgeaccepted-toquadraticextraction.md) | 490 | `declaration-track:91a104604403dec3cfcd81f4897b9d60ffb144a0fd49a5d2b041f5ff8609f070` |
| 40 | `structure` | [ReflectedRegionalZeroBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/reflectedregionalzerobound.md) | 506 | `declaration-track:fa2cf47c33b2852d08e3951010b4a5ff65ee5d299162f66485a32d9edac77006` |
| 41 | `theorem` | [ReflectedRegionalZeroBound.centered_abs_le_threeEighths](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/reflectedregionalzerobound-centered-abs-le-threeeighths.md) | 513 | `result-track:a62a1b8053e9efec4d156d0b7fc792d84424cee1ca3ad977149b86c0e2a42531` |
| 42 | `def` | [RawDescentClaim](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/rawdescentclaim.md) | 526 | `declaration-track:177de5cc84c52e8dd3927fc49a09aa7b4aa982673194cc49ada91352d896344f` |
| 43 | `structure` | [PrimeQuarticStep](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticstep.md) | 532 | `declaration-track:cb115fbe5a8b1571ac52954fdf74ab829e757878f61c8b3032a4d25d961a3124` |
| 44 | `theorem` | [PrimeQuarticStep.descend](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/primequarticstep-descend.md) | 538 | `result-track:b4ffbd5ec941e7916305013b2ce9cb73ae99d940708f9600ca0fbf7a71a1064e` |
| 45 | `structure` | [CofinalPrimeQuarticDescent](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/cofinalprimequarticdescent.md) | 545 | `declaration-track:8abfcc63e307e38916b16600f1295274367c2e5e9d0b8d94fa84e66dd41e5d57` |
| 46 | `theorem` | [CofinalPrimeQuarticDescent.zeroFreeAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/cofinalprimequarticdescent-zerofreeat.md) | 555 | `result-track:5f2906440ace215323d6802ac18ef26c3da5eba527991ee07500cb7aeb0b8cbc` |
| 47 | `theorem` | [CofinalPrimeQuarticDescent.toCriticalRaw](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/cofinalprimequarticdescent-tocriticalraw.md) | 564 | `result-track:fe6704d62db61f9502cff7f72e7eb83900d9fbb32bb722cf23f0cd47fe3c062f` |
| 48 | `inductive` | [ThresholdClosureAccepted](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/thresholdclosureaccepted.md) | 573 | `declaration-track:f22af50bd31b2de86424a11e58738d61df4196b8a62c707651f772efcde4e183` |
| 49 | `theorem` | [ThresholdClosureAccepted.toRiemannHypothesis](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SevenEighthsMechanismQuarticBridge.lean/declarations/thresholdclosureaccepted-toriemannhypothesis.md) | 578 | `result-track:4984d5443a2db001d3652c4c651f376992ec5cc46d02fca76dc6a9c4b3bda31c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5bab0292644563e316128f416ae10b542a5c9f666adc7b338d023b238498a730 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
