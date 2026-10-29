# Verification target: Private V2 Input Namespaced Negative Error Mean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54440d8066b3a00ad4b509dbdc4c7a783a8489ab",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54440d8066b3a00ad4b509dbdc4c7a783a8489ab`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedPrimeWork` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negativeErrorMean](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/negativeerrormean.md) | 33 | `declaration-track:36a5411b12bde8c3f61983bc6e023b59e57db0d736cc9072fbab4b518a0ce66a` |
| 2 | `def` | [pairedErrorContrast](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/pairederrorcontrast.md) | 36 | `declaration-track:57d6026c2315124ba9f2bce6da80d2675639e36e2076b980b4a7a68a063f81e1` |
| 3 | `def` | [PairedContrastTailLowerBound](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/pairedcontrasttaillowerbound.md) | 41 | `declaration-track:bca90f656754d5812fcca91e0c06dac53980d7331f23e2150463f05b2b45d692` |
| 4 | `theorem` | [negativeMass_ge_one](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/negativemass-ge-one.md) | 45 | `result-track:5fe89c1ffcb9bd4736a32f1d02b6693283ad2ea876528e458bbb626a09cc38bc` |
| 5 | `theorem` | [negativeMass_pos](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/negativemass-pos.md) | 49 | `result-track:d865ba355c3483e16653983721d4e7de7aa5abb177f43146562061cc7ed3b14a` |
| 6 | `theorem` | [contrast_inner_eq](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/contrast-inner-eq.md) | 53 | `result-track:eb8b0535089ee757387464e9f1c12415a3f889bc88d6ff7f100c782b11c7b576` |
| 7 | `theorem` | [contrast_outer_intervalIntegrable](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/contrast-outer-intervalintegrable.md) | 68 | `result-track:5e9468176f3eb884eea66ab9d251a4d45818f27c0b2012ec42a015815a2b1609` |
| 8 | `theorem` | [contrast_integral_eq](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/contrast-integral-eq.md) | 84 | `result-track:4432bd04cf2d7301a4d5b1d21d773507923636e3de945ededfd2781963b3edec` |
| 9 | `theorem` | [pairedErrorContrast_eq](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/pairederrorcontrast-eq.md) | 101 | `result-track:3c8398dbe836ed125273d6d47d14d24b77e8ebdaabff3e74ee3efc2c8cf1ff34` |
| 10 | `theorem` | [criticalSignedWork_eq_contrast_sub_mean](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/criticalsignedwork-eq-contrast-sub-mean.md) | 107 | `result-track:9009e249ae9fc59f68018c103ffffc97ece333c02b63fb0d6edcae60ab39bd6d` |
| 11 | `theorem` | [negativeSlopeWork_abs_le_mass](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/negativeslopework-abs-le-mass.md) | 118 | `result-track:b7931f9b98d2bbed38f2928b2e278708b8ca96a857dadb99c92107fd95464ae4` |
| 12 | `theorem` | [negativeErrorMean_abs_le](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/negativeerrormean-abs-le.md) | 133 | `result-track:92c871b1bb6f8a5a195fcb060deab588e14ffabf09d30dbcfb1364cb30bbc758` |
| 13 | `theorem` | [negativeErrorMean_uniformly_bounded](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/negativeerrormean-uniformly-bounded.md) | 141 | `result-track:5c4946348713e02f479b47338b5f9742128a01d858ee62724171ec174c9b5bd5` |
| 14 | `theorem` | [firstPrimeStorageSurplus_eq_contrast](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/firstprimestoragesurplus-eq-contrast.md) | 147 | `result-track:5d01a81b3a3635ea953af3a689e493116b8606136c04519eb40d168ad7ae31a8` |
| 15 | `def` | [centeredNegativeErrorMean](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/centerednegativeerrormean.md) | 156 | `declaration-track:1c3f2bc60a08fcc1b5333460dc553416e614d3731c1b34f2aa2b5493e5d25f1f` |
| 16 | `def` | [centeredPairedErrorContrast](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/centeredpairederrorcontrast.md) | 159 | `declaration-track:812be3dac8f4a4fabece862f5c3f0a5f75ff5a215573684beb88cce340f40586` |
| 17 | `theorem` | [centeredPairedErrorContrast_eq](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/centeredpairederrorcontrast-eq.md) | 164 | `result-track:ec8b29efa5ed929b3c42d424a9de31564eb7d83e025214e40199fd4a0963815f` |
| 18 | `theorem` | [centeredNegativeErrorMean_eq](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/centerednegativeerrormean-eq.md) | 169 | `result-track:48f61ab6902cac77b5e98e166967dafc62327b76b8b6d26de67e9c9fbbed9a0e` |
| 19 | `theorem` | [criticalSignedWork_eq_centered_contrast](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/criticalsignedwork-eq-centered-contrast.md) | 176 | `result-track:00851c0c1aaf684ce9a94c339c0a78296f1a6537b980b971b798702c94de721a` |
| 20 | `theorem` | [pairedContrast_tail_iff_criticalAbel_tail](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/pairedcontrast-tail-iff-criticalabel-tail.md) | 184 | `result-track:9c886a797d639b47ef491b1cbe0a8a4af95cf980d25cdc8ca3eaded1bb4e58b2` |
| 21 | `theorem` | [mertens_residual_tail_iff_pairedContrast_tail](../../../../MeasureAndIntegration/PrivateV2InputNamespacedNegativeErrorMean.lean/declarations/mertens-residual-tail-iff-pairedcontrast-tail.md) | 205 | `result-track:6cc80f461d936fc1f42a900bdc39ec2217328d8b7d440fb662e592d01ce5cefc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee3d2bdc12186063837c4983ba6d694035d7b6109e19bc122b9de0496f313967 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV2Input/Variant7260136e863d489ed6a9e9a5bcbda01c30610be67ec020bf8ffc98cfb8030ee0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
