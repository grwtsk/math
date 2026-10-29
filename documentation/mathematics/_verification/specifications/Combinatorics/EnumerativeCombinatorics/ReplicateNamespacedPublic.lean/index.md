# Verification target: Replicate Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d43a629ba962f4b9c9839c4dd7f797e933fb68e1",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant23ace280e7f2cee2fb17e0f44cbf4405a4c628d974afea5d4d4de48bb451bfb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d43a629ba962f4b9c9839c4dd7f797e933fb68e1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant23ace280e7f2cee2fb17e0f44cbf4405a4c628d974afea5d4d4de48bb451bfb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant23ace280e7f2cee2fb17e0f44cbf4405a4c628d974afea5d4d4de48bb451bfb1.lean.json)

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
| 1 | `def` | [replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate.md) | 43 | `declaration-track:554caed2e37124f66c65d5f24dcd2d63dd7317c150888d5f249ffaf5521ef97b` |
| 2 | `theorem` | [coe_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/coe-replicate.md) | 46 | `result-track:a86e36ce1e84d93e91f1e97ff0affb8ab8b3a44bf58d41fcd05aba407faa8145` |
| 3 | `theorem` | [replicate_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-zero.md) | 48 | `result-track:9f46654c9ba0f7f50ebe37df79c3618f3162cf95593ec39318cd9320fec7c2a3` |
| 4 | `theorem` | [replicate_succ](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-succ.md) | 50 | `result-track:6ace116c928867ffa786737efaea5d123296d1ff1ac6ddabc65391c253b22068` |
| 5 | `theorem` | [replicate_add](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-add.md) | 52 | `result-track:4ea01748f73fc93c20c1ddda60cc8dbeee6a25a75d60c76d20b29faae04fc0b8` |
| 6 | `theorem` | [replicate_one](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-one.md) | 55 | `result-track:b3ff13ccc0a0a6178a589a657bd6d9ef74f9d29a6b4fdf645e317f143ad4f295` |
| 7 | `theorem` | [card_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/card-replicate.md) | 57 | `result-track:5a9838f58762808c5d2ce069471ca0d66a6e6fdfeee803842451303ac40c2156` |
| 8 | `theorem` | [mem_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/mem-replicate.md) | 60 | `result-track:1991971e0db4bf2a02e05eeeca502310379744abae09331141410a6b983fc3de` |
| 9 | `theorem` | [eq_of_mem_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/eq-of-mem-replicate.md) | 63 | `result-track:cb51235f475711b783e4ec3578d32bae538f74e73306c1d2262875a4ec6b99f5` |
| 10 | `theorem` | [eq_replicate_card](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/eq-replicate-card.md) | 66 | `result-track:0a22a023c2e96282a23bf7f7b7a6b8f65bbd501545edcece3e9d006a75f34e39` |
| 11 | `theorem` | [eq_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/eq-replicate.md) | 71 | `result-track:eea8e3e2f8591aa073663153ef085655895fe5806a791d646f5ddd0a3b8cfebf` |
| 12 | `theorem` | [replicate_right_injective](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-right-injective.md) | 76 | `result-track:d3bcb533720547221f762e16dcbaf6d067ee39aa27f8324644d14d8336c19a7d` |
| 13 | `theorem` | [replicate_right_inj](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-right-inj.md) | 79 | `result-track:e83c08e0e7b97c0e9a310ab248ce30e2e5f8943eef713f15223b454c4d90735b` |
| 14 | `theorem` | [replicate_left_injective](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-left-injective.md) | 83 | `result-track:094d63a77d171a358013fa3e09b24d45f426ca46b9d91a434b76af9002124c17` |
| 15 | `theorem` | [replicate_subset_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-subset-singleton.md) | 86 | `result-track:9a3edc9a1978574a52227667d8f7b26a8e4b3d229fc6a0bb83c49a4c2eb7aff8` |
| 16 | `theorem` | [replicate_le_coe](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-le-coe.md) | 89 | `result-track:033147ebcc0657434d73ee21f2eeb594650547306b968a20a0e87e869a1a5261` |
| 17 | `theorem` | [replicate_le_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-le-replicate.md) | 92 | `result-track:0e4cf9a4eefc10bdee5214034333bcaffe606fd93c605e84a266615cdc3eee47` |
| 18 | `theorem` | [replicate_mono](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/replicate-mono.md) | 96 | `result-track:1f5f7023662a969248118aae694d2a7a050b449120a1f856352c956fab4452db` |
| 19 | `theorem` | [le_replicate_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/le-replicate-iff.md) | 99 | `result-track:e6a8d982c65be80e2def09f2143fa3fcc9b144501a95dacf21c4ec8af349ef2b` |
| 20 | `theorem` | [lt_replicate_succ](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/lt-replicate-succ.md) | 105 | `result-track:db9a3032ac30aad191f7ad04ba6093e277453a36822755b0950797202a32b353` |
| 21 | `theorem` | [count_replicate_self](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/count-replicate-self.md) | 123 | `result-track:fd20217596c68c43887e85087ba9896560a437027744cde76516458168e0e04b` |
| 22 | `theorem` | [count_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/count-replicate.md) | 127 | `result-track:f50118617c27df6def7c5069eb2fa354bc795fd603b6f60c45fcd806c984ec4c` |
| 23 | `theorem` | [le_count_iff_replicate_le](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/le-count-iff-replicate-le.md) | 132 | `result-track:7a7ec1431c409b8f0006b7da0a358df773411008e18a8c4edcce07041106738d` |
| 24 | `theorem` | [rel_replicate_left](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/rel-replicate-left.md) | 146 | `result-track:66fd8b0c30ea10c69fc6cb55dd52d5fe3262fa3a074de2e78b640f146b8755a9` |
| 25 | `theorem` | [rel_replicate_right](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/rel-replicate-right.md) | 156 | `result-track:01e6237bcdbc3cb558bef7c09bd938c50c4664481fc52e438accbfa6e978b578` |
| 26 | `theorem` | [nodup_iff_le](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/nodup-iff-le.md) | 166 | `result-track:527cf109ba81dc7d72478d3f5156e42461a49d958410a4898aa7327d50b3f0c1` |
| 27 | `theorem` | [nodup_iff_ne_cons_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/nodup-iff-ne-cons-cons.md) | 170 | `result-track:3af002c5147c7d3e9a9f63577e02f5833c9fc0bda504d541c83e759d55c38224` |
| 28 | `theorem` | [nodup_iff_pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/nodup-iff-pairwise.md) | 176 | `result-track:02450d3a2f8d882e78088a05c39f68e90b4368ad8933152956d2093e55414a85` |
| 29 | `theorem` | [Nodup.pairwise](../../../../../Combinatorics/EnumerativeCombinatorics/ReplicateNamespacedPublic.lean/declarations/nodup-pairwise.md) | 179 | `result-track:21f38a8370dee9325d6cdfdbaec19400b4e93d73765105af4c93391fca26dda0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=beb4401c7f08dcaaba12e274a009ec8bcf487e2fb8dad5fb908905935dae3acb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant23ace280e7f2cee2fb17e0f44cbf4405a4c628d974afea5d4d4de48bb451bfb1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Replicate/Variant23ace280e7f2cee2fb17e0f44cbf4405a4c628d974afea5d4d4de48bb451bfb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
