# Verification target: PSigma Order Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58fa5e79e3eb2f252244e36e3448e411204ef2b2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantcf0d88df1792e3b64694cd1363a0ccabf6e3bff7dd8d08edaa7f6582c978e29d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58fa5e79e3eb2f252244e36e3448e411204ef2b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantcf0d88df1792e3b64694cd1363a0ccabf6e3bff7dd8d08edaa7f6582c978e29d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantcf0d88df1792e3b64694cd1363a0ccabf6e3bff7dd8d08edaa7f6582c978e29d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BoundedOrder` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Mathport.Notation` — import line 13; external provider; requires a separately pinned dependency.
- `Init.NotationExtra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/le.md) | 53 | `declaration-track:ecf5fca4a58d5465812f56bfe5d67250e14825173bb22deb19dba88420e2ba4d` |
| 2 | `instance` | [lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/lt.md) | 58 | `declaration-track:0da3788f2a8a92d82790a86bf269ee307b98d23b5614ffbe5194346abba1dc08` |
| 3 | `instance` | [preorder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/preorder.md) | 62 | `declaration-track:b6d38e68537be8eaec2c174667605e548943db75884995e2f8c60b73deea9df0` |
| 4 | `instance` | [partialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/partialorder.md) | 90 | `declaration-track:1840643773e650d631fd54eaf0726c2adea07f61dc8eabbf04059e25b454ba35` |
| 5 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/linearorder.md) | 101 | `declaration-track:53237a539c5ca96b0d855df81b1da069e545da624b30c28d6d3be1db0da85b5a` |
| 6 | `instance` | [orderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/orderbot.md) | 116 | `declaration-track:03371ab1faade577ccaf88ada004231005bd1e902baa7e9102b70674c3075839` |
| 7 | `instance` | [orderTop](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/ordertop.md) | 126 | `declaration-track:883a715e4ba8de056ca0dd20e49fd84cfd12bcfe88ace5a1cc40724a27b9a1ec` |
| 8 | `instance` | [boundedOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/boundedorder.md) | 136 | `declaration-track:7953edda642436b1ba341c4bf9ca6b214ffa6b728de9005703a515a43d6778de` |
| 9 | `instance` | [denselyOrdered](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/denselyordered.md) | 141 | `declaration-track:714e21a7907df625cccc66bc1064f4e0fc80e4fc7dcebdc7c86c84af536de220` |
| 10 | `instance` | [denselyOrdered_of_noMaxOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/denselyordered-of-nomaxorder.md) | 152 | `declaration-track:a32da017719f7d0e8f2d08a52e188c3d13400527e7e41da40f1157e354a8bd1c` |
| 11 | `instance` | [densely_ordered_of_noMinOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/densely-ordered-of-nominorder.md) | 162 | `declaration-track:c7cfd49ce1e102773acc0210a03c4444132f9ee23dab48011d73085dac03ca99` |
| 12 | `instance` | [noMaxOrder_of_nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/nomaxorder-of-nonempty.md) | 172 | `declaration-track:10a3623e5355ab3fbcbf72d0e5980a51f52b968eecd2fa2394b30b1c37311f03` |
| 13 | `instance` | [noMinOrder_of_nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/nominorder-of-nonempty.md) | 182 | `declaration-track:a6923d5df2f5a75fbd344b711407646d2a71a9437b971d62428586e111b60166` |
| 14 | `instance` | [noMaxOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/nomaxorder.md) | 191 | `declaration-track:b6b8f9c345579d70bd789d6b2dbd21e412c97508f8fdfd7c80105485623a9d94` |
| 15 | `instance` | [noMinOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/PSigmaOrderNamespacedAligned.lean/declarations/nominorder.md) | 199 | `declaration-track:207b1a0c65d629c381c52bfeec95b0dee4cf574db1123827ae14f2cdc0aea759` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0421585ab9e092cd0b2abdbcae45523ba13e77a6acfe0e06b818e5d8dfadd24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantcf0d88df1792e3b64694cd1363a0ccabf6e3bff7dd8d08edaa7f6582c978e29d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Variantcf0d88df1792e3b64694cd1363a0ccabf6e3bff7dd8d08edaa7f6582c978e29d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
