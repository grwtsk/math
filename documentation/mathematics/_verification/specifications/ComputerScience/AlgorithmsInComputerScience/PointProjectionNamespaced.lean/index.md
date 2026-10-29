# Verification target: Point Projection Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a936f5aaea7b0ab4fe62da30fe4efe26d627a476",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointProjection/Variant1ebe32d990bd448af426fe30db0fabb73757fc2d098c250b4345c7faa85be680.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/PointProjectionNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/PointProjectionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a936f5aaea7b0ab4fe62da30fe4efe26d627a476`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointProjection/Variant1ebe32d990bd448af426fe30db0fabb73757fc2d098c250b4345c7faa85be680.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointProjection/Variant1ebe32d990bd448af426fe30db0fabb73757fc2d098c250b4345c7faa85be680.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Concept.PointUniverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.Profile` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PointOmissionReason](../../../../../ComputerScience/AlgorithmsInComputerScience/PointProjectionNamespaced.lean/declarations/pointomissionreason.md) | 22 | `declaration-track:c67f871f7e524c59f6d682d90643754b01010bb2e196444bf7412f3519e20434` |
| 2 | `structure` | [OmittedPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/PointProjectionNamespaced.lean/declarations/omittedpoint.md) | 30 | `declaration-track:451ee8ea3557819147941c077c04ec1d7ce68b095415f61983ee0f669990b8be` |
| 3 | `structure` | [PointProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/PointProjectionNamespaced.lean/declarations/pointprojection.md) | 36 | `declaration-track:d7e10baac24d51669706e0836c1b00dcb25d79f33c00e34932d79674a0188e5b` |
| 4 | `def` | [PointProjection.BoundTo](../../../../../ComputerScience/AlgorithmsInComputerScience/PointProjectionNamespaced.lean/declarations/pointprojection-boundto.md) | 59 | `declaration-track:1da73a34bc6a13dcee7e8f5b6af1450e71721bc9594de5b20579962fd4495859` |
| 5 | `structure` | [PointProjectionReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/PointProjectionNamespaced.lean/declarations/pointprojectionreceipt.md) | 68 | `declaration-track:034914495d8895e5c76d353f15539ed3b8604a3411c49d3183597305a3db35c9` |
| 6 | `theorem` | [PointProjection.no_silent_point](../../../../../ComputerScience/AlgorithmsInComputerScience/PointProjectionNamespaced.lean/declarations/pointprojection-no-silent-point.md) | 77 | `result-track:aad40f5c224f998ba240caa0da74e9689a42245f1c92aaad41117a2a542a70cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc3eec26b2e5025134429ea0b1571a5729d5485b9e99d92b172bdba69651c71a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointProjection/Variant1ebe32d990bd448af426fe30db0fabb73757fc2d098c250b4345c7faa85be680.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PointProjection/Variant1ebe32d990bd448af426fe30db0fabb73757fc2d098c250b4345c7faa85be680.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
