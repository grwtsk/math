# Verification target: Sublists Sublists Aux Eq Bind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d943ca922140fee02a3ef77ec67d6f83543aebc3",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant324d8eb93d4336afee541f690c2f8201b582ce3ac73b4133a87f92c14fdf743e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d943ca922140fee02a3ef77ec67d6f83543aebc3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant324d8eb93d4336afee541f690c2f8201b582ce3ac73b4133a87f92c14fdf743e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant324d8eb93d4336afee541f690c2f8201b582ce3ac73b4133a87f92c14fdf743e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sublists'_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-nil.md) | 32 | `result-track:353b56788498ee2e0e23f25c102452dc578e4f5815e04efbf089f07c92ccd14a` |
| 2 | `theorem` | [sublists'_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-singleton.md) | 37 | `result-track:6123f0314508778015b7512898f4f7bccc8c6cfc86b7e351ed6c33934bc9678d` |
| 3 | `def` | [sublists'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-aux.md) | 47 | `declaration-track:bc016138e7a8c0c9d2f620dcbc911932bb8249473533e127c01b4a02a86d8d6e` |
| 4 | `theorem` | [sublists'Aux_eq_array_foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-aux-eq-array-foldl.md) | 51 | `result-track:60d7eaa55497f90a81e6fccfd6b5c7721cbc7177ec10223b437d840b2cf01795` |
| 5 | `theorem` | [sublists'_eq_sublists'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-eq-sublists-aux.md) | 60 | `result-track:d4e478c3ab706803f3c8be583904019d57334d9c3d2235e39f8bc1cba399634f` |
| 6 | `theorem` | [sublists'Aux_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-aux-eq-map.md) | 67 | `result-track:04d38499b4ea777697684a4731e0cfb67a21bdcb365c8ed67a4e40bd2147a69b` |
| 7 | `theorem` | [sublists'_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-cons.md) | 75 | `result-track:ab66045d36ef7e9f2ca3fa8b49af2961cd9b2168929704538c387d9c8d3523eb` |
| 8 | `theorem` | [mem_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/mem-sublists.md) | 81 | `result-track:2b54e310c1daa5e2a452c9437d9b952a40ce8c57436d0352f1f2880d8d611e4f` |
| 9 | `theorem` | [length_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/length-sublists-source-edition-2.md) | 95 | `result-track:bd566786c65b75f4e7ac219c382d52deb2c5253b39c126a91b0b3256efcbf44b` |
| 10 | `theorem` | [sublists_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-nil-source-edition-2.md) | 103 | `result-track:aaaee4d182323a5b69a7257691c40cb31dbc369bc65ddd089405039f4c686942` |
| 11 | `theorem` | [sublists_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-singleton-source-edition-2.md) | 108 | `result-track:c93c9e763ea71082e4dcd561f0a2ab26135943947d5dac0c54e79c48673f9bf2` |
| 12 | `def` | [sublistsAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistsaux.md) | 114 | `declaration-track:f7eadf6ecc375db42ac8a04e8eada5a2b0214c9a633e9ec8b9f7774ae9210c76` |
| 13 | `theorem` | [sublistsAux_eq_array_foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistsaux-eq-array-foldl.md) | 118 | `result-track:360cb3d66ffbff6dc10d062dbd104defc2bdab0561314b3bef9714600ce51d0c` |
| 14 | `theorem` | [sublistsAux_eq_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistsaux-eq-bind.md) | 129 | `result-track:0a068cbf1e7fbf6a5e730d36caa4222d33b8c2d45b3c718b1c01564c45424fc4` |
| 15 | `theorem` | [sublists_eq_sublistsAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-eq-sublistsaux.md) | 138 | `result-track:29add641ea022614c49c83284f1719dc750f596d2242c8b51f4f034467e44cfd` |
| 16 | `theorem` | [sublists_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-append.md) | 155 | `result-track:2462f7d7714b9220b9d45189e6f2cb67688bc708281387dcb480343bff9bf8fe` |
| 17 | `theorem` | [sublists_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-cons-source-edition-2.md) | 166 | `result-track:be674b2970d4b604f54bf9d88750d3c313f8d1aff65ddc3ddd2b3de54609d36d` |
| 18 | `theorem` | [sublists_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-concat.md) | 173 | `result-track:ff57b39202129553aa15014d6c8986e6381ec69cd0fc01378d997bc4fadffa29` |
| 19 | `theorem` | [sublists_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-reverse-source-edition-2.md) | 179 | `result-track:dc2289f83c70b50956d2d08202e6d014e7dbf72915a844b7d300c0dbfa2292f1` |
| 20 | `theorem` | [sublists_eq_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-eq-sublists.md) | 185 | `result-track:67c46a0f6ddd7396c9cdb452c371118a714b54f8a683c8b1aaecce44f369dcd7` |
| 21 | `theorem` | [sublists'_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-reverse.md) | 189 | `result-track:7148da14421b9aeebe903f29954004df44d2523df4b3ed9e4f1a122e4dd6cee9` |
| 22 | `theorem` | [sublists'_eq_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-eq-sublists-source-edition-2.md) | 193 | `result-track:829cf2928011fc9cd66eb05ba55417c20c6f299669d0c2dd18c26c93d9216741` |
| 23 | `theorem` | [mem_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/mem-sublists-source-edition-2.md) | 200 | `result-track:e2b512e672a4ceaba5514db516914e7946ca6469e817545c8d53738e3dcfcc4c` |
| 24 | `theorem` | [length_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/length-sublists.md) | 206 | `result-track:8f444c8c13eb79d934d7b0a694f94e431d8acb6333bc26cef7af9fb332360970` |
| 25 | `theorem` | [map_ret_sublist_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/map-ret-sublist-sublists.md) | 210 | `result-track:42f781a8a100da57c3056083b81f33c374b015eadcb29fcca31c42a3cc6c3228` |
| 26 | `def` | [sublistsLenAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslenaux.md) | 225 | `declaration-track:2a7a02b9a406d47ebb496b91faf1da18c860827dd8497119161f738e42110a5b` |
| 27 | `def` | [sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslen.md) | 234 | `declaration-track:44f5bc8345482a417c2bb8833de539dc7b12d8926082c59ae70e44468cfb81aa` |
| 28 | `theorem` | [sublistsLenAux_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslenaux-append.md) | 238 | `result-track:af900370e49e6fcc7f1c82f383667612ef71991c29fc20081880dec6ee50c115` |
| 29 | `theorem` | [sublistsLenAux_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslenaux-eq.md) | 249 | `result-track:01cf21a940504e2f1fd609321640c626c1a8dd3027cb5dfd8695b5de76c2340e` |
| 30 | `theorem` | [sublistsLenAux_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslenaux-zero.md) | 254 | `result-track:fc07944403fe70c99702c6001c61f91e9b5439e18ce81ebfcac6ca9213388e4e` |
| 31 | `theorem` | [sublistsLen_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslen-zero.md) | 259 | `result-track:c830a5782409867c8a80ab0d31f0516ed121ba792362c5e4def6eeff8c45b133` |
| 32 | `theorem` | [sublistsLen_succ_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslen-succ-nil.md) | 264 | `result-track:fb6a0e6924472b5b78aa4e5b099640598087bfdb43a4d3e54eab5388c8817f9b` |
| 33 | `theorem` | [sublistsLen_succ_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslen-succ-cons.md) | 269 | `result-track:1bf3abe5f8695f98cf94529f86dbeee4109e1cb1d92b892dea418c8f885d81dd` |
| 34 | `theorem` | [length_sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/length-sublistslen.md) | 276 | `result-track:96d3be652c158f26f13d6d43e23d313e7ae59f05535d4ca86188ecf3015df45a` |
| 35 | `theorem` | [sublistsLen_sublist_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslen-sublist-sublists.md) | 285 | `result-track:810c97311057b2af55a4b6b4ad2465e09101971e1920764e0400ffc93286ea5f` |
| 36 | `theorem` | [sublistsLen_sublist_of_sublist](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslen-sublist-of-sublist.md) | 294 | `result-track:31a6467c833da847e841bc274d09d18be6e7fc47ae81d0cbf516de699d7713d1` |
| 37 | `theorem` | [length_of_sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/length-of-sublistslen.md) | 305 | `result-track:c7ff40ae5c5c4ab76fb44979ea2b3b63ee56d88eb3f8592ba6d63cea36ec85a7` |
| 38 | `theorem` | [mem_sublistsLen_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/mem-sublistslen-self.md) | 315 | `result-track:cb3d3b82360a04feb126ba1a175b2c88d3b9d9586ddb90826eca14a69da1bfa1` |
| 39 | `theorem` | [mem_sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/mem-sublistslen.md) | 328 | `result-track:500d3a6a2e6534835361acd99a9cd59a832dab2dff8890c2e01c315ad555d3ac` |
| 40 | `theorem` | [sublistsLen_of_length_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslen-of-length-lt.md) | 335 | `result-track:2052dae4a60c5997c189545376800805b8a1f10a2c1bfbb6646604bab7208729` |
| 41 | `theorem` | [sublistsLen_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublistslen-length.md) | 341 | `result-track:7f14c0ee688ee0f2ee43c6cdc6e5b2914e4fbf6fd2bfa1790b9d9ea01e70fb4d` |
| 42 | `theorem` | [Pairwise.sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/pairwise-sublists-source-edition-2.md) | 350 | `result-track:fbe9e4764dd55bd29495129c6b39d36da777cb565687c30ab65e702d2feed7fa` |
| 43 | `theorem` | [pairwise_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/pairwise-sublists.md) | 362 | `result-track:f71839ca79bc11684b7f0b92613d0a94f4a51726d3e912277d96a8d5559ca0ef` |
| 44 | `theorem` | [nodup_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/nodup-sublists-source-edition-2.md) | 369 | `result-track:df3cd91dc4c8f50fed903e8ae9f2ecc7a6452789c004ed9b81388d7645d9d157` |
| 45 | `theorem` | [nodup_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/nodup-sublists.md) | 375 | `result-track:a690b6594cdd9f84ba20f6a995e829de9072c96c1b643ee8b3c88d3c3c6e84c0` |
| 46 | `theorem` | [nodup_sublistsLen](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/nodup-sublistslen.md) | 390 | `result-track:6fb7f169799e37c268e2a3fa060b85d2a6c1e06878303435355793331c5dabc2` |
| 47 | `theorem` | [sublists_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-map-source-edition-2.md) | 397 | `result-track:e565a54b776f240ee76549850ae9dc71f95f853e305deceff22ec870e28daf46` |
| 48 | `theorem` | [sublists'_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-map.md) | 406 | `result-track:338bdd3bae08b3b7f7e93d74ab3d0ea06496667b59406be6bc8e27bf59d15a99` |
| 49 | `theorem` | [sublists_perm_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-perm-sublists.md) | 412 | `result-track:a9f1b92d6702f04ed9456b8166fead156d2f2c114fe910a89821e9634833b7aa` |
| 50 | `theorem` | [sublists_cons_perm_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/sublists-cons-perm-append.md) | 419 | `result-track:73104b9a16b0db542d38a578c7550bb837efdaa3c411447c25dcbcb5296bc901` |
| 51 | `theorem` | [revzip_sublists](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/revzip-sublists.md) | 426 | `result-track:2353df1cdf7fa36c97ef0cefdcaaf493720fcfa0f9dea502532329c485b03757` |
| 52 | `theorem` | [revzip_sublists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/revzip-sublists-source-edition-2.md) | 445 | `result-track:50f1fc17ed38f2bf856296070f0a91d5ed06f6eb8a1df4df3ba25a036a169c48` |
| 53 | `theorem` | [range_bind_sublistsLen_perm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SublistsSublistsAuxEqBind.lean/declarations/range-bind-sublistslen-perm.md) | 457 | `result-track:141492ad1a3516f5d705499b2b95ef44bb9fae934c4e669bbf51ea588ad4afde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbd4fcff217064fa7a38d3180fa5c5785f07764aad08162dc94201a597c40664 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant324d8eb93d4336afee541f690c2f8201b582ce3ac73b4133a87f92c14fdf743e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sublists/Variant324d8eb93d4336afee541f690c2f8201b582ce3ac73b4133a87f92c14fdf743e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
