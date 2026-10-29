# Verification target: Formal Research Riemann Hypothesis Source Paired Tail Prime Block Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05f6e406c262b178f32a5d8a947d2ab3f851ad81",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variant446931ae468c6693c3fa0d0639cfd2467ad25f517567671e3bf0cce23e965e6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05f6e406c262b178f32a5d8a947d2ab3f851ad81`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variant446931ae468c6693c3fa0d0639cfd2467ad25f517567671e3bf0cce23e965e6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variant446931ae468c6693c3fa0d0639cfd2467ad25f517567671e3bf0cce23e965e6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [earlyPrimeBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/earlyprimeblock.md) | 34 | `declaration-track:2cfd998e01d1ecb0b31bf36d16f164da0acb0b0c5304fb8172c2386569dd9be4` |
| 2 | `def` | [complementaryPrimeBlocks](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/complementaryprimeblocks.md) | 38 | `declaration-track:2c7440da41ae35ad3e93d32b3483b3b14afcff2a77ab0c697346876712e627d8` |
| 3 | `theorem` | [earlyCorrelation_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/earlycorrelation-ge.md) | 43 | `result-track:dc903808238761f2a884412973ab19a363973cb8ea4f251c6b2ce404aa17583d` |
| 4 | `theorem` | [earlyTailTest_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/earlytailtest-le.md) | 53 | `result-track:a9cb2d586f7551cb04f58788f5445b06c01cbf85bed5283c875405263f044de2` |
| 5 | `theorem` | [earlyPrimeBlock_le_mass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/earlyprimeblock-le-mass.md) | 78 | `result-track:2d9a0f5ffbd25df2ec681a896b6fc64aa8711df29e8dcab1cf3e41071c465e67` |
| 6 | `theorem` | [earlyPrimeMass_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/earlyprimemass-ge.md) | 97 | `result-track:ec27fe7596dbc69197de5cc300b604b6d6faa2a7463ad6eedf6380adc50d32d7` |
| 7 | `theorem` | [earlyPrimeBlock_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/earlyprimeblock-le.md) | 106 | `result-track:1d3a1d2a2331c945ea415c408286b72ca17241af9b62cb76aef782ca4b87cf50` |
| 8 | `theorem` | [earlyPrimeBlock_eventual_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/earlyprimeblock-eventual-bound.md) | 119 | `result-track:f226a3dd6a347b75885b76d435abde4d393c91da4f0b5d35ecf4258905ff36ce` |
| 9 | `theorem` | [primeSum_eq_early_add_complement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/primesum-eq-early-add-complement.md) | 129 | `result-track:f799c12722fc8c1d01c83e0df2dce86d8749b924abb754692e4ce6405d5a37b0` |
| 10 | `theorem` | [complementary_repayment_of_tail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlockNamespaced.lean/declarations/complementary-repayment-of-tail.md) | 138 | `result-track:6f3ff1389138c03235c53266d4963624f4cdff676750687371183916e570ce93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=561e60e0f5526938ed28a6a4947a24baac6b29eaadbe8a7dd57ccfc94f2b10e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variant446931ae468c6693c3fa0d0639cfd2467ad25f517567671e3bf0cce23e965e6a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variant446931ae468c6693c3fa0d0639cfd2467ad25f517567671e3bf0cce23e965e6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
