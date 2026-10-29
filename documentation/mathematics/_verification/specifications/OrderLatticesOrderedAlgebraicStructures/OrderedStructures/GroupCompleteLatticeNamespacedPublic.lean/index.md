# Verification target: Group Complete Lattice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a700e4ca054bc12db4000aaefb3cf307c860dd0a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant4903520d7cd5bb958d10578c553fbbce89ce927f0f8332f8b7995b122da61e32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCompleteLatticeNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCompleteLatticeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a700e4ca054bc12db4000aaefb3cf307c860dd0a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant4903520d7cd5bb958d10578c553fbbce89ce927f0f8332f8b7995b122da61e32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant4903520d7cd5bb958d10578c553fbbce89ce927f0f8332f8b7995b122da61e32.lean.json)

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
| 1 | `lemma` | [ciSup_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCompleteLatticeNamespacedPublic.lean/declarations/cisup-mul.md) | 33 | `result-track:d651a970a19a84f3ee6914ff5accf9be6aa25764ae8f002bf48aa4ae1236df14` |
| 2 | `lemma` | [ciSup_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCompleteLatticeNamespacedPublic.lean/declarations/cisup-div.md) | 37 | `result-track:f4708615d5a48fe7c7b9cc1296d6c18670393e02e96b5d4ad03651444feca6be` |
| 3 | `lemma` | [ciInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCompleteLatticeNamespacedPublic.lean/declarations/ciinf-mul.md) | 41 | `result-track:e508896974e1424187ac8c8c313fb4bf3ae1d9d7423c4314cbfb34507477d4e5` |
| 4 | `lemma` | [ciInf_div](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCompleteLatticeNamespacedPublic.lean/declarations/ciinf-div.md) | 45 | `result-track:7759016ba80ec650e3b360da41bd7f4d6b2821b0d7218536d579f3c69df697a7` |
| 5 | `lemma` | [mul_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCompleteLatticeNamespacedPublic.lean/declarations/mul-cisup.md) | 54 | `result-track:8443e75f65d6a7bfe289aa8ab98fbb6803151ca05550719c1f46b5ce68604c7f` |
| 6 | `lemma` | [mul_ciInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/GroupCompleteLatticeNamespacedPublic.lean/declarations/mul-ciinf.md) | 58 | `result-track:f7da0afcad67ad38f353399a61b4c69e459e30a5767aefa5ebd48058e530f1bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=354bb82b7aebf8bc68e8a15cfbcf5f2a94af9beebd805d4cd1c7e351bd0d737b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant4903520d7cd5bb958d10578c553fbbce89ce927f0f8332f8b7995b122da61e32.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant4903520d7cd5bb958d10578c553fbbce89ce927f0f8332f8b7995b122da61e32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
