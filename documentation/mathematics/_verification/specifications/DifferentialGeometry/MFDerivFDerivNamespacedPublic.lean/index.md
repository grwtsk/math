# Verification target: MFDeriv FDeriv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "892c91044ade4a6a64d9bbd1c7a1821c205e2443",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `892c91044ade4a6a64d9bbd1c7a1821c205e2443`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniqueMDiffWithinAt_iff_uniqueDiffWithinAt](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/uniquemdiffwithinat-iff-uniquediffwithinat.md) | 39 | `result-track:63097dac38e7c00b3d60af452b4039a9d6755e349232b44be73f2630b2a151ea` |
| 2 | `theorem` | [uniqueMDiffOn_iff_uniqueDiffOn](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/uniquemdiffon-iff-uniquediffon.md) | 47 | `result-track:f9cfa5703fef7a90519635dc38ab548c76bdb3dc9d9806f1c0addec0372a3a42` |
| 3 | `theorem` | [ModelWithCorners.uniqueMDiffOn](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/modelwithcorners-uniquemdiffon.md) | 52 | `result-track:663928aea78d628c09d0b754b0f3597d6b2301424217e35a1d481df6813dd9f8` |
| 4 | `theorem` | [writtenInExtChartAt_model_space](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/writteninextchartat-model-space.md) | 57 | `result-track:ef69c8d9df04845b8fdb4552eedb6b59847ba9f95196d5287287c17decfded8a` |
| 5 | `theorem` | [hasMFDerivWithinAt_iff_hasFDerivWithinAt](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/hasmfderivwithinat-iff-hasfderivwithinat.md) | 63 | `result-track:161df663663628a830627fcba888de83add71ad44a52dd8e0c73945fa395631c` |
| 6 | `theorem` | [hasMFDerivAt_iff_hasFDerivAt](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/hasmfderivat-iff-hasfderivat.md) | 72 | `result-track:e65a2b4c30686385767262ad97ed6d9002a5c3dd856aa2b3f89d7a03acffa621` |
| 7 | `theorem` | [mdifferentiableWithinAt_iff_differentiableWithinAt](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/mdifferentiablewithinat-iff-differentiablewithinat.md) | 79 | `result-track:df4eab99d677da15878742e58357fcd96c813b9ec3c1571657cf2d3a25b460c0` |
| 8 | `theorem` | [mdifferentiableAt_iff_differentiableAt](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/mdifferentiableat-iff-differentiableat.md) | 89 | `result-track:24d34f0bac3b99595ffe745b347dd59e440396b7914f0e45419e6b9cf2dbe615` |
| 9 | `theorem` | [mdifferentiableOn_iff_differentiableOn](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/mdifferentiableon-iff-differentiableon.md) | 98 | `result-track:8d7648bb5ffa9bb4d5fe021e91a22f39c623e9f2ee3c346ddfd00e238c1d615c` |
| 10 | `theorem` | [mdifferentiable_iff_differentiable](../../../../DifferentialGeometry/MFDerivFDerivNamespacedPublic.lean/declarations/mdifferentiable-iff-differentiable.md) | 107 | `result-track:89ad7baec607ba21a93a7b9de102f2b37982b06d6643c6f6d69b158fe1346260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d77490bd87291494c6461676a9796daa6d6d86e3406981b97bfa8543316a1cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FDeriv/Variant7d59889da09e5ecb541790803c83881c466e0016f1bf1e7db3f6c10ac1c56b11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
