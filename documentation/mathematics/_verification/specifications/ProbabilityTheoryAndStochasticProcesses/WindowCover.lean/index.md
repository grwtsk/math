# Verification target: Window Cover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5332285c847914cc9290e4b8f0e73c70a89e47b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/WindowCover/Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5332285c847914cc9290e4b8f0e73c70a89e47b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/WindowCover/Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/WindowCover/Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.Generator` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlobalWindowSystem](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/globalwindowsystem.md) | 22 | `declaration-track:5c89ddc77890617e1804e3a217016a5f4ce491c4324cc5365b83fd10d281bb65` |
| 2 | `def` | [kappa](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/kappa.md) | 48 | `declaration-track:21ff388ff3523bcc7d2d53a39a1b191dc48e60d051b47c795ec64546e1128104` |
| 3 | `theorem` | [mem_kappa_iff](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/mem-kappa-iff.md) | 52 | `result-track:88a27f9d37744de1700feeb18f700678dbf893cb9cee3c3b3d8e41e42c417bae` |
| 4 | `theorem` | [kappa_query_order_independent](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/kappa-query-order-independent.md) | 63 | `result-track:dbf993da06a8f5ef84bec44f7a2cbbe61c7519a3f3b9eb4650861437e3b0acdc` |
| 5 | `def` | [denominator](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/denominator.md) | 69 | `declaration-track:4e490806caec21ab9ed0a6ca3188e61f94415e1c0723e983d8dc5e889645a760` |
| 6 | `theorem` | [denominator_pos](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/denominator-pos.md) | 73 | `result-track:714124cac4ab2b8427358b689f94a05579f714c673559892c3a25787a03d2e42` |
| 7 | `theorem` | [denominator_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/denominator-ne-zero.md) | 78 | `result-track:12e76be5fb0f80641ec0709e81b61d1d082330243faad27a95ec15db5bfdc574` |
| 8 | `theorem` | [weight_eq_zero_outside](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/weight-eq-zero-outside.md) | 82 | `result-track:f01f2f309a66f6cea5fe9442ac2caa6cf25c275cf695e39c38fee79b2a373dc8` |
| 9 | `structure` | [CoverageObstruction](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/coverageobstruction.md) | 92 | `declaration-track:f0ab6f34eea95309f09c3e5687c442f8b550937af20f8c9926daa9dd90964548` |
| 10 | `structure` | [FixedQueryCostBound](../../../../ProbabilityTheoryAndStochasticProcesses/WindowCover.lean/declarations/fixedquerycostbound.md) | 99 | `declaration-track:b3e800f6d9000dfc34c48b34adaca05418c0652ec0bddcc0d8500bb862f84bd7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93bf96e3b3e3522b1780fed5e7fd58347147f41d11086e9d34fbc40e2ff0238b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/WindowCover/Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/WindowCover/Variant8ae9552fd9b88532ce9aceb03b47a01db4976b19b5fa4768dcac701c6c1b1582.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
