# Verification target: Theta Phi Rank Five Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f804893a17e1a4dd8dc59290898fff1c6292a5f7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant8403b10629650f9c754c4deda1dd9f5f3b32626069ae7d0e2bb4881a6043b478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f804893a17e1a4dd8dc59290898fff1c6292a5f7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant8403b10629650f9c754c4deda1dd9f5f3b32626069ae7d0e2bb4881a6043b478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant8403b10629650f9c754c4deda1dd9f5f3b32626069ae7d0e2bb4881a6043b478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Real.Pi.Bounds` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Exponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiAllRankModeCriterion` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_lower_endpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/declarations/exp-lower-endpoint.md) | 18 | `result-track:4cf9bf6032eab404a38a7706cb0c9821dd0233d474276fc9da83c25f30ff3b56` |
| 2 | `theorem` | [exp_upper_endpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/declarations/exp-upper-endpoint.md) | 28 | `result-track:70d34b7f5126dfd90e5d5d7382e93749d6cbcb06f7dadc9b146f2f45ff948547` |
| 3 | `theorem` | [exp_neg_pi_quarter_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/declarations/exp-neg-pi-quarter-bounds.md) | 38 | `result-track:dd3e44da0aede2a8bf05a639d81fc3ccb5c4666386a93e65e27d4f30df287a08` |
| 4 | `theorem` | [exp_neg_pi_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/declarations/exp-neg-pi-bounds.md) | 47 | `result-track:a5fe23b3b2e8674470dd0cf9732604a060de6fe9d72223b47b3879e3dba14a05` |
| 5 | `theorem` | [exp_neg_three_quarters_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/declarations/exp-neg-three-quarters-upper.md) | 64 | `result-track:8c7b29fb7d2f74eb7046e4b25e96264f3a08feeb343c67241e315827f4cfccff` |
| 6 | `theorem` | [exp_neg_seventy_five_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/declarations/exp-neg-seventy-five-upper.md) | 72 | `result-track:3ea414e53181efe0f1df6d98685b720af467f5c53b11cc3bdc45f2066f049d3d` |
| 7 | `theorem` | [tail_geometric_ratio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/declarations/tail-geometric-ratio.md) | 82 | `result-track:81e6160e1db679c0fd93b73c402144ed72547d49178de76803dacdc227082450` |
| 8 | `theorem` | [exp_neg_pi_nat_sq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/declarations/exp-neg-pi-nat-sq.md) | 95 | `result-track:6d12203c9ba602efb6aa7b7a4f43c3816b5dac2289b67b16751bbfb938597447` |
| 9 | `theorem` | [thetaPhiDerivativeModeValue_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ThetaPhiRankFiveNamespaced.lean/declarations/thetaphiderivativemodevalue-zero.md) | 106 | `result-track:bfe42a670837b7de60c2deec2507f64fcce1706e2aa377b7b18d216799ebed5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b96fec97d4b69abb4b07963613bd6557440af27978c3a051c157c8007557fe5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant8403b10629650f9c754c4deda1dd9f5f3b32626069ae7d0e2bb4881a6043b478.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPhiRankFive/Variant8403b10629650f9c754c4deda1dd9f5f3b32626069ae7d0e2bb4881a6043b478.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
