# Verification target: Part Ord

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "096e678f85f07d235925e0b8de7543c8e601cd4d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variantdedb31712da856d615468c53ba4b36d9554f8ec452daa8b9730ae7c6a34e9fdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `096e678f85f07d235925e0b8de7543c8e601cd4d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variantdedb31712da856d615468c53ba4b36d9554f8ec452daa8b9730ae7c6a34e9fdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variantdedb31712da856d615468c53ba4b36d9554f8ec452daa8b9730ae7c6a34e9fdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Antisymmetrization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.Preord` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/partord.md) | 21 | `declaration-track:cc5f01ee4485f878ed88e73d6cafdc5880800c9e7ef69e72a8f8391a5326717a` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/instance.md) | 32 | `declaration-track:1bf1a1b806322ab46cd42fe827466c98ef69e2dc01ad1743c9b82a44281792c2` |
| 3 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/of.md) | 38 | `declaration-track:8b058cb0a06df897e7f716fcac83be68bdb2e7f8348e43669f787c659770d327` |
| 4 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/hom.md) | 42 | `declaration-track:45212ff0575cf8fbd55e0586f45b5ea7953980007f0615ec72390dd9a093c6ab` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/instance-source-edition-3.md) | 47 | `declaration-track:ef48e7991c12dde29c753753cdbcd4ca95c2e196fe299885e344b33d5e7d1124` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/instance-source-edition-2.md) | 52 | `declaration-track:62922a7cf6bc26c52ca9f425d0facc7b5e202fdfc8dd4e2d2c388dbca720c266` |
| 7 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/hom-hom.md) | 57 | `declaration-track:1d6760f5b8c4165109ed7d57bcacb2c7c143e721f64fdfa5d52ed50ee83d8932` |
| 8 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/ofhom.md) | 61 | `declaration-track:660f9c19e1b80555afd167f8de9915c91b96a9f86f5407a7c8827b668dde238d` |
| 9 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/hom-simps-hom.md) | 66 | `declaration-track:200a579877347ed1ac904f9cf6c72814a8a04a386bbe5a231817e1cfef0f7317` |
| 10 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/coe-id.md) | 76 | `result-track:6d3fc4045c3c323139dac830e3e58d64c3cbbc55d404b2913024a67eb9ed459a` |
| 11 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/coe-comp.md) | 79 | `result-track:a9747ebe91d33300911a207e5c29bebdd7f2b99ec359d57f542eec8ef4c31e91` |
| 12 | `lemma` | [forget_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/forget-map.md) | 82 | `result-track:aa2b683a2d675c6a44a5de23c793c504e96ec5c6d7d8d223e0f77d24ee90d2c4` |
| 13 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/ext.md) | 86 | `result-track:1967e600204fd8f281b2cad5bf3b1f70caf3c3ea152281c6304019c68b895b00` |
| 14 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/coe-of.md) | 90 | `result-track:810e6ba0fd3f223b3e1c34d5c100431c9659455b2d218b5ec7eff7d456eafc1b` |
| 15 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/hom-id.md) | 93 | `result-track:5665a7dc9a92bde11849363453a42c4987850e7e3051dbf4c5e94f960c104e30` |
| 16 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/id-apply.md) | 96 | `result-track:8eb0fcffb927777b55d6c7b10d72b8241b49175b3026da4586c73410380ccfc7` |
| 17 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/hom-comp.md) | 100 | `result-track:bb2d769ba7b7f28347674e00bb6171c077f3771c0974d767979f67c31dfff508` |
| 18 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/comp-apply.md) | 104 | `result-track:b3e0eba59af566997abf6b385fb3d18db73ce9b45138f163d1fa27b2b086799f` |
| 19 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/hom-ext.md) | 108 | `result-track:8fe88dffaa21887b80380f746ba4fa9d6098cd5bae8eabeb4256142e1428087d` |
| 20 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/hom-ofhom.md) | 112 | `result-track:36f2f1e6b018a13905197ccffe9486bc5d5aed9272e3618beecad2f0c40cbcb5` |
| 21 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/ofhom-hom.md) | 116 | `result-track:44c668baecc42191218fc1bc44742e841b4f3dd882943b97a94a8bbf8656ac5a` |
| 22 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/ofhom-id.md) | 120 | `result-track:2ad5f70225adb06e6838acd1e939148b904d78dc4e8cef090efa05710839c130` |
| 23 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/ofhom-comp.md) | 123 | `result-track:f926fdf3ac95d021abd71b9b9529c1507f21bc87b3434608b296f2c3968b9074` |
| 24 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/ofhom-apply.md) | 128 | `result-track:c082f0a6b734375bf2306e2cc6032af81307f29d864304d22b8824b1d0df1ff0` |
| 25 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/inv-hom-apply.md) | 131 | `result-track:7f78c04b793e5f9324ba39a6a79644e9fc7858199695430e16eea611f58df9bc` |
| 26 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/hom-inv-apply.md) | 134 | `result-track:78c5758ca98366e4ac76f42231c0be597e622c0b38f0e9257db33f3b8d590707` |
| 27 | `instance` | [hasForgetToPreord](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/hasforgettopreord.md) | 137 | `declaration-track:9fd4b5a8a62c6d2145dc5a08589b9fac2dca85761b26afdf82d5bca2b69daf10` |
| 28 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/iso-mk.md) | 143 | `declaration-track:c08dcf3b8e3e0bb13cbbcef5a7f6046a6aae0b88f0f82a473d9a3fd1211eb97a` |
| 29 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/dual.md) | 149 | `declaration-track:2faeccc7d5a311ca25f15673ccba1d0d0ff2f6c3b5cb7b31b5e034e2ffbaf28b` |
| 30 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/dualequiv.md) | 155 | `declaration-track:ed33f6e6568e8dd2a793715465dba39731987d5c04976fed746b3c1e977eaa1f` |
| 31 | `theorem` | [partOrd_dual_comp_forget_to_preord](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/partord-dual-comp-forget-to-preord.md) | 163 | `result-track:f787fc5747e85db39daa64e5ac91a7479b2773997fd3c4ce6cbb9a026324966d` |
| 32 | `def` | [preordToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/preordtopartord.md) | 169 | `declaration-track:cc5ec34b58dc77d3a9cf5509cce5be83a575912917576e7ead818e9bf8255649` |
| 33 | `def` | [preordToPartOrdForgetAdjunction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/preordtopartordforgetadjunction.md) | 181 | `declaration-track:39ac6fc3f13a2c105ce2549dd21a5687cce35f938b6b69f118b2ce5ea1b02e61` |
| 34 | `def` | [preordToPartOrdCompToDualIsoToDualCompPreordToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/preordtopartordcomptodualisotodualcomppreordtopartord.md) | 199 | `declaration-track:a88cd39a4ccfa61e70ea07cbc86c84f659000bc97af079caa788a7d27678c18e` |
| 35 | `lemma` | [preordToPartOrdCompToDualIsoToDualCompPreordToPartOrd_inv_app_hom_coe'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PartOrd.lean/declarations/preordtopartordcomptodualisotodualcomppreordtopartord-inv-app-hom-coe.md) | 206 | `result-track:38d7e99e814e243ee2d195020887ac0cc2a2796a6e9dce2dd1b8517fbef560db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4c92d24d40744b1a01acf548910fe508533fb7c07e381f65e90a8bb5fa70dbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variantdedb31712da856d615468c53ba4b36d9554f8ec452daa8b9730ae7c6a34e9fdc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variantdedb31712da856d615468c53ba4b36d9554f8ec452daa8b9730ae7c6a34e9fdc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
