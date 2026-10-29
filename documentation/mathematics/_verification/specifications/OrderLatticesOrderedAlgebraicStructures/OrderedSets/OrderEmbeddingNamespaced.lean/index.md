# Verification target: Order Embedding Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea9977a512d9a6603564cb48c0adfb804623a1c1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd068bd40b904272dd875ef1f63fb871a67bf89ba1058aefe56f5dc072b006313.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea9977a512d9a6603564cb48c0adfb804623a1c1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd068bd40b904272dd875ef1f63fb871a67bf89ba1058aefe56f5dc072b006313.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd068bd40b904272dd875ef1f63fb871a67bf89ba1058aefe56f5dc072b006313.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.UnorderedInterval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [preimage_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-ici.md) | 36 | `result-track:95a43e79ca27d3dc293784498b1e12700b5f7c4fdbcf50bdb0822c95b4fe5e30` |
| 2 | `theorem` | [preimage_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-iic.md) | 37 | `result-track:ecec9724c0385e928fb2280b6991f6e51e8fd29f1600d5b6f9cbbd9aea8d696e` |
| 3 | `theorem` | [preimage_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-ioi.md) | 38 | `result-track:05fa91055dd3534db181c137cd41d5ed89338ea49c43e4932097250eadcb374d` |
| 4 | `theorem` | [preimage_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-iio.md) | 39 | `result-track:d9493f200c11c2077382e3970d4c53b66d5c7d10b9835510cfc8e2180a89588a` |
| 5 | `theorem` | [preimage_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-icc.md) | 41 | `result-track:12794b603e946ff71a9fcf0287fc10a9a59ba405b11f0de8cc1fbf4cd6981bbc` |
| 6 | `theorem` | [preimage_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-ico.md) | 42 | `result-track:ab53112f67bcfba0d2794062b1067f0f3b27f8c7cbaaae3214b708b10ede7f1d` |
| 7 | `theorem` | [preimage_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-ioc.md) | 43 | `result-track:b0bf1d25bec9b4130676891de5ed498878df4e27f3d0bfd0d2f1f55cdb0af309` |
| 8 | `theorem` | [preimage_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-ioo.md) | 44 | `result-track:481e658dac5751e86e358913b213751c859f3c25cb273ed68c921cbabb5a5c32` |
| 9 | `theorem` | [preimage_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-uicc.md) | 50 | `result-track:79ace0a9fb0195bd26915d9ca64abc0786913114495cf0278c1adb3aca27a03d` |
| 10 | `theorem` | [preimage_uIoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderEmbeddingNamespaced.lean/declarations/preimage-uioc.md) | 54 | `result-track:db37ccaa6bed66d80ea4f6902b266bf40cfe1c0a790f3fcea0b1febc2eb8f9f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15fa7df405d9d488a696d414d8d47c3cb9ac4372c82ac7703f3a22d9e91eee2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd068bd40b904272dd875ef1f63fb871a67bf89ba1058aefe56f5dc072b006313.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderEmbedding/Variantd068bd40b904272dd875ef1f63fb871a67bf89ba1058aefe56f5dc072b006313.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
