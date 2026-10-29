# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PrimeGramQuarticExtraction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "509ccd569ebd58c92c3ca526b25987716d1dda14",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `509ccd569ebd58c92c3ca526b25987716d1dda14`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SevenEighthsMechanismTrace`](../../../../../../GeneralTopology/SevenEighthsMechanismTrace.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimePowerGramStage](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/finiteprimepowergramstage.md) | 29 | `declaration-track:2bba4ee407f023a982cece03ba4acdc661a19bd3a35c028f4d7f43df845b4820` |
| 2 | `theorem` | [nonnegative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/nonnegative.md) | 39 | `result-track:0a6b49a45f6d765629ec994902d4ff94e7e3193cddec62bd5d6ff37f35887fd9` |
| 3 | `structure` | [PrimeGramExtractionAtZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/primegramextractionatzero.md) | 46 | `declaration-track:f36394d0f23ae5906c2fc0c8e7771a013dc643e649ae6fc47658f50a15476bf8` |
| 4 | `def` | [PrimeGramExtractionAtZero.toQuarticExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/primegramextractionatzero-toquarticextraction.md) | 58 | `declaration-track:1ba9c3c3df0e6202d38a99499c6a9b5caf04acf51596004c2d8c1eb5e6c3d64e` |
| 5 | `def` | [PrimeGramQuarticClaim](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/primegramquarticclaim.md) | 70 | `declaration-track:18b8cf2fd70beeba53663cc891cb0b5f809e1938a61bd4f6a4545915f457c4e3` |
| 6 | `structure` | [SourceBoundPrimeGramExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/sourceboundprimegramextraction.md) | 73 | `declaration-track:ad81636afb39e260bff0fcbdbe615d69acdc70d925285b3cddf2649bd8458084` |
| 7 | `def` | [primeQuarticClaim_of_primeGramQuarticClaim](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/primequarticclaim-of-primegramquarticclaim.md) | 78 | `declaration-track:a1df0620ed7d4e5cfd5dcb521c441568c512caa053cca9097e50355ab4e70810` |
| 8 | `theorem` | [riemannHypothesis_of_sourceBoundPrimeGramExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/riemannhypothesis-of-sourceboundprimegramextraction.md) | 83 | `result-track:011199d4c9f0e175ae1e7325d2335a04dce5463c80774c70202bd3cf0cf0ffab` |
| 9 | `structure` | [LocalPrimeGramExtractor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/localprimegramextractor.md) | 95 | `declaration-track:3ea697d512919fbdd93002515bb006a635de9d698ab876b5d9f8afc863ae7794` |
| 10 | `def` | [SourceBoundMechanismBridgeAccepted.toPrimeGramExtraction](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/sourceboundmechanismbridgeaccepted-toprimegramextraction.md) | 98 | `declaration-track:61f3c634eb7216cd2ef688327c1a191206a86de32cb97e3cbfb8312fd0d064dd` |
| 11 | `structure` | [PrimeGramExtractionAccepted](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/primegramextractionaccepted.md) | 108 | `declaration-track:e8d307063e04ad13a4b05c3dd9f48df98141ad9245e6785938ae153d4c0bbf3f` |
| 12 | `theorem` | [PrimeGramExtractionAccepted.toRiemannHypothesis](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PrimeGramQuarticExtraction.lean/declarations/primegramextractionaccepted-toriemannhypothesis.md) | 111 | `result-track:683583535c479c8521536f8d243138d63e5ef3ee9c64849825855b00382583c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fda709a2312ed8ebd47f5a98904594c00101ef1c15d88004746dfd2758d3e48e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/PrimeGramQuarticExtraction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
