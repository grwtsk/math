# Verification target: Sublists Namespaced Sublists Aux Eq Bind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2913c1af3f483e6b994d57167600395d49fb76d",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant02d89290491b3354ec87ef5c64494f168084c7bce369afb4ea5f2f1a8f91f4f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2913c1af3f483e6b994d57167600395d49fb76d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant02d89290491b3354ec87ef5c64494f168084c7bce369afb4ea5f2f1a8f91f4f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant02d89290491b3354ec87ef5c64494f168084c7bce369afb4ea5f2f1a8f91f4f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sublists'_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-nil.md) | 40 | `result-track:529860f324adeba0e7154e5f6f01bd5ffd154b56981fed1b8f00b040864d2533` |
| 2 | `theorem` | [sublists'_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-singleton-source-edition-2.md) | 45 | `result-track:4366a1b70713237bfeb5e7bfd0904400d003a4c30e9bb3aeee57e47d1dbe74c6` |
| 3 | `def` | [sublists'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-aux.md) | 55 | `declaration-track:a626ab6bffd4862220efe6afa772f4b6b3a557e12a8d3770efc72f502efd691d` |
| 4 | `theorem` | [sublists'Aux_eq_array_foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-aux-eq-array-foldl.md) | 59 | `result-track:505b6feab1c24926c93434c84f912d7ee7e847461952207d32e22dcdef4255c2` |
| 5 | `theorem` | [sublists'_eq_sublists'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-eq-sublists-aux.md) | 68 | `result-track:ad7246f7469d9b93d57481724cf3b20f5585c6f319b930dfbc3d98ce6bd22676` |
| 6 | `theorem` | [sublists'Aux_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-aux-eq-map.md) | 75 | `result-track:b8293ca53e206b0af1a25c2219bbac473e965c5220e7389414ee65f394a059fd` |
| 7 | `theorem` | [sublists'_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-cons-source-edition-2.md) | 83 | `result-track:aac8604704feba28e42c2e8ee4205ac4ef06d24563a9b3c6d629b1c93c0e5d43` |
| 8 | `theorem` | [mem_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/mem-sublists-source-edition-2.md) | 89 | `result-track:268f82a0f18af12fe89f60b424dde4275cb232b91d45ec99adc74947bdf67a5d` |
| 9 | `theorem` | [length_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/length-sublists.md) | 103 | `result-track:8ced146ec14b87ef1b02867cf7574b26bf45269a06af13f5ed766968e749f653` |
| 10 | `theorem` | [sublists_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-nil-source-edition-2.md) | 111 | `result-track:c6520baf5ac54fad4dc2b77a817f87f1fc7b08d0232b50899067bdb468cdb11a` |
| 11 | `theorem` | [sublists_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-singleton.md) | 116 | `result-track:10948faeada69828937a2945fc4c45a3f14e5588c3b755a99d30a0d7b65bcec0` |
| 12 | `def` | [sublistsAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistsaux.md) | 122 | `declaration-track:6e19a6cfc7f646eee05c4428710f39351514527e58e4ca4ac72d8695033522bd` |
| 13 | `theorem` | [sublistsAux_eq_array_foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistsaux-eq-array-foldl.md) | 126 | `result-track:c38dc3de8dba55ccd57764d5c093e62cfbbfb6411f79e03947913add32dce4a9` |
| 14 | `theorem` | [sublistsAux_eq_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistsaux-eq-bind.md) | 137 | `result-track:d6f77659ddb5c1401820c82d3016b3da3263bd1d489d3c8ff42846edeb44d386` |
| 15 | `theorem` | [sublists_eq_sublistsAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-eq-sublistsaux.md) | 146 | `result-track:c9dad0c3d4edaeba0c3d62d057e8430082a0256a89689a0676d72ec26f756376` |
| 16 | `theorem` | [sublists_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-append.md) | 163 | `result-track:4d3923bbe1cbe5f5c32bb2d8ca23baa190ef3744b348a1b51e0e900f12770313` |
| 17 | `theorem` | [sublists_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-cons.md) | 174 | `result-track:401b56660e199eb060442a6a00fad0a5600a26298673b1e2c1d17ddc3e4412b7` |
| 18 | `theorem` | [sublists_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-concat.md) | 181 | `result-track:1dbe50baddb62017490d99540a687232ae376efe1601475b0284855e54cf749a` |
| 19 | `theorem` | [sublists_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-reverse.md) | 187 | `result-track:84f7a22c585c091cab42e0a8934e7cf1588deb4dcf82af6939097631f8ee097d` |
| 20 | `theorem` | [sublists_eq_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-eq-sublists-source-edition-2.md) | 193 | `result-track:7f1c295beb972e74c7c852420b2e86d5b86c7b3642849b0538d085df09f2b4df` |
| 21 | `theorem` | [sublists'_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-reverse-source-edition-2.md) | 197 | `result-track:9fa96cba7d96b7594150bf022d1b0b4482b91f4a6c5cc4bd00d0c4ba3d5847b4` |
| 22 | `theorem` | [sublists'_eq_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-eq-sublists.md) | 201 | `result-track:78fc38c1135d6d103ea3f75e3e9b6a3ac80aa7c8f181fd4af20271988e239d83` |
| 23 | `theorem` | [mem_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/mem-sublists.md) | 208 | `result-track:21a6090e23fe63e40148b24c37d13bd560358a59db5ee3eeb6e68afd4d517bd7` |
| 24 | `theorem` | [length_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/length-sublists-source-edition-2.md) | 214 | `result-track:de9e9122d913c8f31d7a168b7a24dd0ccb4c072415b1c9ff9adee0f50e52db38` |
| 25 | `theorem` | [map_ret_sublist_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/map-ret-sublist-sublists.md) | 218 | `result-track:9123c416d6bfe1095bd7910a4b429a68422a360a0bb7660138793f3c0f5ffef8` |
| 26 | `def` | [sublistsLenAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslenaux.md) | 233 | `declaration-track:9aba543b7ff835bc704c0f661a351e1c332f51d3a4ab57b70248f4487dd69799` |
| 27 | `def` | [sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslen.md) | 242 | `declaration-track:cf9c1fafe2c950f38d994d67bf2735c0459fb43efd2119e203a6507d5ec4cee8` |
| 28 | `theorem` | [sublistsLenAux_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslenaux-append.md) | 246 | `result-track:1b03b308e1f9952476996da9e57ed0c4d60a2d6a62787ba89b4106255089569f` |
| 29 | `theorem` | [sublistsLenAux_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslenaux-eq.md) | 257 | `result-track:91c5b78b4931e45e9463ddc7905f56b86373aee8eddee196c6efba345b980e6f` |
| 30 | `theorem` | [sublistsLenAux_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslenaux-zero.md) | 262 | `result-track:afdbd82721814bf2b1e6b83eac92c2cf3f1feb3afa71c326d9546ddf5e1b9cf2` |
| 31 | `theorem` | [sublistsLen_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslen-zero.md) | 267 | `result-track:297449ea4a84aae88fc8501bcfe1a38ab52fa4b398c28cd07c860d811898410f` |
| 32 | `theorem` | [sublistsLen_succ_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslen-succ-nil.md) | 272 | `result-track:342db4c5112b17f5df2f112338ff7e97beab481541be65c69a07aa025275c2c6` |
| 33 | `theorem` | [sublistsLen_succ_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslen-succ-cons.md) | 277 | `result-track:fff5ff8bd2cf12f5aba8101a8911afdd6329adf77ee2804cbb432c41d5f6ebe4` |
| 34 | `theorem` | [length_sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/length-sublistslen.md) | 284 | `result-track:889d6b47abc4b0ca55f04286c0dd165b3b0fdde8f83ddec0c821dce4f499bcf0` |
| 35 | `theorem` | [sublistsLen_sublist_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslen-sublist-sublists.md) | 293 | `result-track:769529521090502ae5abf1548ebafd7182989ef7eee31caaec1ee0c92057ce06` |
| 36 | `theorem` | [sublistsLen_sublist_of_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslen-sublist-of-sublist.md) | 302 | `result-track:94b78f8c198af0e1bd94e3dec32798d6d5c1c159de45443c90569e8ab68324e1` |
| 37 | `theorem` | [length_of_sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/length-of-sublistslen.md) | 313 | `result-track:8ff09f50c2ec1c345743cc77f8588ea3fc17b104159dad1932443f253d1368a0` |
| 38 | `theorem` | [mem_sublistsLen_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/mem-sublistslen-self.md) | 323 | `result-track:0433c0344a6d718b659a9c20435d0cf1b8f0ee5f5d80b80ce6780b2dd861b557` |
| 39 | `theorem` | [mem_sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/mem-sublistslen.md) | 336 | `result-track:4b9772990518e0da1793521ef1d16271b18ffddc5384b5ec52a89c5c1d99cacb` |
| 40 | `theorem` | [sublistsLen_of_length_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslen-of-length-lt.md) | 343 | `result-track:7cee3bb9d3e54c13a1267d429101acfaff22c42b9755131b03ab2de7035751e7` |
| 41 | `theorem` | [sublistsLen_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublistslen-length.md) | 349 | `result-track:53ccfc6b2bbc930970808c98c75a7868b50435f38e58aa450316e89a3194cadc` |
| 42 | `theorem` | [Pairwise.sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/pairwise-sublists.md) | 358 | `result-track:c4c189781115798a51d670554c6e31f2c8d69de67299d5484ff985ae09bef761` |
| 43 | `theorem` | [pairwise_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/pairwise-sublists-source-edition-2.md) | 370 | `result-track:cb531fcf98ae3dafd43b699678256be8eba0239ca7244113179691972f41ccd5` |
| 44 | `theorem` | [nodup_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/nodup-sublists.md) | 377 | `result-track:2ca9c03703c01bb8d3cdabdf0f14a94e8c7f3608655f33010348ed520e9677e4` |
| 45 | `theorem` | [nodup_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/nodup-sublists-source-edition-2.md) | 383 | `result-track:9cc2efa4721d8289cca29129e26a3d0e54091060aabb229248d23cb95af9a59c` |
| 46 | `theorem` | [nodup_sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/nodup-sublistslen.md) | 398 | `result-track:373550f6850847d5ae8a6b2052474f21b082121f6bbad2dd1cd35d461401ae0c` |
| 47 | `theorem` | [sublists_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-map-source-edition-2.md) | 405 | `result-track:ff69e5b35f083b52ff75bb24a18d85c2ee5636a3f81769e97d4e82f0761fe05d` |
| 48 | `theorem` | [sublists'_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-map.md) | 414 | `result-track:871b6c8548660dc773b86c460d449220cca1a57b6201145c1b17d7d07e2e23d4` |
| 49 | `theorem` | [sublists_perm_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-perm-sublists.md) | 420 | `result-track:3548a18d4840e17f48263ea5ebc7cca6465d5874d5da3bfc749970e60ee991e1` |
| 50 | `theorem` | [sublists_cons_perm_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/sublists-cons-perm-append.md) | 427 | `result-track:976a39212baf3248b5381b511b304304cfc975d3509fb1786da95c20e93b37b2` |
| 51 | `theorem` | [revzip_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/revzip-sublists.md) | 434 | `result-track:079644b73e3f2f7a8d4e5e9dc15a886cfb7ecc1f9f6520c65bf539873ec0d9e2` |
| 52 | `theorem` | [revzip_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/revzip-sublists-source-edition-2.md) | 453 | `result-track:7269599ffc6f72681d4a3d375ce29ab7a2783e145e8485c12c72c137448c8728` |
| 53 | `theorem` | [range_bind_sublistsLen_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsNamespacedSublistsAuxEqBind.lean/declarations/range-bind-sublistslen-perm.md) | 465 | `result-track:294c3d0e05d60e5c787c7be990e5b66aca7b962c0837e6a8b3a02c740168545a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=524c2f3374c58b9388ddc611126f42354e97e583fd0b23a49180a0cd0382a3dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant02d89290491b3354ec87ef5c64494f168084c7bce369afb4ea5f2f1a8f91f4f5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant02d89290491b3354ec87ef5c64494f168084c7bce369afb4ea5f2f1a8f91f4f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
