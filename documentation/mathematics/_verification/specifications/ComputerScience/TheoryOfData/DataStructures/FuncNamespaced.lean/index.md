# Verification target: Func Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "add2c0c02601450e523f4742e87613b9b7116c2d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `add2c0c02601450e523f4742e87613b9b7116c2d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/neg.md) | 53 | `declaration-track:db2cd1c00ca832ac62d1aa18318b1d112c27262012a59f102fcbb4e12cb8a0e4` |
| 2 | `def` | [set](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/set.md) | 63 | `declaration-track:16c20c548fbce2b5a617bc4ad60c84803ccc5dda6dc3b99690a9d3b278f9f8a3` |
| 3 | `def` | [get](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get.md) | 76 | `declaration-track:9652e840e1c0bb989dc25f81316dbbc75abf6eff23bf23944c6da73ab074bcb3` |
| 4 | `def` | [Equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/equiv.md) | 85 | `declaration-track:9f0e815b1d92b52bab40b16aae03bda2ab4c75caa1e1f051e149a686077e9945` |
| 5 | `def` | [pointwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/pointwise.md) | 91 | `declaration-track:9befad6c8292d50b96a6e253796a0ca8726812a829ed9fe85a3a235fa9493d08` |
| 6 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/add.md) | 99 | `declaration-track:acbe4737cebe02a0e796f6652a19e55229231f99aee284c4d96923fc1571ff0e` |
| 7 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/sub.md) | 104 | `declaration-track:08371fc6cff1d9495cdcd3743f66299a69c81e1e1dd760279bd8f4bcb9447d0a` |
| 8 | `theorem` | [length_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/length-set.md) | 109 | `result-track:30ffa7c189629911930c7eec0c2d3522c2ba4c3ef97ceea0336d0e054a2a9dd1` |
| 9 | `theorem` | [get_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-nil.md) | 124 | `result-track:44055252c75ef55e498dd44f4c69249376c2b1965ce7d3e1daaf569e68b44d25` |
| 10 | `theorem` | [get_eq_default_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-eq-default-of-le.md) | 127 | `result-track:a71e42776d7eb79b9ae5a5a8cad86244f1ecb7393e3dae87e694d1edb3affd7a` |
| 11 | `theorem` | [get_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-set.md) | 137 | `result-track:1f1ee7efe3a00f9d958aae38a1bce2516dadeecbcd65c30c80c8d50c5a6d7f89` |
| 12 | `theorem` | [eq_get_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/eq-get-of-mem.md) | 142 | `result-track:47d3d3f8b1d2c3f0dc653ecd952b575259f0d7e555709a72bd5c6115bb3290c3` |
| 13 | `theorem` | [mem_get_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/mem-get-of-le.md) | 155 | `result-track:df2047a0bf776300882502df97bab463ab06f73f01c2148d80478e5d4646b3de` |
| 14 | `theorem` | [mem_get_of_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/mem-get-of-ne-zero.md) | 166 | `result-track:871883c7de0543a35c26e687747a64a1a6db9dcafbe2eef3e33d6417849b8d14` |
| 15 | `theorem` | [get_set_eq_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-set-eq-of-ne.md) | 175 | `result-track:41b02419c66c11c0c484d2663c40d695707805086d4173c690a33e7d84595c54` |
| 16 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-map.md) | 202 | `result-track:12c00273404e509a7b4f04d79fc2b8dec1b80a0ccb07885e8c8178785af15a49` |
| 17 | `theorem` | [get_map'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-map-source-edition-2.md) | 213 | `result-track:50014de3104e351480aff2ccc0d5402baf9f2a7c65310b2a7e7c9f7b6bc4fc78` |
| 18 | `theorem` | [forall_val_of_forall_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/forall-val-of-forall-mem.md) | 223 | `result-track:f43993ad0230556e293d2ddffeffd617bebd8bdbba21f99a373976b22302918d` |
| 19 | `theorem` | [equiv_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/equiv-refl.md) | 234 | `result-track:27b60d2a9cf55bd42d6db7d06f5426ab3f8dee054e5e1375f4cb0a8d80a8dd52` |
| 20 | `theorem` | [equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/equiv-symm.md) | 237 | `result-track:d405c9c2d49fc54d821e110968114a440dfebd33d21362bc2a043b655d729e9d` |
| 21 | `theorem` | [equiv_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/equiv-trans.md) | 240 | `result-track:e7edec8b9ecb7e4c1e969373562f6be96ab9e929af0571aa8ad3e4c0659f555a` |
| 22 | `theorem` | [equiv_of_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/equiv-of-eq.md) | 244 | `result-track:6ea72089cc186ac1f881419d75d922786ac80b09ad75fa9a866d5ef40dc504ad` |
| 23 | `theorem` | [eq_of_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/eq-of-equiv.md) | 247 | `result-track:7c58b5f08d644031867bce9cecf513fba73e569138786285578f73adf7360c64` |
| 24 | `theorem` | [get_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-neg.md) | 268 | `result-track:617211f690c7aed756f79abce6878bf23c824ef05e3d1d8ca36340165d255f00` |
| 25 | `theorem` | [length_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/length-neg.md) | 275 | `result-track:b027911cdcc9d0c10d13c7868ed8c57fa7336bd792dd354cd2fea57224c4e370` |
| 26 | `theorem` | [nil_pointwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/nil-pointwise.md) | 282 | `result-track:dfb099173a86d612def421bf7216369a454de8cad924938e2a97ab4395356bba` |
| 27 | `theorem` | [pointwise_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/pointwise-nil.md) | 287 | `result-track:7600d160611be914a59b478ed034fc9eeafafdbc66998e84f3846659793572a5` |
| 28 | `theorem` | [get_pointwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-pointwise.md) | 293 | `result-track:a9e69953dc91796c09c72d92591c692a5a92d8129e89dc887d42f162a4a51e13` |
| 29 | `theorem` | [length_pointwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/length-pointwise.md) | 309 | `result-track:fdd67f166fe14ab120a3229e09484485c25f7310af82a7906923a779af9bf616` |
| 30 | `theorem` | [get_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-add.md) | 326 | `result-track:64847dd7d1da9656bdbf2f8e835c6dc39b47859647241c1dd0eabc372b407c08` |
| 31 | `theorem` | [length_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/length-add.md) | 335 | `result-track:2960762cb857b70fa842cd01510e5217aa11476200b40a56cc2c994e429a69d5` |
| 32 | `theorem` | [nil_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/nil-add.md) | 341 | `result-track:a0398fc64c38cdee229b4fe708df36409bea6f8d3b6242329412607a07e21b4d` |
| 33 | `theorem` | [add_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/add-nil.md) | 352 | `result-track:315f20b605b62c349bfeec5f685c7539dd5d5ce89b26e7d0cba7330b0337560d` |
| 34 | `theorem` | [map_add_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/map-add-map.md) | 359 | `result-track:a5cfbb21efec355ffb86b58a67afd7ba3b831d1336df8c370c253a972844135a` |
| 35 | `theorem` | [get_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/get-sub.md) | 376 | `result-track:c11ffa4b8ca524a2300ff511bf6edf06f23b17f084e636b4c5c31a9490edebba` |
| 36 | `theorem` | [length_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/length-sub.md) | 383 | `result-track:76ab5c3a2712aff880d2d2d6a28ecf855a5e7975313102c8f77abbd144889eb0` |
| 37 | `theorem` | [nil_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/nil-sub.md) | 389 | `result-track:8e83e8996468d01bd2d0a613a68f49dde98dd2065d907f985e2ab0533d18413e` |
| 38 | `theorem` | [sub_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/FuncNamespaced.lean/declarations/sub-nil.md) | 396 | `result-track:6786cc05331e9684f8956c4b81425f12e662340accc5b27f288a0942c40fb586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3223187dfc3370327b408fa3dd695359f8637c5b62b792efcf597235ff55c1ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variant66699cf7bf512244f5df19ffc0c5658a1afc8f076a4ed99adebff9f034433c3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
