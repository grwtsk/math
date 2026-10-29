# Verification target: Integral Curve Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c256e88d65b265352b797a85e4d27177afd5353a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/Basic/Variant8423c17adefbf5d3bbe5d6ddc0ca4c830d2f78529ae5346cd4c6b4832a025085.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/IntegralCurveBasic.lean/index.md) · [Full source](../../../../DifferentialGeometry/IntegralCurveBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c256e88d65b265352b797a85e4d27177afd5353a`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/Basic/Variant8423c17adefbf5d3bbe5d6ddc0ca4c830d2f78529ae5346cd4c6b4832a025085.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/Basic/Variant8423c17adefbf5d3bbe5d6ddc0ca4c830d2f78529ae5346cd4c6b4832a025085.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.MFDeriv.Tangent` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIntegralCurveOn](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveon.md) | 57 | `declaration-track:3595986c250f60c8253485f508ae7d3a8978a062c8ed48123227ed97cab372f3` |
| 2 | `def` | [IsIntegralCurveAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveat.md) | 63 | `declaration-track:7b1548f651d2acbd9a9c250f0d208cf07e37346882f0ae856e7f5e22be20f740` |
| 3 | `def` | [IsIntegralCurve](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurve.md) | 68 | `declaration-track:f2ef4321ac823a8ba65a4e29d44cd0034a321ccbeb7553d99af933870d582e95` |
| 4 | `lemma` | [IsIntegralCurve.isIntegralCurveOn](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurve-isintegralcurveon.md) | 73 | `result-track:e70beec4af94293ef262db7df58b0805bb8d700dd781dc830465ae5e2fb47787` |
| 5 | `lemma` | [isIntegralCurve_iff_isIntegralCurveOn](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurve-iff-isintegralcurveon.md) | 76 | `result-track:c541f16fb5e997df888267d8f6dffba6092767efbb83befa08b403b050d29ff0` |
| 6 | `lemma` | [isIntegralCurveAt_iff](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveat-iff-source-edition-2.md) | 79 | `result-track:b711e11f437da21cdf746755eecbd811c238cf50cdc8fd960fefa764663fa273` |
| 7 | `lemma` | [isIntegralCurveAt_iff'](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveat-iff.md) | 85 | `result-track:4c25cba58ff05e3962bdc2a2adf22b03ee461eca99d05c55b0426e6dd9fd29dd` |
| 8 | `lemma` | [IsIntegralCurve.isIntegralCurveAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurve-isintegralcurveat.md) | 89 | `result-track:4f202e4163cd7f04de3ed30899f4ecda2d33f61ba4c382a8207c73581fd46290` |
| 9 | `lemma` | [isIntegralCurve_iff_isIntegralCurveAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurve-iff-isintegralcurveat.md) | 92 | `result-track:2b0c330e89ec211a062b64a738ddbb04ca4385d65afc063b2ddcdbc98abf9c91` |
| 10 | `lemma` | [IsIntegralCurveOn.mono](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveon-mono.md) | 98 | `result-track:5e1bd2ea8392f93bd247450f677c81fe9f64edc7a2cc387a0cc7372465c833d3` |
| 11 | `lemma` | [IsIntegralCurveOn.of_union](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveon-of-union.md) | 101 | `result-track:f9ad99386954a19818ee5130d7abf019185a90fd8cfa5aed11775940d8b013ff` |
| 12 | `lemma` | [IsIntegralCurveAt.hasMFDerivAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveat-hasmfderivat.md) | 104 | `result-track:c1d1687af0f75582275fece9c039e70d6d1ad4e8cdc5a6854d4b70abda91bb7c` |
| 13 | `lemma` | [IsIntegralCurveOn.isIntegralCurveAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveon-isintegralcurveat.md) | 109 | `result-track:4ba7d4ba3e272f2569236191b925a7c263483a71de08e3d0ed464a574fb8364b` |
| 14 | `lemma` | [IsIntegralCurveAt.isIntegralCurveOn](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveat-isintegralcurveon.md) | 113 | `result-track:6ee9087c8b3c4551b14447b931ef6b91a002be43d0fba2c0bb42a31a622459d1` |
| 15 | `lemma` | [isIntegralCurveOn_iff_isIntegralCurveAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveon-iff-isintegralcurveat.md) | 119 | `result-track:529b322e58dd102d65fc09de1d24160106dce9a4d7fa42c82ccfa4c2980adeae` |
| 16 | `lemma` | [IsIntegralCurveOn.continuousAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveon-continuousat.md) | 123 | `result-track:48c06d20fdeacedca4a86161fd554160abec68db4ee3cdbeb29718f2513cf0ad` |
| 17 | `lemma` | [IsIntegralCurveOn.continuousOn](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveon-continuouson.md) | 126 | `result-track:b1d721841d1b598501f0d678d74f6456907564528b1a41fee41c888ea8ad6fed` |
| 18 | `lemma` | [IsIntegralCurveAt.continuousAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveat-continuousat.md) | 129 | `result-track:203630131b8716e215c90b4445bcd5b1943cdbf52d3640c3ec63e4b1a095c114` |
| 19 | `lemma` | [IsIntegralCurve.continuous](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurve-continuous.md) | 134 | `result-track:9cedb2b9e2590dc5915a3f8d8ac5dca485547727a1cd2bf23f7c6590cfff8fc3` |
| 20 | `lemma` | [IsIntegralCurveOn.hasDerivAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveon-hasderivat.md) | 141 | `result-track:9ada06d21be1370ada96b2016f0e5fc4f721ba80f7f8165e5535f1cdca23f23b` |
| 21 | `lemma` | [IsIntegralCurveAt.eventually_hasDerivAt](../../../../DifferentialGeometry/IntegralCurveBasic.lean/declarations/isintegralcurveat-eventually-hasderivat.md) | 157 | `result-track:d1b617602a22b6c218339df54b83e85332ba84ee2b7248c14e4322d8d5d389fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e82cae7ebdf1950c3419dfba2b673bdb5cbbea22743442a0aaf67613095e34f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/Basic/Variant8423c17adefbf5d3bbe5d6ddc0ca4c830d2f78529ae5346cd4c6b4832a025085.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/Basic/Variant8423c17adefbf5d3bbe5d6ddc0ca4c830d2f78529ae5346cd4c6b4832a025085.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
