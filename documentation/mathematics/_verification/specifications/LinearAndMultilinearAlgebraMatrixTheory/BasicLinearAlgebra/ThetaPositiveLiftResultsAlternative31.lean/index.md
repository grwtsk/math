# Verification target: Theta Positive Lift Results Alternative31

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bf61be1e39e8bce82d82df9284dc677b37895be",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante902e1d3bdda83e48fd0f29595c92758db1c93462371c78591005caa2af2dfd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bf61be1e39e8bce82d82df9284dc677b37895be`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante902e1d3bdda83e48fd0f29595c92758db1c93462371c78591005caa2af2dfd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante902e1d3bdda83e48fd0f29595c92758db1c93462371c78591005caa2af2dfd4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiAllRankModeCriterion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiDerivativePolynomial_one_eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/declarations/thetaphiderivativepolynomial-one-eval.md) | 29 | `result-track:cffd4fd8159ae933acbb8580c9a31b2bf5cb63a463050efb1daac2221499bc81` |
| 2 | `theorem` | [thetaPhiDerivativePolynomial_two_eval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/declarations/thetaphiderivativepolynomial-two-eval.md) | 43 | `result-track:e1757afeb2a1c60fbe16bb63f54701025d12be05a878d2755c4786a820c9150f` |
| 3 | `theorem` | [thetaModeY_zero_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/declarations/thetamodey-zero-zero.md) | 58 | `result-track:44c7b8fc74655fb84b3e069d005e26c6106c269144822656d0256faee0e2add8` |
| 4 | `theorem` | [thetaModeY_one_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/declarations/thetamodey-one-zero.md) | 63 | `result-track:9bc58a74b4d3e3d235031ab167d00fa7629a8991a8bc08d475749fbc57b9c6e3` |
| 5 | `theorem` | [thetaPhiModeChoiceSignedDet_two_zero_01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/declarations/thetaphimodechoicesigneddet-two-zero-01.md) | 69 | `result-track:59f3096a6cacf062ed2b30e6b69d4653cbf6a336d986fe6e1db6e7cdee076993` |
| 6 | `theorem` | [thetaPhiModeChoice_two_zero_01_cubic_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/declarations/thetaphimodechoice-two-zero-01-cubic-pos.md) | 81 | `result-track:e80d46bc8fc39b79504e9ed8c5d37a861e916fda889e94d086af1e08d3180e2e` |
| 7 | `theorem` | [thetaPhiModeChoiceSignedDet_two_zero_01_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/declarations/thetaphimodechoicesigneddet-two-zero-01-neg.md) | 98 | `result-track:4661593c6241519477c9fd5e6545c1b7eb1a57068f09a71687170dcc31746426` |
| 8 | `theorem` | [not_thetaPhiModeChoiceSignedNonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative31.lean/declarations/not-thetaphimodechoicesignednonnegative.md) | 112 | `result-track:6d28072a2c34b18c30a44b2d997e433b416278d90fb2a9fc995b2a9ed54b35c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02dda168e78471383ad5200b02440a69093b72bc292da831b9180fe0d31dc8d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante902e1d3bdda83e48fd0f29595c92758db1c93462371c78591005caa2af2dfd4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variante902e1d3bdda83e48fd0f29595c92758db1c93462371c78591005caa2af2dfd4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
