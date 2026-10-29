# Verification target: Lattice Prod Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e01bd0ef62691b05524d9270969cda2d12601b6b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantacb549178f45eb8a7b7c00950141e43601221a09526cdc4d21ca0883d691702f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e01bd0ef62691b05524d9270969cda2d12601b6b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantacb549178f45eb8a7b7c00950141e43601221a09526cdc4d21ca0883d691702f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Prod/Variantacb549178f45eb8a7b7c00950141e43601221a09526cdc4d21ca0883d691702f.lean.json)

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
| 1 | `theorem` | [sup_product_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/declarations/sup-product-left.md) | 41 | `result-track:3c394357a7b1476094bf002d5687a53e8c9ef56a1ebf422386c10ed1ba0cb591` |
| 2 | `theorem` | [sup_product_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/declarations/sup-product-right-source-edition-2.md) | 46 | `result-track:c4b778f889280c94f866d4502bfb7434c2e7f571905f1acb85571aa7f926879f` |
| 3 | `lemma` | [sup_prodMap](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/declarations/sup-prodmap.md) | 55 | `result-track:8d07cfb6904da6ff483e26662cb4e954ea3ede35efa20dfa3bca8b4255dfdc80` |
| 4 | `theorem` | [sup_inf_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/declarations/sup-inf-sup-source-edition-2.md) | 74 | `result-track:81133c2a5543de0a1b463e305e0bb44f78d661b6dd82c9852e5446a2abe220db` |
| 5 | `theorem` | [sup'_product_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/declarations/sup-product-left-source-edition-2.md) | 87 | `result-track:ec2a10d31b4c429bb433ed72e6f2d5fba3b51d81266e4485db83cb5dc237814f` |
| 6 | `theorem` | [sup'_product_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/declarations/sup-product-right.md) | 92 | `result-track:7d10ac2ebb568280bc3cf3ca3b7f458e171f00a92b3abb6650ddbc534884e711` |
| 7 | `lemma` | [prodMk_sup'_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/declarations/prodmk-sup-sup.md) | 102 | `result-track:d240b4bc6cd4fab3f74e0c9a5140a788aa2e3e0a9510b40e6453a92fa3c4abc6` |
| 8 | `lemma` | [sup'_prodMap](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/declarations/sup-prodmap-source-edition-2.md) | 113 | `result-track:f55feac4ec8721ec010c5e5c30885b766cec9f74cf2ec8d69fef5a14ec7fcef2` |
| 9 | `theorem` | [sup'_inf_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeProdNamespacedPublic.lean/declarations/sup-inf-sup.md) | 126 | `result-track:4726148a49589eb5e6c72acfb7d0bde35b23cc5f98e5cb05880a106d6fc0e26f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57acc3cb582c5584215e939ad536c90d7039dabd5de28241351663c9a29beec8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Prod/Variantacb549178f45eb8a7b7c00950141e43601221a09526cdc4d21ca0883d691702f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Prod/Variantacb549178f45eb8a7b7c00950141e43601221a09526cdc4d21ca0883d691702f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
