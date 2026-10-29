# Verification target: Filter Bases Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31f2f982ee30436c03d242b91f27527f81280c15",
  "lexical_observation_count": 163,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31f2f982ee30436c03d242b91f27527f81280c15`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Prod.PProd` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Countable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Prod` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FilterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filterbasis.md) | 102 | `declaration-track:8a4ca1cdbb204892d229fdf429f15a4afc2a5f5e3b59d7f1b2d3ea810c344508` |
| 2 | `instance` | [FilterBasis.nonempty_sets](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filterbasis-nonempty-sets.md) | 111 | `declaration-track:0ec5dd8938227d8e72f33948237a99d5b7ec465cd91454e938c660f1949bac81` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:8aaa85d6e489958ade7f2b4d6ab0703ec3c96d2b03ab37cfb99112cfb058e13a` |
| 4 | `theorem` | [FilterBasis.mem_sets](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filterbasis-mem-sets.md) | 121 | `result-track:f095187d51685d802733b5aee6f63eb3d7660a256aeed21fdc0e7d6ad0bd7c7b` |
| 5 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/instance.md) | 124 | `declaration-track:0a0f53b78431f7160520210272b33ad4caff45987293ba502023e269331bbd20` |
| 6 | `def` | [Filter.asBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filter-asbasis.md) | 132 | `declaration-track:254614a878c3255359771a43a8b84b0d1e962d95a27f29e791dba3a22c006376` |
| 7 | `structure` | [Filter.IsBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filter-isbasis.md) | 138 | `declaration-track:964fec6d84aa40b4252cd92b954f7d9b9c0565bb07c39ff3300e857e8f616961` |
| 8 | `def` | [filterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filterbasis-source-edition-2.md) | 150 | `declaration-track:e12b616381f8dc82c794646e50b3cac9585993f5fbddbf29b9144c63482a6aee` |
| 9 | `theorem` | [mem_filterBasis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/mem-filterbasis-iff.md) | 163 | `result-track:cf1f854b97f211953a656964c53a5add73b2234abe2c376096ccd6701c82b421` |
| 10 | `def` | [filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filter-source-edition-2.md) | 174 | `declaration-track:cbe3d1d673083c69cea988ef47322092efab1b979449a8035435b999e2f02119` |
| 11 | `theorem` | [mem_filter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/mem-filter-iff-source-edition-2.md) | 184 | `result-track:f0a89e8d82aa7a117a5b21da4227c34bb8e15737c20a69d04c3bff51f0aa7f28` |
| 12 | `theorem` | [mem_filter_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/mem-filter-of-mem.md) | 188 | `result-track:ee3f784f2e64b0a5d8095f2dfea9f6f9d8b6a1831f6687aa139b3f574029654d` |
| 13 | `theorem` | [eq_iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/eq-iinf-principal.md) | 192 | `result-track:a21a2f069258e893ae75df817dfef9db680b67f0ab741af2ef5f8fb70cda0fc6` |
| 14 | `theorem` | [generate](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/generate.md) | 203 | `result-track:9bc60dbc6e9c04a0e4cb0edb547716de3fd3274466ef75353a5f989e27803a8b` |
| 15 | `def` | [filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filter.md) | 221 | `declaration-track:aacd7a35a1c5c13f40eb9a05b0ba4d33f3bd12d96da80b00fa0592c9b6261343` |
| 16 | `theorem` | [mem_filter_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/mem-filter-iff.md) | 225 | `result-track:7ab68feac42b0664103e85f75976c12806b5a31dd2e4a27f6ba6b2881730996e` |
| 17 | `theorem` | [filter_eq_generate](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filter-eq-generate.md) | 231 | `result-track:9a6c19be7cbd176124197c10d36f635f908b775716eb23072ec7bb5d5ff4e0a4` |
| 18 | `structure` | [HasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis.md) | 240 | `declaration-track:51cbf7f7ec7d54312bd55ee63426b32b1bedc33d37a921189f3ce52e61d4afa4` |
| 19 | `theorem` | [hasBasis_generate](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-generate.md) | 250 | `result-track:7cfa86adab191b02f04886f3e9e5853171df9072d0c45d49649e2fc065c8dcb0` |
| 20 | `def` | [FilterBasis.ofSets](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filterbasis-ofsets.md) | 256 | `declaration-track:946fc3b63e2498e7aae2f311bea389c98bcac4e73cff6e4f6968397884174f1a` |
| 21 | `lemma` | [FilterBasis.ofSets_sets](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/filterbasis-ofsets-sets.md) | 265 | `result-track:1504cb08987ba04ade3e110c7146e971ac707a2a1e58c2be45f80ef9c17b6079` |
| 22 | `theorem` | [HasBasis.mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-mem-iff.md) | 271 | `result-track:5af328200a528d150e19bcdd71a2f4443c002ab8e613afaeadb839c4c72927bf` |
| 23 | `theorem` | [HasBasis.eq_of_same_basis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-eq-of-same-basis.md) | 275 | `result-track:a56dc52241015c3f37779c7f0b1b62f356e71d82cdf6090b06772d3d6361f186` |
| 24 | `theorem` | [hasBasis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-iff.md) | 281 | `result-track:29cf80c890c3b8a8bc3d2e0375a1085748093b1f70c72a521859657646755193` |
| 25 | `theorem` | [HasBasis.ex_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-ex-mem.md) | 285 | `result-track:6576feeb4e455a11ccbccf08cb4cc2f1113195b723ec113c9fef4b0bcdcdaa1b` |
| 26 | `theorem` | [HasBasis.nonempty](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-nonempty.md) | 289 | `result-track:5316f9ba60b3a8860e7be725576791fbd1d233145c5f7d899e6b4be8b36e39db` |
| 27 | `theorem` | [IsBasis.hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/isbasis-hasbasis.md) | 293 | `result-track:2efa48be8014aabbcd9be056651478772e38a5b45ba62e5344e1ca2fe85ec69a` |
| 28 | `theorem` | [HasBasis.mem_of_superset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-mem-of-superset.md) | 297 | `result-track:4dc80541880b13ea882cfeba5d021692f4e374309635b260fab52f1787bf9a3c` |
| 29 | `theorem` | [HasBasis.mem_of_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-mem-of-mem.md) | 302 | `result-track:c289c1c9da4bfebb678ee6441be9788afa85e756e16d60279a4ac57b5de5fdfc` |
| 30 | `def` | [HasBasis.index](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-index.md) | 307 | `declaration-track:4a151b4237926bf189db180bd23169f84e1b1ebff79c3870bd36a59e55c5d5de` |
| 31 | `theorem` | [HasBasis.property_index](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-property-index.md) | 311 | `result-track:6e1e67df0c8c9b9b1cd4f420b7abee501318995d45600a543a2dc827a266d7a3` |
| 32 | `theorem` | [HasBasis.set_index_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-set-index-mem.md) | 315 | `result-track:96e7b2a75b24e8fd605f7f694528e34f03e4d877f788cf6bdbc5322d7c2884e6` |
| 33 | `theorem` | [HasBasis.set_index_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-set-index-subset.md) | 319 | `result-track:ad931e326fd5f273616e6df1ebff40a2bd23807bd529bcdc4fa993fd32687a72` |
| 34 | `theorem` | [HasBasis.isBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-isbasis.md) | 323 | `result-track:a760209b80b581561e448b30507192ce9c4976f526420cab89022497da44a761` |
| 35 | `theorem` | [HasBasis.filter_eq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-filter-eq.md) | 329 | `result-track:4f9169c2b688aeadae44bb6e822d94a6a0f5b36e93d3cd0d194f9ae9b64f3b24` |
| 36 | `theorem` | [HasBasis.eq_generate](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-eq-generate.md) | 334 | `result-track:00dcf4f15c986d61c9b5cbc82685f5e21b56511e86a7fc72f78bc755802c2510` |
| 37 | `theorem` | [generate_eq_generate_inter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/generate-eq-generate-inter.md) | 338 | `result-track:82af899d7bcee8391456e57170de716a8d8ddb2d636483b60c7fd22c62dc046b` |
| 38 | `theorem` | [ofSets_filter_eq_generate](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/ofsets-filter-eq-generate.md) | 343 | `result-track:6280d086ebe61c27ec1bc1321484bdb12ab4f76edb285971cd42c2754ddf8a7f` |
| 39 | `theorem` | [Filter Bases Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-source-line-348-occurrence-2.md) | 348 | `result-track:31b61f51d308b9a2ab39ba0ccc3322940e940701a107970367f86095964af350` |
| 40 | `theorem` | [HasBasis.to_has_basis'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-to-has-basis.md) | 353 | `result-track:1ed24660c305a51f6aec08a36c8abde65fbe97d63fb2561b996b8e61baf70de4` |
| 41 | `theorem` | [HasBasis.to_hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-to-hasbasis.md) | 361 | `result-track:cb6e737a4a853885e707dcc85924bc73abb631736438a6e60fcf42fd9b01f81e` |
| 42 | `theorem` | [HasBasis.to_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-to-subset.md) | 368 | `result-track:a3a275d7063c633fb18b6a71e7a4bb7a675da9850a59c7243d857ab5436dc0ab` |
| 43 | `theorem` | [HasBasis.eventually_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-eventually-iff.md) | 373 | `result-track:c111dcb8cc2a4d65495b7bd8d8f05fe5f23e096a2d73e9fd7966b3d1347d2d5d` |
| 44 | `theorem` | [HasBasis.frequently_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-frequently-iff.md) | 377 | `result-track:9de5da4323909871edfb032b4371f9c0aad2925beb57273ba314978a7128755a` |
| 45 | `theorem` | [HasBasis.exists_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-exists-iff.md) | 383 | `result-track:43324e2d3b717c9cc6260814f727015f24321172b1ed745ce16011675eac1693` |
| 46 | `theorem` | [HasBasis.forall_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-forall-iff.md) | 391 | `result-track:adf2cebb8c2c40aa2047c88addd664c20575fed53708d081a839d512281ccc64` |
| 47 | `theorem` | [HasBasis.neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-nebot-iff.md) | 398 | `result-track:0112e2bf1f2fefcad4a966ffed493235a824e62c4ca990132c68c6d1b9402637` |
| 48 | `theorem` | [HasBasis.eq_bot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-eq-bot-iff.md) | 403 | `result-track:eab705223b74fc8b1072a48bd3c2e60b15a50993f3b70946d72582164da6db82` |
| 49 | `theorem` | [generate_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/generate-nebot-iff.md) | 408 | `result-track:17cc7ed3308a41874bacfc266b0ebf20cecff7c2d4589399db8e421d7f8a469f` |
| 50 | `theorem` | [basis_sets](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/basis-sets.md) | 413 | `result-track:f34c749797c0429a4376384d9c965aef9bd916a1171ecbf4d342c20276b1e838` |
| 51 | `theorem` | [asBasis_filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/asbasis-filter.md) | 417 | `result-track:6801dcaefdcf5edde7a1609b1d514cbc868ad4a510bfdc88059caac831bdeecc` |
| 52 | `theorem` | [hasBasis_self](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-self.md) | 421 | `result-track:87f1e65dc7e93571f8ce2c1b24e9ffd9873cb02244ce16979978d382a08b8261` |
| 53 | `theorem` | [HasBasis.comp_surjective](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-comp-surjective.md) | 428 | `result-track:86ef69b276805719c875e8ff275860c193b104170fef4fd5f702ea5a40e549e4` |
| 54 | `theorem` | [HasBasis.comp_equiv](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-comp-equiv.md) | 433 | `result-track:02401cf486dde4fb3f97d8d060444de791966198a1b16e88d9ddd46c8246b27c` |
| 55 | `theorem` | [HasBasis.restrict](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-restrict.md) | 439 | `result-track:6068c8f1043c6e6b729d60118ef0981137273212a05d597f424de71f5c217251` |
| 56 | `theorem` | [HasBasis.restrict_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-restrict-subset.md) | 449 | `result-track:e20604c6afc90069e385b3487c0cc987204b566cbb5ca3ab08638a03219e30c5` |
| 57 | `theorem` | [HasBasis.hasBasis_self_subset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-hasbasis-self-subset.md) | 455 | `result-track:18c1a0283046ad3819c2045e8cdb809406dea3b6e8aefedfd1151f4a06e31600` |
| 58 | `theorem` | [HasBasis.ge_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-ge-iff.md) | 460 | `result-track:346c77ac8fddb52fb73e05b5cb5e9525c2436d8fc04b8e16e7c72bf15e8e6e53` |
| 59 | `theorem` | [HasBasis.le_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-le-iff.md) | 467 | `result-track:2e32cdde41341d9110c063c20de8e5ac68849a9ea3fbef6ed1d400ae4c8f25b9` |
| 60 | `theorem` | [HasBasis.le_basis_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-le-basis-iff.md) | 472 | `result-track:11a2da90505e259a40c433dc764da65156d3dee169b922c8af7bf0124936aca3` |
| 61 | `theorem` | [HasBasis.ext](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-ext.md) | 478 | `result-track:8b4f5e1e5df5a965aec4f280a9680614562618ea121fb4570a20b4e5a8ce845f` |
| 62 | `theorem` | [HasBasis.inf'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-inf.md) | 488 | `result-track:97f970adb4f3c757ff921a0b83cdc85bcaba4a3da1b92672289aa6475104776f` |
| 63 | `theorem` | [HasBasis.inf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-inf-source-edition-2.md) | 500 | `result-track:9e0c2ab5d4d825a84b560d0992750a4592ab7bbf6af9f0199e235824bf484e5a` |
| 64 | `theorem` | [hasBasis_iInf'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-iinf-source-edition-2.md) | 506 | `result-track:d2f9fb0909e0b5139d5599ca3ff0c13ad94e33feda3cd08a2c997b2bb5da57b9` |
| 65 | `theorem` | [hasBasis_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-iinf.md) | 522 | `result-track:9cdc22804becc975b3d73ef7dd6e958fde6cd97d1963c904417c2f6d522b1a6e` |
| 66 | `theorem` | [hasBasis_iInf_of_directed'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-iinf-of-directed-source-edition-2.md) | 536 | `result-track:ff6f22d43e1120a5f0e53c6ee3486d996408cd2a7eddd8f649c3a5d9bef263ca` |
| 67 | `theorem` | [hasBasis_iInf_of_directed](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-iinf-of-directed.md) | 545 | `result-track:6c53d7d6020f3566d296e5d59f6f09dde6fa00078566ec47c5e77d22640474e1` |
| 68 | `theorem` | [hasBasis_biInf_of_directed'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-biinf-of-directed-source-edition-2.md) | 554 | `result-track:86da8a259d28c64feb85ed8bca94bab7511423f2551049e88eff4fbe2bce519e` |
| 69 | `theorem` | [hasBasis_biInf_of_directed](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-biinf-of-directed.md) | 569 | `result-track:683cdbe3256db2c299743a03e6802b7ac403c005ce0dacf2083c2e613cfa914d` |
| 70 | `theorem` | [hasBasis_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-principal.md) | 584 | `result-track:b87d27e16705cf94e1a1ca7cf4db75fce782ec1fd99049bca942740700a78fa3` |
| 71 | `theorem` | [hasBasis_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-pure.md) | 588 | `result-track:e472943684fcd2ad02278d0953dab6783dcea2f5e42639491627302037333c07` |
| 72 | `theorem` | [HasBasis.sup'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-sup.md) | 592 | `result-track:9545db244ee23c447fb1a95c0296ded75bcae170e4048d20e6697048f48a703f` |
| 73 | `theorem` | [HasBasis.sup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-sup-source-edition-2.md) | 601 | `result-track:a22be8aa2bdff2270621808dd51532e69c74e91bab149195e52a929daca3ce10` |
| 74 | `theorem` | [hasBasis_iSup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-isup.md) | 607 | `result-track:520828c79ccdd39aedfd7acdaf1ffe142cad114c3d4c15faadeb9e488a34204e` |
| 75 | `theorem` | [HasBasis.sup_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-sup-principal.md) | 615 | `result-track:a27a9d13880ab370990d4dd325c0471a7b793c8c61203773efb3ea6d9a0de9b8` |
| 76 | `theorem` | [HasBasis.sup_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-sup-pure.md) | 622 | `result-track:0f91f18dcae3fe45a131b63d0c6f47bb0d93bffa13d37131a58413e812298e7e` |
| 77 | `theorem` | [HasBasis.inf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-inf-principal.md) | 627 | `result-track:3cf0e8bebd390747337551c52742ed2cc03665d990428327ba6a7b6fa66b133c` |
| 78 | `theorem` | [HasBasis.principal_inf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-principal-inf.md) | 633 | `result-track:30e216c9542d130bd77a8cb87f0c498c9cd82967e55239f7fcd2cfa8286930ea` |
| 79 | `theorem` | [HasBasis.inf_basis_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-inf-basis-nebot-iff.md) | 638 | `result-track:26b399129ad506533fd2949b3cca43bb52108b4b0a2da858bb3fd166562974fb` |
| 80 | `theorem` | [HasBasis.inf_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-inf-nebot-iff.md) | 643 | `result-track:e8a330f01019134d27c6f05e5f1e9d757d0bd03c96792564014f13d6704a90a9` |
| 81 | `theorem` | [HasBasis.inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-inf-principal-nebot-iff.md) | 648 | `result-track:a64348086ebfa3bfa1676d230a50687e148d129aa470d32bfb405dc96c6fb1d0` |
| 82 | `theorem` | [HasBasis.disjoint_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-disjoint-iff.md) | 654 | `result-track:a6470452431bc8e24147641390a13cf21002b7c6ed1dc0e507d545e6d118bdb3` |
| 83 | `theorem` | [Filter Bases Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/exists-mem-filter-basis.md) | 661 | `result-track:71a4655d548003f8db6922ae51e893287cba925c01910c0cdf68ead2765040ed` |
| 84 | `theorem` | [Filter Bases Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/exists-mem-filter-basis-of-disjoint.md) | 666 | `result-track:ece09a5fa84b28f579a2ec163adaf8fdb0383c2167c16db71b8e079c0d4c5bf4` |
| 85 | `theorem` | [Filter Bases Namespaced](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/exists-mem-filter-basis-source-line-675-occurrence-2.md) | 675 | `result-track:73a8b2f07001ce8de5ee0581eca431c8877f00c20420de092185bc67ce4246b2` |
| 86 | `theorem` | [inf_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/inf-nebot-iff.md) | 684 | `result-track:8329b110c6f3c009ab64ea527d6acab256a35f73c16924ab76202ee779909b58` |
| 87 | `theorem` | [inf_principal_neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/inf-principal-nebot-iff.md) | 689 | `result-track:4f2a2c6677f0e6139e125b5214589d6468ca1a689e4e26ffeb088dc1910e5b2c` |
| 88 | `theorem` | [mem_iff_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/mem-iff-inf-principal-compl.md) | 693 | `result-track:f05c036c0df4f646e5759ab4693f2207a0ab2b35d2f94591df8d84f3bea88b8e` |
| 89 | `theorem` | [not_mem_iff_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/not-mem-iff-inf-principal-compl.md) | 700 | `result-track:86aeb16d575832bb9997d48e0949427b5064d4f9d5453006ff6cc4453973546c` |
| 90 | `theorem` | [disjoint_principal_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/disjoint-principal-right.md) | 705 | `result-track:450d72fd6ff116f1ec0bcfd844631e5a4fba08e4693e663def69830f858b6ed3` |
| 91 | `theorem` | [disjoint_principal_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/disjoint-principal-left.md) | 710 | `result-track:dacc50e73ef43493e35ba516a6b70af4be040a75cb31159d7dba354b8e563aa1` |
| 92 | `theorem` | [disjoint_principal_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/disjoint-principal-principal.md) | 715 | `result-track:a4f9329a542dc998ceb41467dba5cc212c29e87f34ef45ce83a6674729071f0b` |
| 93 | `theorem` | [disjoint_pure_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/disjoint-pure-pure.md) | 723 | `result-track:2a5073c4af73ca3e44e7839bc3798d06acc6861cca50ae3f707d1b2d5d9d2b04` |
| 94 | `theorem` | [compl_diagonal_mem_prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/compl-diagonal-mem-prod.md) | 728 | `result-track:d06f2bc65b345799805063c81192cf58a529037fb2e6a35e77762a7778f8d045` |
| 95 | `theorem` | [HasBasis.disjoint_iff_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-disjoint-iff-left.md) | 733 | `result-track:911e600d792d4e1414562a6e5566d1c4df55508737a8bd9f1e9d640ef68f07fc` |
| 96 | `theorem` | [HasBasis.disjoint_iff_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-disjoint-iff-right.md) | 740 | `result-track:1a003006e6f5e0adf1e5dddcfc7893e417c963b3c51cd1721ab563d6ac49d6dd` |
| 97 | `theorem` | [le_iff_forall_inf_principal_compl](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/le-iff-forall-inf-principal-compl.md) | 745 | `result-track:93cbb38de9340dd6baefcdf4b54ded4259518629aa5fadcdf3c44fe128af3ca0` |
| 98 | `theorem` | [inf_neBot_iff_frequently_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/inf-nebot-iff-frequently-left.md) | 749 | `result-track:17af81554e8ff89bd9b323435a562bae1e96e0d759b6b19fb579a9d9e7e41827` |
| 99 | `theorem` | [inf_neBot_iff_frequently_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/inf-nebot-iff-frequently-right.md) | 754 | `result-track:fc3d302efe58f6a89e3ae272a89d892db5f7a0713fe8d5702645d4cadeaf336c` |
| 100 | `theorem` | [HasBasis.eq_biInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-eq-biinf.md) | 760 | `result-track:0dc54f9bc8c2e43d13a34ec2a09402580f642062ff92af9bd0a7f022453f3b66` |
| 101 | `theorem` | [HasBasis.eq_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-eq-iinf.md) | 764 | `result-track:11bd52623778fb6475cde6b4c0121f6d2518b80a7229e8370bf15372e0877a8e` |
| 102 | `theorem` | [hasBasis_iInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-iinf-principal.md) | 768 | `result-track:690fcb175eb58cdeb3c7c98d6809b71f6e30d505f0286c4c59b4a3da99944f45` |
| 103 | `theorem` | [hasBasis_iInf_principal_finite](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-iinf-principal-finite.md) | 776 | `result-track:202a9f16e51e51d2830973ebbba103b164ecd994f15b63649172ee9548435671` |
| 104 | `theorem` | [hasBasis_biInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-biinf-principal-source-edition-2.md) | 783 | `result-track:ce42a6a545a574cded1b7b7f6a37e38daea0163e1d46f508c3195d271ae2b5b4` |
| 105 | `theorem` | [hasBasis_biInf_principal'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-biinf-principal.md) | 792 | `result-track:3f542e3fade4834d1f8aa86fe806cb2257c3c87eb7243ab97ab1ae30bc41cc05` |
| 106 | `theorem` | [HasBasis.map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-map.md) | 798 | `result-track:bb168d8467d69ca374874a28d37bfa5f1b22194d7df279e283a61bc2489286e4` |
| 107 | `theorem` | [HasBasis.comap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-comap.md) | 802 | `result-track:9ab5f55fafbd99e0113284a3daa8371a9fa8b924be926e6f7dd4022fbc3b1434` |
| 108 | `theorem` | [comap_hasBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/comap-hasbasis.md) | 810 | `result-track:e8beed51c3d82ebfd49f962a1a426e4009b888e64653065bdaa512589ab05c42` |
| 109 | `theorem` | [HasBasis.forall_mem_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-forall-mem-mem.md) | 815 | `result-track:77ef88c895d6e740e87974ca69a96f2c52431e282e65d4636060baa3a51feea1` |
| 110 | `theorem` | [HasBasis.biInf_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-biinf-mem.md) | 821 | `result-track:048771c16657d8629841ec2659a8caeacf7f51f2fe1dda149074190f562f857d` |
| 111 | `theorem` | [HasBasis.biInter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-biinter-mem.md) | 829 | `result-track:ee85ac3718c86aceb0a367b6e32cca4b32d875d001c04c076788673c49d7723d` |
| 112 | `theorem` | [HasBasis.sInter_sets](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-sinter-sets.md) | 834 | `result-track:eb6b58f13a2d228e73df16e928fb370e9e8d96781e3327d5bc5b33b3d8a4d29f` |
| 113 | `structure` | [IsAntitoneBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/isantitonebasis.md) | 842 | `declaration-track:7e219d7b29e993cb9d2cc0ffdd510a8074da5311b5afebab859e59228e567ff2` |
| 114 | `structure` | [HasAntitoneBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasantitonebasis.md) | 849 | `declaration-track:f18d756e429178e1047f0d7f4c75c44e2f526917cdc8bbd320a94cdb7af57f42` |
| 115 | `theorem` | [HasAntitoneBasis.map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasantitonebasis-map.md) | 855 | `result-track:14fff8d23d99cb2a2d7568c643ec1337a562a48ba18bcc4a133788e27851be3d` |
| 116 | `theorem` | [HasBasis.tendsto_left_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-tendsto-left-iff.md) | 868 | `result-track:914a62ea2b41a5e8780ba45c1f381ab3f34805da4a315a083a555209c50da9fd` |
| 117 | `theorem` | [HasBasis.tendsto_right_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-tendsto-right-iff.md) | 874 | `result-track:25124a05d361331bb8b6875351d6e61050ae326b729ae4fd0735cc4f1a21b42b` |
| 118 | `theorem` | [HasBasis.tendsto_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-tendsto-iff.md) | 880 | `result-track:0c7e180b0213c26266f2651e3eb7c67a44062a38de34091be999af12f36fc58b` |
| 119 | `theorem` | [Tendsto.basis_left](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/tendsto-basis-left.md) | 886 | `result-track:173950beb30353620f4f50926413b2440ef9b8a19ec74bb725d1e5e5f3348556` |
| 120 | `theorem` | [Tendsto.basis_right](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/tendsto-basis-right.md) | 891 | `result-track:b42d7ce66c9e4359f32f90003a1d08b5b65eb4a9ae651a3990bee28087d4f19f` |
| 121 | `theorem` | [Tendsto.basis_both](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/tendsto-basis-both.md) | 897 | `result-track:1f76f12203bb20aeafb40792ad344b4f6162221386701df73840564f1075396c` |
| 122 | `theorem` | [HasBasis.prod_pprod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-prod-pprod.md) | 903 | `result-track:53ca0b0dd2cef60af772a04e74067df0e6b9409a1312ef4fd324b484338589d6` |
| 123 | `theorem` | [HasBasis.prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-prod.md) | 908 | `result-track:0fc6f95b28e98fcb1ab34d25c3deb990c5f9473ba97dd34b4292cd18ae2de782` |
| 124 | `theorem` | [HasBasis.prod_same_index](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-prod-same-index.md) | 914 | `result-track:6016cdd413813e5cc7c13ce1cb9013f29b26fbb4291e9b7343e6a57b95a15623` |
| 125 | `theorem` | [HasBasis.prod_same_index_mono](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-prod-same-index-mono.md) | 926 | `result-track:0f68dbb5d797324392d865776d84485a48a4c4c902cc2163c2db164fb7910581` |
| 126 | `theorem` | [HasBasis.prod_same_index_anti](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-prod-same-index-anti.md) | 935 | `result-track:5a6c63d739e84578cd1d7de6179251159ca8e9a3328c18e1fdcf1048b8ddd680` |
| 127 | `theorem` | [HasBasis.prod_self](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-prod-self.md) | 942 | `result-track:5ef327455285524b3422466f46e4c57eef0dbb54583c1617a21b02e3ff631787` |
| 128 | `theorem` | [mem_prod_self_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/mem-prod-self-iff.md) | 949 | `result-track:13b89cd4480fa5f7f03091ac22d8237723f425ebe014e1924b65069a393137a5` |
| 129 | `theorem` | [HasAntitoneBasis.prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasantitonebasis-prod.md) | 953 | `result-track:7518b8e7a9609e65ab9b774819e269eb64770217e5f8fea48d5a7235f1d7b174` |
| 130 | `theorem` | [HasBasis.coprod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-coprod.md) | 959 | `result-track:80b73557caf30746977c5cb1fcceead025c2aae353a85b84e8d1f224820ec0e0` |
| 131 | `theorem` | [map_sigma_mk_comap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/map-sigma-mk-comap.md) | 968 | `result-track:d4bd518070edbafee430b3cf44fb5f88c7623531a98e06ec3c3b33f21efd20ff` |
| 132 | `class` | [IsCountablyGenerated](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated.md) | 985 | `declaration-track:1d7e3604eb5a232e5d21640d3c6c37988aed511742b26eacd236fc001df46fe5` |
| 133 | `structure` | [IsCountableBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablebasis.md) | 991 | `declaration-track:b47ff3f26d53089b2ceeedd9c9a814c3c6e5d6a7473c9bb317b62789ea0a5f97` |
| 134 | `structure` | [HasCountableBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hascountablebasis.md) | 999 | `declaration-track:f02ad02f59260a75f5147ce55223b76245fabd839a3e1ce171655fc4d1efe4ae` |
| 135 | `structure` | [CountableFilterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/countablefilterbasis.md) | 1008 | `declaration-track:8879dbde9f8294d2b2affb2d8a0b14829bc3da89b3b43062f3e6d5c08430b59f` |
| 136 | `instance` | [Nat.inhabitedCountableFilterBasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/nat-inhabitedcountablefilterbasis.md) | 1014 | `declaration-track:392959990deb7449d73f3b140852f6fd2cdd437daad9db8a671cc43e09701409` |
| 137 | `theorem` | [HasCountableBasis.isCountablyGenerated](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hascountablebasis-iscountablygenerated.md) | 1018 | `result-track:5bb67f094eb48f70377e4387fe45eab223415b1afc5c5541c5d1b817f01074af` |
| 138 | `theorem` | [antitone_seq_of_seq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/antitone-seq-of-seq.md) | 1023 | `result-track:212769c248e126c006191665659abb3f65cbb6cd6d02fe0749d6e95400f8ecfc` |
| 139 | `theorem` | [countable_biInf_eq_iInf_seq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/countable-biinf-eq-iinf-seq-source-edition-2.md) | 1035 | `result-track:fe99cdb386ecc8e33e62fe0a0b6b20a625a363b7a491d3e0b9126bfba83d56a8` |
| 140 | `theorem` | [countable_biInf_eq_iInf_seq'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/countable-biinf-eq-iinf-seq.md) | 1041 | `result-track:574c2e991fee06b14b03b137956979a7ec52d3ce82f87d19262a32b7b2495ca5` |
| 141 | `theorem` | [countable_biInf_principal_eq_seq_iInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/countable-biinf-principal-eq-seq-iinf.md) | 1050 | `result-track:3f338c0e9e5fc092c506f3b2067495e69b511ab3c6e22c1e4b97055a4ae6c5f0` |
| 142 | `theorem` | [HasAntitoneBasis.mem_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasantitonebasis-mem-iff.md) | 1057 | `result-track:2c95338616668135983028b9670617007397d5d5d655ad1675538c9e36977173` |
| 143 | `theorem` | [HasAntitoneBasis.mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasantitonebasis-mem.md) | 1062 | `result-track:bfee58d083f5b2a19332be195ccb9495409481fc0a17546b06c1cf195fa09078` |
| 144 | `theorem` | [HasAntitoneBasis.hasBasis_ge](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasantitonebasis-hasbasis-ge.md) | 1067 | `result-track:87a8a785507385fef28f5f0debd839305864cfdd4f163fe8c34b9d02f74c2cbf` |
| 145 | `theorem` | [HasBasis.exists_antitone_subbasis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/hasbasis-exists-antitone-subbasis.md) | 1077 | `result-track:a90d3a6f53ad63cbaa964bd42b58d38cf0788f501f837063166eeffb6802f9db` |
| 146 | `theorem` | [exists_antitone_basis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/exists-antitone-basis.md) | 1104 | `result-track:98bbc18ea2db7b756ea99add5cd5a0644565432ec635e62958f16e8991e9b5b2` |
| 147 | `theorem` | [exists_antitone_seq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/exists-antitone-seq.md) | 1110 | `result-track:ce29bd914ce19f1e2376f363295e49af8854fdf5ba3b50f0ff4f7978ed01e149` |
| 148 | `instance` | [Inf.isCountablyGenerated](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/inf-iscountablygenerated.md) | 1116 | `declaration-track:ded4078b81d13fcccf7e2bf7584428b9fd1e8cef67d0ea4099b18e53f269c571` |
| 149 | `instance` | [map.isCountablyGenerated](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/map-iscountablygenerated.md) | 1123 | `declaration-track:9e45c7e2aa6907bf4317aa1eb2d9e1083aac43db059bc2aa37ef0b35d850ef5b` |
| 150 | `instance` | [comap.isCountablyGenerated](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/comap-iscountablygenerated.md) | 1129 | `declaration-track:b44216a84e71d04a6f777507493ce020097f9294e4f0533bbecf8b6d2bd36b5a` |
| 151 | `instance` | [Sup.isCountablyGenerated](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/sup-iscountablygenerated.md) | 1135 | `declaration-track:67183c04c561bafce4839f99f84b003d2e459569445b2dd6c1b7981eadf4578d` |
| 152 | `instance` | [prod.isCountablyGenerated](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/prod-iscountablygenerated.md) | 1143 | `declaration-track:e9d624b1602f99ae5106c39f335feda81a76949fe9f5ccb24aaa7bef93acd0ec` |
| 153 | `instance` | [coprod.isCountablyGenerated](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/coprod-iscountablygenerated.md) | 1148 | `declaration-track:5998f2b148dff06aaa00f86dac4b17364d0bcbf415555e3b204fb13989f546bb` |
| 154 | `theorem` | [isCountablyGenerated_seq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated-seq.md) | 1155 | `result-track:539a44e0d5bf8c3bab4ceec509ce58bf53d0fd612ed201512252f0809d2ac43e` |
| 155 | `theorem` | [isCountablyGenerated_of_seq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated-of-seq.md) | 1161 | `result-track:d93305a7024d18c8d56cd7c152fec16be2e68750291ea6b6e3a9b8f20af25708` |
| 156 | `theorem` | [isCountablyGenerated_biInf_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated-biinf-principal.md) | 1167 | `result-track:8db3aabbf6cd0519cc72245dc77f1271c1dffe7bd76859afae5090e63ff1aa34` |
| 157 | `theorem` | [isCountablyGenerated_iff_exists_antitone_basis](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated-iff-exists-antitone-basis.md) | 1172 | `result-track:45e08bedc12b608a70a643a0db706cbcaa72e6a282516f2591ace77affe374dc` |
| 158 | `theorem` | [isCountablyGenerated_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated-principal.md) | 1183 | `result-track:79344ff3553c57e238e65f1380e60db845f576ba30c705734aecbbdf12af0214` |
| 159 | `theorem` | [isCountablyGenerated_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated-pure.md) | 1188 | `result-track:4816da693f57fa180605a731ca661cddaac00424fb56362af797e57f4e1eaef7` |
| 160 | `theorem` | [isCountablyGenerated_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated-bot.md) | 1194 | `result-track:1ab0af909b500165fa084a84618dead2b14c9df29bb4c7e0dabd3c67ac054155` |
| 161 | `theorem` | [isCountablyGenerated_top](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated-top.md) | 1199 | `result-track:50b6c4a818be835efae56213435345a3b65deba6de318397d9e7850274578ea9` |
| 162 | `lemma` | [isCountablyGenerated_of_subsingleton_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iscountablygenerated-of-subsingleton-mem.md) | 1203 | `result-track:bb0901637c94c03197bfe4c18e50ea68cb1908f3e16f84de807d5ab76bb7910f` |
| 163 | `instance` | [iInf.isCountablyGenerated](../../../../../GeneralTopology/GeneralitiesInTopology/FilterBasesNamespaced.lean/declarations/iinf-iscountablygenerated.md) | 1212 | `declaration-track:3a6931ddbc28770eca86948e186b4d08998ca9d66ad619f04e16a1c02b64eb33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aacae24ebf83b944cf3d9376d4f63b4e0463e08203874194ddab1a628dff7005 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bases/Variant283e442569dc8cef4b97a6900f933a441efba1c0ee907d8182ec5be1424fb54b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
