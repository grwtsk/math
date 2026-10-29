# Verification target: Actual Critical Zero Magnitude

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71f36ea1ff0ef894c7ad87b474917523cb21f9e7",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Decbdb6590ab4108ActualCriticalZeroMagnitude/Variantba91b62c0f29fbe2fae48447847d55dcb34bc0348d32a3082bb483eeb4a99fb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualCriticalZeroMagnitude.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualCriticalZeroMagnitude.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71f36ea1ff0ef894c7ad87b474917523cb21f9e7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Decbdb6590ab4108ActualCriticalZeroMagnitude/Variantba91b62c0f29fbe2fae48447847d55dcb34bc0348d32a3082bb483eeb4a99fb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Decbdb6590ab4108ActualCriticalZeroMagnitude/Variantba91b62c0f29fbe2fae48447847d55dcb34bc0348d32a3082bb483eeb4a99fb0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCriticalOrdinateBudget` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualZeroSixMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualCriticalZeroMagnitude.lean/declarations/actualzerosixmass.md) | 17 | `declaration-track:e47584f1c1a6047765a4c3e91abd5def19e5ea966a15041d95f62fb2d896f985` |
| 2 | `theorem` | [actualZeroSixMass_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualCriticalZeroMagnitude.lean/declarations/actualzerosixmass-nonneg.md) | 22 | `result-track:1517e2834a2aa2fca15a5e85944c0500abfa5ea5f44a8716d96d6bd669b2e0ec` |
| 3 | `theorem` | [actual_finite_reciprocal_six_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualCriticalZeroMagnitude.lean/declarations/actual-finite-reciprocal-six-le.md) | 28 | `result-track:bb5a4ce608f0f099d5e5210ed64de2fda30f462e40ece839844de863451d7a9e` |
| 4 | `theorem` | [actualCriticalZeroHeightHead_uniform_ninth_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualCriticalZeroMagnitude.lean/declarations/actualcriticalzeroheighthead-uniform-ninth-bound.md) | 61 | `result-track:1be9d1899aa2e47992105d1233257dc74515f56924c36660b847d3ca005f0bc2` |
| 5 | `theorem` | [actualCriticalZeroHeightHead_real_uniform_ninth_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualCriticalZeroMagnitude.lean/declarations/actualcriticalzeroheighthead-real-uniform-ninth-bound.md) | 97 | `result-track:2730dbf43daf37eba8f8eda1daeb64c0209c4a17721be161aa06f84dae640ccf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6289494a2b5802c5276173d14be2c0253b5dacc5cfe82f4c105ca60d3efc8f49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Decbdb6590ab4108ActualCriticalZeroMagnitude/Variantba91b62c0f29fbe2fae48447847d55dcb34bc0348d32a3082bb483eeb4a99fb0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Decbdb6590ab4108ActualCriticalZeroMagnitude/Variantba91b62c0f29fbe2fae48447847d55dcb34bc0348d32a3082bb483eeb4a99fb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
