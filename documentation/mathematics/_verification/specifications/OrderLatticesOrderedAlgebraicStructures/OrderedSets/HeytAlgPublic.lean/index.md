# Verification target: Heyt Alg Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2cfa0afde547a07d430d351c8ad4c55889ecb4c",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2cfa0afde547a07d430d351c8ad4c55889ecb4c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588.lean.json)

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
| 1 | `structure` | [HeytAlg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/heytalg.md) | 25 | `declaration-track:611650b05c97bb10d2a92de4195d1c54fbf2d8ae2ab3c530f3f92aa31b2895e9` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/instance-source-edition-2.md) | 36 | `declaration-track:5ba0954bff323395006941a1f09ccf471919364451d6fbfee6d73019114b46de` |
| 3 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/of.md) | 42 | `declaration-track:c70ad2c6f063c648fbbe936312404cb51060969b2948a107ece84fe2001769c8` |
| 4 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/delabof.md) | 47 | `declaration-track:284b4988c30540135dbc7244672e0cb13591f79d401afd8d8cfbc7add55adcd7` |
| 5 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/hom.md) | 51 | `declaration-track:29964c78a10556f345cc4bee6e663fd84fd72b3efcfc9b789c0d371d3d1834d8` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/instance-source-edition-4.md) | 56 | `declaration-track:c8372b8611fb9d48717469d6b7af9171cd9eee27a0bd3584b522b2f3af96aaa3` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/instance-source-edition-3.md) | 61 | `declaration-track:c5e506bfbb776193b55f74735e70c6a578be027c65d050dfe94e3652b281e98b` |
| 8 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/hom-hom.md) | 66 | `declaration-track:2525f8b1697f67270764fb160d96f282b06d1ea0ebf86dd5d18396cf0f0b79b4` |
| 9 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/ofhom.md) | 70 | `declaration-track:94416896774cc47a27f2e5414837c7ab7afbabd1eaad4c1d8d1500a443eeff83` |
| 10 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/hom-simps-hom.md) | 76 | `declaration-track:b87a02e5428a40261bd5b2b724696dd8b35fe24d0d430f039d8fccd1445c26b3` |
| 11 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/coe-id.md) | 86 | `result-track:521aca58352e1a3af9b9b3fafb5219890e7aad953663fa19037233b32af44eed` |
| 12 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/coe-comp.md) | 89 | `result-track:eb92d597c982f5164c66fb5c301224704fdde7f271851e0c72d4955f48c230e4` |
| 13 | `lemma` | [forget_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/forget-map.md) | 92 | `result-track:8f846716ac4c05dfe21dd62db4674f58397e99d3d826c2699420d0e358fae069` |
| 14 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/ext.md) | 96 | `result-track:4325ef94ac3efe249cdaeb6c57ecbf84b5eb8457952a5978a3c38fca7e1ff16b` |
| 15 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/coe-of.md) | 100 | `result-track:4a2e5509d648ba32a599a1f6ddec27a88a8571840e77b430443c4815fe4ca137` |
| 16 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/hom-id.md) | 103 | `result-track:8b96315bb8d84d71c0d3707031576d30b9d5f46f289aede33883a17650ac8a81` |
| 17 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/id-apply.md) | 106 | `result-track:205122b8503e8ebf0e25c89bdc1f9d3843aab8575062e4469ae23ca569a39034` |
| 18 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/hom-comp.md) | 110 | `result-track:4af0da5b9f0f75e5b5a3882df838fc7123c886f01cb20cd5f5b5836f9aede90d` |
| 19 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/comp-apply.md) | 114 | `result-track:335c23b23db292569f0167910ac519c101def8065348f250f4643d7fad3db075` |
| 20 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/hom-ext.md) | 118 | `result-track:e756fb49082da81c44bdb3dee66670a1e9c21938d2c7d1159d6c66121bfef8e9` |
| 21 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/hom-ofhom.md) | 122 | `result-track:4fc633313e8b075f2220c0def6dd2447d03375879ff7fea8ebbed63b94497bad` |
| 22 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/ofhom-hom.md) | 127 | `result-track:034c897375b97b2111794df77a55d28ac48b623d931f739b9b0ed5e771fac212` |
| 23 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/ofhom-id.md) | 131 | `result-track:81741eaead4d05e480095fea6676b7d3e57b3a3c939cee32aec322e7cc56aa25` |
| 24 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/ofhom-comp.md) | 134 | `result-track:79db7f4e951f93907673f31d577a6e0e3d360171a5c6146d6e90321c68cb23af` |
| 25 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/ofhom-apply.md) | 139 | `result-track:0e197a02b75167ce200ab9b5aef6b5c752fe30cb7dadb3b666cfb3df7bb18ee7` |
| 26 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/inv-hom-apply.md) | 143 | `result-track:08ee9b9805d8cab669ca426e310c78a863a9a7931640118a0aeab112cf6d3e6f` |
| 27 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/hom-inv-apply.md) | 146 | `result-track:5a44d72570aa38ebcc9f092e987ea85425f93853a9ab79c0152e721d5c379e07` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/instance.md) | 149 | `declaration-track:520421935c2e965b510fa747fabc8d0dd8c54756d596e3e9c968f51595673182` |
| 29 | `instance` | [hasForgetToLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/hasforgettolat.md) | 153 | `declaration-track:f7864a0f26b4a57570018019899897dd526f5ce8b1d2fbeb61535a55ce9038f3` |
| 30 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytAlgPublic.lean/declarations/iso-mk.md) | 159 | `declaration-track:b499079930c3e864a44a7a871ee1223a2aa89d45cf037ee6ac524b235b128e85` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c809875395a5f54c8b3bc430ce35551a3307b8c08d029f0745c61fa897b52be7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/HeytAlg/Variant99eac8397742a1f48688b6a73d3e6167de7c7b9fcc0079da3ebd0d6c96a6c588.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
