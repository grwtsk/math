# Verification target: Subset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf026e08658daad6c0ade4f3c71d1a32ec234d79",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf026e08658daad6c0ade4f3c71d1a32ec234d79`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Functor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [preimage_val_eq_univ_of_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/preimage-val-eq-univ-of-subset.md) | 49 | `result-track:737639373e7c558b88d9645648f691a83a1e853f9157db70bec452827c5ddc7a` |
| 2 | `lemma` | [preimage_val_sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/preimage-val-sunion.md) | 53 | `result-track:a7f58264d0f26adf2b9d29760d0bd1bf42a77622a27eea35f74c342676805716` |
| 3 | `lemma` | [preimage_val_iInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/preimage-val-iinter.md) | 58 | `result-track:0724e5f28b935c6af1b664e29e96c056185b3fd8dceaf9cb1741136c9ca551ff` |
| 4 | `lemma` | [preimage_val_sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/preimage-val-sinter.md) | 60 | `result-track:2d413c4ad092cb92999c167feab602207d55b301059483dfd39f47382608aa9b` |
| 5 | `lemma` | [preimage_val_sInter_eq_sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/preimage-val-sinter-eq-sinter.md) | 64 | `result-track:9a6fdaa4d5ec4a9b86c46907b10a81e972aa338e6eeb86cc30df21adaa1c2ddd` |
| 6 | `lemma` | [eq_of_preimage_val_eq_of_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/eq-of-preimage-val-eq-of-subset.md) | 67 | `result-track:ad980d7933ce8a43042e1173a1a44875fdd241e50c67394867d683322d260769` |
| 7 | `lemma` | [image_val_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-union.md) | 78 | `result-track:ba9cfb1a7251bf67e0d15feeb2c380be6f0ab587b4cac4b786cc3c90fe65ae1a` |
| 8 | `lemma` | [image_val_inter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-inter.md) | 81 | `result-track:d7d173b6369e7e991ee05dc1c66cc44657ca779a85e011ba82c1c6a5d3856d31` |
| 9 | `lemma` | [image_val_diff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-diff.md) | 84 | `result-track:2a3202e408e2740d64adac8b8b124f9d44010e2dd5e794b1ee974abd829e74bf` |
| 10 | `lemma` | [image_val_compl](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-compl.md) | 87 | `result-track:89c18fbea73c2f0dc4023ae203690193439723da3db56e94414d80c136960fcf` |
| 11 | `lemma` | [image_val_sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-sunion.md) | 91 | `result-track:5f9e37ee156f7c6e6a96850f0106cc5fc87eafa305829ea3d8e89cf0b0db6307` |
| 12 | `lemma` | [image_val_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-iunion.md) | 95 | `result-track:4d97fdc3d05d44fb51604380fb87222425d68f25125f4238dc74fd0e32b2693b` |
| 13 | `lemma` | [image_val_sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-sinter.md) | 98 | `result-track:4d632defee705cf1f173ec0ef01891065f0a361832bc60e7ca88cdbb5c68e9c7` |
| 14 | `lemma` | [image_val_iInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-iinter.md) | 102 | `result-track:b9ceb3221efedb5ddf6854a35bc68dff400937d4bcf0a8eb570367fad16f7ee0` |
| 15 | `lemma` | [image_val_union_self_right_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-union-self-right-eq.md) | 106 | `result-track:8e25d862d316e254f998db67e15138c91117ac79909b984c668bd4e09b06b5f6` |
| 16 | `lemma` | [image_val_union_self_left_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-union-self-left-eq.md) | 110 | `result-track:01873f90b0b0a85769effbd06c937db0c0625e796cf1eab5f5fc38099bd1e22a` |
| 17 | `lemma` | [image_val_inter_self_right_eq_coe](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-inter-self-right-eq-coe.md) | 114 | `result-track:77c0eec15dcc0bf6c5a82b04d96565ff54bbdf8f1c62bdb68934be9195ed1de4` |
| 18 | `lemma` | [image_val_inter_self_left_eq_coe](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-inter-self-left-eq-coe.md) | 120 | `result-track:a6083b862ccdd2cc5db497a503b02cf4db5f24df013f492c1f48cdb9490e754b` |
| 19 | `lemma` | [subset_preimage_val_image_val_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/subset-preimage-val-image-val-iff.md) | 123 | `result-track:7535a846dd78cfa92b6c156138c8ae9b56090b2a9b8475f52c3be429c1c409ab` |
| 20 | `lemma` | [image_val_inj](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-inj.md) | 127 | `result-track:1303b8d0c04942a65ed55193479ae5dd0b2d353708872f5bd70392ac48c59e7b` |
| 21 | `lemma` | [image_val_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-injective.md) | 129 | `result-track:982340da4fcfe925fbf6268241d76f5a62f9c87c78aa185db0d1d0edd52ff09b` |
| 22 | `lemma` | [subset_of_image_val_subset_image_val](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/subset-of-image-val-subset-image-val.md) | 132 | `result-track:d66f41c369b0189c8c2cf7011e582f07983e75f9f0fe35c1c4a50b419ebb14ce` |
| 23 | `lemma` | [image_val_mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-mono.md) | 136 | `result-track:9e44c95b286ca952043ccf3db47e86f14f3e48496efa51df549436718fad7c4f` |
| 24 | `lemma` | [image_val_preimage_val_subset_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/image-val-preimage-val-subset-self.md) | 143 | `result-track:027796f1b0385c334baea66838b80e86bfad0e81739fc0204234d8745a276b71` |
| 25 | `lemma` | [preimage_val_image_val_eq_self](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Subset.lean/declarations/preimage-val-image-val-eq-self.md) | 146 | `result-track:c0739813ef8d66c3f52b766c2d1dbc99e3a1994f711e0f8fdc5a1c0b41ee3cff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4fe08fede00d148a7e0156622d3bc522d000ecefd793d667fcbffa741a0a251e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subset/Variant3cc043fd6a66f002b15e8274bb281b1cee4764d8c0094fb18be9580562d0331f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
