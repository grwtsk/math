# Verification target: Internal Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "254de39125b2e9c19fd03767913d24ae8177f781",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalLimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `254de39125b2e9c19fd03767913d24ae8177f781`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Internal.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalLimits.lean/declarations/limit.md) | 38 | `declaration-track:438b37a79dc4bb432878f0279527b0cdd4465a5df5b34a62ce82e546196f9076` |
| 2 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalLimits.lean/declarations/limitcone.md) | 44 | `declaration-track:80d3b9055196f2d8484922419d843f19dedbcf220f4ac8611a4e2ddd46293e84` |
| 3 | `def` | [forgetMapConeLimitConeIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalLimits.lean/declarations/forgetmapconelimitconeiso.md) | 53 | `declaration-track:36c7269804bdbea33f8d4c61cdd7ac83c0ca73a66c3cbe1720e011b4f340f023` |
| 4 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalLimits.lean/declarations/limitconeislimit.md) | 61 | `declaration-track:7836511dda45930b07e91e172f3b447844caa1aa00cc128843c1854d2ca57088` |
| 5 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalLimits.lean/declarations/haslimitsofshape.md) | 77 | `declaration-track:71463d071f97920fe5993147c07990819d020551a601c4e2aa8018442b34bb28` |
| 6 | `instance` | [forget_freservesLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/InternalLimits.lean/declarations/forget-freserveslimitsofshape.md) | 82 | `declaration-track:fce12ddbd22ab038410103048d39f7d29326e876394b698a763647bf746b9434` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d81fa18fcffe468443992a7ac2f7cd167457479741f69df855bb8725778d2b28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9df1ade6805c8358f53238262047186cc8a07f40e6c722d4373a3b44d73a6c7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
