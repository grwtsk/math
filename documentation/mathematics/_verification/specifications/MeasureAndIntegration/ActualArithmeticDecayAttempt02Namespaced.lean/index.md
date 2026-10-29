# Verification target: Actual Arithmetic Decay Attempt02 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1a436e306b4a62ba18365fac92cd055d3ad2eb5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variantb187a650203668efb5c48e8e54d5637746ac9dc20b0c89a71499cbfb4e7f79bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1a436e306b4a62ba18365fac92cd055d3ad2eb5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variantb187a650203668efb5c48e8e54d5637746ac9dc20b0c89a71499cbfb4e7f79bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variantb187a650203668efb5c48e8e54d5637746ac9dc20b0c89a71499cbfb4e7f79bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MangoldtLaplaceIntegrability` — import line 6; external provider; requires a separately pinned dependency.
- `ActualPrimeIntercept` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RawMangoldtDecay](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/rawmangoldtdecay.md) | 27 | `declaration-track:60bad2cbe558066dd226fde3f4e4cdf5e20a43bc8af1832f21174db9bdf0647e` |
| 2 | `def` | [RawPrimeDecay](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/rawprimedecay.md) | 31 | `declaration-track:52c446ada7c18578b95483839a79f446f6972ac4be149c9c7d17eeeb00153cc2` |
| 3 | `theorem` | [inverse_square_integrable](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/inverse-square-integrable.md) | 34 | `result-track:5ac394a971053e4372f28c93dd1cc85c3a4692d99f1aeef0f0930a7d386fdac7` |
| 4 | `theorem` | [inverse_square_integral](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/inverse-square-integral.md) | 42 | `result-track:822fbe872087cc242b26519062d3e559f9a755bca93fc91105a120713c8bdcd2` |
| 5 | `theorem` | [actual_remainder_measurable](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/actual-remainder-measurable.md) | 51 | `result-track:c83050565db04fa5b21bcb3300d8ba8a4e3dd47e08050f1bc168376dadc9b200` |
| 6 | `theorem` | [actual_remainder_integrable_near_origin](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/actual-remainder-integrable-near-origin.md) | 55 | `result-track:e17f98cfeaced8737cbe5da9a4f421e7e0720069e87fa805be2ec1526741cd35` |
| 7 | `theorem` | [actual_remainder_integrable_tail](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/actual-remainder-integrable-tail.md) | 65 | `result-track:a0f469ce491ba42d47ef47c9848ca47e057068efe3bff875f06eeb21048e606b` |
| 8 | `theorem` | [actual_remainder_integrable](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/actual-remainder-integrable.md) | 73 | `result-track:620cdab029c121ee9f3397c1fa7f3b98123dacff7a5f178f21042a45672f26f9` |
| 9 | `theorem` | [raw_prime_decay_of_mangoldt](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/raw-prime-decay-of-mangoldt.md) | 91 | `result-track:0d7566d4389e91592261f6a8ff2c5528d465022dbec6edd3b2e23d4b589dfb34` |
| 10 | `theorem` | [actual_prime_remainder_integrable_of_decay](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/actual-prime-remainder-integrable-of-decay.md) | 107 | `result-track:2eb78f7bafa81951aa74cdaa56cd44962a61c8ead98d43348dd0dc7dc12f6ebf` |
| 11 | `theorem` | [tail_norm_bound](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/tail-norm-bound.md) | 112 | `result-track:eeb7bc577ece55de4f4afc5d288de5a69c5b5fc953764a2e02d8f8eb90fe1ff2` |
| 12 | `theorem` | [actual_remainder_tail_bound](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/actual-remainder-tail-bound.md) | 126 | `result-track:7d37b5c72cb39d15c060ebb445f255e7d68dfc9d4aff279d2e44d2d0a24946c2` |
| 13 | `theorem` | [actual_prime_remainder_tail_bound](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02Namespaced.lean/declarations/actual-prime-remainder-tail-bound.md) | 131 | `result-track:0d35ddd9d4586bc8199f3092bc94f4d1eeec5f3e5004caf9867c96866fd1aff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12bd739d352096e94f3f4cd92959b8703d081a5b987b76afa423098572309b17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variantb187a650203668efb5c48e8e54d5637746ac9dc20b0c89a71499cbfb4e7f79bc.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variantb187a650203668efb5c48e8e54d5637746ac9dc20b0c89a71499cbfb4e7f79bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
