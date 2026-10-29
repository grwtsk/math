# Verification target: Seven Marked Covers Require ACompatible Transition Law Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c58d9a829fbdd989d190e5dfe0343fe51bf3b3f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c58d9a829fbdd989d190e5dfe0343fe51bf3b3f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CenteredPermutation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cocycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/cocycle.md) | 29 | `declaration-track:42621d989ff52d26acc7c427b98b674fa696826dae763ca6db417ab22da11d11` |
| 2 | `def` | [transition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/transition.md) | 37 | `declaration-track:fb9216733bf3bf76d9879dcc0cb04ffc946b4a90523be3b4fbf812441afb99bb` |
| 3 | `def` | [Coherent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/coherent.md) | 46 | `declaration-track:79b01dcf663a5d1f17bb1e1b9c926d14e6bd79fde8ed350489f274e0da1c89f7` |
| 4 | `theorem` | [explicit_frames_satisfy_cocycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/explicit-frames-satisfy-cocycle.md) | 49 | `result-track:3ec388f8ebe2eb3ea92511ea2774179104b31486214f89e0f5d7c444839a9fa0` |
| 5 | `theorem` | [cocycle_requires_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/cocycle-requires-identity.md) | 54 | `result-track:ac07cdf48263f478441e03e75d84c973e6109756f96be6ecb0706410c35c5de7` |
| 6 | `theorem` | [cocycle_requires_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/cocycle-requires-inverse.md) | 59 | `result-track:77cb330dbf2ed1eac50aa012ba44611f28386a842e802d45b9e99a1863185091` |
| 7 | `theorem` | [anchored_family_is_coherent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/anchored-family-is-coherent.md) | 63 | `result-track:4ccb7330d02c4aa679572c8ee17bcc36d1f14ee1ed01c11a79bbd90a37c98ba2` |
| 8 | `theorem` | [every_coherent_family_reconstructs_from_anchor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/every-coherent-family-reconstructs-from-anchor.md) | 69 | `result-track:2c7824b06b28759eb156a3824f02f14ede878cc76a9b28a956d8de7e78a033fe` |
| 9 | `theorem` | [coherent_families_with_same_anchor_are_equal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/coherent-families-with-same-anchor-are-equal.md) | 75 | `result-track:dd80715d1feb5ff9a925b1e31a0211eb2895af593f51d516bc008a9b822a7965` |
| 10 | `theorem` | [compatible_readout_is_anchor_independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/compatible-readout-is-anchor-independent.md) | 82 | `result-track:c90924c9a7301b81d6a92e64a1d0b23fa2a8408cec187e931eb5ac565a7e0c93` |
| 11 | `def` | [negationTransitions](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/negationtransitions.md) | 94 | `declaration-track:d0f8cd035e8f9c30dfe571006ccb67c775dd9aff98e7b183a90d422deca4f3c6` |
| 12 | `theorem` | [invertible_marked_transitions_need_not_be_cocyclic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SevenMarkedCoversRequireACompatibleTransitionLawEdition1.lean/declarations/invertible-marked-transitions-need-not-be-cocyclic.md) | 97 | `result-track:210bad06c5ca04ed33c98d1ab4a8729911eaf020a7cd5f73b7bf44cb68f0dc08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3725f35eda64f90d46f37ba0f12026f35904da2cdc1e8e5642949778518b5e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MarkedCoverDescent/Variantaeba4e9a2f790a76132c536440f66cf9582bac323525c5b787ea2ed1d92fb8eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
