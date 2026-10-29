# Verification target: Congruence Guard Attempt01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e271cc5ddcf2765c357f091985b028acd0fe3977",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variante49d5362c8b830e574183c266a5d1e67091f930dcaa7ee62d9ea0788a16ec424.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e271cc5ddcf2765c357f091985b028acd0fe3977`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variante49d5362c8b830e574183c266a5d1e67091f930dcaa7ee62d9ea0788a16ec424.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variante49d5362c8b830e574183c266a5d1e67091f930dcaa7ee62d9ea0788a16ec424.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.UnitaryGroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quadratic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/quadratic.md) | 24 | `declaration-track:3a6ece519af342e1c6a7e91482d54003433454335a852fb19b9b263dce45db38` |
| 2 | `def` | [HasNegativeDirection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/hasnegativedirection.md) | 27 | `declaration-track:0dfc0bdd385945d1b695f2990e19db00d17085687e974757b83e5817ac06ac22` |
| 3 | `def` | [pullback](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/pullback.md) | 30 | `declaration-track:6e8fdfd314ea45f5d856bc2608559238ab4675a4636f52a19945737c32d77510` |
| 4 | `theorem` | [quadratic_pullback](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/quadratic-pullback.md) | 32 | `result-track:cbcc85e62ec9c69785eb787d0bfb7c9f6e2767a66ac9743573d5a3f9f03ddbc7` |
| 5 | `theorem` | [pullback_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/pullback-ishermitian.md) | 37 | `result-track:6e9f93530ba22f996d665324466af68125cc4c29242aa2ff37fd28041d6df9c6` |
| 6 | `theorem` | [invertible_psd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/invertible-psd-iff.md) | 41 | `result-track:d61f67ca27547c1a0e0d6ea783f437192a809f762bf536e079d18fee48314d04` |
| 7 | `theorem` | [unitary_psd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/unitary-psd-iff.md) | 45 | `result-track:6a1d6f574893b7f43b80c43e431536fc54ef915831454342e28a32f2df9f2b44` |
| 8 | `theorem` | [inverse_negative_witness](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/inverse-negative-witness.md) | 50 | `result-track:a0da2f67ed6090ef02eba31c1a9fdbca10cfec6b1860c5b20fad688d0983ad18` |
| 9 | `theorem` | [invertible_negative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/invertible-negative-iff.md) | 56 | `result-track:0eff83ebe1d15078f59efe968ecaac5791865696ace0917557df61d0711faa3e` |
| 10 | `theorem` | [negative_not_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/negative-not-psd.md) | 64 | `result-track:f8f59d0369a7b01dd7fea04cbe954abebd5a79a40d68cbf263f0ac9ed24caad3` |
| 11 | `theorem` | [hermitian_negative_iff_not_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/hermitian-negative-iff-not-psd.md) | 70 | `result-track:764aef9e6d81d9ed62f93397e804535c47ffaf433734ff2dc0431162206efc77` |
| 12 | `theorem` | [pullback_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/pullback-one.md) | 82 | `result-track:c890df9cd09b283aef629ae176eed8ad40431b1d34c60af14a7ff8597e1f5c16` |
| 13 | `theorem` | [pullback_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/pullback-mul.md) | 85 | `result-track:533e8997c2e2b976008e6bc8ddd5ab1f358d3b8f3595cf339fbeff54ba7763a0` |
| 14 | `def` | [groupTransport](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/grouptransport.md) | 90 | `declaration-track:d22f7c8c556494872211344f3217f0abf3fe9f358feff0cb97a50debb03d5826` |
| 15 | `theorem` | [groupTransport_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/grouptransport-one.md) | 93 | `result-track:1db5b7716cd1d8693c6b0c912b5ef3ec20dd81188b655b556f5ae13246dce269` |
| 16 | `theorem` | [groupTransport_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/grouptransport-mul.md) | 97 | `result-track:8a35720d8c9298c8411f43f6487f41d7880a0f98e6301f768eb0b8126ad82f11` |
| 17 | `def` | [congruenceAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/congruenceaction.md) | 103 | `declaration-track:07d8b31b0ff614335da10e9c3e9280a0a5751cd77c29dda7cbbad39b03789ed0` |
| 18 | `theorem` | [group_negative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/group-negative-iff.md) | 109 | `result-track:4e5c737ea5635c3682515e8b3ad5327482bbb775251e8fee207786d0bf410bc4` |
| 19 | `theorem` | [group_orbit_not_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/group-orbit-not-psd.md) | 114 | `result-track:f734c350d429966713d7347562fb701f0254e768472317e44b5eab80ad57594c` |
| 20 | `structure` | [SourcePreserving](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/sourcepreserving.md) | 120 | `declaration-track:9b007b12fd95108d67891eb250c955464ee5683329bfd610d7379e52f90b0141` |
| 21 | `structure` | [CorrectedSource](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/correctedsource.md) | 125 | `declaration-track:474c00bf021140beca99916df73bbe35cdf9e7fbb8e2b01832588d06e4c6cf1d` |
| 22 | `structure` | [LossySource](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/lossysource.md) | 131 | `declaration-track:19d9844928fcd56cac31266f9af781089663f623e1661f646e18307261660c08` |
| 23 | `theorem` | [SourcePreserving.psd_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/sourcepreserving-psd-iff.md) | 136 | `result-track:559b56423e727d098b8580af9c1c16972fac6793b8750376b40dd4dbbffb22dc` |
| 24 | `theorem` | [SourcePreserving.negative_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/sourcepreserving-negative-iff.md) | 141 | `result-track:834a47538947831a46e5a432613e23e3db3f4c6d7629ac199054eb0f6a2dfe30` |
| 25 | `theorem` | [CorrectedSource.quadratic_defect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/correctedsource-quadratic-defect.md) | 146 | `result-track:2e22307ca8c82b53994fdf74302466f0a5b7b85e5813bf5db3bc1c7c291aa193` |
| 26 | `def` | [indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/indefinite.md) | 156 | `declaration-track:244f825bbdb6cffb0988f03f2cc599b4718fb8d43e1bc0c0165cc226010f9ec2` |
| 27 | `def` | [swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/swap.md) | 157 | `declaration-track:7e1282ec1b47f674d5dabcb813e440bfb9be93399ea8038624c5d9fb95bbc021` |
| 28 | `def` | [imaginaryShear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/imaginaryshear.md) | 162 | `declaration-track:234779df142219ec51a9166eb7a4a597dc9725804f26b1ce7f5d71833b2a9a8a` |
| 29 | `def` | [projection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/projection.md) | 168 | `declaration-track:a0928eaa57c2cb2670470e9da9352419111e1699a666534e645fed8d59422a26` |
| 30 | `theorem` | [indefinite_hermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/indefinite-hermitian.md) | 170 | `result-track:c54988e0f9546842cc96cf3f9db7fa97225bd8c68070acd84375d0f2cbe9e89b` |
| 31 | `theorem` | [indefinite_negative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/indefinite-negative.md) | 173 | `result-track:90533b4443b203ce3b249985bc2e8339582cd5bf715905dee9ac627f5837da1e` |
| 32 | `theorem` | [swap_still_indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/swap-still-indefinite.md) | 177 | `result-track:291a15952aca8f39f4f3ae6dd99f8db6a81c303f3b39825dadae4208fb92c4db` |
| 33 | `theorem` | [shear_actual_negative_value](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/shear-actual-negative-value.md) | 182 | `result-track:34047c2400f639ee545d085986b739cf89abbdb6cdbef8890148b4d9008c8d9d` |
| 34 | `theorem` | [shear_still_indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/shear-still-indefinite.md) | 187 | `result-track:9f8fb00a2d00f182d426f1f3f0133bd393e0f5296084ccbb28ad4fc905429318` |
| 35 | `theorem` | [projected_indefinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/projected-indefinite.md) | 193 | `result-track:0e2479ff04e08c1377a65ff1047b8f84d16402620544739b65f9945826165637` |
| 36 | `theorem` | [projection_psd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/projection-psd.md) | 197 | `result-track:b1265073ed21e908fb8b2151812b15cdd793264a34b9ad111a574b3bcc7abfa0` |
| 37 | `theorem` | [lossy_projection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/lossy-projection.md) | 204 | `result-track:0947819b876339da6f379ef3cbf145b626b0f6641197c9a2c5c8e9a1ccfa583e` |
| 38 | `theorem` | [singular_psd_does_not_reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/singular-psd-does-not-reflect.md) | 209 | `result-track:502e2be4b744c7779dc1f6b11c23bdf3124f62c60a096ceb0375c86cab09d606` |
| 39 | `theorem` | [correction_changes_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CongruenceGuardAttempt01Namespaced.lean/declarations/correction-changes-sign.md) | 213 | `result-track:e172e458422fa3bfa647131ccfe590e5a18070f32b2b27cf9cc4e550db2d6d3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd00610eee087a111d6dbf2ae0ad9141a22864aff52af15da3cd38d5d739a2c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variante49d5362c8b830e574183c266a5d1e67091f930dcaa7ee62d9ea0788a16ec424.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CongruenceGuardAttempt01/Variante49d5362c8b830e574183c266a5d1e67091f930dcaa7ee62d9ea0788a16ec424.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
