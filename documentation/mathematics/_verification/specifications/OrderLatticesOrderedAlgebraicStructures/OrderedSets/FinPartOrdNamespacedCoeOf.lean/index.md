# Verification target: Fin Part Ord Namespaced Coe Of

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3be8e45a76394849d8594b1cac45e18f660537f8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Variant20a9ae08c504510987e10aaae15a59c423a2e7db2e3ee8771002e372b93ee1da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3be8e45a76394849d8594b1cac45e18f660537f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Variant20a9ae08c504510987e10aaae15a59c423a2e7db2e3ee8771002e372b93ee1da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Variant20a9ae08c504510987e10aaae15a59c423a2e7db2e3ee8771002e372b93ee1da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FintypeCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.PartOrdCat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/finpartord.md) | 40 | `declaration-track:f2f7d6a12573c75244d6efc874bc734f0c89f5d9276c26e649fa2ace577c0b74` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:61417407ec189ed30746a6c4e8eeeb3f04b6634c769aa004c868e58fa9fda9b2` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/instance.md) | 50 | `declaration-track:1c4b44aa8f0e4bbd6fa5e37448416930385cadb26aebb3c7cc45b157f25f16e6` |
| 4 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/of.md) | 59 | `declaration-track:035fe957a51c40487d2c31c498fff7cc0d44708b9a63f9a6dae88d7e55da5d99` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/coe-of.md) | 64 | `result-track:30b2bef1dd777ef137722372be4f293b4406381dc4fb1a44ce59fb52895e7a2b` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/instance-source-edition-3.md) | 67 | `declaration-track:e42ca4a68ed6760fe17b4fc2a9b72b523ccdd7393c8691e054374760fd2dd65a` |
| 7 | `instance` | [largeCategory](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/largecategory.md) | 70 | `declaration-track:1d0edf2014a58a858a3d86f8c049b94b41d41e6cdd96f6c2ece7eed3b1b342c9` |
| 8 | `instance` | [concreteCategory](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/concretecategory.md) | 74 | `declaration-track:768a861d6e1d64d486e674c7e6954d76e6b0307681c99f9242801a59a3ac0fbf` |
| 9 | `instance` | [hasForgetToPartOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/hasforgettopartordcat.md) | 78 | `declaration-track:2197255b544c071ede562621904528d24e31855a0020c04374e2dc90e6837432` |
| 10 | `instance` | [hasForgetToFintype](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/hasforgettofintype.md) | 82 | `declaration-track:0187bda99464758536cdd799df30c1955ba66a9037754a3a6093ae8cc2e8c2da` |
| 11 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/iso-mk.md) | 91 | `declaration-track:ea3dab01acf5bc18ef2a09df47ea29e443c752a0f65bebadd9ded65acb350798` |
| 12 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/dual.md) | 104 | `declaration-track:712733101d71f755c36ac5268266f561f20e5649c14255d158473fbfb9fb6baa` |
| 13 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/dualequiv.md) | 111 | `declaration-track:cf04b5a4c92b9bf10e838c70a67981b2a2cfba3ef5971f9deb326ced8b595dfa` |
| 14 | `theorem` | [FinPartOrd_dual_comp_forget_to_partOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinPartOrdNamespacedCoeOf.lean/declarations/finpartord-dual-comp-forget-to-partordcat.md) | 119 | `result-track:2654b92a985c52628e14e6461f7b6f4e1098986ace813fe6b555e468f1b8b5db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efa9062d222e46505dccc2e88aa51482f6fe1e155d74c57c2b8adb9487e2939d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Variant20a9ae08c504510987e10aaae15a59c423a2e7db2e3ee8771002e372b93ee1da.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinPartOrd/Variant20a9ae08c504510987e10aaae15a59c423a2e7db2e3ee8771002e372b93ee1da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
