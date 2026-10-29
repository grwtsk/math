# Verification target: Derivation Bundle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2e54e5b087ec4fd8545fda9aebca3c178602dfe",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DerivationBundle/Variant0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/DerivationBundle.lean/index.md) · [Full source](../../../../DifferentialGeometry/DerivationBundle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2e54e5b087ec4fd8545fda9aebca3c178602dfe`.

Source path: `GRWTSK/Geometry/DerivationBundle/Variant0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DerivationBundle/Variant0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.SmoothFunctions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Derivation.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [smoothFunctionsAlgebra](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/smoothfunctionsalgebra.md) | 30 | `declaration-track:cf26b50e0cb941e79f8cc951fa0f4ad5365fa2f6ddf84f5ae25db2cb31839545` |
| 2 | `instance` | [smooth_functions_tower](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/smooth-functions-tower.md) | 32 | `declaration-track:0f1c22d1dc03faf0b6354e7a591d2b93f51d5fc0e8f32e56f6fba100c7f0f64a` |
| 3 | `def` | [PointedContMDiffMap](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/pointedcontmdiffmap.md) | 38 | `declaration-track:3820ad68c9708ea2a5fc36a988a8663943aa9a5aa7dcea825b72ddaff1d29ce4` |
| 4 | `instance` | [instFunLike](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/instfunlike.md) | 52 | `declaration-track:3884121b6e30c07bb15314fde19493cc1601b57578dad29853189020fff99e5b` |
| 5 | `instance` | [(anonymous)](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/instance-source-edition-3.md) | 55 | `declaration-track:905346e74cb6e690c986270d9910ab6eb922c9c124aac4b627acacb8b7ad63aa` |
| 6 | `instance` | [(anonymous)](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/instance.md) | 58 | `declaration-track:6c75880cc9142f8a8ae1f566cda2869ec3167c25711d5bf46a4f7c0446c14d96` |
| 7 | `instance` | [(anonymous)](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/instance-source-edition-5.md) | 61 | `declaration-track:a484525322d0718e460914139a35a31b0e2813b6a6c2e023e43eacfcd22724d6` |
| 8 | `instance` | [(anonymous)](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/instance-source-edition-4.md) | 64 | `declaration-track:9d6d000b00805131376f0c625affaff99ea6065e11cf0e2e2901f2ad562453aa` |
| 9 | `instance` | [(anonymous)](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/instance-source-edition-6.md) | 67 | `declaration-track:c1708fb72728c98a69676b0fc12ec6885b9460b2c99f8efbca690195f623fc72` |
| 10 | `instance` | [evalAlgebra](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/evalalgebra.md) | 73 | `declaration-track:4f902929c84519149c10fbac0313caa084ef7851b084f59c660bf10bb610fcde` |
| 11 | `def` | [eval](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/eval.md) | 77 | `declaration-track:a0fb4a6fbbcb510818b991a888d39a4d5122e46ffe82f6095d784ffbfbb87f06` |
| 12 | `theorem` | [smul_def](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/smul-def.md) | 80 | `result-track:b71bd16930b0b017b438b973912b5a79d80f573292e6adffe2f26748b77fa00f` |
| 13 | `instance` | [(anonymous)](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:8e5d67611fb28745bb51d597be9e0d87304f06ee3a55fe85fdffa8e7bceee360` |
| 14 | `abbrev` | [PointDerivation](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/pointderivation.md) | 95 | `declaration-track:092bd063d2643f43ba66fd5c5c530937aa65c77df06fad4a0527261eb98a5151` |
| 15 | `def` | [ContMDiffFunction.evalAt](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/contmdifffunction-evalat.md) | 106 | `declaration-track:2bbe94dd7cb24f6579d0a628dc16c278dd584d4b1c006611700ad7655b4edca8` |
| 16 | `def` | [evalAt](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/evalat.md) | 116 | `declaration-track:94149c65cbcf3f901149cf7bac9cc9ebb8d6b4b297587662f86c9d3af079d41b` |
| 17 | `theorem` | [evalAt_apply](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/evalat-apply.md) | 119 | `result-track:de0dc3caebbec59e44dfce485664fed5ee38b199ab9d727f5b423a8a6ea39d99` |
| 18 | `def` | [hfdifferential](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/hfdifferential.md) | 132 | `declaration-track:c7591f6482dc216fc79e463d95e7a1804a3b8c6372d1e909b37f76cca745d4c4` |
| 19 | `def` | [fdifferential](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/fdifferential.md) | 150 | `declaration-track:e74e05ac87ba3808906d5d0e03d8e5c50abd5786ee7dd8cccc646a6340a6968e` |
| 20 | `theorem` | [fdifferential_apply](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/fdifferential-apply.md) | 161 | `result-track:6c85634436ef6049f8d4e19f71a7c3d2e94efe599f7ff4b19bfdf459eb891d76` |
| 21 | `theorem` | [hfdifferential_apply](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/hfdifferential-apply.md) | 167 | `result-track:eefcef22e2fcea95e75d4375be4e64decd225dffe4d117af24202f01451a8977` |
| 22 | `theorem` | [fdifferential_comp](../../../../DifferentialGeometry/DerivationBundle.lean/declarations/fdifferential-comp.md) | 177 | `result-track:2993bc8261a948d2a51048c629c1131ed56562698c8877e58cd358034d70fd49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c383bbf4f47fb0cf941799bcb8a8a3cd08c2231e0dd3028bcc0c0067519f34e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DerivationBundle/Variant0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5.lean","GRWTSK/_verification/specifications/Geometry/DerivationBundle/Variant0a37d727d2adc40c1e811aca78015f09c332ad755988ea86468fc1385e616cb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
