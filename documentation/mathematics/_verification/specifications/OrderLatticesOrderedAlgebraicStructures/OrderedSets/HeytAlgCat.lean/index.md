# Verification target: Heyt Alg Cat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "236043eb7b093547a1277f59c68f015c020bc949",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variant27a98ef5d5b0e69db7ec889c4457a8d0e3815f0768671f9594e95f4cd1ef4e7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `236043eb7b093547a1277f59c68f015c020bc949`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variant27a98ef5d5b0e69db7ec889c4457a8d0e3815f0768671f9594e95f4cd1ef4e7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variant27a98ef5d5b0e69db7ec889c4457a8d0e3815f0768671f9594e95f4cd1ef4e7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.BddDistLatCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Heyting.Hom` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HeytAlgCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/heytalgcat.md) | 24 | `declaration-track:36ccb2a71e9c56f8be9cc0f807a2001590d9b7b86448978ce94112d6b9869556` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/instance-source-edition-4.md) | 30 | `declaration-track:764aef5f2ddffcb374516a41c2a72a0dbe1c66426b3945aae42f619e622601a3` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/instance-source-edition-2.md) | 33 | `declaration-track:1a89a909fda50faf61a83c7d69067c64d6c97dd1e5cb387a778fc51ae952da33` |
| 4 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/of.md) | 37 | `declaration-track:c84024a9894c11c3c9e126b6d59a94d77b24c62a86fd74e8cd59bf1a4fc8be15` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/coe-of.md) | 42 | `result-track:18d538df705a6bdef45ceec5a5de841a5c56f8da81dd5d1d12a74f5132c61684` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/instance.md) | 46 | `declaration-track:05cac9d7f892d4626204b60ba35c9b1dc352efc2a160e96ab6a4da99ca5e9861` |
| 7 | `instance` | [bundledHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/bundledhom.md) | 49 | `declaration-track:35036697c40c3d0cf6c4c7e62457478fdb0eb1b9eda85f095f3446a573435423` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/instance-source-edition-3.md) | 60 | `declaration-track:653267d2e081104a961578f5073e8197e2da6fa817ace79f8da724396e150af0` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/instance-source-edition-5.md) | 65 | `declaration-track:c01940b1341fb7e2fde9f072b0cbd5b30265e4a47018db1d4c1d7210effdbddf` |
| 10 | `instance` | [hasForgetToLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/hasforgettolat.md) | 69 | `declaration-track:01f1dd36f78c2cadf410b43051ef2cb6dfc968f1cab91ed261f4c2bd6767adc3` |
| 11 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgCat.lean/declarations/iso-mk.md) | 77 | `declaration-track:30fa12231a32dc2649a2a6a5e4fd0f6d5533af72527aedc9e3ad910fbc8ffe0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec6200ce337acd9aa68ccacfd7fb923831b2d460d17e178ebfb3b8cf36fa9b52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variant27a98ef5d5b0e69db7ec889c4457a8d0e3815f0768671f9594e95f4cd1ef4e7a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlgCat/Variant27a98ef5d5b0e69db7ec889c4457a8d0e3815f0768671f9594e95f4cd1ef4e7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
