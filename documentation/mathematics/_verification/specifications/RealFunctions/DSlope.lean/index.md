# Verification target: DSlope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b579611f3db59b32f37e39029d5bc6052ee61aeb",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DSlope.lean/index.md) · [Full source](../../../../RealFunctions/DSlope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b579611f3db59b32f37e39029d5bc6052ee61aeb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dslope](../../../../RealFunctions/DSlope.lean/declarations/dslope.md) | 31 | `declaration-track:e96533fa74dabf0ebd2390c93e2134e9a2c2916d810c41929331a11a1a34a7b6` |
| 2 | `theorem` | [dslope_same](../../../../RealFunctions/DSlope.lean/declarations/dslope-same.md) | 35 | `result-track:538fe9386b096ec789df29fbef645076b37f2ec3ddcdfceb2a546fed4f5c3d25` |
| 3 | `theorem` | [dslope_of_ne](../../../../RealFunctions/DSlope.lean/declarations/dslope-of-ne.md) | 41 | `result-track:b792ef1d49557410401213c6e241c30b4a110138694180f2ed45a743f9318868` |
| 4 | `theorem` | [ContinuousLinearMap.dslope_comp](../../../../RealFunctions/DSlope.lean/declarations/continuouslinearmap-dslope-comp.md) | 45 | `result-track:171eaf9370f018098ceea9ebbe90ea1b61c7f6691dea2fe72c0e76559912f01d` |
| 5 | `theorem` | [eqOn_dslope_slope](../../../../RealFunctions/DSlope.lean/declarations/eqon-dslope-slope.md) | 53 | `result-track:8af79a43d757d09467c7c2ac7da8ada8a891ad4a36cc7926404a2a569d12ff39` |
| 6 | `theorem` | [dslope_eventuallyEq_slope_of_ne](../../../../RealFunctions/DSlope.lean/declarations/dslope-eventuallyeq-slope-of-ne.md) | 56 | `result-track:7d17a231f289d3ef7bbe6bcd810486e33ee58b22bd19cb330806876adfd3958a` |
| 7 | `theorem` | [dslope_eventuallyEq_slope_nhdsNE](../../../../RealFunctions/DSlope.lean/declarations/dslope-eventuallyeq-slope-nhdsne.md) | 59 | `result-track:a527d1d48f202cb14c0af378b26f7491f752cf6583caae8d9196e791362a19ec` |
| 8 | `theorem` | [sub_smul_dslope](../../../../RealFunctions/DSlope.lean/declarations/sub-smul-dslope.md) | 66 | `result-track:d315e005f474181361f50e996cd4143111725783b867b31eec4aff3b981cf9ca` |
| 9 | `theorem` | [dslope_sub_smul_of_ne](../../../../RealFunctions/DSlope.lean/declarations/dslope-sub-smul-of-ne.md) | 69 | `result-track:8186484a98f40edd23ade631f800b5649f971bef9101979a4b621d01b4e19c55` |
| 10 | `theorem` | [eqOn_dslope_sub_smul](../../../../RealFunctions/DSlope.lean/declarations/eqon-dslope-sub-smul.md) | 73 | `result-track:f37068ed86dcbf84f11db6d657dd1c6682becc2ed7a44a96edb3401907de6e85` |
| 11 | `theorem` | [dslope_sub_smul](../../../../RealFunctions/DSlope.lean/declarations/dslope-sub-smul.md) | 76 | `result-track:615aa6e09dfc7a6faf425760e956524119fd7675c35f35a0e97263f93e741d5d` |
| 12 | `theorem` | [continuousAt_dslope_same](../../../../RealFunctions/DSlope.lean/declarations/continuousat-dslope-same.md) | 81 | `result-track:4fed75b902789a5a7e01ff66b2482727bb78bbea0c548ede84d9360d5ead442d` |
| 13 | `theorem` | [ContinuousWithinAt.of_dslope](../../../../RealFunctions/DSlope.lean/declarations/continuouswithinat-of-dslope.md) | 84 | `result-track:74418a7377f77bab80beb32fe20552f6fb8d0afa12b117f7f2211484c46b641d` |
| 14 | `theorem` | [ContinuousAt.of_dslope](../../../../RealFunctions/DSlope.lean/declarations/continuousat-of-dslope.md) | 90 | `result-track:ed0b47432a8e27e1fb47450d63d5d36b1262761c0ea3d7565bcf303cde1557ae` |
| 15 | `theorem` | [ContinuousOn.of_dslope](../../../../RealFunctions/DSlope.lean/declarations/continuouson-of-dslope.md) | 93 | `result-track:2ff591e9bd85ead46cf80c27219cc70158b16b5d55021abb20efd9dbb0f48541` |
| 16 | `theorem` | [continuousWithinAt_dslope_of_ne](../../../../RealFunctions/DSlope.lean/declarations/continuouswithinat-dslope-of-ne.md) | 96 | `result-track:188cd1e0f8be22ea92fa6f9717845457d302a730af5ebc9cef04f7a00042d004` |
| 17 | `theorem` | [continuousAt_dslope_of_ne](../../../../RealFunctions/DSlope.lean/declarations/continuousat-dslope-of-ne.md) | 104 | `result-track:a000bb90c5d1ce45e58269f0f5d51db996f0e54c8040a55d0aa014436514dd6d` |
| 18 | `theorem` | [continuousOn_dslope](../../../../RealFunctions/DSlope.lean/declarations/continuouson-dslope.md) | 107 | `result-track:533230627b692112a0d002da0fe66901c9e67bd2d9a47bbaee684ee06a4c2766` |
| 19 | `theorem` | [DifferentiableWithinAt.of_dslope](../../../../RealFunctions/DSlope.lean/declarations/differentiablewithinat-of-dslope.md) | 115 | `result-track:001790895c4a9f6b978ab419373b7bcb3d2478b84cdfa69d6ccfad7919de6978` |
| 20 | `theorem` | [DifferentiableAt.of_dslope](../../../../RealFunctions/DSlope.lean/declarations/differentiableat-of-dslope.md) | 120 | `result-track:66953fe96d14c9584f3fce2bedc21197ef18b70fabfa933d764065cbbdaa5728` |
| 21 | `theorem` | [DifferentiableOn.of_dslope](../../../../RealFunctions/DSlope.lean/declarations/differentiableon-of-dslope.md) | 124 | `result-track:a3da3a42aa6ce6da6b0e32080b89a37973ebc4f957fdda78f2c812df92316570` |
| 22 | `theorem` | [differentiableWithinAt_dslope_of_ne](../../../../RealFunctions/DSlope.lean/declarations/differentiablewithinat-dslope-of-ne.md) | 127 | `result-track:c868b3f0c6784392464445096eab6da49fc403abed319007dfd542984547ff55` |
| 23 | `theorem` | [differentiableOn_dslope_of_notMem](../../../../RealFunctions/DSlope.lean/declarations/differentiableon-dslope-of-notmem.md) | 135 | `result-track:d434323dfe85fe96c1c69e36aed6f91ab02c26a6d26ddc0410c0105ab668a28a` |
| 24 | `theorem` | [differentiableAt_dslope_of_ne](../../../../RealFunctions/DSlope.lean/declarations/differentiableat-dslope-of-ne.md) | 143 | `result-track:04bb05865aafdc00a9162cd0c2461cf6a50552d424b9312cec24ca481cb06641` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f82ffee272b786f24296260b356c5fccccc711cbb6ecd892628dc22a41fdedfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/DSlope/Varianta1953f81cea7605887acd11147c88167871955e57ed5ab6f268c102a64c07b42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
