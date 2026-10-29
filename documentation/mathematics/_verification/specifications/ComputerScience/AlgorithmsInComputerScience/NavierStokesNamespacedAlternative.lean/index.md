# Verification target: Navier Stokes Namespaced Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "116392e291d3ec9a9a86d933b72fe9e7d56ea895",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variantb94017f83dd11db7c35c7fc34ef4048b768d1a1618d78e56de6924ebcf6374d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `116392e291d3ec9a9a86d933b72fe9e7d56ea895`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variantb94017f83dd11db7c35c7fc34ef4048b768d1a1618d78e56de6924ebcf6374d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variantb94017f83dd11db7c35c7fc34ef4048b768d1a1618d78e56de6924ebcf6374d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.GrandChallenge.NavierStokes.SmoothContinuation` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.NavierStokes.NonBlowupObstruction` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.GrandChallenge.NavierStokes.TaoSorting` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ns_continuation_maps_exist_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/declarations/ns-continuation-maps-exist-if-supplied.md) | 29 | `result-track:e3893fa46713861ae889819151d7afebca431191caee9a57467f8d715d2f4d62` |
| 2 | `theorem` | [ns_preserves_true_nonlinearity_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/declarations/ns-preserves-true-nonlinearity-if-supplied.md) | 34 | `result-track:0a156feed0e55f0c3f7a982395ce5451ec86e9155282ff0bf6171c4d59091414` |
| 3 | `theorem` | [ns_blowup_obstruction_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/declarations/ns-blowup-obstruction-if-supplied.md) | 39 | `result-track:2c93c46c3d096509055030c84b3438e9c16b022bd95a6b1674a5e7cf11deb023` |
| 4 | `theorem` | [critical_norm_bounded_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/declarations/critical-norm-bounded-if-supplied.md) | 44 | `result-track:6aaadf962a928299f0a7131d89e3efa69b8b9e1bb5ae250857baff65b191d76b` |
| 5 | `theorem` | [critical_control_preserves_true_nonlinearity_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/declarations/critical-control-preserves-true-nonlinearity-if-supplied.md) | 49 | `result-track:61dcea1d090896cefc6935e5181910d667c89f75aea08d750153e7ecdbeab61b` |
| 6 | `theorem` | [quantitative_regularity_control_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/declarations/quantitative-regularity-control-if-supplied.md) | 55 | `result-track:3195b526f49aa39ec9e42dd7baf32f5c42d276c2e3f871a07e2fed01e4e1b50b` |
| 7 | `theorem` | [averaged_blowup_warning_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/declarations/averaged-blowup-warning-if-supplied.md) | 60 | `result-track:a0ab0973d8a60d7db5f3dd8814fb47b34cd6b96adbee25c723b2b231d70a6e11` |
| 8 | `theorem` | [tao_sorting_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/declarations/tao-sorting-if-supplied.md) | 65 | `result-track:45ffc4158672d3a7ee93ef446e12ae0ef1eca5101f0efefb59b8265bc475d6bb` |
| 9 | `theorem` | [tao_gap_charts_glitch_candidate_if_supplied](../../../../../ComputerScience/AlgorithmsInComputerScience/NavierStokesNamespacedAlternative.lean/declarations/tao-gap-charts-glitch-candidate-if-supplied.md) | 73 | `result-track:cbc4355aba28ec0dbdc755a58f82297e8bd61961ac9e2a19a61f617350fe2e45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3fcb67e39f55e132d322bf1f8992075e981f190654893e72fe360fa03e5563a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variantb94017f83dd11db7c35c7fc34ef4048b768d1a1618d78e56de6924ebcf6374d3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NavierStokes/Variantb94017f83dd11db7c35c7fc34ef4048b768d1a1618d78e56de6924ebcf6374d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
