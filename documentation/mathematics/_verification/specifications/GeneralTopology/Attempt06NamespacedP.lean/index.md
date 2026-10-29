# Verification target: Attempt06 Namespaced P

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2bd980f3bb785e525ca6d82ceef96253bccd9ff",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Attempt06NamespacedP.lean/index.md) · [Full source](../../../../GeneralTopology/Attempt06NamespacedP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2bd980f3bb785e525ca6d82ceef96253bccd9ff`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/p.md) | 23 | `declaration-track:c98571e547cc92519663e7273da7ac8f0b0304bc6fd2c9cc6441ed951818aa2d` |
| 2 | `def` | [normalizedSquare](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/normalizedsquare.md) | 25 | `declaration-track:c0a36c846d3ec85052660eefe666b7c64a2f551da4a7fb3df386243393066a1a` |
| 3 | `theorem` | [p_coe](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/p-coe.md) | 28 | `result-track:e5e4c4c0231586259806761560f6dda243213f7f4930cc7132a7dab7fce16cf3` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/actual-scaled-square-real.md) | 31 | `result-track:3541de33953dd647b14a325b52d8a8d4010c4e1ce8b0935d4d2406d49f41b037` |
| 5 | `theorem` | [p_ratio](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/p-ratio.md) | 57 | `result-track:1e895ef3f5c1f4439fec558ae9a77475a24566fbfe6c7c115659e7080d318d49` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/p-ratio-tendsto.md) | 61 | `result-track:07a7b2bb1a30910dc1b0c389b8c1097d43f1d0d292ebd4e073db9767c995b06b` |
| 7 | `theorem` | [normalization_tendsto](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/normalization-tendsto.md) | 78 | `result-track:9d3e25c172d2003fceda9939ba408d3014cf73095ddaa13a1b9edc25d4246183` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/exp-scaled-neg-tendsto.md) | 87 | `result-track:c1dc8e7059e234591fb34a78f6b13276d68dea60c0ab54acdd6bf8aa54093f38` |
| 9 | `theorem` | [exp_square_rescale](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/exp-square-rescale.md) | 92 | `result-track:4605020cdac678dcad8fb8083495ee865eeb47033905d0e40dccc688acf420b7` |
| 10 | `theorem` | [scaled_square_exact](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/scaled-square-exact.md) | 101 | `result-track:0e45377508580e4d95171347083ade7f15717f102ad716d1e21bb77c75743092` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/scaled-square-tendsto.md) | 123 | `result-track:a9f704030d0435f93666d96095c6b23c7fd3563df44c283d30b434437ac0635d` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../GeneralTopology/Attempt06NamespacedP.lean/declarations/quarter-scaled-limit.md) | 143 | `result-track:cb73160e5885f38121a9ebe3477d6fa2b1cb7747ed08542e9b51f00a14356ee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6ee2640faae97d8c11b9c0dce452b3027c488ad56fd80ffc382a06f8f8fcb27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Attempt06/Variant6d7644ab5b89ec7607e22db1567faa453a9551fc228cf8c2a77a452293add192.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
