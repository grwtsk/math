# Verification target: ODETransform Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf57467e829441900ddedf16a82beaf401a5e97a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Varianta584b36c33d1038202cb435ee9fc19332518988f47233ad587261ec30765a46d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/index.md) · [Full source](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf57467e829441900ddedf16a82beaf401a5e97a`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Varianta584b36c33d1038202cb435ee9fc19332518988f47233ad587261ec30765a46d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/Transform/Varianta584b36c33d1038202cb435ee9fc19332518988f47233ad587261ec30765a46d.lean.json)

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
| 1 | `lemma` | [IsIntegralCurveOn.comp_add](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveon-comp-add-source-edition-2.md) | 37 | `result-track:e74e523fa4bdf0a3f268c4ea798865023bca6643db0deaa09f794e5028935373` |
| 2 | `lemma` | [isIntegralCurveOn_comp_add](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveon-comp-add.md) | 45 | `result-track:0c00d7cd1d42b17b045c556f2b85c060b190a65de60570c679444a5b83e4fa78` |
| 3 | `lemma` | [isIntegralCurveOn_comp_sub](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveon-comp-sub-source-edition-2.md) | 55 | `result-track:a79d4cf90fa6e4dd73683bf999d09e537528d5d265c74111e81e6b215e59ec87` |
| 4 | `lemma` | [IsIntegralCurveOn.comp_sub](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveon-comp-sub.md) | 59 | `result-track:5c418c55aec09681ae9640fe55094c301f2e33dfb5e0ce055bc8179698a43de9` |
| 5 | `lemma` | [isIntegralCurveAt_comp_add](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveat-comp-add-source-edition-2.md) | 63 | `result-track:6eb60bbc2436d1ff4f728a983626967788a355c9b5385c6872c96011e0e7a641` |
| 6 | `lemma` | [IsIntegralCurveAt.comp_add](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveat-comp-add.md) | 70 | `result-track:57e0e1a1d7a620a207b6395a2b634be60e021cf2fc782051cfa5be666908ac22` |
| 7 | `lemma` | [isIntegralCurveAt_comp_sub](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveat-comp-sub-source-edition-2.md) | 74 | `result-track:99599961ac42992c7c7419ebe18c3009b6be0ebecbb6ad21f516f7f11ff25750` |
| 8 | `lemma` | [IsIntegralCurveAt.comp_sub](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveat-comp-sub.md) | 78 | `result-track:660b8523c8c9002b6576fa365364d28a1365fd885b312d5b2f5dcb36d01a5d73` |
| 9 | `lemma` | [IsIntegralCurve.comp_add](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurve-comp-add.md) | 82 | `result-track:92ca4fb326ec36dc1bb53777e87b5eb5b36db99724a3579a5c485a360a55597e` |
| 10 | `lemma` | [isIntegralCurve_comp_add](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurve-comp-add-source-edition-2.md) | 87 | `result-track:ceb6f6b4f018964af2924ffca8913700843853b60175243c922369ffd2c5f4e7` |
| 11 | `lemma` | [isIntegralCurve_comp_sub](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurve-comp-sub-source-edition-2.md) | 93 | `result-track:b3961ac858ef961893ab036bb41c147033beb02282b4e04d185d603c7bfb82a8` |
| 12 | `lemma` | [IsIntegralCurve.comp_sub](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurve-comp-sub.md) | 97 | `result-track:7ac18084dc4b10f07c3e18b8249e4b8152866c5101b20e43e750e9ad619fe4fd` |
| 13 | `lemma` | [IsIntegralCurveOn.comp_mul](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveon-comp-mul.md) | 107 | `result-track:9125b40af603ff8b755254cc50ec38abd0f04dd7153f5eb805fbaf6fb1021bde` |
| 14 | `lemma` | [isIntegralCurveOn_comp_mul_ne_zero](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveon-comp-mul-ne-zero.md) | 113 | `result-track:2af11a0ae8654abd59263d328f5acd97e7b24bc2d208f6edc64e65499839740d` |
| 15 | `lemma` | [IsIntegralCurveAt.comp_mul_ne_zero](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveat-comp-mul-ne-zero-source-edition-2.md) | 129 | `result-track:18b645fe8f0cc50e43ad32c41d3da76039ba4595c1b3c7ea1fdb25817e5289a5` |
| 16 | `lemma` | [isIntegralCurveAt_comp_mul_ne_zero](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurveat-comp-mul-ne-zero.md) | 139 | `result-track:0aa9eddc5cd433814416731b2576ace9cedc3e5271283fcc17688ac7b172f6f2` |
| 17 | `lemma` | [IsIntegralCurve.comp_mul](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurve-comp-mul.md) | 150 | `result-track:26bddc52dd3c1a40c0a65d23c0ae8f9cb39ac6354c2e257533232e0905608468` |
| 18 | `lemma` | [isIntegralCurve_comp_mul_ne_zero](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurve-comp-mul-ne-zero.md) | 155 | `result-track:501a081ce835469787e7477e1ade8c10f74e29ef4c4dd839ad283927b914c3ea` |
| 19 | `lemma` | [isIntegralCurve_const](../../../../OrdinaryDifferentialEquations/ODETransformPublic.lean/declarations/isintegralcurve-const.md) | 167 | `result-track:c989301cd5e5c3787758d34de675b8dd67ce59e12cedd706849ff5a4c7b3a422` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44674d21e1a62924d03399cf0845476d29880feb4cbe272d65fbe2b5c845a283 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/Transform/Varianta584b36c33d1038202cb435ee9fc19332518988f47233ad587261ec30765a46d.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/Transform/Varianta584b36c33d1038202cb435ee9fc19332518988f47233ad587261ec30765a46d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
