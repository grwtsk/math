# Verification target: Expressible Numbers Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5a7c4f0fe0db5d4784465e3244e50525133e4bc",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5a7c4f0fe0db5d4784465e3244e50525133e4bc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RealNumberDescriptor](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/realnumberdescriptor.md) | 20 | `declaration-track:4fc900a10d97cf93a1f82a8cdc5d4de8d9b945991c3cb5eb7f15077a9ab0a86c` |
| 2 | `def` | [ComputablyExpressible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/computablyexpressible.md) | 24 | `declaration-track:b7237116a2e62a8005520b689c9ade4db111c391e033f654af36091c9b514dcf` |
| 3 | `def` | [ArithmeticallyExpressible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/arithmeticallyexpressible.md) | 25 | `declaration-track:de022eed6477ed7ccd6cbabeb0db6a15316600335eab79b1dbc283f160f2bbc5` |
| 4 | `def` | [AnalyticallyExpressible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/analyticallyexpressible.md) | 26 | `declaration-track:ffda05d0d936dafe12e85ecc4b3ef52ff20fa726d5bf06cf759aea263ef1a5af` |
| 5 | `structure` | [DefinabilityHierarchyCertificate](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/definabilityhierarchycertificate.md) | 28 | `declaration-track:5330e13a88257d06b10f985f1f7f9de746ca0d6cbbf237e8398be8135cbb1a42` |
| 6 | `theorem` | [computably_expressible_implies_arithmetically_expressible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/computably-expressible-implies-arithmetically-expressible.md) | 38 | `result-track:3620d686bec617a1c1019047a1570fca67924f6d79d0d93648852184e598a3a0` |
| 7 | `theorem` | [arithmetically_expressible_implies_analytically_expressible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/arithmetically-expressible-implies-analytically-expressible.md) | 44 | `result-track:e4597a5872582bea1af8fdb86dc501f8d1d827fa45808b28209ba745a3ec68dd` |
| 8 | `theorem` | [definability_hierarchy_sound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/definability-hierarchy-sound.md) | 50 | `result-track:9ca304a0ed5d8072b6a157f71d18c3211cad76058610380828605059dca4d6a9` |
| 9 | `structure` | [ExpressibleNumberFaceProjection](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/expressiblenumberfaceprojection.md) | 63 | `declaration-track:93956465b4325508bf7693615544a266709eb2184fa933e629f3036cc6f11e71` |
| 10 | `def` | [MeshFaceConstructsExpressibleNumber](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/meshfaceconstructsexpressiblenumber.md) | 80 | `declaration-track:558ac48aa8dc99eb678508bfca8546e61ed1ee0f253e3ddeedee1f2116937cc7` |
| 11 | `theorem` | [expressible_number_face_projection_sound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/expressible-number-face-projection-sound.md) | 84 | `result-track:89e569f0789be19e4b6d954a84f2bcd02a50568abd5712a1b0e71be9c781fc2b` |
| 12 | `theorem` | [mesh_face_not_expressible_number_constructor](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/mesh-face-not-expressible-number-constructor.md) | 99 | `result-track:d1509469a036ec231663115dc2a57d873ff904a2893c396ab5be8ab812ca77e1` |
| 13 | `def` | [StrictnessClaimWithoutAuthority](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/strictnessclaimwithoutauthority.md) | 105 | `declaration-track:2c6066054f27185c53fa05fadc58e1d1aa0f94f2bd8a5af9967aa8a70b57801f` |
| 14 | `def` | [StrictnessUnavailableAuthority](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/strictnessunavailableauthority.md) | 107 | `declaration-track:7ccf18d653893c26851b6c1a01403fb59fa9abe249fd493cf08b1ad1729176ad` |
| 15 | `theorem` | [strictness_claim_requires_authority](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/strictness-claim-requires-authority.md) | 109 | `result-track:b1053ecdc60fe481fede95b309f876f467f8583cc563d063587501a634f9a9f1` |
| 16 | `theorem` | [exists_arithmetical_not_computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/exists-arithmetical-not-computable.md) | 120 | `result-track:057ff2dd7fc16900b37b80e6a49753b177fa9809757fb398b30580b67ad68b97` |
| 17 | `theorem` | [exists_analytical_not_arithmetical](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ExpressibleNumbersNamespaced.lean/declarations/exists-analytical-not-arithmetical.md) | 129 | `result-track:89ea6be81ddf08de01bc538231ac9de8a61e47df92dcba70c338c351b80619d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56e1c79eae3aa9894806223e8d323394672d8a433195607a17fa32ff6afbe1da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/ExpressibleNumbers/Variant440adb58dc1cce06a13d21e7d1f11eed25415b732c3c7aa84fc2137c65763eb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
