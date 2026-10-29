# Verification target: Finset Pairwise Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5f82ffab6b0174895641ff30fbfbe1e67395a3a",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variant1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5f82ffab6b0174895641ff30fbfbe1e67395a3a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variant1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pairwise/Variant1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/instance.md) | 26 | `declaration-track:335589011e399c5a3da95ab1a8fbcee2b5b6c72b9a840f5fe0c8c7df51bb0491` |
| 2 | `theorem` | [Finset.pairwiseDisjoint_range_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/finset-pairwisedisjoint-range-singleton.md) | 30 | `result-track:36f8e23c5323e2316d925a2a7be9379b09ec3cc4e746f6b8b7ad311c06bc3e97` |
| 3 | `theorem` | [PairwiseDisjoint.elim_finset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/pairwisedisjoint-elim-finset.md) | 37 | `result-track:bb5242c71921eb22e1eb97a447591ec94d57f689150ad218224aa13a9a9b1f00` |
| 4 | `theorem` | [PairwiseDisjoint.image_finset_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/pairwisedisjoint-image-finset-of-le.md) | 45 | `result-track:901d89b0269783925c8f9059a3a3cf09c0f0f0a3e4a06bffd02dc68dfb1fe10d` |
| 5 | `theorem` | [PairwiseDisjoint.attach](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/pairwisedisjoint-attach.md) | 51 | `result-track:d7fdb570c077a6e51a7c311803a9a1351db73142b00167618efb995d08d89122` |
| 6 | `theorem` | [PairwiseDisjoint.biUnion_finset](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/pairwisedisjoint-biunion-finset.md) | 61 | `result-track:0cca44eb2a63c2ecc8290557e5e8c88cc87b1689e2872c567356a111dc17688e` |
| 7 | `theorem` | [pairwise_of_coe_toFinset_pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/pairwise-of-coe-tofinset-pairwise.md) | 78 | `result-track:4b0e8bfda0bf6c8f4cd3f33d86a53c69cd30e0adde0108f4a859b091a77e7cea` |
| 8 | `theorem` | [pairwise_iff_coe_toFinset_pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/pairwise-iff-coe-tofinset-pairwise.md) | 83 | `result-track:1ef2897682a6083c10d56642c87ec135858c92e045f3cd5c81fab9d1a115101e` |
| 9 | `theorem` | [pairwise_disjoint_of_coe_toFinset_pairwiseDisjoint](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/pairwise-disjoint-of-coe-tofinset-pairwisedisjoint.md) | 89 | `result-track:531d69ffc7b4e7b9a08eb135355e287b68a95efc9e53c253b56c0d1d668f4f59` |
| 10 | `theorem` | [pairwiseDisjoint_iff_coe_toFinset_pairwise_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/FinsetPairwisePublic.lean/declarations/pairwisedisjoint-iff-coe-tofinset-pairwise-disjoint.md) | 94 | `result-track:c89cbe74905d7883b94cfa00f1cb6bfb252ccd9dc42ef827f81e13cde5bf07a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78d1daa347c3a491fb7b7ce1a359c82dfaebb2fa7bebb35a3ad5c7828cca19e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pairwise/Variant1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Pairwise/Variant1ee6255920f044b34114a75294db521cea8d5f324985f9fefed8649b53bc9e61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
