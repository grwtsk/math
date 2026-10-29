# Verification target: Complete Lat Cat Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9f57374758d83c4297340cea203b02e10bc9ef1",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9f57374758d83c4297340cea203b02e10bc9ef1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.BddLatCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompleteLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/completelatcat.md) | 32 | `declaration-track:b2bb8927929d3154f2d2083b1a80e962026b43656a5ed2e4da12b0ba333e9155` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/instance-source-edition-4.md) | 38 | `declaration-track:b3248432174387f08b6402476bd5bb2bcf82baa7bdc6ee8d5f3bae1194ac2723` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/instance-source-edition-2.md) | 41 | `declaration-track:48376519e4d7711dd5e6e6b0a1e329b531af4426c911bbb708e694bc1d87430d` |
| 4 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/of.md) | 45 | `declaration-track:b23541336ec748dc6092069d216780ef42c6010b31f9820f41cca083e56657b7` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/coe-of.md) | 50 | `result-track:8aa2ad3d605e3b4a9f4a672a3e5b49b17faaa1f3255f3b048b9c06cf5f6fa505` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/instance.md) | 54 | `declaration-track:0b69de16f145abfdf0df6ab095a2a6e0c3a28de9351f8a39d194716a54c7b51d` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:ad353940c8676153eb26dc99b01783dd2dce0daa7b0343d3bac64d802d50ddf2` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/instance-source-edition-5.md) | 65 | `declaration-track:d0574db84ac37a83a078feccc874e3528e47f79fe5e509d63dbe89dbc3f36fb2` |
| 9 | `instance` | [hasForgetToBddLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/hasforgettobddlat.md) | 68 | `declaration-track:1e26312b396326a80473fa0cd70491db1db3f0e1bbeb9db00888e6ef545bf58e` |
| 10 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/iso-mk.md) | 77 | `declaration-track:e845cabd05290e62b96ae80df7f2871e2d1d61840010a1496102757aa293867d` |
| 11 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/dual.md) | 86 | `declaration-track:9dd4ef85f4293e4f4b74f59a8d56d3346bc326c3f1c775f5f93cada48ed237f9` |
| 12 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/dualequiv.md) | 93 | `declaration-track:566fca1c9b51b19f283e7d106b187b6dd94c69e6bdeffa02482c762139283578` |
| 13 | `theorem` | [completeLatCat_dual_comp_forget_to_bddLatCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatCatNamespaced.lean/declarations/completelatcat-dual-comp-forget-to-bddlatcat.md) | 102 | `result-track:2d35bc543c137a58fa8282912c03a38b238d0fb8b09f11a01d79ccd967adfa43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4ff33b32a221d382de08bdad7408658db11067df58049c092245612afe5b7d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatCat/Variant3e6c278675d28253b622251bb81e158709183d9712efba29d2b1fc1a636a08e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
