# Verification target: Positive Resolvent Kernel Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63b7b2dbccfe7c5986a8587aff72469cc56aeefd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variante99cd365af8230e04c5020414b8b5e8568c6e055cd59522fda79e4869d64d6a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63b7b2dbccfe7c5986a8587aff72469cc56aeefd`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variante99cd365af8230e04c5020414b8b5e8568c6e055cd59522fda79e4869d64d6a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variante99cd365af8230e04c5020414b8b5e8568c6e055cd59522fda79e4869d64d6a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveshift.md) | 29 | `declaration-track:950ebbb9f1a79a0b78c30992fb6d04853874b6fbfc9cd5c3c55a676da0f6b7ef` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveshift-ispositive.md) | 33 | `result-track:858d08ec604908e0a7a5ce0e56f29f640296d1f28ecf0e420065206e34d0035d` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveshift-coercive.md) | 40 | `result-track:7b5a665a6f7b716b16a00d55533af7e46811c624c6dccdecc1b052d735b90eef` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveshift-isunit.md) | 55 | `result-track:20b662620c706ca00edbde461c6d64350589a5365c944e4f8ed58901d281a8cf` |
| 5 | `def` | [positiveResolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveresolvent.md) | 66 | `declaration-track:41a8df2f0de5ddebbe12b86063e5fdb7c54b4e598be914fe19c1ab57303ae69e` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveshift-mul-resolvent.md) | 70 | `result-track:cc102db1ba9bcebeadae5c4fd8798a2c179951dae58f0518a778dc8f2104f866` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/resolvent-mul-positiveshift.md) | 75 | `result-track:4d8df752af46dab351263e83041678ba1a19d1891fac612845c4043cd6707b2e` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveshift-resolvent-apply.md) | 80 | `result-track:7e5d6325227f6920bf602d27d1b982c3c95bc74b6195898f186654f33e4cff33` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveresolvent-norm-le.md) | 87 | `result-track:7b089b4e7ef6cddd1094f42c15b5cbfa085a2802d71d8d70886407c9689f3b77` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveresolvent-ispositive.md) | 103 | `result-track:acbf26f62cd0f580c51bfe65d53161770a3764e492f4143cb3bb9d4d92a7d3f7` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveresolvent-sub.md) | 114 | `result-track:c4118a6af6d26ab687cde7e579e432f0ac9c72152411be74944d4474b03f6e5c` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positiveresolvent-sub-norm-le.md) | 126 | `result-track:2515bce3ea5fa1592004786491bacbd4a1ca5b5576cf29008c13ac8b645a4505` |
| 13 | `def` | [regularizedMass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/regularizedmass.md) | 140 | `declaration-track:c42fce72c27871bc96acae7d680630d928c7e77531e250c999c2754ed7816211` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/abs-re-inner-map-le.md) | 144 | `result-track:9369a9749dfd35a4ce1ebe5ca7bb9a75dc85489237a0c537216769311911aadd` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/regularizedmass-sub-abs-le.md) | 153 | `result-track:5f10c9ac12e14220c4ab16c989c590ccd6aea524439b2700b71b975e465235e0` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/reference-regularizedmass-sub-abs-le.md) | 173 | `result-track:4ffa6ac5d33d89a8fa30bb8ecd5d7569ef1f250f7c1e91bdf4e1a6f5106f2ff1` |
| 17 | `theorem` | [positive_fixed_direction_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/positive-fixed-direction-le.md) | 198 | `result-track:513da278b8e6785e20c16237c1925abf08bfd9d8323fb92f318d8a749dc67c26` |
| 18 | `theorem` | [regularized_resolvent_kernel_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/regularized-resolvent-kernel-apply.md) | 231 | `result-track:835235e8641c508306da9847e348d7201b94512f6622c9a038c5d47c9c4c574b` |
| 19 | `theorem` | [kernel_witness_regularizedMass_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolventKernelNamespaced.lean/declarations/kernel-witness-regularizedmass-le.md) | 239 | `result-track:0094eb8688fcb7ffbfcc3be9a7ff37b2d81e977ed71855046d34baa163826cd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc379728974f21dfb6fb0abc5f27da15600fe273fbd667342a48360f60875f8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variante99cd365af8230e04c5020414b8b5e8568c6e055cd59522fda79e4869d64d6a4.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/PositiveResolventKernel/Variante99cd365af8230e04c5020414b8b5e8568c6e055cd59522fda79e4869d64d6a4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
