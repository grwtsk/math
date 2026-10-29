# Verification target: Perm Finite Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45275f6dfc8d412e8d60eeed282bb2f9f9849f95",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant6475034aa554ff5a4cd90d003e282efd432472d3548ab920a56782d1483c0153.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45275f6dfc8d412e8d60eeed282bb2f9f9849f95`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant6475034aa554ff5a4cd90d003e282efd432472d3548ab920a56782d1483c0153.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant6475034aa554ff5a4cd90d003e282efd432472d3548ab920a56782d1483c0153.lean.json)

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
| 1 | `theorem` | [isConj_of_support_equiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/isconj-of-support-equiv.md) | 47 | `result-track:bf91440b0e07e7d5b275d189ac98cfebd7b4e230d965fa4d46fde4dc3b738388` |
| 2 | `theorem` | [perm_symm_on_of_perm_on_finset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/perm-symm-on-of-perm-on-finset.md) | 64 | `result-track:089007628709755a4edef3715509102df825d6f578ffc07990c36d66a8c1b486` |
| 3 | `theorem` | [perm_symm_mapsTo_of_mapsTo](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/perm-symm-mapsto-of-mapsto.md) | 72 | `result-track:ea54bcd6b42c9ecf195dd605766a5696ba4eca29e7ab6fc8cf08f522a0821c9c` |
| 4 | `theorem` | [perm_symm_mapsTo_iff_mapsTo](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/perm-symm-mapsto-iff-mapsto.md) | 82 | `result-track:d56d7a5499489f9117fa0b9ecf763c2f18c2e646a749b8ead7196f9c78c6ac03` |
| 5 | `theorem` | [perm_symm_on_of_perm_on_finite](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/perm-symm-on-of-perm-on-finite.md) | 86 | `result-track:8b8074dd41a6a965d36dd027c944a8b8100853c4167592ed0fe045175293c25a` |
| 6 | `abbrev` | [subtypePermOfFintype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/subtypepermoffintype.md) | 94 | `declaration-track:042386e70435f53e6de8d1be96c2802db0465ce5a44f01db3eb092489ed5fbae` |
| 7 | `theorem` | [subtypePermOfFintype_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/subtypepermoffintype-apply.md) | 99 | `result-track:b97b2fe952bf33e669fc7df558cbdb634b27911525bb4bdfbe5a1d9687d9a86c` |
| 8 | `theorem` | [subtypePermOfFintype_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/subtypepermoffintype-one.md) | 103 | `result-track:f49558beee2a5e1ce9411c283d3cae3e0fa1e9eace02f1cbc348b992bf067b94` |
| 9 | `theorem` | [perm_mapsTo_inl_iff_mapsTo_inr](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/perm-mapsto-inl-iff-mapsto-inr.md) | 107 | `result-track:22deb9e5205b2764449a9527ca3a4b4968b1c4a2e333022a7b8c2f8d0a9bd08c` |
| 10 | `theorem` | [mem_sumCongrHom_range_of_perm_mapsTo_inl](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/mem-sumcongrhom-range-of-perm-mapsto-inl.md) | 126 | `result-track:199fdfbc1c1b93505d772a6b20c91cab8782744c9597d2962970487f18567660` |
| 11 | `theorem` | [Disjoint.orderOf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/disjoint-orderof.md) | 148 | `result-track:af68cfd7aedf13a4a29e0e1c94e97f6ba0a5c03e62e679c294aec5678359b0cc` |
| 12 | `theorem` | [Disjoint.extendDomain](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/disjoint-extenddomain.md) | 157 | `result-track:4990af17ca754c89901c1e00f7214768c057c1d1fb503b5a4443c4fa4bf967fc` |
| 13 | `theorem` | [Disjoint.isConj_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/disjoint-isconj-mul.md) | 168 | `result-track:15cac1e313ef9e0cd5c18305f8ace927311f6e2d30da69038b570f11b3254671` |
| 14 | `theorem` | [apply_mem_fixedPoints_iff_mem_of_mem_centralizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/apply-mem-fixedpoints-iff-mem-of-mem-centralizer.md) | 213 | `result-track:09faa14fd7cb58f66b36eea570928a393fad34e2bdf5bdf1f6bee3ea504e585e` |
| 15 | `lemma` | [disjoint_ofSubtype_of_memFixedPoints_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/disjoint-ofsubtype-of-memfixedpoints-self.md) | 222 | `result-track:7a4aa2e46c075e9eb70dee4ccd07c2a7578d9167ea57a14074970ef934f9360f` |
| 16 | `theorem` | [support_pow_coprime](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/support-pow-coprime.md) | 235 | `result-track:f00863b6119edff2cfdfc2589dd83630cd16f27f18b6feb1c029b9197982aeb6` |
| 17 | `lemma` | [ofSubtype_support_disjoint](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/ofsubtype-support-disjoint.md) | 242 | `result-track:ffa9330d87c678e365dfa7ea5d9542d42c0c432722032094baae4cb67507c705` |
| 18 | `lemma` | [disjoint_of_disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/disjoint-of-disjoint-support.md) | 251 | `result-track:8bc3e313de4f668dd762709da2717cc5caf48c614f341d64b7dcc82cacc0094d` |
| 19 | `lemma` | [support_closure_subset_union](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/support-closure-subset-union.md) | 259 | `result-track:84b2236eaaff55b81556e76256f361b6de546a3758e455e33a6757ddf82126f9` |
| 20 | `lemma` | [disjoint_support_closure_of_disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/disjoint-support-closure-of-disjoint-support.md) | 270 | `result-track:3ffd138925f7298187b782bae13b2f919eb51c220fd7e4d6a472ad36cd309299` |
| 21 | `lemma` | [disjoint_closure_of_disjoint_support](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/disjoint-closure-of-disjoint-support.md) | 280 | `result-track:279914bd7125dc6f20ace661a1e0b9bd84e7e89c99fcc288a7b15c197087ad02` |
| 22 | `theorem` | [mem_range_ofSubtype_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/PermFiniteNamespacedPublic.lean/declarations/mem-range-ofsubtype-iff.md) | 287 | `result-track:45d77289f9a0326958962377ebd521351fdab1ddc1fedf50ae8925f718288937` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cbaf9e4134f8768e6ae4f384e43e5847afa28c5772135811ef03cd83049fc749 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant6475034aa554ff5a4cd90d003e282efd432472d3548ab920a56782d1483c0153.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Finite/Variant6475034aa554ff5a4cd90d003e282efd432472d3548ab920a56782d1483c0153.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
