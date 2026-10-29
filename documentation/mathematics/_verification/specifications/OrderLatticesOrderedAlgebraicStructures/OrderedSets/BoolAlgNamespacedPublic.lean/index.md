# Verification target: Bool Alg Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4351a757f5cf91ec05c6d922177ba32c2f7c7678",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variantf015f8723e6ff6edeb0ae79f18aca9971b89ec67cba10ac2ba3ea16bdaaa2bdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4351a757f5cf91ec05c6d922177ba32c2f7c7678`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variantf015f8723e6ff6edeb0ae79f18aca9971b89ec67cba10ac2ba3ea16bdaaa2bdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variantf015f8723e6ff6edeb0ae79f18aca9971b89ec67cba10ac2ba3ea16bdaaa2bdf.lean.json)

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
| 1 | `structure` | [BoolAlg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/boolalg.md) | 35 | `declaration-track:e8aba1beb691747b4417b43df0ebb2e747507f4930a02c9cd52c386a0f9cc93a` |
| 2 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/delabof.md) | 51 | `declaration-track:492baa01fc0d66214dd9f4fb04b4f953c433e2c4cd6c9426ce20e24117777735` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 53 | `declaration-track:ac5fbcfaff3e7ba465e18e5083530e1dd13c9a0541fec9da36e520ac600e8226` |
| 4 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hom.md) | 60 | `declaration-track:a599c6b3032f0b84e9245510f5794f24d08e4aad28f2492498d4d3f3035a57c9` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:38c4e649c69c596dec34f790c2ea5059b20c96e7849af2f4639d854bf9756158` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 70 | `declaration-track:a541f927d929543e7c425e2338154d2dbd6175ca714c269f697b572cc26cb190` |
| 7 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hom-hom.md) | 75 | `declaration-track:06ca0e89b8df766bbecc5e228e03c06e48101f51954c95780758361270f52da0` |
| 8 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/ofhom.md) | 79 | `declaration-track:c1f5b39a593fedf016da7146752e8a2ae323f57677d1a70f7c919dff22887a62` |
| 9 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hom-simps-hom.md) | 85 | `declaration-track:b86b91afc1efec8d34ac8db7d17e834bd7f223f6d99062031031280ae96468e2` |
| 10 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/coe-id.md) | 95 | `result-track:2f2dc146eab56bf7f8331451ab85eedf3bca0577a4dbde62a352145f0960e0fe` |
| 11 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/coe-comp.md) | 98 | `result-track:b72e6954942dfad832d89768d5bcc052b9269a871ca13fd77179c69f4d0bace0` |
| 12 | `lemma` | [forget_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/forget-map.md) | 101 | `result-track:5931ee3fa923055f1523b0b5cbbe5caec348b5e17564aca12f4cde4ae283b9b6` |
| 13 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/ext.md) | 105 | `result-track:f1160688e26061dc9bd1d67a301fa556225fdabf63499a9e2b16b1bffc6f8414` |
| 14 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/coe-of.md) | 109 | `result-track:ee857a8055192ef6d5c53c6ca8100c2da280681c8afc0dc2cd2ada5115e3bc09` |
| 15 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hom-id.md) | 112 | `result-track:5ce053b45dd2579d576123a1436db425880aa7819703eaca665e43819c27790e` |
| 16 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/id-apply.md) | 115 | `result-track:de80743633ba0201b0301a2336949aabac4616e23146e5b4be3c72b3e8e9cac6` |
| 17 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hom-comp.md) | 119 | `result-track:dd051e5ac0a9eebc6b491e966b6b250801fc8e3b14104ce47b0990947a5c11cd` |
| 18 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/comp-apply.md) | 123 | `result-track:84befb37809169674e6e6e92834d2d33bd4e419df0075ba701df631842c373c2` |
| 19 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hom-ext.md) | 127 | `result-track:bbf7ba84c8195eb666bcffd2b65b2f2bbb69a6447c9edf8bf78c451fa468c336` |
| 20 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hom-ofhom.md) | 131 | `result-track:31db062e6049d66f1f1c941e1fbc40d00076eed47b2cdbd7f0bab35795dcb5a3` |
| 21 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/ofhom-hom.md) | 136 | `result-track:fb77bd1e071fb980ea97c04801b95a4de91fb80e39f26b54bf6312ba94d56366` |
| 22 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/ofhom-id.md) | 140 | `result-track:34e4ebd8234ef9a8cbd4e080f7f13f463bf60e90b33a445c1e96308795df40dc` |
| 23 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/ofhom-comp.md) | 143 | `result-track:20d113300f1157f138b352776593dca33cb3731389c0ada02991803310070d3b` |
| 24 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/ofhom-apply.md) | 148 | `result-track:c6cba2a3854e7ae7b4d4cc8644b513f2d095c54741d30ee77a29b8743266c84f` |
| 25 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/inv-hom-apply.md) | 152 | `result-track:e34e7a08432681b0c5c831619e83957f1e1ada1ac9561a225a9a9f76d9b5bbb0` |
| 26 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hom-inv-apply.md) | 155 | `result-track:1b778209fd92d87dc63ce881aa2cea94564ae352a3775ef79aa613275f114214` |
| 27 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/instance.md) | 158 | `declaration-track:0a77caac816de8a2c26269314aaa30cbc34cf97214f0a23b287504f76ad6b607` |
| 28 | `def` | [toBddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/tobdddistlat.md) | 162 | `declaration-track:b94ceb2d4b2db252e2e80787e426325eb9313edd0588a45ee19105f974e9546e` |
| 29 | `theorem` | [coe_toBddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/coe-tobdddistlat.md) | 166 | `result-track:4119211a3089592876b5fe7263577260807030ea36125d5a72b66005b617b12f` |
| 30 | `instance` | [hasForgetToBddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hasforgettobdddistlat.md) | 169 | `declaration-track:20e252a8d492b536f77d5a54eb7502e75af110700e415d7a8245c721883850a3` |
| 31 | `instance` | [hasForgetToHeytAlg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/hasforgettoheytalg.md) | 178 | `declaration-track:56e45ffa8b935c834fbc9815a58b1bbafd120e3a413c70e366ec32c759f76acf` |
| 32 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/iso-mk.md) | 186 | `declaration-track:34a5f7bb5346543f12c1250168947502c8288ccd5354ec7ec583dd7731b3f100` |
| 33 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/dual.md) | 192 | `declaration-track:b9dff823809b4be55789f4467d7f32b7380330db17ae9992693e82b4c5ef918a` |
| 34 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/dualequiv.md) | 198 | `declaration-track:8740a69d78a270e0da9cfcda1c5bfbb49f12b6fd4f7c668677a43b7285171304` |
| 35 | `theorem` | [boolAlg_dual_comp_forget_to_bddDistLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/boolalg-dual-comp-forget-to-bdddistlat.md) | 206 | `result-track:06dd774d1be2f7f5ee17b8d59ce2adac27bfe605879a5d08c0c816c34711caba` |
| 36 | `def` | [typeToBoolAlgOp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoolAlgNamespacedPublic.lean/declarations/typetoboolalgop.md) | 213 | `declaration-track:5baf06a254369b8dac9d33726c3e9a6ec0e3be50b39294ff24e6df96717e95ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6a91521dacf72174ef3d52aaca73e55f198874f9f2df96cf2b1f8ba7428e0f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variantf015f8723e6ff6edeb0ae79f18aca9971b89ec67cba10ac2ba3ea16bdaaa2bdf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BoolAlg/Variantf015f8723e6ff6edeb0ae79f18aca9971b89ec67cba10ac2ba3ea16bdaaa2bdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
