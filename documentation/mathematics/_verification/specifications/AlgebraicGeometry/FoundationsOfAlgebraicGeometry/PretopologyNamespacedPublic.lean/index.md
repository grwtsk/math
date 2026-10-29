# Verification target: Pretopology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06a579e2c509d67b25babc546bd0d64e91e6fdff",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06a579e2c509d67b25babc546bd0d64e91e6fdff`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean.json)

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
| 1 | `def` | [pretopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/pretopology.md) | 45 | `declaration-track:baa28a7bb2df24d0b8f3b37c27d963eba1346dadedcf3d36c1199e139b26818a` |
| 2 | `abbrev` | [grothendieckTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/grothendiecktopology.md) | 51 | `declaration-track:9724496fa482589424bfb5dc19828c207dbf5afd430e44d73f4e85141bb9ef28` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/instance.md) | 55 | `declaration-track:025506ce82aad58cdb50cab21f1267706f9f5b33cbdb36dbe695dbc71ef6924c` |
| 4 | `def` | [jointlySurjectivePretopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/jointlysurjectivepretopology.md) | 60 | `declaration-track:6b58606953498070e1c086e8eba4bc02c11661106bfad562ee05c313b40170cd` |
| 5 | `lemma` | [Cover.mem_grothendieckTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/cover-mem-grothendiecktopology.md) | 66 | `result-track:dfa9bce13cc005df7fede1deb9bfb8f72bee74277c42a19611311369557380ca` |
| 6 | `lemma` | [bot_mem_grothendieckTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/bot-mem-grothendiecktopology.md) | 70 | `result-track:91aa19f8fca7b5b5a1227e70c7ee4fc30f104db9a64d09cac64ab057c2a5a6dd` |
| 7 | `lemma` | [Cover.mem_pretopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/cover-mem-pretopology.md) | 77 | `result-track:1aa28d65e8fa95e752a7253553b35c4013e96b03cb3fef2bdcad5fb5bb964536` |
| 8 | `lemma` | [mem_pretopology_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/mem-pretopology-iff.md) | 81 | `result-track:f9a5336b90884d582349f5e4da042d1d25b2a2fb0a89f90be6510db3a2e94696` |
| 9 | `lemma` | [mem_grothendieckTopology_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/mem-grothendiecktopology-iff.md) | 88 | `result-track:7a83eecfa66f6fcaabf8aefbf5f824ce4fa5264c70296f743fe6a48c7cbd7b1a` |
| 10 | `def` | [jointlySurjectiveTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/jointlysurjectivetopology.md) | 103 | `declaration-track:c6693ed2355e8d0b34c47ac29757f8f1a61c1bd717fd6c4709ad2e9a69680003` |
| 11 | `theorem` | [mem_jointlySurjectiveTopology_iff_jointlySurjectivePretopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/mem-jointlysurjectivetopology-iff-jointlysurjectivepretopology.md) | 111 | `result-track:c6a0cc2bd265d21bad7b1ca2921c8f01c59df8ec8a044430009e827f55c25d8c` |
| 12 | `lemma` | [jointlySurjectiveTopology_eq_toGrothendieck_jointlySurjectivePretopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/jointlysurjectivetopology-eq-togrothendieck-jointlysurjectivepretopology.md) | 116 | `result-track:57f9da3baa07b0a7b845ed8edbdd038a999014cb8ce12ee2cc2c529b00948f9d` |
| 13 | `lemma` | [pretopology_eq_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/pretopology-eq-inf.md) | 126 | `result-track:137081261a11e85cbdb5a5e63e2d93ba8bfffa807e87ee9b44415f5b5ad18dfb` |
| 14 | `lemma` | [grothendieckTopology_eq_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/grothendiecktopology-eq-inf.md) | 133 | `result-track:6eef13f9ce17cabfe2ec3a926d0ecf65a235bb7be8d1faa574e11ca8d98a0a93` |
| 15 | `lemma` | [grothendieckTopology_monotone](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/grothendiecktopology-monotone.md) | 144 | `result-track:1a7f6ee7cfba6a8c9116a093a0752a120e90d7f8f45ed576ce8ea201d79516c6` |
| 16 | `lemma` | [pretopology_monotone](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PretopologyNamespacedPublic.lean/declarations/pretopology-monotone.md) | 151 | `result-track:69e4b9a8e1d33b9bf94f348f5b5a7fff124e5a4975f043ab47cc5832fbee718d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83c2a9ae38d9092374ad60f2d94744600da69e089fbf7a0d81c94302ba59e34b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
