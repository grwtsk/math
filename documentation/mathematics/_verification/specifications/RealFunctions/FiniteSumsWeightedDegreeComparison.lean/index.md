# Verification target: GRWTSK.Analysis.FiniteSums.WeightedDegreeComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a85f0a5322d692386b9f7c37fa18d3d4fc0851b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteSums/WeightedDegreeComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/index.md) · [Full source](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a85f0a5322d692386b9f7c37fa18d3d4fc0851b`.

Source path: `GRWTSK/Analysis/FiniteSums/WeightedDegreeComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteSums/WeightedDegreeComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_first](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/sum-first.md) | 19 | `result-track:212e7edcee26d450bf9bc7f6c8ffd7067181c015c1c698f8f28d34f3919e6056` |
| 2 | `theorem` | [sum_squares](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/sum-squares.md) | 28 | `result-track:3de41a1885ebd2a560455432ff015803ba07794d53c70862cca5e106d4cc1720` |
| 3 | `def` | [weighted](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/weighted.md) | 38 | `declaration-track:102728d5ef9f1a7c964777b90373584612615eb13223dd10704fdd23b9ff447a` |
| 4 | `def` | [unweighted](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/unweighted.md) | 43 | `declaration-track:ac0e05c1b456050d7b9c6754927cb902f1c7a4c61e4d7785ac2d74cab2064f57` |
| 5 | `theorem` | [weighted_eq](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/weighted-eq.md) | 47 | `result-track:13ed494c60af9eedf16fa951011617a1d4ea1ed89e59fc024fddc00e818d00a4` |
| 6 | `theorem` | [unweighted_eq](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/unweighted-eq.md) | 56 | `result-track:776b3eb2a2e4ea3a22715a8873c30a5911da53471c548452c51542c3bddcf9d5` |
| 7 | `theorem` | [weighted_inequality](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/weighted-inequality.md) | 66 | `result-track:23537f022455c97803d9fe1165bc6d85caff90f1b6332c28abd6991f43e9a3b5` |
| 8 | `theorem` | [unweighted_inequality](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/unweighted-inequality.md) | 73 | `result-track:91cdd9c909c465714cf38c73b0a1f1af0d020d7deb02b2ac71bd05869279ba43` |
| 9 | `theorem` | [coefficient_pos](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/coefficient-pos.md) | 79 | `result-track:075d1ba84ce893fd08e5d2a743dfb77dfa580cff5a3490a669e438dd6b941db8` |
| 10 | `theorem` | [weighted_upper_bound](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/weighted-upper-bound.md) | 89 | `result-track:37d96b844bbfa9ac1b66271c54c41ead2b471c8c47c03569eee3ec3a1e477be5` |
| 11 | `theorem` | [unweighted_no_upper_bound](../../../../RealFunctions/FiniteSumsWeightedDegreeComparison.lean/declarations/unweighted-no-upper-bound.md) | 99 | `result-track:d0d3499d5a9ae6450757a5712873bcfc90bc6d4e4ca27830da1a22fd64ac4591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eae14d3e3839cd4c8c69fbad5ba5b2544dea3bd8f445d47917097db60bdb54bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FiniteSums/WeightedDegreeComparison.lean","GRWTSK/_verification/specifications/Analysis/FiniteSums/WeightedDegreeComparison.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
