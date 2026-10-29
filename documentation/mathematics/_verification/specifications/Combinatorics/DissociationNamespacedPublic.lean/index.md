# Verification target: Dissociation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "540c5ad006b28234ed49f7748722cfea737dd7ff",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variantf1bb27970fc5004e62a23080ad9775d58efb1eac468deb2700be68c79ffa877a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DissociationNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/DissociationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `540c5ad006b28234ed49f7748722cfea737dd7ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variantf1bb27970fc5004e62a23080ad9775d58efb1eac468deb2700be68c79ffa877a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dissociation/Variantf1bb27970fc5004e62a23080ad9775d58efb1eac468deb2700be68c79ffa877a.lean.json)

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
| 1 | `def` | [MulDissociated](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/muldissociated.md) | 53 | `declaration-track:33280d92adc7846ec93e47da7c5ba31313df2d15fe4b675059bb36ecf70e7d47` |
| 2 | `lemma` | [mulDissociated_iff_sum_eq_subsingleton](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/muldissociated-iff-sum-eq-subsingleton.md) | 55 | `result-track:099b922bb548f5791cf4ab51744323791ca1c7b5806bfbccf5eed913622f6351` |
| 3 | `lemma` | [MulDissociated.subset](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/muldissociated-subset.md) | 60 | `result-track:8283f2c19e0122137d7b3c77f50ea7885f3864ff264c04095271ee3f8f90ecc9` |
| 4 | `lemma` | [mulDissociated_empty](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/muldissociated-empty.md) | 63 | `result-track:d2595729b4e98f8ff826a4e601d4478c274fd956a472cb63481f2072be25e9e6` |
| 5 | `lemma` | [mulDissociated_singleton](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/muldissociated-singleton.md) | 67 | `result-track:f737c168bf17b58c09732f43b44738436c22413c8e6355c4f82ea9f4595b5f15` |
| 6 | `lemma` | [not_mulDissociated](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/not-muldissociated.md) | 72 | `result-track:21a8ee0f6e78ebbbe81d4c0a11797c373ff343fa920859db72aaa4aebc613eb3` |
| 7 | `lemma` | [not_mulDissociated_iff_exists_disjoint](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/not-muldissociated-iff-exists-disjoint.md) | 78 | `result-track:8a20a5b96cd86fa54947eb7f9517aeff6bdc85be7012d5021b357960a5832204` |
| 8 | `lemma` | [MulEquiv.mulDissociated_preimage](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/mulequiv-muldissociated-preimage.md) | 88 | `result-track:07aa1d60bdeb78287a19e55ddb69fd44da5cceda9cea519fffa806923578ab63` |
| 9 | `lemma` | [mulDissociated_inv](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/muldissociated-inv.md) | 93 | `result-track:b316ccaf6e7afb76f1a0f3f88e5b9dcc03c32a654fbd37329c0685d7e37cdacd` |
| 10 | `def` | [mulSpan](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/mulspan.md) | 113 | `declaration-track:883316c1dfc68e0bc238fc4d011c5e31c24aa179664521c2a479d5f01a0ab570` |
| 11 | `lemma` | [mem_mulSpan](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/mem-mulspan.md) | 117 | `result-track:2746b34b6ac4b4ad334cc8b7f6420d6dc43793669847080173968e1cf8eda860` |
| 12 | `lemma` | [subset_mulSpan](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/subset-mulspan.md) | 122 | `result-track:6613c340252feac4f9a7a3cb89252657f4865b487939979497e451310009f6d3` |
| 13 | `lemma` | [prod_div_prod_mem_mulSpan](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/prod-div-prod-mem-mulspan.md) | 127 | `result-track:440742c284d209aff5f396acf870b09c1dc2e0d8e92e75edbe690a5e44c5fa19` |
| 14 | `lemma` | [exists_subset_mulSpan_card_le_of_forall_mulDissociated](../../../../Combinatorics/DissociationNamespacedPublic.lean/declarations/exists-subset-mulspan-card-le-of-forall-muldissociated.md) | 143 | `result-track:711ab4e9ead8b7b222226c17f9dc2f9931a546e1a8380768bf237c81698bfda3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50c7fc2a9212ef37f90e3282a872cd149ae39970451dc7d5c8c9edc21b691ba9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Dissociation/Variantf1bb27970fc5004e62a23080ad9775d58efb1eac468deb2700be68c79ffa877a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Dissociation/Variantf1bb27970fc5004e62a23080ad9775d58efb1eac468deb2700be68c79ffa877a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
