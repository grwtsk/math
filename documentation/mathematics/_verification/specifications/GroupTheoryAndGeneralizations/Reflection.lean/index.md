# Verification target: Reflection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8786faebf42e97cf8f1260a04f3728a65d2e2590",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Reflection.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Reflection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8786faebf42e97cf8f1260a04f3728a65d2e2590`.

Source path: `GRWTSK/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Ownership` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Transformation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ReflectionInterpretation](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/reflectioninterpretation.md) | 18 | `declaration-track:d11ec19c602dbda86f0e9af15a4b72286b8069d1950ddb009fb50ba11977a6a7` |
| 2 | `structure` | [CertifiedWorldReflection](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/certifiedworldreflection.md) | 30 | `declaration-track:9a8e3eff646967629dc349c7707a66f277d13682b50e8a30697e23665b4e906e` |
| 3 | `theorem` | [reflect_reflect](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/reflect-reflect.md) | 44 | `result-track:37d7c993d1b1cd8663baa1a64c4776cf4ab98374dcec081abbe56b1d97e22b3d` |
| 4 | `structure` | [AdditiveWorldReflection](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/additiveworldreflection.md) | 53 | `declaration-track:cf76a2cb6fc931d8d0f2ebef8e5c51875b072376402674c6a75a2089378e40f7` |
| 5 | `def` | [reflectionDefect](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/reflectiondefect.md) | 59 | `declaration-track:eb1e758373904c200bd65224f9a40b7c947ba6b6064dbdbdd9783761cc43d470` |
| 6 | `theorem` | [reflectionDefect_eq_zero_of_fixed](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/reflectiondefect-eq-zero-of-fixed.md) | 67 | `result-track:de4db78532814c47ba339ac54853852acadd720db79e83f477b40174eb966577` |
| 7 | `structure` | [ReflectionComparison](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/reflectioncomparison-source-edition-2.md) | 76 | `declaration-track:dd2cf7b5170ef346d044108330fad07f2b77ae8928e570abfb6e1c0c6bbeb9d2` |
| 8 | `def` | [reflectionComparison](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/reflectioncomparison.md) | 84 | `declaration-track:a3dbec4d7f20381d72aa727028d89c06496b46a6ad1b372071c0b1aaa0d67e00` |
| 9 | `structure` | [ReflectionCertificate](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/reflectioncertificate.md) | 96 | `declaration-track:d2f2a24d269ee8bb7139db447f3bf1cf78e75fc2c768cda6279039e9503ed45c` |
| 10 | `def` | [ReflectionCertificate.ValidFor](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/reflectioncertificate-validfor.md) | 102 | `declaration-track:8fd653450bee9ce609d4281ecf67c227d9cfa86029692aef5f2a82f16894ec49` |
| 11 | `theorem` | [reflection_version_change_rejects_stale_certificate](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/reflection-version-change-rejects-stale-certificate.md) | 109 | `result-track:78c92aa2e3103967f0e6fa12cf887f6ffde64838eeb684ce2875dc113a17a3d9` |
| 12 | `theorem` | [zero_reflection_defect_has_no_uniform_proof_eliminator](../../../../GroupTheoryAndGeneralizations/Reflection.lean/declarations/zero-reflection-defect-has-no-uniform-proof-eliminator.md) | 118 | `result-track:f947647abd1f53ee41a96e0dd86e3a1699967185d9896071291459fe6eb6e052` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c560d196f69f3740d9dbda5099958b1aa957daed0edc460dad066b265ba3fd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Reflection/Variantf4286289a9dca0954d7ba94ea6b64eeb9fae36420d49e15279b4d77cddcc8b1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
