# Verification target: Siegels Lemma Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bbff631dbcec663bf034b7b80f189073c1b6a8f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant4526ada9ee0298583efd7b32a21b827bb9fdaa51374045b1ff74b855e1b8d949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bbff631dbcec663bf034b7b80f189073c1b6a8f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant4526ada9ee0298583efd7b32a21b827bb9fdaa51374045b1ff74b855e1b8d949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant4526ada9ee0298583efd7b32a21b827bb9fdaa51374045b1ff74b855e1b8d949.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [image_T_subset_S](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/declarations/image-t-subset-s.md) | 81 | `result-track:cb29f826571f499eb1e6c1131fc8099cbcb4b31d3fd274ada5bd4a55a93e9908` |
| 2 | `lemma` | [card_T_eq](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/declarations/card-t-eq.md) | 95 | `result-track:65a42669ac528494d16bac1bc6125bb12675fe91c5da5d14cddd4798740498ce` |
| 3 | `lemma` | [N_le_P_add_one](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/declarations/n-le-p-add-one.md) | 99 | `result-track:8e434a589b37135822899551bbfd3073a9273e662a287b4658968a5eb8b9b200` |
| 4 | `lemma` | [card_S_eq](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/declarations/card-s-eq.md) | 106 | `result-track:c6fce186fa9e7e67092cf87dad6d63995999e8202962c29eda9ad394c0d7b281` |
| 5 | `lemma` | [one_le_norm_A_of_ne_zero](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/declarations/one-le-norm-a-of-ne-zero.md) | 113 | `result-track:b55aa04b96eb1165e110ef769ffde3bb714bae44fa1f4a0b49e1af4401990071` |
| 6 | `lemma` | [card_S_lt_card_T](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/declarations/card-s-lt-card-t.md) | 125 | `result-track:675fd8246b9b9f818b033647916d4104b79831ddefb5223774b153e8676b6981` |
| 7 | `theorem` | [exists_ne_zero_int_vec_norm_le](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/declarations/exists-ne-zero-int-vec-norm-le-source-edition-2.md) | 163 | `result-track:e32c40727fb66ca616522d63df9179ddd958d18a25acf7faedf25b7a109f4c57` |
| 8 | `theorem` | [exists_ne_zero_int_vec_norm_le'](../../../../NumberTheory/SiegelsLemmaNamespacedPublic.lean/declarations/exists-ne-zero-int-vec-norm-le.md) | 185 | `result-track:4ebfcb432d1c2b1ef345cc02a0fc80fa1857785bc3c6cd86162a1a0549ac9c9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca5999eaa30d860f80a748090a79b5d9c06a1874203c555648e0166326060c82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant4526ada9ee0298583efd7b32a21b827bb9fdaa51374045b1ff74b855e1b8d949.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant4526ada9ee0298583efd7b32a21b827bb9fdaa51374045b1ff74b855e1b8d949.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
