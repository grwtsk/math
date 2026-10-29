# Verification target: Counit Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5069fbaed8179ee364175a5d343e900cd50e50b3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Counit/Variant03f76a28962247fc63ad638852812cde8d87c4be5f40955f4f978daafbb84cfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5069fbaed8179ee364175a5d343e900cd50e50b3`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Counit/Variant03f76a28962247fc63ad638852812cde8d87c4be5f40955f4f978daafbb84cfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Counit/Variant03f76a28962247fc63ad638852812cde8d87c4be5f40955f4f978daafbb84cfc.lean.json)

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
| 1 | `def` | [ACounit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/acounit.md) | 41 | `declaration-track:28143edcbcce218a7d16bafdf13e9279c2f7d652b65ce937768e807f5f4fefbe` |
| 2 | `theorem` | [ACounit_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/acounit-x.md) | 47 | `result-track:f7f52dfa8d28b69fa7bddd19ecc83504016a5ca465ffa20bd42ad5e02de38045` |
| 3 | `theorem` | [ACounit_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/acounit-c.md) | 52 | `result-track:dc343b86139da9498b00250b7ad236a8f0e0a57906b29b27352cdb01fa91934f` |
| 4 | `theorem` | [ACounit_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/acounit-surjective.md) | 57 | `result-track:84c3386f601282d82eca06205ada31552222670140b5a49c5fd8853ebfe6c7ae` |
| 5 | `def` | [counit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/counit.md) | 64 | `declaration-track:71091741fe687cbbb14508cea7b1721805b9fe3a8a5f07d4700dc13841c7fe6d` |
| 6 | `def` | [counitNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/counitnat.md) | 72 | `declaration-track:2b649b7f9e72dfb47401ce8abcb0a30de2728604ba6791079852ce24b2e1aeae` |
| 7 | `theorem` | [counit_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/counit-surjective.md) | 75 | `result-track:41506352869a8e6d3dca3dc5293790d98a37e50c621f4ec577da916e9bfb9f0c` |
| 8 | `theorem` | [counitNat_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/counitnat-surjective.md) | 78 | `result-track:118f9d207bf92e14caad59904824164d59dfafeef22bc945a6705374aaa2be48` |
| 9 | `theorem` | [counit_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/counit-c.md) | 81 | `result-track:afb82aeb5238184e02154c1c38dc8652962b2688a4ae8cb02da66c38459e867b` |
| 10 | `theorem` | [counitNat_C](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/counitnat-c.md) | 84 | `result-track:81616044da5688aceb1eeb4b128b12c9bf1d99410684f90a9ff8e9d20d2b2a07` |
| 11 | `theorem` | [counit_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/counit-x.md) | 90 | `result-track:04985ff44f451ea7c85c4ae735144a3a97cdd3ef2e915122e4e7bc802a1b20ea` |
| 12 | `theorem` | [counitNat_X](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/CounitPublic.lean/declarations/counitnat-x.md) | 94 | `result-track:0975ab5794364ebc556a16cafce0cd55d8a171c1c0ec32f06db8931e8bd67675` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5313868d4788efb775b9b6604e7ee3bd849e3665a6cbce93b514e260f31063a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Counit/Variant03f76a28962247fc63ad638852812cde8d87c4be5f40955f4f978daafbb84cfc.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Counit/Variant03f76a28962247fc63ad638852812cde8d87c4be5f40955f4f978daafbb84cfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
