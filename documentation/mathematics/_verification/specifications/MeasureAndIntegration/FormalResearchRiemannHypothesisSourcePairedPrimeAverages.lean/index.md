# Verification target: Formal Research Riemann Hypothesis Source Paired Prime Averages

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38551a259e68ad118b8dd9e82f8f4090fc76ce6a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38551a259e68ad118b8dd9e82f8f4090fc76ce6a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeWork` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negativeErrorMean](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/negativeerrormean.md) | 25 | `declaration-track:480e99711c437e74c7f4b2329ff6347563549c0b5282a06f6a537c30e33735f5` |
| 2 | `def` | [pairedErrorContrast](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/pairederrorcontrast.md) | 28 | `declaration-track:f93d2038f9b8cb21c1fc083b7978b67184176df374fbf0ae6b44f63e297c83b1` |
| 3 | `def` | [PairedContrastTailLowerBound](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/pairedcontrasttaillowerbound.md) | 33 | `declaration-track:e1b07db856db4f4fae2fed755dbb5bcd34a38d65bb1b336a22e55b982d910396` |
| 4 | `theorem` | [negativeMass_ge_one](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/negativemass-ge-one.md) | 37 | `result-track:7432122e32899ccbbc4de39d39a73236301e2ee1379078f69ac9dfb995b738ab` |
| 5 | `theorem` | [negativeMass_pos](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/negativemass-pos.md) | 41 | `result-track:e394278adadf446531a4127820e382dacb1ef71392489e941b13f1cce0a87f73` |
| 6 | `theorem` | [contrast_inner_eq](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/contrast-inner-eq.md) | 45 | `result-track:9c76ca1f7b0139d087860e877e38c438c15615fded09319225d5a08f6076e921` |
| 7 | `theorem` | [contrast_outer_intervalIntegrable](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/contrast-outer-intervalintegrable.md) | 60 | `result-track:8eb1f37bdcbe41bd1656db36e924c3111f241ef38abdf841a29904189cf683f8` |
| 8 | `theorem` | [contrast_integral_eq](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/contrast-integral-eq.md) | 76 | `result-track:cf4e80b397dbb5039d6ffb337227bf0c5fa76f91d5e8aca8d6ade30ff4cc8c8b` |
| 9 | `theorem` | [pairedErrorContrast_eq](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/pairederrorcontrast-eq.md) | 93 | `result-track:98db4b2189b8459eebc7f8fe0f09ae93a6afd638c8ad9d6d03d5dcb844090a80` |
| 10 | `theorem` | [criticalSignedWork_eq_contrast_sub_mean](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/criticalsignedwork-eq-contrast-sub-mean.md) | 99 | `result-track:17ae608b4ac14057eba309650d5e8cee84c3abb69f54a238786754df14a86006` |
| 11 | `theorem` | [negativeSlopeWork_abs_le_mass](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/negativeslopework-abs-le-mass.md) | 110 | `result-track:fabaac95b750be93b0ed9d8977d769db01f65815621f031b84016e5a6081365c` |
| 12 | `theorem` | [negativeErrorMean_abs_le](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/negativeerrormean-abs-le.md) | 125 | `result-track:96697cc77ac4174422649a2cf882308ed2058f00bf731c42b9aa3a87f2722d14` |
| 13 | `theorem` | [negativeErrorMean_uniformly_bounded](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/negativeerrormean-uniformly-bounded.md) | 133 | `result-track:6619d27b8cc9f807e4d8c680f7e8e5d4202d222369035e6975e018840275b352` |
| 14 | `theorem` | [firstPrimeStorageSurplus_eq_contrast](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/firstprimestoragesurplus-eq-contrast.md) | 139 | `result-track:bdaccb334760eb622e35e4edac43702e8c0ed433642cc9f8b85b5da209fabaab` |
| 15 | `theorem` | [primeError_difference_window](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/primeerror-difference-window.md) | 149 | `result-track:6f5734b7f185c4b99471581e7399db3cae37de1f20dea7220f3e95d2996cbd53` |
| 16 | `theorem` | [pairedErrorContrast_eq_prime_window](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/pairederrorcontrast-eq-prime-window.md) | 155 | `result-track:9012cd16d30c81653ce80870aac8ccc7b991a0a905df0435781b2e89f1f56827` |
| 17 | `theorem` | [primeError_difference_before_first](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/primeerror-difference-before-first.md) | 163 | `result-track:5d59d8064f5a5309834238dff48a6b402ba4754948e95f0bb8bb8ae5bffb0f9c` |
| 18 | `theorem` | [primeError_negative_difference_fixture](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/primeerror-negative-difference-fixture.md) | 170 | `result-track:1efa2b26daf065b9a385f92ed2936c475e613c0b95b5ca9fef845049d758caf2` |
| 19 | `def` | [centeredNegativeErrorMean](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/centerednegativeerrormean.md) | 177 | `declaration-track:b9e24819c6a7dbe2befc1771c1a9e2fdb9db0814aedafe98a5c18df1ee50c62f` |
| 20 | `def` | [centeredPairedErrorContrast](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/centeredpairederrorcontrast.md) | 180 | `declaration-track:96446b0837e710d0629ee63045470a90ddca425376d542b568d921b5eca5ecda` |
| 21 | `theorem` | [centeredPairedErrorContrast_eq](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/centeredpairederrorcontrast-eq.md) | 185 | `result-track:59de388b43bfe3a280e32f2b43f6f3eb693356b0d520804ddc366e5447798d6c` |
| 22 | `theorem` | [centeredNegativeErrorMean_eq](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/centerednegativeerrormean-eq.md) | 190 | `result-track:cd8690b844f114ce124206b5baded4ce1ecf0fb49b98917e67d2b48458518fe9` |
| 23 | `theorem` | [criticalSignedWork_eq_centered_contrast](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/criticalsignedwork-eq-centered-contrast.md) | 197 | `result-track:29c1b2ef15b1d2198f4f494c2de699cfd75a9af20e70dfad723feb114991978c` |
| 24 | `theorem` | [pairedContrast_tail_iff_criticalAbel_tail](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/pairedcontrast-tail-iff-criticalabel-tail.md) | 205 | `result-track:fc3bebab225d5faf46b59e4c3b401ef945f63e5365794f916b90674c7012cf96` |
| 25 | `theorem` | [mertens_residual_tail_iff_pairedContrast_tail](../../../../MeasureAndIntegration/FormalResearchRiemannHypothesisSourcePairedPrimeAverages.lean/declarations/mertens-residual-tail-iff-pairedcontrast-tail.md) | 226 | `result-track:ce43b83725a1074ad996eb0ed6256067b4acd8c62ba7e25c95e0aab413c66310` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e8a683aa1245d61f6630df7b0a7c635c253d2108d6a31e36f94941bc2ce6719 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedPrimeAverages/Variantf22ae582cb88f239c1d3ede4782432afe4dcb2803da0f3d947b11a59b1aa81e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
