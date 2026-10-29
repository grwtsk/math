# Verification target: Group With Zero Opposite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96cb06c284b99e60dad3fe2b4a6a05869d06cb7a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant121f185ff139000656ff989f15b1a13c4195b9ad84e09ceb33eb9e893634f56b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96cb06c284b99e60dad3fe2b4a6a05869d06cb7a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant121f185ff139000656ff989f15b1a13c4195b9ad84e09ceb33eb9e893634f56b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Opposite/Variant121f185ff139000656ff989f15b1a13c4195b9ad84e09ceb33eb9e893634f56b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NeZero` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instmulzeroclass-source-edition-2.md) | 27 | `declaration-track:da04be464486dded784b4b68fae3f6eea55db2d52edbc3a574a0371babe74eeb` |
| 2 | `instance` | [instMulZeroOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instmulzerooneclass-source-edition-2.md) | 31 | `declaration-track:fbf8a16f5ecee7a8434c4c5d8eff0d7e186cb608b5214fcdc1fee754130550f6` |
| 3 | `instance` | [instSemigroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instsemigroupwithzero-source-edition-2.md) | 35 | `declaration-track:1e69ff63c3bb794d7c79df96c5cf5766466e298c9b320cd8ae4a57d227221918` |
| 4 | `instance` | [instMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instmonoidwithzero-source-edition-2.md) | 39 | `declaration-track:f0049950ff13d56b8d8bd43640bc4d59c48a321f925ba366e697df908872ddac` |
| 5 | `instance` | [instGroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instgroupwithzero-source-edition-2.md) | 43 | `declaration-track:e37de4b339d195029954d7e30391560080c3aa6ba20701652d67e3d061b82925` |
| 6 | `instance` | [instNoZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instnozerodivisors.md) | 50 | `declaration-track:82c41c232787812e038af4b6a8e37ac694f6a84f678a6575763fc8abf02908a7` |
| 7 | `instance` | [instMulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instmulzeroclass.md) | 59 | `declaration-track:119bb4cd2f16368f9dbdb872018876fcf6c30288e4d15e2e507080b3efba5459` |
| 8 | `instance` | [instMulZeroOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instmulzerooneclass.md) | 63 | `declaration-track:b72ed50fdb68b07343b45de46fe806207a4c6038c2ac2437351b5fe3c95c0854` |
| 9 | `instance` | [instSemigroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instsemigroupwithzero.md) | 67 | `declaration-track:042f883bebcd55761213957a75527d4fe924b23c750869dcac474071b60180d7` |
| 10 | `instance` | [instMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instmonoidwithzero.md) | 71 | `declaration-track:8fc7b2bd8782368df615a1348f6dcfa41b7152369356818751f2649e6727e9fe` |
| 11 | `instance` | [instNoZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instnozerodivisors-source-edition-2.md) | 75 | `declaration-track:f84c96f3dbeda792f6b9211393723a2bcb5c096645ba2a4dde6a1b03fd64c1f7` |
| 12 | `instance` | [instGroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroOppositeNamespaced.lean/declarations/instgroupwithzero.md) | 80 | `declaration-track:05a17934e638e3be1016bcbb80abe5c8422beb97d3b596e0e001bec245052e31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e4dd63b638be3067a91434e67b80354def8c26b9fa63fd0e82c5de4eafd496f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Opposite/Variant121f185ff139000656ff989f15b1a13c4195b9ad84e09ceb33eb9e893634f56b.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Opposite/Variant121f185ff139000656ff989f15b1a13c4195b9ad84e09ceb33eb9e893634f56b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
