# Verification target: Fourier Poisson Summation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67d7184c603604e4d534fac30fa5c00f2abd91ad",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67d7184c603604e4d534fac30fa5c00f2abd91ad`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Real.fourierCoeff_tsum_comp_add](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/declarations/real-fouriercoeff-tsum-comp-add.md) | 51 | `result-track:72bc1106e73ddb1595b4b13b0bdaaa2dd5c4fc9bc4286fa18723e205fd6530d5` |
| 2 | `theorem` | [Real.tsum_eq_tsum_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/declarations/real-tsum-eq-tsum-fourier.md) | 102 | `result-track:cfdf40a0817561c12fa5f0ca956c6426850f7fde9ef38d6d13aedfc06f15aa26` |
| 3 | `theorem` | [isBigO_norm_Icc_restrict_atTop](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/declarations/isbigo-norm-icc-restrict-attop.md) | 124 | `result-track:a382f4e09b21a3b7cefc85149dc238aa6c639c8638a2fee62081b91b103c91ae` |
| 4 | `theorem` | [isBigO_norm_Icc_restrict_atBot](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/declarations/isbigo-norm-icc-restrict-atbot.md) | 152 | `result-track:bb933aeda9c0949b1d02bc5a5562c6ddb0fd0e5af7f1426fce319eaf7ce03057` |
| 5 | `theorem` | [isBigO_norm_restrict_cocompact](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/declarations/isbigo-norm-restrict-cocompact.md) | 172 | `result-track:68a9a06c36a1ce3b895d2a26cf20ecdde3dad69e4c1316945826dbe5de4b690a` |
| 6 | `theorem` | [Real.tsum_eq_tsum_fourier_of_rpow_decay_of_summable](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/declarations/real-tsum-eq-tsum-fourier-of-rpow-decay-of-summable.md) | 194 | `result-track:6067a5dec4bf886013e06801ebe08b36d863093b31a163123e3b6b5dd7ca725c` |
| 7 | `theorem` | [Real.tsum_eq_tsum_fourier_of_rpow_decay](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/declarations/real-tsum-eq-tsum-fourier-of-rpow-decay.md) | 205 | `result-track:3fd6752a40568c43ab5e5464055d65766e544e5b2b47d1452bc0afdffe3b7e62` |
| 8 | `theorem` | [SchwartzMap.tsum_eq_tsum_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierPoissonSummationPublic.lean/declarations/schwartzmap-tsum-eq-tsum-fourier.md) | 219 | `result-track:552cbde8676d315a2756187a01f0d70e0d2d1f113843182678be196ac13ae2a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11a0d78cd4a26d81073faec80af811cf38619de181a648f0f35f13af4921e6b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/PoissonSummation/Variantc65117e5e77d1a208d9094c1d9aa54094818dac9572adce9cf03f871680fcc29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
