# Verification target: Source Scheduling Transport Complete Finite Scheduling And Two Stage Transport Edition2 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76564e7eddfc07cacab1e78bd3e12eab67352db5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SourceSchedulingTransport/Variantefcd01391dce834298d2e54b7431b73ed09845a60aff86ce47d056a77d9fff22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76564e7eddfc07cacab1e78bd3e12eab67352db5`.

Source path: `GRWTSK/Analysis/SourceSchedulingTransport/Variantefcd01391dce834298d2e54b7431b73ed09845a60aff86ce47d056a77d9fff22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SourceSchedulingTransport/Variantefcd01391dce834298d2e54b7431b73ed09845a60aff86ce47d056a77d9fff22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Module` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complete_schedule_sum](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/complete-schedule-sum.md) | 24 | `result-track:9a4e9a60e49a4ddbdcc6fc91f6c7e1bc7daea1b7376f1ec6614f2a10686f9827` |
| 2 | `theorem` | [fractional_reconstruction](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/fractional-reconstruction.md) | 30 | `result-track:af76460a9caf2f42f96c763a65fe904f924a8a4b397b361159c444e0b0ce1162` |
| 3 | `theorem` | [potential_telescope](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/potential-telescope.md) | 37 | `result-track:d7ad4aa1fba5fe9106e78170f554e5ed0f4059b571845ab31ade283baf258d21` |
| 4 | `theorem` | [finite_potential_certificate](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/finite-potential-certificate.md) | 44 | `result-track:f82aeba403246c88763b3cbced431b600443cf48b92a12897455d50c40d217a0` |
| 5 | `def` | [schedulePrefix](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/scheduleprefix.md) | 63 | `declaration-track:142479d2f07c1d04891e0a4655076da3192ea126a9112962174404da6a92f5ee` |
| 6 | `theorem` | [weighted_abel](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/weighted-abel.md) | 66 | `result-track:4f45e03167c3944ca533b2108b5d315ebdb2878f8d9d290d32b3b0e1a1df18c3` |
| 7 | `theorem` | [weighted_abel_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/weighted-abel-abs-le.md) | 78 | `result-track:25c93f75c61e962b6ea955d8fcc7f7b68f95e9f12ef9e5301b3318823e9004c7` |
| 8 | `theorem` | [emphasis_pairing](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/emphasis-pairing.md) | 103 | `result-track:4324cb403eb3b6efbcfb5465db00ce23842d01937be0d7585e12e7dcb9ee022e` |
| 9 | `theorem` | [weighted_emphasis_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/weighted-emphasis-abs-le.md) | 109 | `result-track:b1b53a6695dd1a0d45ac096ac633fc8cba7cb844e463468b01da7a31fe3a46e9` |
| 10 | `def` | [readout](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/readout.md) | 137 | `declaration-track:7d9fe3f89bd2173985a2beb46cd3bced5da6f57fc0cfe0deac7be10bf42515ef` |
| 11 | `def` | [mass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/mass.md) | 141 | `declaration-track:452b89726ce040833543c6ee2a8716df728c251f45784cf9e1aa61af62bddeff` |
| 12 | `def` | [firstMoment](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/firstmoment.md) | 144 | `declaration-track:2ac245f60b763fe8e2b519732ce06a724f7d4d203e6596aa80e0ce5653088ef1` |
| 13 | `theorem` | [affine_carry](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/affine-carry.md) | 147 | `result-track:96e96c35ec15c8c8f2684a3806710680a5054f0c933eabf78433fa8534ab9c57` |
| 14 | `theorem` | [affine_test_readout](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/affine-test-readout.md) | 167 | `result-track:858a442aa3d65984181b9ac64d348720cfc07a81632d3fcb26814ff6b2f632d8` |
| 15 | `def` | [inducedDrift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/induceddrift.md) | 181 | `declaration-track:f34f4c287f6f62c7edbce4cfd850392d6f59355f3ec039ea62cf5b6198819df9` |
| 16 | `theorem` | [first_transport_identity](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/first-transport-identity.md) | 185 | `result-track:7af22d61091a1a2b6aeab2fd3ff4cf7f0dc93b64dc22524b13ba3c9590bd6932` |
| 17 | `theorem` | [inducedDrift_total](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/induceddrift-total.md) | 213 | `result-track:e41cc2f403a7c4743d713265251b738e0637f8aecc889217faff0ff66e2ebd21` |
| 18 | `def` | [transportCost](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/transportcost.md) | 224 | `declaration-track:b27cca674e99ebdfc77923c71417c64531d11b08a4fd4b9960168fc67e375d3b` |
| 19 | `theorem` | [two_stage_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SourceSchedulingTransportCompleteFiniteSchedulingAndTwoStageTransportEdition2SourceEdition1.lean/declarations/two-stage-abs-le.md) | 229 | `result-track:c756dfbf9e564987f9f258b8631066eeb607cd3fef04563bd2257dda66e6f3aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23af6a6afe715c1b9b45eb79e08cffd74d4d742567d6c3a400d3ffbbec06a0c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SourceSchedulingTransport/Variantefcd01391dce834298d2e54b7431b73ed09845a60aff86ce47d056a77d9fff22.lean","GRWTSK/_verification/specifications/Analysis/SourceSchedulingTransport/Variantefcd01391dce834298d2e54b7431b73ed09845a60aff86ce47d056a77d9fff22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
