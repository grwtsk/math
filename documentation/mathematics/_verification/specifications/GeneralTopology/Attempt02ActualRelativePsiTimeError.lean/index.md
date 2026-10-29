# Verification target: Attempt02 Actual Relative Psi Time Error

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51d578f053d19975c8625c4950d8212573439f20",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant562fa275b019945a4eac298f388b6c7a8f1f5f68fba19adc253a51cb9045980f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Attempt02ActualRelativePsiTimeError.lean/index.md) · [Full source](../../../../GeneralTopology/Attempt02ActualRelativePsiTimeError.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51d578f053d19975c8625c4950d8212573439f20`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant562fa275b019945a4eac298f388b6c7a8f1f5f68fba19adc253a51cb9045980f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant562fa275b019945a4eac298f388b6c7a8f1f5f68fba19adc253a51cb9045980f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MediumPNT` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualXiErrorCriticalCovariance` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Asymptotics` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualRelativePsiTimeError](../../../../GeneralTopology/Attempt02ActualRelativePsiTimeError.lean/declarations/actualrelativepsitimeerror.md) | 22 | `declaration-track:c24f08eb2aa21ff4a941232358eddba5800e09010c44a75e292a3b0e2135eae3` |
| 2 | `theorem` | [actualRelativePsiTimeError_eq_one_convolution](../../../../GeneralTopology/Attempt02ActualRelativePsiTimeError.lean/declarations/actualrelativepsitimeerror-eq-one-convolution.md) | 26 | `result-track:5ecd4254ae44ade1520e4c17ea98e7e7b0ea891afdd9b51916da02651ba2dc33` |
| 3 | `theorem` | [actualRelativePsiTimeError_intervalIntegrable](../../../../GeneralTopology/Attempt02ActualRelativePsiTimeError.lean/declarations/actualrelativepsitimeerror-intervalintegrable.md) | 41 | `result-track:c745bb4c9fdb1a7d18dbf7c972371aae4e8b67e7c13f88da8a5d88b97307c9b0` |
| 4 | `theorem` | [actualRelativePsiTimeError_isBigO](../../../../GeneralTopology/Attempt02ActualRelativePsiTimeError.lean/declarations/actualrelativepsitimeerror-isbigo.md) | 62 | `result-track:29f1aa266b92ac5ea94e7fc114908a57ed1935fb292463d59d3c3df85044b2fb` |
| 5 | `theorem` | [actualRelativePsiTimeError_tendsto_zero](../../../../GeneralTopology/Attempt02ActualRelativePsiTimeError.lean/declarations/actualrelativepsitimeerror-tendsto-zero.md) | 84 | `result-track:59c44547180ae831467760b286adeb96e1e0db5ecdef84d1756ea0003153706f` |
| 6 | `theorem` | [actualRelativePsiTimeError_integrableOn](../../../../GeneralTopology/Attempt02ActualRelativePsiTimeError.lean/declarations/actualrelativepsitimeerror-integrableon.md) | 95 | `result-track:6b8cbb290ebfbb4572c89b60f5234d1a0fe6c24900dc032e4a22f7452f426473` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3696f89b3a7f8b0dc32ca41b1a8e76a1d994aadf430cdebc8c8e1230c73f1d66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant562fa275b019945a4eac298f388b6c7a8f1f5f68fba19adc253a51cb9045980f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant562fa275b019945a4eac298f388b6c7a8f1f5f68fba19adc253a51cb9045980f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
