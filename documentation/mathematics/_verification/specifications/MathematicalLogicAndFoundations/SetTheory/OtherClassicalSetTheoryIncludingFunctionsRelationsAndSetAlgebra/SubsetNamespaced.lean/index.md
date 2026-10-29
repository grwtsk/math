# Verification target: Subset Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe11076bb5c4070ff1c5c2487666a2cf67b7d159",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant368dfa71975ffbbcd9f70b3e4fb2a1a92631c2aceaf80a19edc605933cc3cbdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe11076bb5c4070ff1c5c2487666a2cf67b7d159`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant368dfa71975ffbbcd9f70b3e4fb2a1a92631c2aceaf80a19edc605933cc3cbdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant368dfa71975ffbbcd9f70b3e4fb2a1a92631c2aceaf80a19edc605933cc3cbdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Functor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [preimage_val_eq_univ_of_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/preimage-val-eq-univ-of-subset.md) | 57 | `result-track:0c63c043d8fff388f4be4a4a7991e9c4cca81aea4544411ff7de6bc155bad2be` |
| 2 | `lemma` | [preimage_val_sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/preimage-val-sunion.md) | 61 | `result-track:044a10f5e4e432c78a442382839614e3f0ad9122b83f8c2318b209a66e84d39d` |
| 3 | `lemma` | [preimage_val_iInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/preimage-val-iinter.md) | 66 | `result-track:c5c99e3f9f2b01b9e71c059cda444473e50c4c395f3c9e58e0979756d2e35e42` |
| 4 | `lemma` | [preimage_val_sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/preimage-val-sinter.md) | 68 | `result-track:30ac1646ad0f9da83c70a435edd5a2eeb007c4af3839f3b720397a3e1db68716` |
| 5 | `lemma` | [preimage_val_sInter_eq_sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/preimage-val-sinter-eq-sinter.md) | 72 | `result-track:34e7b07a90627b7091dc1a6d6410f66abd86da66761121bfe5dff4f1c7fb68eb` |
| 6 | `lemma` | [eq_of_preimage_val_eq_of_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/eq-of-preimage-val-eq-of-subset.md) | 75 | `result-track:0254407cb733c23ce67bb95b00dabb0cab5905342d49174efc275246166941aa` |
| 7 | `lemma` | [image_val_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-union.md) | 86 | `result-track:62a7c271d1a9f3de011497afa1fe29e10d4dbb4c6ebeb7457d1e56b202fed803` |
| 8 | `lemma` | [image_val_inter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-inter.md) | 89 | `result-track:7f52ba92e627dd0c423fe3e2ae0f3ec5f4fbece664c1fbb76cfbe1fd92585ac7` |
| 9 | `lemma` | [image_val_diff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-diff.md) | 92 | `result-track:91dfba51efe8c6b03b80f714322ac48be4fc069da02e6148d4afa693efbc9c19` |
| 10 | `lemma` | [image_val_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-compl.md) | 95 | `result-track:aa1783140e2cbe3668581cf046d226eb0cc0bdfa50f4c84c3ca81ac1ace06f01` |
| 11 | `lemma` | [image_val_sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-sunion.md) | 99 | `result-track:64ebe1582c7f308a28d8a75f0deae04cab1fb481f929f49dda90197d947bd5c3` |
| 12 | `lemma` | [image_val_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-iunion.md) | 103 | `result-track:233873e4a31526d29be9720fbbc65bbc35be2e1b1aa350a50b9421feec3ba677` |
| 13 | `lemma` | [image_val_sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-sinter.md) | 106 | `result-track:2d8a3298e001dee33cc7c82c8602fa144faf9ee0ddb74b2f1e38e6776e9bbf40` |
| 14 | `lemma` | [image_val_iInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-iinter.md) | 110 | `result-track:8fe4a16377c39de5cb694c62f480ba5db4cb2aecd1ea2dbd317ddfd6005806a6` |
| 15 | `lemma` | [image_val_union_self_right_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-union-self-right-eq.md) | 114 | `result-track:9839245fa7af8957feac4ba39a951d9de6e5c007d91cded08cd44975ae418b0c` |
| 16 | `lemma` | [image_val_union_self_left_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-union-self-left-eq.md) | 118 | `result-track:06d1494c0d76deec082484844aacee385779c7780110c161720dbcecbd682cb8` |
| 17 | `lemma` | [image_val_inter_self_right_eq_coe](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-inter-self-right-eq-coe.md) | 122 | `result-track:a5f7613b755ff599d9b588a5edfc3706685891a1ad3279693d6f53535fb0ed8a` |
| 18 | `lemma` | [image_val_inter_self_left_eq_coe](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-inter-self-left-eq-coe.md) | 128 | `result-track:6fcd09070c5621f92f5fc035c6e366b8b068b231259eac3fb66a99f90dc74f32` |
| 19 | `lemma` | [subset_preimage_val_image_val_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/subset-preimage-val-image-val-iff.md) | 131 | `result-track:1be5dd235e11502e9941a952f0f7b9b66e72cfd246dc554e0a00c1c3ce6f0d33` |
| 20 | `lemma` | [image_val_inj](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-inj.md) | 135 | `result-track:f9d5b0f6f6aed7242ed228929c26fcd7dfa6e383394003c4994c6912b66044e0` |
| 21 | `lemma` | [image_val_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-injective.md) | 137 | `result-track:d3719f892ad8b052d8b16e774a4babbb3632435b64289f7a123604980a9072ca` |
| 22 | `lemma` | [subset_of_image_val_subset_image_val](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/subset-of-image-val-subset-image-val.md) | 140 | `result-track:54cd03c68d8bbae7a32be51a8d6d56a8d209373f33c6e9def3c3eb57c100b149` |
| 23 | `lemma` | [image_val_mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-mono.md) | 144 | `result-track:12f302b280a4baf83302db3ffee89ab7d0af063169ec2bbe870fc0166e0bdd40` |
| 24 | `lemma` | [image_val_preimage_val_subset_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/image-val-preimage-val-subset-self.md) | 151 | `result-track:5c2f3cebdf30de66ad3af5cfa4c9134e1afae19ac5255848b4652a42045ad858` |
| 25 | `lemma` | [preimage_val_image_val_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SubsetNamespaced.lean/declarations/preimage-val-image-val-eq-self.md) | 154 | `result-track:35c44fc37cf7e3a9ae40ed5b044c39d4528fec99c8ee3db73b9874261f478670` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e56739c1de7f56c1308b90bce34058a60f07e2636e9fbc5b7fc3fb829e6157fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant368dfa71975ffbbcd9f70b3e4fb2a1a92631c2aceaf80a19edc605933cc3cbdf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant368dfa71975ffbbcd9f70b3e4fb2a1a92631c2aceaf80a19edc605933cc3cbdf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
