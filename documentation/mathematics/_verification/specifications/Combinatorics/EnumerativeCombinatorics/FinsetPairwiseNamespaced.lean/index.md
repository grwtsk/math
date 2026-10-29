# Verification target: Finset Pairwise Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83610784ce0aeca6b56e477ace2a8febafd83749",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83610784ce0aeca6b56e477ace2a8febafd83749`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.List` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/instance.md) | 30 | `declaration-track:b5df9546d93204dafc0201d600b6165043fc83d4b937ec4b54c7d21e48ab0821` |
| 2 | `theorem` | [Finset.pairwiseDisjoint_range_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/finset-pairwisedisjoint-range-singleton.md) | 34 | `result-track:e1632b84f15144bd75dbb2cd5796edbda7ecef1fafef8e07c130427fec1787ea` |
| 3 | `theorem` | [PairwiseDisjoint.elim_finset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/pairwisedisjoint-elim-finset.md) | 41 | `result-track:4f5bbe29b24e6d18e15fc1c5fda74c348208595bfe2d498064a8d5b05b9ee6ca` |
| 4 | `theorem` | [PairwiseDisjoint.image_finset_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/pairwisedisjoint-image-finset-of-le.md) | 49 | `result-track:7b974d4cb2e896bb8a9815de4a47a0cb92ea3a9dcbe128174aa662708460df16` |
| 5 | `theorem` | [PairwiseDisjoint.attach](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/pairwisedisjoint-attach.md) | 55 | `result-track:772a5875e468449a218f8ec4ea4649d69f5602daf3ed83ace0c61573fd64b161` |
| 6 | `theorem` | [PairwiseDisjoint.biUnion_finset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/pairwisedisjoint-biunion-finset.md) | 65 | `result-track:beabe71d17625821c21ca18605929d3a102d7f32c0005465d1ac1f178b65e869` |
| 7 | `theorem` | [pairwise_of_coe_toFinset_pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/pairwise-of-coe-tofinset-pairwise.md) | 82 | `result-track:6ef9defd26ab50a1803ec9caccde3868ddd0c23c5d237508af92388ebc362480` |
| 8 | `theorem` | [pairwise_iff_coe_toFinset_pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/pairwise-iff-coe-tofinset-pairwise.md) | 87 | `result-track:c9ea18fd6fe3acf65176431d4274ec246d7505d5519377c883de353ce82be674` |
| 9 | `theorem` | [pairwise_disjoint_of_coe_toFinset_pairwiseDisjoint](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/pairwise-disjoint-of-coe-tofinset-pairwisedisjoint.md) | 94 | `result-track:ff01c93394c797298fc93d814a3dfa341e6e0edb9b1eadf2ccab793f88554eed` |
| 10 | `theorem` | [pairwiseDisjoint_iff_coe_toFinset_pairwise_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwiseNamespaced.lean/declarations/pairwisedisjoint-iff-coe-tofinset-pairwise-disjoint.md) | 99 | `result-track:aedf54c516e229f984cd998f4af9a44517ea8498dae10de4f1ab8db85c09570d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e463c0ec3e520492fec34453c517b7f21b3269a833bcc75a4f470e950b139d5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Pairwise/Variante0d0f89c4602945c099eb9325b1200be62cb34eb184bf1e071934e540659c597.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
