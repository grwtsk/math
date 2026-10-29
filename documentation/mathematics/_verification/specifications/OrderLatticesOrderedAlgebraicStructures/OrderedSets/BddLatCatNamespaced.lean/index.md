# Verification target: Bdd Lat Cat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86f5b2c6b30cf59dde5179075083c6f8d1f6a938",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant99186aa78ebbdfa324eef69a3ceb7ee0ef587b306cb8bf1656ebfa21fd77d06e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86f5b2c6b30cf59dde5179075083c6f8d1f6a938`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant99186aa78ebbdfa324eef69a3ceb7ee0ef587b306cb8bf1656ebfa21fd77d06e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant99186aa78ebbdfa324eef69a3ceb7ee0ef587b306cb8bf1656ebfa21fd77d06e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Opposites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BddOrdCat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.LatCat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.SemilatCat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BddLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/bddlatcat.md) | 37 | `declaration-track:69a33b39db83376b261aec2bf315f57473b4a579b8215428af2987e0f26dcf08` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/instance-source-edition-4.md) | 44 | `declaration-track:91482e0c53e6582261c3678794877d02e9e8408e2a653a4885b01dd6b0a40985` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:6778c65c2b5706e2af8ba8f9abc143ecf9b319eb23d5bb337594c3fdfe62e161` |
| 4 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/of.md) | 53 | `declaration-track:3e3cca61d8c836f312567626045776b0558c0e9998ffcfa5f12da23c956d8ebe` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/coe-of.md) | 59 | `result-track:e94881cac24a20f606272e887a949dc0b33a7de11aae59b8cfbd2420883d2c42` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/instance-source-edition-3.md) | 63 | `declaration-track:7609b2a48ff856211c7163c1397ec47e89ce9d63fa45d35a3ef7ab913fb66f10` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/instance.md) | 66 | `declaration-track:062fa18a1c2b22afd6e88270092ec4a09ea3d37598398d391448b16b46db0abd` |
| 8 | `instance` | [instFunLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/instfunlike.md) | 75 | `declaration-track:46ffbadc37e9a84ca8a0a6fc7fb7461b892b224e1bc4adddebc8e2de0c2903d2` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/instance-source-edition-5.md) | 78 | `declaration-track:a6c335fa582322dec0d607be061a18e0980e17713d2eff0638a315dbe1736a59` |
| 10 | `instance` | [hasForgetToBddOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/hasforgettobddord.md) | 84 | `declaration-track:eee01245b3b9547843ea9221af6be85c62edc63eb3d0ece50b660e47904f3e14` |
| 11 | `instance` | [hasForgetToLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/hasforgettolat.md) | 90 | `declaration-track:7bf591533af2eb089548e98768c714143da8111b6f155b0764e9cecde16ac2cd` |
| 12 | `instance` | [hasForgetToSemilatSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/hasforgettosemilatsup.md) | 97 | `declaration-track:ef89607236fd37faab0e7fc586e024bfd67292a321700aee1ec4e7b41ad3b501` |
| 13 | `instance` | [hasForgetToSemilatInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/hasforgettosemilatinf.md) | 103 | `declaration-track:ee116ca37e0a1ad1c070fa12b4f44685da2afddbfccea6c98d76622034ab5b3e` |
| 14 | `theorem` | [coe_forget_to_bddOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/coe-forget-to-bddord.md) | 110 | `result-track:370b5d82d03ab0975930de9c909d1492c1954728b100367369cbfe808e093341` |
| 15 | `theorem` | [coe_forget_to_latCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/coe-forget-to-latcat.md) | 115 | `result-track:bd420d33b943e0ced234cd5ad18012f5bdfb2a7b161a31a110c9de4e0bc8a334` |
| 16 | `theorem` | [coe_forget_to_semilatSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/coe-forget-to-semilatsup.md) | 120 | `result-track:658ae5986e36d1158a533bf372fd8fc7352bb9639287e59e568fe9cd0c4f3357` |
| 17 | `theorem` | [coe_forget_to_semilatInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/coe-forget-to-semilatinf.md) | 126 | `result-track:d442e9ed3bd1b7f43eb40528ae848b41b63d9dd99b97b1b3f2a3fa6b82fc24b2` |
| 18 | `theorem` | [forget_latCat_partOrdCat_eq_forget_bddOrd_partOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/forget-latcat-partordcat-eq-forget-bddord-partordcat.md) | 131 | `result-track:d2212fd572521b16034a3fffd0d3c413e4548dd4675b0fb1f151a101c9b39ba9` |
| 19 | `theorem` | [forget_semilatSup_partOrdCat_eq_forget_bddOrd_partOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/forget-semilatsup-partordcat-eq-forget-bddord-partordcat.md) | 137 | `result-track:902a17227e506de6324887ade58dc9b49013f83bb4b3b052a2e00ee7d42bec6f` |
| 20 | `theorem` | [forget_semilatInf_partOrdCat_eq_forget_bddOrd_partOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/forget-semilatinf-partordcat-eq-forget-bddord-partordcat.md) | 143 | `result-track:35593f875e3604df14ef329b87e20ab6a9e821f863c2f276ef036ee4068e2684` |
| 21 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/iso-mk.md) | 152 | `declaration-track:6e54df808542a7278e13e00a44842989d72cbef094a268adcf7a0abb1af2cb4f` |
| 22 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/dual.md) | 161 | `declaration-track:294df381a11d60edcfc5f3f81bcd0b94202e800bfe4413f1b15a1ebc554d66a1` |
| 23 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/dualequiv.md) | 168 | `declaration-track:7bfcaaad4de348add1339301d8c998040c75d2361c830b54e47aa2b7021cbc1b` |
| 24 | `theorem` | [bddLatCat_dual_comp_forget_to_bddOrdCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/bddlatcat-dual-comp-forget-to-bddordcat.md) | 177 | `result-track:87de7bab4e1aaad685ce0094410a868c17874283c791894ebd6475808f686f62` |
| 25 | `theorem` | [bddLatCat_dual_comp_forget_to_latCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/bddlatcat-dual-comp-forget-to-latcat.md) | 183 | `result-track:aa1451c10a8b3bc3ceab8730851d49c03bfb4c0ed352d02d1c1b6665d4b4ea2d` |
| 26 | `theorem` | [bddLatCat_dual_comp_forget_to_semilatSupCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/bddlatcat-dual-comp-forget-to-semilatsupcat.md) | 188 | `result-track:b80976dc7924cf246dd15aad91522bb562cb1e72ddbb9449139cc293e8bfd1cd` |
| 27 | `theorem` | [bddLatCat_dual_comp_forget_to_semilatInfCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/bddlatcat-dual-comp-forget-to-semilatinfcat.md) | 194 | `result-track:b0b1131c6d6206a93853cbe1d580238d602c35a0305abaaae6ede7867f83d6c8` |
| 28 | `def` | [latToBddLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/lattobddlatcat.md) | 201 | `declaration-track:06bedc6fab06f95e007703aec4d6a3a849241d59a6dd1aaeb50e87517d014333` |
| 29 | `def` | [latToBddLatCatForgetAdjunction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/lattobddlatcatforgetadjunction.md) | 210 | `declaration-track:06271afc1a14d611d5c1d8a8591541b2d1141050a5992151113d12cb038a2a9f` |
| 30 | `def` | [latToBddLatCatCompDualIsoDualCompLatToBddLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddLatCatNamespaced.lean/declarations/lattobddlatcatcompdualisodualcomplattobddlatcat.md) | 244 | `declaration-track:68eeeaeb84b5f104c6c60693b78db72d07557687e0feedbad0c8d9e5aa747a9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e8d25a43ac91469d5b552b2778b13101c4e74c880ed5cd186f0be69b75fa9d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant99186aa78ebbdfa324eef69a3ceb7ee0ef587b306cb8bf1656ebfa21fd77d06e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BddLatCat/Variant99186aa78ebbdfa324eef69a3ceb7ee0ef587b306cb8bf1656ebfa21fd77d06e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
