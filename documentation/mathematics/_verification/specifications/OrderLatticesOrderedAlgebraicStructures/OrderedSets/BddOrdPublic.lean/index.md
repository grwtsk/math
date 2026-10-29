# Verification target: Bdd Ord Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c44264e52c30e7dd797c1f77033d41fdda1d04c5",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BddOrd/Variant9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c44264e52c30e7dd797c1f77033d41fdda1d04c5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BddOrd/Variant9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BddOrd/Variant9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29.lean.json)

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
| 1 | `structure` | [BddOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/bddord.md) | 26 | `declaration-track:e1e61d5334005d1de71e3f7f6e9dd4fd9d5119556e979a55cd1a37bce1f983e1` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/instance-source-edition-2.md) | 38 | `declaration-track:109d751da8daa67ca2e41ffdb3948ae4ed579a01c2a77ded6688123731c04520` |
| 3 | `abbrev` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/of.md) | 42 | `declaration-track:05c332283594f395c6707bbce681d54a395e1a7689463a1af24a553c5bac7222` |
| 4 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/delabof.md) | 48 | `declaration-track:bc31de822d4bc2bc2562cbc1952ee39998d5fefbd982c75faa4dafbf40d584e2` |
| 5 | `structure` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hom.md) | 52 | `declaration-track:76213838bc21b4850b4a880df9888f6e6cb75e8e482c8bbb2ae397b0b84378e7` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/instance.md) | 57 | `declaration-track:0a0be127d881f7c2df725a3bfccc1c0c2abcadf4c596c46043b020fc245536b8` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/instance-source-edition-3.md) | 62 | `declaration-track:4b2d9cc229bd7f51f5f27894c49380607621350e1f05c1503be2f9df0ede1ba0` |
| 8 | `abbrev` | [Hom.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hom-hom.md) | 67 | `declaration-track:43efa0dd65e8d4eff749f1d19b89c579fe5c0541358c3d54dfef7fb06e1abbb0` |
| 9 | `abbrev` | [ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/ofhom.md) | 71 | `declaration-track:72125888a5feb8e1b954ffa0804c0d07bdf8c50f477f9e3ba289bf2a1a3bce4f` |
| 10 | `def` | [Hom.Simps.hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hom-simps-hom.md) | 77 | `declaration-track:116494a6149b21c656925041d42f8fb85c708cb29c0809a1a115b76799a42a10` |
| 11 | `lemma` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/coe-id.md) | 87 | `result-track:c0effb5cc3198b3b47ab5eb222cde37ad17f2bf399e8228b97c27cf4f4ab9bbd` |
| 12 | `lemma` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/coe-comp.md) | 90 | `result-track:e3774ada17693c30bb53dfa20435c25f7502a374024014a243d92c5aeae727a4` |
| 13 | `lemma` | [forget_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/forget-map.md) | 93 | `result-track:cbc78179db9adfa614872343802d316828f83a23a3f135c14b7ce2161430debe` |
| 14 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/ext.md) | 97 | `result-track:aabb3c2b1718f000bddb80b41f0d2e7820825e3286b7bd933ac35876c12db861` |
| 15 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/coe-of.md) | 101 | `result-track:6f406717a6ef1a3008ba3805ccfa3878532b54b9e63420ca1e8c7cb0956b8c23` |
| 16 | `lemma` | [hom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hom-id.md) | 104 | `result-track:f82b6f549a32bde9d4bb6918f5d2a64f7a1f4c615a3085f6168c11538eaafb7a` |
| 17 | `lemma` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/id-apply.md) | 107 | `result-track:b11e14f58c66ccb62e7c4891383a6e52c38e63d08b8c755ccc2e52dabd93df08` |
| 18 | `lemma` | [hom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hom-comp.md) | 111 | `result-track:51be0d76ca90d8470299218e18ef7bf2d4851d637f10c7c55111e3be6c33ddbe` |
| 19 | `lemma` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/comp-apply.md) | 115 | `result-track:40a64a9c1656b477cf5c1989d7318dee0136fbb8270be0f741826c3125391d08` |
| 20 | `lemma` | [hom_ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hom-ext.md) | 119 | `result-track:42a5c40fcee48f244642e4c133f1166ddd6e94bb2168af9ef1e8d15c469653b1` |
| 21 | `lemma` | [hom_ofHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hom-ofhom.md) | 123 | `result-track:c579f67ccbbc33ac41e9b3e65e3eebfcaed17062259732d79ccecb9c2853428f` |
| 22 | `lemma` | [ofHom_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/ofhom-hom.md) | 128 | `result-track:fc8985fae890a890cae13db34e4eb854efdfeff94adbda7b5c42c96f31782c90` |
| 23 | `lemma` | [ofHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/ofhom-id.md) | 132 | `result-track:c9d3cc91fbed67fbc30e2568d6f3fb4e3ec5b47fac572313b365c08fc35e45c3` |
| 24 | `lemma` | [ofHom_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/ofhom-comp.md) | 136 | `result-track:1b155bd56b2b93d2e91846bf67fcd86c274a09611509da225088e6f46604a76b` |
| 25 | `lemma` | [ofHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/ofhom-apply.md) | 142 | `result-track:8f3b663ad2c63246f8539176db5f6171a5ecc52a9134fe567b2442024542473b` |
| 26 | `lemma` | [inv_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/inv-hom-apply.md) | 146 | `result-track:7c0d76643ea53e25d42e4360669ea8c7c697969d949afcf79810a54aaf7d6f36` |
| 27 | `lemma` | [hom_inv_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hom-inv-apply.md) | 149 | `result-track:381f6a1b403353fb3abe00fc02861a04907b86d2e9a461115e556af4455648bf` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/instance-source-edition-4.md) | 152 | `declaration-track:c2e759f4a883c849f47bd1c2a48ed8382400a0b28c660d1d4780e35d76cb0c58` |
| 29 | `instance` | [hasForgetToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hasforgettopartord.md) | 155 | `declaration-track:d8307699db0fad48736565c20feb5c9c427e36720b1ac7c77ee1b0089347c2b5` |
| 30 | `instance` | [hasForgetToBipointed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/hasforgettobipointed.md) | 159 | `declaration-track:168f32407e595599338d8be97783ceb29058ca7d18414c2a49e35e9764d3e16e` |
| 31 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/dual.md) | 167 | `declaration-track:5d9be15e4abfe2d79b2ecc874179967f76f48713ab2a2350078155deea7bd15b` |
| 32 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/iso-mk.md) | 173 | `declaration-track:2e049f37a054c5953ff2ad4d53b108cb25077103c5f648d13f0bcf4f8c4a99df` |
| 33 | `def` | [dualEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/dualequiv.md) | 181 | `declaration-track:0a017672c6e539ca999e613bb5fb9d3ab39155e1b204fbb5943e0a5bfe203999` |
| 34 | `theorem` | [bddOrd_dual_comp_forget_to_partOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/bddord-dual-comp-forget-to-partord.md) | 189 | `result-track:fb3675676818f704c175aa2523f90a529c82f1e6e1dcd54f7316623a51356364` |
| 35 | `theorem` | [bddOrd_dual_comp_forget_to_bipointed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BddOrdPublic.lean/declarations/bddord-dual-comp-forget-to-bipointed.md) | 194 | `result-track:6ab70d5358018a6bca5139064ed43abc2117d3bcaa2e91aa211ef4d59c749c8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f93af6be5bd44d4eee1c63153adf02acb8931e77de73b3e29332d69c8f7e238a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BddOrd/Variant9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/BddOrd/Variant9f5a4db71829e251da9a329bde07dbc0c78201ed301bcb8dc37ee400f3d3bf29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
