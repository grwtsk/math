# Verification target: Source Paired Square Quadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63dcb272aab2e76ce0d1114c3dd7e23d015f125e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePairedSquareQuadrature.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePairedSquareQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63dcb272aab2e76ce0d1114c3dd7e23d015f125e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairedSquareReadout](../../../../MeasureAndIntegration/SourcePairedSquareQuadrature.lean/declarations/pairedsquarereadout.md) | 29 | `declaration-track:32396cdd029501fc024ff39d63247acc7f6aae7a1510e0a790ab60868676d8e6` |
| 2 | `theorem` | [squarePrefix_pairedTail_work](../../../../MeasureAndIntegration/SourcePairedSquareQuadrature.lean/declarations/squareprefix-pairedtail-work.md) | 34 | `result-track:2182c4fcb06e1aea2bf7c853507a7ba185e4b5b8b62da9ad6c7f6ce460960efb` |
| 3 | `theorem` | [squareTail_pairedTail_work](../../../../MeasureAndIntegration/SourcePairedSquareQuadrature.lean/declarations/squaretail-pairedtail-work.md) | 62 | `result-track:95260de0e574e3e553723f9fcafe4d307498f724747085a02051416b34056088` |
| 4 | `theorem` | [squareTailPairedWork_eq_neg_integral_pairedTail_deriv](../../../../MeasureAndIntegration/SourcePairedSquareQuadrature.lean/declarations/squaretailpairedwork-eq-neg-integral-pairedtail-deriv.md) | 78 | `result-track:af03a2da2c65c110fa7a88b3db521f4f5ffbc6e68e00faa24a99f72e9b70d159` |
| 5 | `theorem` | [squareTailPairedWork_eq_neg_readout](../../../../MeasureAndIntegration/SourcePairedSquareQuadrature.lean/declarations/squaretailpairedwork-eq-neg-readout.md) | 108 | `result-track:dd3871e164c0fa25b55b9adc3cae3d1b0d3d483bb00fcb6c36515aaaaa5e85ec` |
| 6 | `theorem` | [squareRemovedPairedWork_eq_first_square_quadrature](../../../../MeasureAndIntegration/SourcePairedSquareQuadrature.lean/declarations/squareremovedpairedwork-eq-first-square-quadrature.md) | 114 | `result-track:9f65706fc7668b52ea4026e58f2ad4a45502e288221718c54bbec342e8bb4dfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f97255a875eb2990ae66e4974b84fa057f8f347ce4952be10bede6c6cc033a9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareQuadrature/Variant8885fbead64589d063aa135cdbabd2e7cf28af882c27a121647aa4c90f672ae8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
