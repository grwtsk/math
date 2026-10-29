# Verification target: GRWTSK.Analysis.Inequalities.ResidualEnclosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfeb826aad9003591d65ca4f9ed6db3def17a5d4",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/ResidualEnclosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/index.md) · [Full source](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfeb826aad9003591d65ca4f9ed6db3def17a5d4`.

Source path: `GRWTSK/Analysis/Inequalities/ResidualEnclosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/ResidualEnclosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coercive_error_bound](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/declarations/coercive-error-bound.md) | 17 | `result-track:59637322deee1c032204ad6b0909dfd40295ad5f29bd9e0870538658bdaceca7` |
| 2 | `theorem` | [perturb_enclosure](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/declarations/perturb-enclosure.md) | 33 | `result-track:a42b11ee6dceca8c0208137a7ac69731fe460a513b1a8b5fd3436a33f765975a` |
| 3 | `theorem` | [two_height_enclosure](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/declarations/two-height-enclosure.md) | 46 | `result-track:0b6479c57b6061ab6448b52976473200d006efaa0431714cbcf161328ceff2d8` |
| 4 | `theorem` | [inverse_moment_upper_of_two_height](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/declarations/inverse-moment-upper-of-two-height.md) | 53 | `result-track:82769282af037c29250eec2fdc50f27de79e0ad14b3aaa940045a78543ba1ca2` |
| 5 | `theorem` | [two_height_solve_error](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/declarations/two-height-solve-error.md) | 64 | `result-track:1bb81b46aa5fb4964c175a99ff847b0e22698368434fbdd38d46e66ad4071b04` |
| 6 | `theorem` | [three_channel_lagrange](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/declarations/three-channel-lagrange.md) | 76 | `result-track:56ec5fc58daf269e641b76f059df942b7ac4b2ceb49a95496a16c60f947226c8` |
| 7 | `theorem` | [three_channel_sq_le](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/declarations/three-channel-sq-le.md) | 80 | `result-track:f71ab5b88eb8b2704f85fc0a0d45d0b1772dfb788f0e59c95cf124796653a397` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5526b092d8733bb19a751fea5aece519f1385add7282656b8282bb31cdc8848d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Inequalities/ResidualEnclosure.lean","GRWTSK/_verification/specifications/Analysis/Inequalities/ResidualEnclosure.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
