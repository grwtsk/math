# Verification target: Source Actual Short First Prime Block Native02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84e645d2c663f7c06fd6a0dfb7b491f7608e6017",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variant5b77230d24d60994ae938349a28e7bd58028ddf377daeb0861c8c9abf31651ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84e645d2c663f7c06fd6a0dfb7b491f7608e6017`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variant5b77230d24d60994ae938349a28e7bd58028ddf377daeb0861c8c9abf31651ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variant5b77230d24d60994ae938349a28e7bd58028ddf377daeb0861c8c9abf31651ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualShortMangoldtBlock` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualShortFirstPrimeBlock](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/declarations/actualshortfirstprimeblock.md) | 23 | `declaration-track:ae13afac8c42d2d1b635ad33055ba8a7957cd193f09b1194d3e239b71da997e9` |
| 2 | `def` | [actualLongFirstPrimeBlock](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/declarations/actuallongfirstprimeblock.md) | 28 | `declaration-track:5d78b73ae4676b6b5d5d7a05c156c42a3c4c06d34f98f9b2cf5d3c0fe5733080` |
| 3 | `theorem` | [actualShortFirstPrime_unweighted_eq_theta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/declarations/actualshortfirstprime-unweighted-eq-theta.md) | 33 | `result-track:3478772f6e2ae2a5000ca31fadbff510fe1eb8c63e0248773d25e11f0a2365d5` |
| 4 | `theorem` | [actualShortFirstPrimeBlock_ge_theta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/declarations/actualshortfirstprimeblock-ge-theta.md) | 52 | `result-track:9f6e3b06b2a05b902a52748377120c262d725ebadbe6318cd57f436accba8139` |
| 5 | `theorem` | [log_le_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/declarations/log-le-scale.md) | 81 | `result-track:ea563497d92b2239612045779bf7c7b3b0880f1d2342b4201eebec98aa5d0d39` |
| 6 | `theorem` | [actualShortFirstPrimeBlock_eventually_linear_lower](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/declarations/actualshortfirstprimeblock-eventually-linear-lower.md) | 89 | `result-track:e17a6f9c96b749463239b156c278f277f78dbbefe8ccae379da27a2491862211` |
| 7 | `theorem` | [cutoff_le_inventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/declarations/cutoff-le-inventory.md) | 111 | `result-track:05607ec8c45b719984207fbbbe972897cb10805453fb3c3c5f043e835c631768` |
| 8 | `theorem` | [actualFirstPrimeMoment_eq_short_add_long](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/declarations/actualfirstprimemoment-eq-short-add-long.md) | 119 | `result-track:1d7fadd8f1dfb44263214e9a5ab3425660d82e170f2fa3f365dad88753dd155d` |
| 9 | `theorem` | [actualLongFirstPrime_with_main_eventually_below_residual_sub_linear](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualShortFirstPrimeBlockNative02.lean/declarations/actuallongfirstprime-with-main-eventually-below-residual-sub-linear.md) | 146 | `result-track:b955947f2d6880cd5a35e40a8d05bb8dfd310c701a3c5a0136b067ca9219864a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=897d5668b576cd38f66293a0446fb61759b892db91eab89b8f622a17a0560668 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variant5b77230d24d60994ae938349a28e7bd58028ddf377daeb0861c8c9abf31651ae.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualShortFirstPrimeBlockNative02/Variant5b77230d24d60994ae938349a28e7bd58028ddf377daeb0861c8c9abf31651ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
