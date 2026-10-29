# Verification target: Of Fixing Subgroup Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87bc2bd82adec3b891b2ba8d5c1d45ba54000ffb",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87bc2bd82adec3b891b2ba8d5c1d45ba54000ffb`.

Source path: `GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean.json)

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
| 1 | `def` | [ofFixingSubgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup.md) | 80 | `declaration-track:55aa0696fd6492b4899b21ae9f5b90df24dafbcbc8f7c9ca17f2bef7b613c5b4` |
| 2 | `theorem` | [ofFixingSubgroup_carrier](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-carrier.md) | 89 | `result-track:be2a68d6f0d29a8f95797eeb9b7e1e0335584efa9da9f90f87a4553edd0a02d8` |
| 3 | `theorem` | [mem_ofFixingSubgroup_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/mem-offixingsubgroup-iff.md) | 95 | `result-track:e10e51c167f8f2f9bdc851dd9b5aa5d5c56cfd73fcc0bd472eda48cdd8ceef68` |
| 4 | `theorem` | [not_mem_of_mem_ofFixingSubgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/not-mem-of-mem-offixingsubgroup.md) | 102 | `result-track:7b499404c00116c9d12624f9c083087e45f45e923276997f575b9a15f6e412ea` |
| 5 | `theorem` | [disjoint_val_image](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/disjoint-val-image.md) | 106 | `result-track:1ea412cdac6aa2d4aac87e440d49589dcbdb4aee7a077248d823bc5e2b142713` |
| 6 | `def` | [ofFixingSubgroup_equivariantMap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-equivariantmap.md) | 117 | `declaration-track:ecddd4e3e8fc3fb73504c2d3fa704df99f1defe329893ae6da619ea6145290fb` |
| 7 | `theorem` | [ofFixingSubgroup_equivariantMap_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-equivariantmap-injective.md) | 123 | `result-track:a86de7f275db33a2165e7d758662be68514959f8d95825b0f3d765b2216cd7c8` |
| 8 | `theorem` | [ofFixingSubgroupEmpty_equivariantMap_bijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroupempty-equivariantmap-bijective.md) | 133 | `result-track:971c338ecf11b12d03d57a779abe28ecc821e8d2b5e64387e8a6ae8a4f9c00bb` |
| 9 | `theorem` | [of_fixingSubgroupEmpty_mapScalars_surjective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/of-fixingsubgroupempty-mapscalars-surjective.md) | 139 | `result-track:0b202977b9fa0174eb5b436f5e36fbfd6b4e802da45b24e0f703ce39cf0437f2` |
| 10 | `theorem` | [mem_fixingSubgroup_insert_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/mem-fixingsubgroup-insert-iff.md) | 148 | `result-track:86ba963666131b1aea40e3f38892251aba8194d06e91fd27263167bf9f164c6c` |
| 11 | `theorem` | [fixingSubgroup_of_insert](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/fixingsubgroup-of-insert.md) | 153 | `result-track:4a6a0b428aec79be58ea25df85ba85a116f2f4c939e6a85172218af37341fce0` |
| 12 | `theorem` | [mem_ofFixingSubgroup_insert_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/mem-offixingsubgroup-insert-iff.md) | 160 | `result-track:6ec098cf79604483af1479d3011dde8522162b979a897ce7a807123767c7f2c5` |
| 13 | `def` | [fixingSubgroupInsertEquiv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/fixingsubgroupinsertequiv.md) | 168 | `declaration-track:56b99b232a62faa6f1ecfa40222c52310e222b9627ed6a3d72705fcfeb953cc9` |
| 14 | `def` | [ofFixingSubgroup_insert_map](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-insert-map.md) | 184 | `declaration-track:19dec3ebe0c7c751b3594da93510ec23507e261a90c73e31dd88070c22db12fe` |
| 15 | `theorem` | [ofFixingSubgroup_insert_map_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-insert-map-apply.md) | 194 | `result-track:90c421206b396b71bfd8d5c7f0992b191394349fb879d97a5e03594d36e1d839` |
| 16 | `theorem` | [ofFixingSubgroup_insert_map_bijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-insert-map-bijective.md) | 200 | `result-track:9bdc0bbb5cecc3d008ed33615c5b290e38ca160a4d8122eaa22dda3c541c62b9` |
| 17 | `theorem` | [_root_.Set.conj_mem_fixingSubgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/root-set-conj-mem-fixingsubgroup.md) | 215 | `result-track:5596c6d00932b7590ea2b6053700c42e67b5330360e3f0fead5fe261240137e0` |
| 18 | `theorem` | [fixingSubgroup_map_conj_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/fixingsubgroup-map-conj-eq.md) | 225 | `result-track:ab3821a5b54dd47b838c7618f18b097a85a443cbd649113936f3fea18f016d0b` |
| 19 | `theorem` | [fixingSubgroup_smul_eq_fixingSubgroup_map_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/fixingsubgroup-smul-eq-fixingsubgroup-map-conj.md) | 243 | `result-track:7032916e1af93566831770d4caf1e547fa2c39cdbb6918cb92bcaa4d6b90a33f` |
| 20 | `def` | [fixingSubgroupEquivFixingSubgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/fixingsubgroupequivfixingsubgroup.md) | 252 | `declaration-track:8e5bcaac16e487f155d9426ea3cbe0099bfd1493bdc78a5e4f6d797e2d6ee7f8` |
| 21 | `theorem` | [fixingSubgroupEquivFixingSubgroup_coe_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/fixingsubgroupequivfixingsubgroup-coe-apply.md) | 258 | `result-track:e7b731e4a81f66e628a10017d38ea1dcd9426fab8fbebcc31aba61a337d95276` |
| 22 | `def` | [conjMap_ofFixingSubgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/conjmap-offixingsubgroup.md) | 266 | `declaration-track:5a6375de6523e66e13fef6b65f4539cd87f581a81d047ee4341a7b7e6c0fc261` |
| 23 | `theorem` | [conjMap_ofFixingSubgroup_coe_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/conjmap-offixingsubgroup-coe-apply.md) | 280 | `result-track:c7785758cffa87bc389fc266f0583224339da070d7acf420e9b4bb445758f989` |
| 24 | `theorem` | [conjMap_ofFixingSubgroup_bijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/conjmap-offixingsubgroup-bijective.md) | 284 | `result-track:12dcc6c9e7da2ef63a5f0b60abf4cc875149d6e4b62d23af97c23f0b62ca6c47` |
| 25 | `lemma` | [mem_fixingSubgroup_union_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/mem-fixingsubgroup-union-iff.md) | 299 | `result-track:da85381fda4ba929893271389fe031bbe5426a525e0243a814c27392dff4ebcc` |
| 26 | `def` | [fixingSubgroup_union_to_fixingSubgroup_of_fixingSubgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/fixingsubgroup-union-to-fixingsubgroup-of-fixingsubgroup.md) | 307 | `declaration-track:563521eb1a882be6e37e3eb524f592368ee8f44aa94e05d4c5a8624b36811cd9` |
| 27 | `def` | [map_ofFixingSubgroupUnion](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/map-offixingsubgroupunion.md) | 325 | `declaration-track:c174bcc32008a538dde458e6c942f14b0dbaa92ae77e896f8ac30e38013b23c5` |
| 28 | `theorem` | [map_ofFixingSubgroupUnion_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/map-offixingsubgroupunion-def.md) | 350 | `result-track:3f37b5fba0e2bfc4bbbc68fc959318bc96dbb8d1cb5967780448d22b90aa29ec` |
| 29 | `theorem` | [map_ofFixingSubgroupUnion_bijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/map-offixingsubgroupunion-bijective.md) | 355 | `result-track:9ca4870cfa8de1ce7a75dfcffced746c75b99566779e081e918115703435aa2d` |
| 30 | `def` | [ofFixingSubgroup_of_inclusion](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-of-inclusion.md) | 373 | `declaration-track:51e51fcef4cbc0eddabd082c41e38091dd171fc5ec7492eb2eadeb91667ddaff` |
| 31 | `lemma` | [ofFixingSubgroup_of_inclusion_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-of-inclusion-injective.md) | 381 | `result-track:f5ee76d201957fce1223ac56c5f6ce72675863469614029e2855d1d62f6ce86a` |
| 32 | `def` | [ofFixingSubgroup_of_singleton](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-of-singleton.md) | 393 | `declaration-track:56429b52bacc044317667acfa336971693cd8b9af5de5c5ec90b41cddcc89625` |
| 33 | `theorem` | [ofFixingSubgroup_of_singleton_bijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-of-singleton-bijective.md) | 401 | `result-track:025d652ecba6cef4f2db6bdb4cd0a06ce6000a63831e2df1dafa6280aa7050f6` |
| 34 | `def` | [ofFixingSubgroup_of_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-of-eq.md) | 410 | `declaration-track:2edb0526b6ec7771d12a51a469ed65e0596066ff880521d96957ef97df22c2c6` |
| 35 | `theorem` | [ofFixingSubgroup_of_eq_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-of-eq-apply.md) | 418 | `result-track:91b595d24d7dc2071df5eb86d5edf2c7175c6402e5679b613afc0a1ca14e928e` |
| 36 | `theorem` | [ofFixingSubgroup_of_eq_bijective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-of-eq-bijective.md) | 423 | `result-track:cde69473bb0e7836f8c8e39d5536d8b25aa63f2496cf2930ad694cc579aa01c4` |
| 37 | `def` | [ofFixingSubgroup.append](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-append.md) | 437 | `declaration-track:c392731b0a5dcac1838460b369b51402a12d34859a679c7c3ec7b837213e0ce9` |
| 38 | `theorem` | [ofFixingSubgroup.append_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-append-left.md) | 451 | `result-track:0876ed65035883b519786c7e25e233e19c3493ebbd5b0edd16dee32e41154e40` |
| 39 | `theorem` | [ofFixingSubgroup.append_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/offixingsubgroup-append-right.md) | 459 | `result-track:cd31827aa4c9ddc458b365dc8f266df41f27a34953ec1efc3f5e0939cfe9f295` |
| 40 | `theorem` | [IsPretransitive.isPretransitive_ofFixingSubgroup_inter](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/ispretransitive-ispretransitive-offixingsubgroup-inter.md) | 471 | `result-track:bec240c5d8d3a246fd28ab2a1229f549ad8f584370b86ea028eeaf307004ee47` |
| 41 | `theorem` | [IsPreprimitive.isPreprimitive_ofFixingSubgroup_inter](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/ispreprimitive-ispreprimitive-offixingsubgroup-inter.md) | 500 | `result-track:d78079fe4fb111040c915b11e3575b65c9d09cbd21851a51e334341c3a6f0a0b` |
| 42 | `theorem` | [MulAction.fixingSubgroup_le_stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/OfFixingSubgroupPublic.lean/declarations/mulaction-fixingsubgroup-le-stabilizer.md) | 525 | `result-track:096729b54b00ba346af4fc2b58a4f206095c4ef0351f25322faa5167a3728dbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0778d1ec33440e23ce267308ea096a443a11b526f29d0174298168bd4a7691c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/OfFixingSubgroup/Variant62b401d4f64f145b3cbe7c520ac97e88e028c16a749b113ed8d8ea17aa9ca17f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
