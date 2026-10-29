# Verification target: Func

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92bdf575de901c74bae80787ff14c59025acbc18",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variantfa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92bdf575de901c74bae80787ff14c59025acbc18`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variantfa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variantfa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/neg.md) | 45 | `declaration-track:239c5bbba18f02e26d7590797528cd3b4d2ed843b64ffad2df73b1c86b45db06` |
| 2 | `def` | [set](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/set.md) | 55 | `declaration-track:dc163d7298bd31d5f510c0c9fb527844115bd9cc3d4e73b2472c73226e2527b3` |
| 3 | `def` | [get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get.md) | 68 | `declaration-track:454b6a917ce01ea4578540e681173cba33b1cb1b8cfbeb29f8eaa84c68556230` |
| 4 | `def` | [Equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/equiv.md) | 77 | `declaration-track:f767ff09e975f268b2e917eec3fed3c240c0293386e7da9121f6b05119795374` |
| 5 | `def` | [pointwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/pointwise.md) | 83 | `declaration-track:d8f3b801b09d33a75586e3ef7a54abae07ceeb6cfd5a161fb871675cb8ff9932` |
| 6 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/add.md) | 91 | `declaration-track:4445217dffdab605d3481d18ba30f08e9e209054056a24e1643c455aba345467` |
| 7 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/sub.md) | 96 | `declaration-track:3691ff533e404cfac11349d43e5769df99701230856d84938c89627f0d022d1f` |
| 8 | `theorem` | [length_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/length-set.md) | 101 | `result-track:811eab10ab174f179e12f2408af59d2ddb317f7d7997a804316f87b5dfa652ff` |
| 9 | `theorem` | [get_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-nil.md) | 116 | `result-track:2502b2a15fbbbd9e8583a53b6e7d51d02b9b687673ec622d4aea712e3f8dc70e` |
| 10 | `theorem` | [get_eq_default_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-eq-default-of-le.md) | 119 | `result-track:c5bb2ebae4c720450b64bfeed54256962b5c381cf52f0c1b06c29207a7a911d5` |
| 11 | `theorem` | [get_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-set.md) | 129 | `result-track:b95bab3851253bc1efbc2eea296f6d7bf38ae65250697820dd63372cb8fb56b7` |
| 12 | `theorem` | [eq_get_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/eq-get-of-mem.md) | 134 | `result-track:35d4dc574951b4f7f7fe602f82a607bfe1b93f81e21a7fec7ed467488d6af3c5` |
| 13 | `theorem` | [mem_get_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/mem-get-of-le.md) | 147 | `result-track:8368787859437eaecffa85528f122ce94a2bbb0cd5a9a64816ce8a0c5486692b` |
| 14 | `theorem` | [mem_get_of_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/mem-get-of-ne-zero.md) | 158 | `result-track:2a627651d5e434fd009537b0fd7d2741bee2126d79950642bf9a544904ab8ba2` |
| 15 | `theorem` | [get_set_eq_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-set-eq-of-ne.md) | 167 | `result-track:4f67cbd1cd8a67b06464eee5514a1734c6e1cc7b22f374974feb89c673cf5b17` |
| 16 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-map.md) | 194 | `result-track:681086a85ab3581b45d7d1c6efd14b6c9295c3d8f4ea2f36159d9fac6e627c40` |
| 17 | `theorem` | [get_map'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-map-source-edition-2.md) | 205 | `result-track:9aef0fdaafba07a6ca1149f70208fd5a3317d836777ee5a6523722faea230a43` |
| 18 | `theorem` | [forall_val_of_forall_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/forall-val-of-forall-mem.md) | 215 | `result-track:b15ea7b58ac43f5482a93f6370a9309bf2f83d65ef9ef0ad4ec406993711ae7d` |
| 19 | `theorem` | [equiv_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/equiv-refl.md) | 226 | `result-track:3ca6f6b9ae40decb5edae2db33b526d3ea56dbe5acfc222791a268538d1ee6c7` |
| 20 | `theorem` | [equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/equiv-symm.md) | 229 | `result-track:02e3df38b7e2bec334530dbcf5c32bee30784b920b27265b55e2911eebfa615d` |
| 21 | `theorem` | [equiv_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/equiv-trans.md) | 232 | `result-track:cffa8dcb5cbe654dbacf2ae876ee119da83b15fc83afa265c89d7310a3e95407` |
| 22 | `theorem` | [equiv_of_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/equiv-of-eq.md) | 236 | `result-track:373134b113a3dfdf58c73b06fda1f1d2677a9974dfc43c24bbc9b9ac91511ac8` |
| 23 | `theorem` | [eq_of_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/eq-of-equiv.md) | 239 | `result-track:2b9df1e44faea6dc1229fe3490eb27f2cb1b2420bb3c5cc5a39e9e5b25954c90` |
| 24 | `theorem` | [get_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-neg.md) | 260 | `result-track:5cdce07dacea73b62ed55ae62b0251eac416de714a971255321593436691b3cb` |
| 25 | `theorem` | [length_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/length-neg.md) | 267 | `result-track:a0b0b867781545e4db9130e70f93cf8b0c6c146a60861cf5a79b09b8704aa6a0` |
| 26 | `theorem` | [nil_pointwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/nil-pointwise.md) | 274 | `result-track:4c0b2d146e84810aec7b8a742e3e31fed41916b44d2b98c563366119a4118c19` |
| 27 | `theorem` | [pointwise_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/pointwise-nil.md) | 279 | `result-track:7f1e3349067808c9a790a9bccaeb2e539eb97cc22db53c27de4dec91f560361d` |
| 28 | `theorem` | [get_pointwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-pointwise.md) | 285 | `result-track:856b9b1735f1c1293a254e67bba440a0582d7be6d9c09e9e4a7c9577bddf2160` |
| 29 | `theorem` | [length_pointwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/length-pointwise.md) | 301 | `result-track:9880ef07d2ce3b3db34aa0efc0173157f5261ca62f8755bf54cca6a338ff04fe` |
| 30 | `theorem` | [get_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-add.md) | 318 | `result-track:c523e501eb9c17052ccf5372503e3debf0397f7ec82c2af37d9070afa4f51703` |
| 31 | `theorem` | [length_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/length-add.md) | 327 | `result-track:f8e6924bc10735bd27741e5ae27cd74b525ab5e33fc4bcb60b27c9010580b3c4` |
| 32 | `theorem` | [nil_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/nil-add.md) | 333 | `result-track:269f1b0075456e8a9011255c70e7b59be4ee4e268af345d169458d283f75a919` |
| 33 | `theorem` | [add_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/add-nil.md) | 344 | `result-track:72c2aa1a9cb56563b49715839b0e4030dae6282eb367a60211bb7ba4201012cb` |
| 34 | `theorem` | [map_add_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/map-add-map.md) | 351 | `result-track:ebf1134b0bcadb4a789da6e2aa279763c8849c8dbdbf7fb17bcf8d62e8fc3277` |
| 35 | `theorem` | [get_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/get-sub.md) | 368 | `result-track:ab8223723c0b280868f66638edab77f2bd67f671c018bf9b4ef92555aa9e9ef2` |
| 36 | `theorem` | [length_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/length-sub.md) | 375 | `result-track:91a392ead00892a3d055b750cf26e56a837fb6fa55a18b860b88f42d630072ed` |
| 37 | `theorem` | [nil_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/nil-sub.md) | 381 | `result-track:ab9e470089b7b1c97625a06beca11c4cf6c00f9885c3935bac7b10569e02f715` |
| 38 | `theorem` | [sub_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Func.lean/declarations/sub-nil.md) | 388 | `result-track:f14e57a617ec17de458c0b8efcd4bdf74bf94c6ab86d5256123e55887160cb19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=998dd4df1d123a9e3c9b460b7bdb2afd0b6edc656a63e6ff2b26828c893aed59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variantfa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Func/Variantfa5cc3647dc34827c2d0e9128ed131523a6753ab48e6ded44cf6b72be2071786.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
