# Verification target: Zorn Namespaced Zorn Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfaaac49bc5230b8df5c30f2ea027c9ae7aae487",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Varianta78b2e4e9d80ef16bf1acbe699ddca3d5d6557a09e24c1671fd6bb8464d886dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfaaac49bc5230b8df5c30f2ea027c9ae7aae487`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Varianta78b2e4e9d80ef16bf1acbe699ddca3d5d6557a09e24c1671fd6bb8464d886dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Varianta78b2e4e9d80ef16bf1acbe699ddca3d5d6557a09e24c1671fd6bb8464d886dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.CompleteLattice.Chain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_maximal_of_chains_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/exists-maximal-of-chains-bounded.md) | 80 | `result-track:a489aafb46c46ec5878a7f0d2dce4a4a801632680c4cf8498b0b573f62af40e9` |
| 2 | `theorem` | [exists_maximal_of_nonempty_chains_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/exists-maximal-of-nonempty-chains-bounded.md) | 94 | `result-track:503694112cf4ea12ffe4496bfcbfda2a837d1340a1ca5c98380d2c67635fc630` |
| 3 | `theorem` | [zorn_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/zorn-le-source-edition-2.md) | 107 | `result-track:c1468e678c5260a0d0934058adcb0a6b062076abe1701009b7701929eb16f864` |
| 4 | `theorem` | [zorn_le_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/zorn-le-nonempty-source-edition-2.md) | 110 | `result-track:8bca0ac3c8aa98e9f893af71cf347a3f32e6a5933a86c4846701009d52622f9a` |
| 5 | `theorem` | [zorn_le₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/zorn-le.md) | 114 | `result-track:4872e45519c260b212dee976929429d8f7474fe6d0fdd657f1435c1e6c880e02` |
| 6 | `theorem` | [zorn_le_nonempty₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/zorn-le-nonempty.md) | 126 | `result-track:8449cf28eec6f8ecc8ee2cabcbeb0a5d0721676a12fa883e861308c16a89f6b8` |
| 7 | `theorem` | [zorn_le_nonempty_Ici₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/zorn-le-nonempty-ici.md) | 137 | `result-track:babacb536b36205e84020487f872b6679d495ae4b528f734f7769f55d424ab61` |
| 8 | `theorem` | [zorn_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/zorn-subset.md) | 147 | `result-track:398ad6640dd40f5cdf689759c74d6e1d64fd9ed3d32d19a7fd7ad9eca8b22ec7` |
| 9 | `theorem` | [zorn_subset_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/zorn-subset-nonempty.md) | 151 | `result-track:9e1aba7d73ad527e2c10431a844b8f6b7d829fd15988a4fb8bfe45b6e66f6511` |
| 10 | `theorem` | [zorn_superset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/zorn-superset.md) | 156 | `result-track:a0c5addcf9851cb39248d273a9d53d5b3b4887df555509cbbe757e63a3a98dfa` |
| 11 | `theorem` | [zorn_superset_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/zorn-superset-nonempty.md) | 160 | `result-track:f8ad61c4e3726e08654d52dbf9cf2efdb0aa2861a80abee05298d3edd1cac4d0` |
| 12 | `theorem` | [IsChain.exists_maxChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/ischain-exists-maxchain.md) | 167 | `result-track:4ba4b05a09eb973c69009b16d2e1879fedcf7f649f484a2731b4a8b474c4e19c` |
| 13 | `lemma` | [Zorn Namespaced Zorn Le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-ex.md) | 188 | `result-track:4727be0f9a483d818b9e7b29a3f633e8191a7d6d4c4f20f61133309cab2193e7` |
| 14 | `lemma` | [exists_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/exists-mem.md) | 191 | `result-track:7e6a9462e9a50bafc6231b4220bc69af3169d87516c37f035a56d2b17692cee7` |
| 15 | `lemma` | [exists_mem_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/exists-mem-mem.md) | 195 | `result-track:64dce7f8ec84878945b79d43d72299c9d885ecad22db86fd5764def3dff17f1e` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornNamespacedZornLe.lean/declarations/instance.md) | 198 | `declaration-track:fbaeaa422089a1b98bff97780d09f10b598c35844833344b113ece4eeca759b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=697377a38b3f5a0acd5f9b59c4e4f06ea6cee1a8920010b7e5707706ed355cbe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Varianta78b2e4e9d80ef16bf1acbe699ddca3d5d6557a09e24c1671fd6bb8464d886dd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Varianta78b2e4e9d80ef16bf1acbe699ddca3d5d6557a09e24c1671fd6bb8464d886dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
