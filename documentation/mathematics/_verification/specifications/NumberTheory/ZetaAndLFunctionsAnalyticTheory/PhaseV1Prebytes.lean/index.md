# Verification target: Phase V1 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8777a582e925aecc3c6b5e2c0babe512c69a6239",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseV1Prebytes/Variantafccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8777a582e925aecc3c6b5e2c0babe512c69a6239`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseV1Prebytes/Variantafccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseV1Prebytes/Variantafccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symmetricPhaseMultiplier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/symmetricphasemultiplier.md) | 24 | `declaration-track:e25d84dddf7cb0753022ffaf2479b526afd716a788fc9edee74e3e709ad62591` |
| 2 | `theorem` | [symmetricPhaseMultiplier_apply](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/symmetricphasemultiplier-apply.md) | 29 | `result-track:c196db8374d3c93858ad4e77e85a53fd46ce48e27a77856797ebff82c97ae3a6` |
| 3 | `theorem` | [fourier_symmetricTranslation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/fourier-symmetrictranslation.md) | 34 | `result-track:36ece0da74c642b385a80fdee09f5872fa2933937c21d94a35340ca8afe582fc` |
| 4 | `theorem` | [translationPhase_half_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/translationphase-half-sum.md) | 41 | `result-track:626c65d565b5438fc0c99e3a366edc3f8b6e9701c28e487746e5a5b0ea6ebfaa` |
| 5 | `theorem` | [symmetricPhaseMultiplier_coe_ae](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/symmetricphasemultiplier-coe-ae.md) | 51 | `result-track:2ec1f214d981cef13f612ca1a16d011b5d7d5d9afda0f83074f2920231bcfa0b` |
| 6 | `def` | [mangoldtFourierSymbol](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/mangoldtfouriersymbol.md) | 66 | `declaration-track:6c56cce708a3d1a48cd7ec59dfea8ed2137ac4107cf7ed64b39cb36b734e2e0d` |
| 7 | `def` | [mangoldtFourierMultiplier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/mangoldtfouriermultiplier.md) | 71 | `declaration-track:132ca25cedd25949ddf653320cd5403e2ba229576fb3f172577c6a843e9c652e` |
| 8 | `theorem` | [mangoldtFourierMultiplier_apply](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/mangoldtfouriermultiplier-apply.md) | 76 | `result-track:2c104c737c728c9dda4488075e2cc19fbe3a2bac33e1a186e7d2854985249667` |
| 9 | `theorem` | [fourier_mangoldtInteraction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/fourier-mangoldtinteraction.md) | 82 | `result-track:50cab3fdee445a6e7de2960af78d77cd29788dccad5ca58c5f824e6630a2ee89` |
| 10 | `theorem` | [mangoldtFourierMultiplier_coe_ae](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PhaseV1Prebytes.lean/declarations/mangoldtfouriermultiplier-coe-ae.md) | 89 | `result-track:46d2c595270438dbf45c5d4b9e1fa999fa47cd65354e69e1fa0f60a04a4bb9a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3527937294714319e6c4f45a9402383852ca7a56ff395e1bf599659442cb37ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseV1Prebytes/Variantafccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseV1Prebytes/Variantafccfdc9231c322e3481c27f844d184ef33ca989d244b85a51830a14aea406d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
