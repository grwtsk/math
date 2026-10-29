# Verification target: Wronskian Three Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "916ebe168ab987a16f33b03e10a84433fa306985",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant214f349aec64b1fdbc4eaf7a24d325f4ab0872febcda71d76731e35c97a846d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WronskianThreeNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WronskianThreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `916ebe168ab987a16f33b03e10a84433fa306985`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant214f349aec64b1fdbc4eaf7a24d325f4ab0872febcda71d76731e35c97a846d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant214f349aec64b1fdbc4eaf7a24d325f4ab0872febcda71d76731e35c97a846d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiHigherDerivatives` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiJetPerturbation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiJet_polynomial_sum_eq_two_modes](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WronskianThreeNamespaced.lean/declarations/thetaphijet-polynomial-sum-eq-two-modes.md) | 17 | `result-track:828cf716f60a806e039f66565bfa17560e586d256684be81b706e21086b3c70f` |
| 2 | `theorem` | [thetaPhiJet_eq_two_modes_add_remainder](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WronskianThreeNamespaced.lean/declarations/thetaphijet-eq-two-modes-add-remainder.md) | 51 | `result-track:4a2fa0700ff202dcbb30c3f8ee35a19b13874e8bb620abf9ad6a89e1b555e965` |
| 3 | `theorem` | [thetaPhiJetDet_negative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WronskianThreeNamespaced.lean/declarations/thetaphijetdet-negative.md) | 62 | `result-track:41183272fb0d7ced61127903c9e8e275e719c4a1fafd6cd6eef32a74682cfcdb` |
| 4 | `theorem` | [thetaPhi_wronskian_three_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/WronskianThreeNamespaced.lean/declarations/thetaphi-wronskian-three-neg.md) | 98 | `result-track:9ed986835677c2c0f98141a13abea67238729557ccf8a46249a59c693c2fae6b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c0e94b708c9198c0b4eeb9dc255c0671c22a23a088e7b649aea01c48c6444d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant214f349aec64b1fdbc4eaf7a24d325f4ab0872febcda71d76731e35c97a846d8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/249cf08d7248b2554cfc7077909749b217b498fbbf8ef9d853f3c19b61d7d4a1WronskianThree/Variant214f349aec64b1fdbc4eaf7a24d325f4ab0872febcda71d76731e35c97a846d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
