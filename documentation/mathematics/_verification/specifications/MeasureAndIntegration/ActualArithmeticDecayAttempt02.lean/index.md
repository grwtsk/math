# Verification target: Actual Arithmetic Decay Attempt02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5c1ab335e2cd12bd9f7ba1938c314f8fb435867",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variant2e32f4d3a17262b4e5cf9ead14d31b739da0a90b0bf6edfd523956d46fbc53e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5c1ab335e2cd12bd9f7ba1938c314f8fb435867`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variant2e32f4d3a17262b4e5cf9ead14d31b739da0a90b0bf6edfd523956d46fbc53e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variant2e32f4d3a17262b4e5cf9ead14d31b739da0a90b0bf6edfd523956d46fbc53e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MangoldtLaplaceIntegrability` — import line 1; external provider; requires a separately pinned dependency.
- `ActualPrimeIntercept` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RawMangoldtDecay](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/rawmangoldtdecay.md) | 19 | `declaration-track:9e862790d788bb69adafda6348e60ac51cf368e7934d4639a1136911b67f53a0` |
| 2 | `def` | [RawPrimeDecay](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/rawprimedecay.md) | 23 | `declaration-track:29cd3eee7b5deadb5d8853ec7353768753ff185516a6b5df8da9582936a71f42` |
| 3 | `theorem` | [inverse_square_integrable](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/inverse-square-integrable.md) | 26 | `result-track:71dcfc170abd69d29ab1c45ae4eda471b3b736dba7ac0124239059c6f2794610` |
| 4 | `theorem` | [inverse_square_integral](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/inverse-square-integral.md) | 34 | `result-track:464cc083926854b1dea2dc8698c1fcb34fd8bb709c8169c89d5fd791c7904567` |
| 5 | `theorem` | [actual_remainder_measurable](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/actual-remainder-measurable.md) | 43 | `result-track:6874d8264831342ce87dae6c7ed71fbc898136e5e14c5150a2d3f9247a30e0c5` |
| 6 | `theorem` | [actual_remainder_integrable_near_origin](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/actual-remainder-integrable-near-origin.md) | 47 | `result-track:004e6aee6e27435d1d3c13341f0a3708b69bcc6e7a0fe39172c482d33c95b1b1` |
| 7 | `theorem` | [actual_remainder_integrable_tail](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/actual-remainder-integrable-tail.md) | 57 | `result-track:dc1b3ddcaf79739b945f06e0203dcae123838ff1f7274db0ec5599c094f14bf1` |
| 8 | `theorem` | [actual_remainder_integrable](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/actual-remainder-integrable.md) | 65 | `result-track:98c0cdde1c22af9dc7c4eadc509093d602347e4d97b5f0d48650ee5bc71c4ea4` |
| 9 | `theorem` | [raw_prime_decay_of_mangoldt](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/raw-prime-decay-of-mangoldt.md) | 83 | `result-track:553fa353e57f8233083915f5ec890e69a03767702b07e702f1f69060dbd59653` |
| 10 | `theorem` | [actual_prime_remainder_integrable_of_decay](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/actual-prime-remainder-integrable-of-decay.md) | 99 | `result-track:b922ba8336e66b78cdf88d3584e9f32bdf997f3a20ebfb5f8afdf63507d9703d` |
| 11 | `theorem` | [tail_norm_bound](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/tail-norm-bound.md) | 104 | `result-track:57ca674d1948c82847e85f9fb45773d0716e3ca758f8cea375c95bd30ce906b3` |
| 12 | `theorem` | [actual_remainder_tail_bound](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/actual-remainder-tail-bound.md) | 118 | `result-track:928a26fef82879c3cab3e597c002a61b1221932b6e0f49120c6be7b90eb79370` |
| 13 | `theorem` | [actual_prime_remainder_tail_bound](../../../../MeasureAndIntegration/ActualArithmeticDecayAttempt02.lean/declarations/actual-prime-remainder-tail-bound.md) | 123 | `result-track:716a597ae42e5ffa5a3b4c6ba0f1bc14e3988d36d7f73cdefb6995bd87ab60d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d672fd66bf991fdb5976ce1749f5a5489a089df7449cfc2d506c2c3f851e779 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variant2e32f4d3a17262b4e5cf9ead14d31b739da0a90b0bf6edfd523956d46fbc53e6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualArithmeticDecayAttempt02/Variant2e32f4d3a17262b4e5cf9ead14d31b739da0a90b0bf6edfd523956d46fbc53e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
