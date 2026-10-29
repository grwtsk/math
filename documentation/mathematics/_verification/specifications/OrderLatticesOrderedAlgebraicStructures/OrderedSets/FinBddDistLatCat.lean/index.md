# Verification target: Fin Bdd Dist Lat Cat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3f9f7bed90a70c81f69eb2be4287e8ffd87e5bc",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3f9f7bed90a70c81f69eb2be4287e8ffd87e5bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.BddDistLatCat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.FinPartOrd` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinBddDistLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/finbdddistlatcat.md) | 26 | `declaration-track:2321ef7ea1c42d2e2fc3b2148361d4e39154888602eccffb93cd791ef7354049` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/instance-source-edition-2.md) | 33 | `declaration-track:58281c49e28ec0963d0f4a03e9228be65635640395d8bad6d2f2b1563391a6f8` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/instance.md) | 36 | `declaration-track:220d32c07888093c52a3443f4a749372102a4308278f2d304bbedff32ce24d46` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/instance-source-edition-3.md) | 39 | `declaration-track:a3720e59188b6de5b438e1c520b2921ba52b848cabb46ef40eb43d51785775e7` |
| 5 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/of.md) | 45 | `declaration-track:85ce1fa457f07471f46ada5375c7a2faf285bc02cf44fc6ae6ce6de7d4d3b75a` |
| 6 | `def` | [of'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/of-source-edition-2.md) | 52 | `declaration-track:a0e9168efdd13243d10719e6d6d7030166cd6b49530e3e91133976c2f5617d8d` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:a4cdca2c0ce0fdeb3e4fc66139eff83737955c6b7c977f9eb3037be67f765173` |
| 8 | `instance` | [largeCategory](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/largecategory.md) | 62 | `declaration-track:85fca47c959810773b82242c52cca5741f5681a2c8852d61e7aa16116446e8cd` |
| 9 | `instance` | [concreteCategory](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/concretecategory.md) | 66 | `declaration-track:4bd7de3f13f7897660da82c3d89746d9c20fde7c75a30c0048bca1b0eb3e5bbf` |
| 10 | `instance` | [hasForgetToBddDistLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/hasforgettobdddistlatcat.md) | 70 | `declaration-track:751e018b8e751b9d9c3cf6168656a88bc574d5e42a7d401deff15bdf8621ce11` |
| 11 | `instance` | [hasForgetToFinPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/hasforgettofinpartord.md) | 74 | `declaration-track:1a032cc4a77c3460415d090bcdab7cd778f53cf528b304a2b65fc49d196ff076` |
| 12 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/iso-mk.md) | 83 | `declaration-track:5b4a2e8f8bccdbd01cc5d772b927c817919e6a0a4beec31a8583caf975e904dc` |
| 13 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/example.md) | 90 | `declaration-track:18846af1c530a1a33ca816209d4adc50ea258ae2d2215e2e972a00fe631ff58c` |
| 14 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/dual.md) | 95 | `declaration-track:e3c468fa78f5dc3d94140a3770ea869dd1b3641753f3c466ee81cfcca310e653` |
| 15 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/dualequiv.md) | 102 | `declaration-track:e7a5ad382164173404dad5c55ece2cd6f57239f3642efb19782f7d2dc08d9b80` |
| 16 | `theorem` | [finBddDistLatCat_dual_comp_forget_to_bddDistLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinBddDistLatCat.lean/declarations/finbdddistlatcat-dual-comp-forget-to-bdddistlatcat.md) | 111 | `result-track:5e031387612ddb480574d5a926010efb23f4343c866764d102fe7e00cc2db46f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56e343a6a2cd0be7fb843c6f0f317d3556b314e167725138987b856dee7ac79d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FinBddDistLatCat/Variant09b8be2e64267376a290539526eee5c34cbd9703500c52ee410ce91c64b94e69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
