# Verification target: GRWTSK.Analysis.Inequalities.TwoHeightConsumer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39e2ef8072d1d7118000455e02cac49bf0ae3dce",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/TwoHeightConsumer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../RealFunctions/InequalitiesInRealAnalysis/TwoHeightEnclosures.lean/index.md) · [Full source](../../../../../RealFunctions/InequalitiesInRealAnalysis/TwoHeightEnclosures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39e2ef8072d1d7118000455e02cac49bf0ae3dce`.

Source path: `GRWTSK/Analysis/Inequalities/TwoHeightConsumer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/TwoHeightConsumer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 9; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Inequalities.ResidualEnclosure`](../../../../../RealFunctions/InequalitiesInRealAnalysis/ResidualEnclosure.lean/index.md) — import line 10; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [from_interval_endpoints](../../../../../RealFunctions/InequalitiesInRealAnalysis/TwoHeightEnclosures.lean/declarations/from-interval-endpoints.md) | 19 | `result-track:d8c7b891bf158f4b755b92ba2b73d126f7ef6d961fa7581a422bd82c9fb4850e` |
| 2 | `theorem` | [lower_endpoint_is_not_an_upper_bound](../../../../../RealFunctions/InequalitiesInRealAnalysis/TwoHeightEnclosures.lean/declarations/lower-endpoint-is-not-an-upper-bound.md) | 29 | `result-track:5258b73d8652e06680a55e69983ce51ace06a6250d03b753002bbfcf3ecfcf21` |
| 3 | `theorem` | [silent_green_endpoint_has_nonzero_augmented_mass](../../../../../RealFunctions/InequalitiesInRealAnalysis/TwoHeightEnclosures.lean/declarations/silent-green-endpoint-has-nonzero-augmented-mass.md) | 33 | `result-track:9f75eecf65e33a6bee39114cab404cdaeffa34239553eb8a478ee7414afc34e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f44bca93e6ac44fe7eec88b6ceb81c24674a976fc787cf68e716318a1330f42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Inequalities/TwoHeightConsumer.lean","GRWTSK/_verification/specifications/Analysis/Inequalities/TwoHeightConsumer.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
