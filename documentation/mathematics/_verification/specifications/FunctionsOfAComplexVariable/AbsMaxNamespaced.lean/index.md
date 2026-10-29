# Verification target: Abs Max Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9d13d810df2815038657fcf4d6683c7398a3a51",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant59f029161352a80713101aa2f6186ef638ec27e252c24ebf55fe96bed5b8dc69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9d13d810df2815038657fcf4d6683c7398a3a51`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant59f029161352a80713101aa2f6186ef638ec27e252c24ebf55fe96bed5b8dc69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/AbsMax/Variant59f029161352a80713101aa2f6186ef638ec27e252c24ebf55fe96bed5b8dc69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Completion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Extr` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.ExtrClosure` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_max_aux₁](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/norm-max-aux-source-edition-3.md) | 114 | `result-track:a825967a10eef5df538c9dc9c4aeeeae82dd0d4ad1342bd1c40e59a8cebd30a4` |
| 2 | `theorem` | [norm_max_aux₂](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/norm-max-aux-source-edition-2.md) | 152 | `result-track:91e2afafca46103d40297145391e61bb3b29c7e68628674c9eeba2fbf6575f09` |
| 3 | `theorem` | [norm_max_aux₃](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/norm-max-aux.md) | 167 | `result-track:09465ed03d7ee635aeeaccb9fef6ba66d93fff0da83ba68f883396333065222a` |
| 4 | `theorem` | [norm_eqOn_closedBall_of_isMaxOn](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/norm-eqon-closedball-of-ismaxon.md) | 189 | `result-track:d9a280542196bf04c93c0b2dd30ea842ddf231675e9182e929f86a383da6d0fc` |
| 5 | `theorem` | [norm_eq_norm_of_isMaxOn_of_ball_subset](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/norm-eq-norm-of-ismaxon-of-ball-subset.md) | 210 | `result-track:dd052dde73db7157d68e0be5742224f9c78d5a16e5f7558db5173d3b45de2f51` |
| 6 | `theorem` | [norm_eventually_eq_of_isLocalMax](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/norm-eventually-eq-of-islocalmax.md) | 219 | `result-track:92b696d7b443fd4606c01c0a31991aefa52d9a901b703805347c638ba762c604` |
| 7 | `theorem` | [isOpen_setOf_mem_nhds_and_isMaxOn_norm](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/isopen-setof-mem-nhds-and-ismaxon-norm.md) | 229 | `result-track:fcb38235693da8f280a6ccbadebeb5d2f0c92563f30f5008c282cf10d87a3d47` |
| 8 | `theorem` | [norm_eqOn_of_isPreconnected_of_isMaxOn](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/norm-eqon-of-ispreconnected-of-ismaxon.md) | 240 | `result-track:4721dd2654a26debc9e5cdc08768b3ef19a96e5ce320c4318677210a6fbde5bd` |
| 9 | `theorem` | [norm_eqOn_closure_of_isPreconnected_of_isMaxOn](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/norm-eqon-closure-of-ispreconnected-of-ismaxon.md) | 263 | `result-track:5f63a4b47e962be2a7a6782165f17dd827afc0c201decfeaee82d75b5c6d4cb1` |
| 10 | `theorem` | [eqOn_of_isPreconnected_of_isMaxOn_norm](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/eqon-of-ispreconnected-of-ismaxon-norm.md) | 291 | `result-track:223aae75e0ad37f731d66a020d1fbb0dd59a6d9aef78392fdae51518d8b15fc6` |
| 11 | `theorem` | [eqOn_closure_of_isPreconnected_of_isMaxOn_norm](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/eqon-closure-of-ispreconnected-of-ismaxon-norm.md) | 304 | `result-track:cc06fde49fc3077fd92cc325d858b812df071f6659ed121da75f399216c20701` |
| 12 | `theorem` | [eq_of_isMaxOn_of_ball_subset](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/eq-of-ismaxon-of-ball-subset.md) | 316 | `result-track:053e19210dad117759fc69c1c83a35e3a40e1dae4ae10ec89e5a6a7aa00d6da9` |
| 13 | `theorem` | [eqOn_closedBall_of_isMaxOn_norm](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/eqon-closedball-of-ismaxon-norm.md) | 332 | `result-track:c11292d64c875c6b5c7cf05e21ddd1165558d9f013981e9cfeeac3b6afa62131` |
| 14 | `theorem` | [eventually_eq_of_isLocalMax_norm](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/eventually-eq-of-islocalmax-norm.md) | 341 | `result-track:17b1aab5d1f98a022f168ebe1c3e2c087f8e8e58201aca6b52beef69d6146719` |
| 15 | `theorem` | [eventually_eq_or_eq_zero_of_isLocalMin_norm](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/eventually-eq-or-eq-zero-of-islocalmin-norm.md) | 351 | `result-track:270634254b869e55405f77568f5615eb76df35dc005ca25d84a00355e822c3ee` |
| 16 | `theorem` | [exists_mem_frontier_isMaxOn_norm](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/exists-mem-frontier-ismaxon-norm.md) | 377 | `result-track:9b42f84c8abfebc0a284b408f3a755a949c2ecd6ba1a5ccd0ad0b38f61f19254` |
| 17 | `theorem` | [norm_le_of_forall_mem_frontier_norm_le](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/norm-le-of-forall-mem-frontier-norm-le.md) | 395 | `result-track:f511f4520372de332cb03900a25ec3ea2d2c5357026fa50f8b458e8ee34b63cb` |
| 18 | `theorem` | [eqOn_closure_of_eqOn_frontier](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/eqon-closure-of-eqon-frontier.md) | 419 | `result-track:e7c15bd4624ebfbdd7b25e86e488f5f8b0ca1fff10f659f34f8e810f0ecbfc7b` |
| 19 | `theorem` | [eqOn_of_eqOn_frontier](../../../../FunctionsOfAComplexVariable/AbsMaxNamespaced.lean/declarations/eqon-of-eqon-frontier.md) | 429 | `result-track:834c0f157aace6fc9d4a88b530e35f90f0c01e511ba3364caa775287409b2eac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f27f2c88db920847425bbff565431e81e22c3d58bdc303e19340689660d6dc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/AbsMax/Variant59f029161352a80713101aa2f6186ef638ec27e252c24ebf55fe96bed5b8dc69.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/AbsMax/Variant59f029161352a80713101aa2f6186ef638ec27e252c24ebf55fe96bed5b8dc69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
