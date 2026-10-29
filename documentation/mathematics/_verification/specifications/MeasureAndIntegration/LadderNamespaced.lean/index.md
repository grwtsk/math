# Verification target: Ladder Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67bfeaf8b1a73660ec2503c5d21e1b46e6be2607",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LadderNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LadderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67bfeaf8b1a73660ec2503c5d21e1b46e6be2607`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRatioTwo` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_thetaTail](../../../../MeasureAndIntegration/LadderNamespaced.lean/declarations/differentiable-thetatail.md) | 18 | `result-track:3f4dd78adb7ad2fad3397c49e37ed63d81ba7e1f88feef49b8d6efdf7979e480` |
| 2 | `theorem` | [deriv_thetaTail_integrableOn](../../../../MeasureAndIntegration/LadderNamespaced.lean/declarations/deriv-thetatail-integrableon.md) | 24 | `result-track:9ce7d29844fd8d0c84c7feb6099a31c4b5b3a39ad0e440f3246061e56a4cf46b` |
| 3 | `theorem` | [thetaTail_succ_eq_integral](../../../../MeasureAndIntegration/LadderNamespaced.lean/declarations/thetatail-succ-eq-integral.md) | 33 | `result-track:1973bad54205cd0d19a6415d66031f9925f4ac7f34e722866aa38dccc266ddc2` |
| 4 | `theorem` | [thetaTail_succ_integral_add](../../../../MeasureAndIntegration/LadderNamespaced.lean/declarations/thetatail-succ-integral-add.md) | 44 | `result-track:0ace27489be143dacc238a1748c5c2e98e021add80d1545b398c9e19283ff102` |
| 5 | `theorem` | [thetaTail_logSlope_antitone](../../../../MeasureAndIntegration/LadderNamespaced.lean/declarations/thetatail-logslope-antitone.md) | 50 | `result-track:8385be8bb5eb7b2bf51e192ba6d89777ba1cd21c95e1aa6deb89559b4c07d84b` |
| 6 | `theorem` | [thetaTail_succ_div_antitone](../../../../MeasureAndIntegration/LadderNamespaced.lean/declarations/thetatail-succ-div-antitone.md) | 71 | `result-track:5bf45379a8b88d87541e2582473ed4be38b9f15268bb2c48218d270446b50482` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e4d0586b48a5994527e24789035399133cb67fb59c4a67e41199ccc138786ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/960e0ebcd37bd458a4c11518c685ba09f6e5c54896bffcd00bbbd2b4c452bde2Ladder/Variantc9c4b4a001f1f1b506c5bd66186cfaf4418683c5861ca902ffe5b17cbf580c22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
