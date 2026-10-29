# Verification target: Source Actual Zero Moving Tail Native02 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4d8d5b72665ee229be187f361784100b8d386a1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative02/Variantc4a7ffda1d13a458938dbb3d132b2dd62be10e0cb9c0855b222787d9a4027b02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4d8d5b72665ee229be187f361784100b8d386a1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative02/Variantc4a7ffda1d13a458938dbb3d132b2dd62be10e0cb9c0855b222787d9a4027b02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative02/Variantc4a7ffda1d13a458938dbb3d132b2dd62be10e0cb9c0855b222787d9a4027b02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualZeroTailBudget` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualZeroArithmeticDictionary` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualZeroMovingRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/declarations/actualzeromovingradius.md) | 27 | `declaration-track:95f048bb6f77bbe1830c2f548822159997375a57f8be66a8b8c1e337c08c54ad` |
| 2 | `def` | [actualZeroMovingEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/declarations/actualzeromovingenvelope.md) | 30 | `declaration-track:7d1a2f9428066b84b580197e6992f538b8f64fff6a083d9ee1d2bf991944d1bf` |
| 3 | `theorem` | [actualZeroMovingHeight_ge_four](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/declarations/actualzeromovingheight-ge-four.md) | 35 | `result-track:d0aa756b7dfb996f0945813276aba06eeb91dd13781c8342785df5d966e8401e` |
| 4 | `theorem` | [actualZeroMovingTail_norm_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/declarations/actualzeromovingtail-norm-bound.md) | 47 | `result-track:59553b7da5c929e0ac130dfefadf612a915a50cb41bebc0dcde957345b449b52` |
| 5 | `theorem` | [envelope_le_inverse_eighth](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/declarations/envelope-le-inverse-eighth.md) | 72 | `result-track:05dd44496bf770836194969958e9008c18481ef4543eb67f0725e966c3e59451` |
| 6 | `theorem` | [actualZeroMovingTail_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/declarations/actualzeromovingtail-tendsto-zero.md) | 96 | `result-track:e98ae22d30a747fd4c1d9f74d0561c9dac361bf5ddcaed102a3a6535d3955d03` |
| 7 | `theorem` | [actualFullZeroContribution_sub_movingHead](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/declarations/actualfullzerocontribution-sub-movinghead.md) | 109 | `result-track:2299c3730f63c8ed7deccba429dacecec860dde76c0e406e2e5a9246dc69182c` |
| 8 | `theorem` | [actualSourceQuadraticValue_sub_movingHead](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualZeroMovingTailNative02Namespaced.lean/declarations/actualsourcequadraticvalue-sub-movinghead.md) | 116 | `result-track:0133a5be14f08c81ab1f3e229f47a3328f361c63cd389febeb4cdb1447ddb17e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e7d55ec1c0ed91f09869044f923ccb25952c6511321d1a8c08e6ee95ae69735 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative02/Variantc4a7ffda1d13a458938dbb3d132b2dd62be10e0cb9c0855b222787d9a4027b02.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroMovingTailNative02/Variantc4a7ffda1d13a458938dbb3d132b2dd62be10e0cb9c0855b222787d9a4027b02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
