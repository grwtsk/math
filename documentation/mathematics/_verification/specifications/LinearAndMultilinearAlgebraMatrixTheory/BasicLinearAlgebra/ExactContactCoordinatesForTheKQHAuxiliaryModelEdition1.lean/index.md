# Verification target: Exact Contact Coordinates For The KQHAuxiliary Model Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f540e8f6b4d6e3c0fe2a6d182881d5c07ba496a",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant00eeb18048baa0ccfec7071f789a7ff0574e2fe3228eea2da9ff9f1da2fa060e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f540e8f6b4d6e3c0fe2a6d182881d5c07ba496a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant00eeb18048baa0ccfec7071f789a7ff0574e2fe3228eea2da9ff9f1da2fa060e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant00eeb18048baa0ccfec7071f789a7ff0574e2fe3228eea2da9ff9f1da2fa060e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Trigonometric` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/point.md) | 22 | `declaration-track:dffee96eb26a1501d8082bbafcb6dedf311e25f7538da58fb65a151f689527c9` |
| 2 | `def` | [flow0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/flow0.md) | 25 | `declaration-track:43dc236e98949ab4ca004a3da27724dc09e37ff08e4c8eebaa0e045bf8f315f0` |
| 3 | `def` | [flow1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/flow1.md) | 28 | `declaration-track:3c408d06680943cbb99e50a7c2b2036a48a7cc9f5f7c5709bc3e09c0f49230ec` |
| 4 | `def` | [central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/central.md) | 31 | `declaration-track:fc6b53c699ac8bcacd4bc969970ab30a5be59cdafaed764d0b725083fd9914f5` |
| 5 | `theorem` | [flow0_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/flow0-add.md) | 33 | `result-track:628d363f8e5940a0fd8904532c7184c52727a5b7fce0f54641bd17e80df8c3a0` |
| 6 | `theorem` | [flow1_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/flow1-add.md) | 36 | `result-track:ee25ebd5a2f570cf5a2783411c7d1dcf0f887c82242be60b92b34872fec364ac` |
| 7 | `theorem` | [flow0_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/flow0-inverse.md) | 39 | `result-track:cc4f6d27a167bad094259b910e3726e9b8c74e2c6c52fc15c620305f05d8c747` |
| 8 | `theorem` | [flow1_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/flow1-inverse.md) | 42 | `result-track:e2c12b910254d7a48a69ca935eb0b054f1b7a922c3c04cec3f4edafd0e9862be` |
| 9 | `theorem` | [contact_loop](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/contact-loop.md) | 46 | `result-track:4abf7b2a65c9a3eec1716cdedadbd23ba45937807d783c0a848adb71670a84bf` |
| 10 | `def` | [field0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/field0.md) | 51 | `declaration-track:16639ef668f09c08bfd634b9c66c8b734521aefdc2e435e56e0d454dc4facaf8` |
| 11 | `def` | [field1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/field1.md) | 54 | `declaration-track:8a37f071f3fc158e6a09639a8fb8cdff7ed001d4e8b022d6ac3123484f772046` |
| 12 | `theorem` | [field0_directional_derivative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/field0-directional-derivative.md) | 57 | `result-track:5a865514ca5ce55adebd4e2206051b5a28a4c5dcc04d752b5b4d484cd2eb9d09` |
| 13 | `theorem` | [field1_directional_derivative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/field1-directional-derivative.md) | 63 | `result-track:545f91fb29a112eeacf32db5030a122781b99d791a0cb5fd4a2ff648fb3063ff` |
| 14 | `def` | [bracket](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/bracket.md) | 69 | `declaration-track:86babecaac56c93960c57eaee2fef5a230da9c730aa5afad1ca1b70ab56796d5` |
| 15 | `theorem` | [contact_bracket](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/contact-bracket.md) | 71 | `result-track:9de44e10f0f9e1e5afda9b16504cf68455125117525a3c82f7cdfb111e0fb195` |
| 16 | `def` | [segment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/segment.md) | 75 | `declaration-track:f53caf1be34901df2fb5b0509ee9cbe2833ffacc5014b0956e470ae6ba34a610` |
| 17 | `theorem` | [segment_horizontal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/segment-horizontal.md) | 78 | `result-track:974f1d3d2c35e7cf40f26bc2313112c2052fdb5dd8fac2cbd107cae404beee73` |
| 18 | `def` | [endpoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/endpoint.md) | 84 | `declaration-track:3feca798f09691a7aec56e1a9ba6766011053a516ddfce08f320c955d2f78530` |
| 19 | `theorem` | [endpoint_formula](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/endpoint-formula.md) | 88 | `result-track:5632b6d389985b0bdeb0e5d41d34da49d37f7bd0ecd190b2e29f7ffcedf134d0` |
| 20 | `def` | [endpointJacobian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/endpointjacobian.md) | 97 | `declaration-track:6dea2c79b22c6a918f3d4619f66ee92c4299149053e535bea7e888124bf48355` |
| 21 | `theorem` | [endpoint_jacobian_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/endpoint-jacobian-det.md) | 103 | `result-track:63656d1191d1330ab623d4abcc2a84db057d054f367a5b1ae916b1493156519e` |
| 22 | `theorem` | [endpoint_fiber_moments](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/endpoint-fiber-moments.md) | 111 | `result-track:d51cf1000db6021a22f9f8fccc7ef0917fb1dc62236ddece4070c77b3fe4ac4b` |
| 23 | `def` | [phase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/phase.md) | 125 | `declaration-track:e7934cec7ae762c15d6b0bb7f581da71fa759af7f4e459a31113f65205a91650` |
| 24 | `theorem` | [phase_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/phase-add.md) | 127 | `result-track:5be06a7622bb138268153dd63ef6f3483a509868b0dad0b3a4ab8aa9a38e55fc` |
| 25 | `theorem` | [phase_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/phase-norm.md) | 134 | `result-track:c37b2e5142f679ce15a35a5d5d57e688b7e207333b574f4dcd7789b3b8ef2917` |
| 26 | `def` | [U](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/u.md) | 138 | `declaration-track:d89716549a3bafb31a8b568c6fe8ae100545c69ae5c4de7f6c1b4a04049f6236` |
| 27 | `def` | [V](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/v.md) | 142 | `declaration-track:3ba16da63a5bdf2aa2b72f577e067691878cfc5f9a36f920edcd43c88c6cf054` |
| 28 | `def` | [centralMode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/centralmode.md) | 146 | `declaration-track:e34dc04dbd69eeb85b85aa536890a262696720f6fb0f9bf2f742677bdcd24440` |
| 29 | `theorem` | [pullback_flow0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/pullback-flow0.md) | 149 | `result-track:9ef63eed06e5ad1d66657dccd531f2960b7f020bfc17b4e1f70b3cf36c0000ee` |
| 30 | `theorem` | [pullback_flow1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/pullback-flow1.md) | 155 | `result-track:0a2002a6b00a778f6c0b709d3a7d6b7cd7451d6c4cdfc2fdffa1f480ccbcb567` |
| 31 | `theorem` | [fiber_weyl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/fiber-weyl.md) | 161 | `result-track:9b71403b75e49e1e26d27fd2fc6c93be8c8bd65ac12561fc096dfbfa3b176d44` |
| 32 | `theorem` | [U_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/u-comp.md) | 168 | `result-track:a73019029f9a7e87f46a9e71b8ae15d42426db53a2fe112a560e6d190a658480` |
| 33 | `theorem` | [V_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/v-comp.md) | 174 | `result-track:5bf187a0b9507c2b29a7fde16ce2dc42890ae8190119097d2935b667ffc86489` |
| 34 | `theorem` | [U_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/u-norm.md) | 180 | `result-track:ba654392ef599e8f357ee4a3a1b7f62eb70c72db148423fdf4ebd72233670b30` |
| 35 | `theorem` | [V_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExactContactCoordinatesForTheKQHAuxiliaryModelEdition1.lean/declarations/v-norm.md) | 184 | `result-track:bef87da25bfb6bebf5581465801456f4bafc355e72a4d45ecb84587e4f4294be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f10b440c54af086684bcdf29c27ff8caddaafff50fe1926205d7e33bab6952b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant00eeb18048baa0ccfec7071f789a7ff0574e2fe3228eea2da9ff9f1da2fa060e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant00eeb18048baa0ccfec7071f789a7ff0574e2fe3228eea2da9ff9f1da2fa060e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
