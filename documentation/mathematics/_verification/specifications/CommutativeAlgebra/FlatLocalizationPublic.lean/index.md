# Verification target: Flat Localization Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe7578188b4e28db61ae3ed4a7fbe7f5c825d1f6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variantfc8269870f94101108ba2670a43304df250d16d55bfac2baa3eb4b19ee6ec27d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe7578188b4e28db61ae3ed4a7fbe7f5c825d1f6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Localization/Variantfc8269870f94101108ba2670a43304df250d16d55bfac2baa3eb4b19ee6ec27d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Localization/Variantfc8269870f94101108ba2670a43304df250d16d55bfac2baa3eb4b19ee6ec27d.lean.json)

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
| 1 | `theorem` | [IsLocalization.flat](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/islocalization-flat.md) | 37 | `result-track:5c7a5a1a35f43926470c608fbe9f75563f0fcef474a003a35507963e03e01a59` |
| 2 | `instance` | [Localization.flat](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/localization-flat.md) | 45 | `declaration-track:308b627437d36223cf99bce4dca87e8e0015fc87783cfccf58870d8049f521d6` |
| 3 | `theorem` | [flat_iff_of_isLocalization](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/flat-iff-of-islocalization.md) | 52 | `result-track:cafa9fbb8906087e4660df6aa063c7cf2b23093573aa409783ac40e48d29c4cb` |
| 4 | `theorem` | [flat_of_isLocalized_maximal](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/flat-of-islocalized-maximal.md) | 66 | `result-track:e9d4cbddd3b7506c5dfda141f7c942fc5acd48d783c8a5e3b0a454b6c2a2b663` |
| 5 | `theorem` | [flat_of_localized_maximal](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/flat-of-localized-maximal.md) | 75 | `result-track:8b2593d02fdd7253ac64b9ebb815ecfdc504e8673c07ac30ae326d10cf077e44` |
| 6 | `theorem` | [flat_of_isLocalized_span](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/flat-of-islocalized-span.md) | 91 | `result-track:2c3f31b0d5dcdd994d13a12df589e5d5505b5488fdd1565922630877fb877b06` |
| 7 | `theorem` | [flat_of_localized_span](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/flat-of-localized-span.md) | 100 | `result-track:b568065eca70fa89306412b7cc46da30cb75a46fac1ac5717d1ed53dcf24e750` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/instance.md) | 109 | `declaration-track:23357ba66e3f3cd6066e6904cfe234e7c2e0d36989aa155cafd44777dbb1e307` |
| 9 | `theorem` | [IsSMulRegular.of_isLocalizedModule](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/issmulregular-of-islocalizedmodule.md) | 119 | `result-track:48fd575b1729989479a78c540188570c7cf7243310e29da5128f36686ad5d273` |
| 10 | `theorem` | [IsSMulRegular.of_isLocalization](../../../../CommutativeAlgebra/FlatLocalizationPublic.lean/declarations/issmulregular-of-islocalization.md) | 126 | `result-track:de5ad1de863aeae684898138fdf49aaf9af6cf192264904491e5ad4f6466d16c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b23f3a981765695dbf1d47b29515d75165d252d4db41de1e0354c51c938a158 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Localization/Variantfc8269870f94101108ba2670a43304df250d16d55bfac2baa3eb4b19ee6ec27d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Localization/Variantfc8269870f94101108ba2670a43304df250d16d55bfac2baa3eb4b19ee6ec27d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
