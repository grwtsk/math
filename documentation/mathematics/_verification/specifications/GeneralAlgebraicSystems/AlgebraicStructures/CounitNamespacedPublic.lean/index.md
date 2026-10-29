# Verification target: Counit Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "252cbcb5c93bf9c62e275ef223e25f163acf6c72",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Counit/Variant488fa77c13e7212df4a44d642da44ee6cf8f0fe2c1e7b344698ed59c9d477d17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `252cbcb5c93bf9c62e275ef223e25f163acf6c72`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Counit/Variant488fa77c13e7212df4a44d642da44ee6cf8f0fe2c1e7b344698ed59c9d477d17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Counit/Variant488fa77c13e7212df4a44d642da44ee6cf8f0fe2c1e7b344698ed59c9d477d17.lean.json)

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
| 1 | `def` | [ACounit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/acounit.md) | 49 | `declaration-track:350be815c74d63b3a8f1c37017b26a11b8032e5f711b8d7e7d16df509341c5ab` |
| 2 | `theorem` | [ACounit_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/acounit-x.md) | 55 | `result-track:4bbceffccd570340619e0f4b5568200ee6ccb9c39e9553fc78f0fadbdf706fb9` |
| 3 | `theorem` | [ACounit_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/acounit-c.md) | 60 | `result-track:435b67672a07d8c750aa5726077307bb8efb2518e9dd8f7147883ca1f23e9773` |
| 4 | `theorem` | [ACounit_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/acounit-surjective.md) | 65 | `result-track:dd544380e7c5ade17b58f572ed00d5b4865129d61e21a11eb021e1383cf2f1c5` |
| 5 | `def` | [counit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/counit.md) | 72 | `declaration-track:c425259a5cfab764d37acfc332591284d514720d8d263dd7a4929f540fe361b3` |
| 6 | `def` | [counitNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/counitnat.md) | 80 | `declaration-track:22d3d291ba5be796aac368d69d82b4fcd40a7b3222eb1daa548840c7ac8a09a9` |
| 7 | `theorem` | [counit_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/counit-surjective.md) | 83 | `result-track:3ebd592cd231015d68b9abd28671406da50780fb5e0f8130503eaeb9b6991365` |
| 8 | `theorem` | [counitNat_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/counitnat-surjective.md) | 86 | `result-track:4c5767ba87a546cd047364f2a695e93ce6febdee4bd4d0e37f34276dd30f5a8c` |
| 9 | `theorem` | [counit_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/counit-c.md) | 89 | `result-track:3000477a511d59b7f7fdcde35666d23b5aba44c9d4f7e37264171fb6f1a81768` |
| 10 | `theorem` | [counitNat_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/counitnat-c.md) | 92 | `result-track:e41f1d7d902e5753444371c7d82292309374822d11df21dbe1540fdef2f62d94` |
| 11 | `theorem` | [counit_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/counit-x.md) | 98 | `result-track:df45c12b12fc849488ec216a2b24cfb6ee24cf9940f482126e73facceacc6a3f` |
| 12 | `theorem` | [counitNat_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitNamespacedPublic.lean/declarations/counitnat-x.md) | 102 | `result-track:6577c8b4275c544064cc2a8260df44b4db9ca9daa3c5b8e2c8beec25088a3889` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8970b47f2a01a6589eb619d0937f5ad484d40e8fb4b408e3d93ae2b11e4a94c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Counit/Variant488fa77c13e7212df4a44d642da44ee6cf8f0fe2c1e7b344698ed59c9d477d17.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Counit/Variant488fa77c13e7212df4a44d642da44ee6cf8f0fe2c1e7b344698ed59c9d477d17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
