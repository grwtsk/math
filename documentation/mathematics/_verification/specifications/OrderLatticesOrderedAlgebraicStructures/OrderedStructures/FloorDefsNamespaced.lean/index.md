# Verification target: Floor Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "351583a99252a9f0d836ac34d1d6a45046470d4b",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantc78003e9e2e5f1c5dd0a33c20af0a22cea44a557eb7d68004ac3dbb889587645.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `351583a99252a9f0d836ac34d1d6a45046470d4b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantc78003e9e2e5f1c5dd0a33c20af0a22cea44a557eb7d68004ac3dbb889587645.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantc78003e9e2e5f1c5dd0a33c20af0a22cea44a557eb7d68004ac3dbb889587645.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Positivity.Core` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FloorSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floorsemiring.md) | 64 | `declaration-track:00fc53399d66e57ee8e66f8436cdf0a34321aeb2e502fd0b0a85aa4bdbcc0a7a` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/instance.md) | 77 | `declaration-track:17657cc826e3bd3c2c1a8c32587a91876b7901380aa32ace74b478c8e29fdd27` |
| 3 | `def` | [floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floor.md) | 93 | `declaration-track:653cc444206282a8d7db91dcd32f4df21806eb25307d02d28e64e9c15da4f60e` |
| 4 | `def` | [ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/ceil.md) | 97 | `declaration-track:0c2bf303ee3b4c06fb5e03d305b4a70484050a9692fc680c5de40ceebfe63440` |
| 5 | `theorem` | [floor_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floor-nat.md) | 101 | `result-track:162a51e1f877a2472fe1defc2cecda70dbb6225486a845728f8869caaa010483` |
| 6 | `theorem` | [ceil_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/ceil-nat.md) | 105 | `result-track:19118c4dc8a70240a9025e4cd5711ec76c175c4920524250ace80275cc7d4893` |
| 7 | `theorem` | [le_floor_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/le-floor-iff.md) | 114 | `result-track:e9725bc897f7042c7bfe8263f56454661e79f5d63007dc7bb798ef7fd96ee7b8` |
| 8 | `theorem` | [le_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/le-floor-source-edition-2.md) | 117 | `result-track:f49a31f1b02d8ee9d39de3aabf43d4f319779f25b12b52f5a2070ab25d77263e` |
| 9 | `theorem` | [gc_ceil_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/gc-ceil-coe.md) | 120 | `result-track:32e70400876fa405839a74cd06affb61e052d15684768f61e25df5be12671a14` |
| 10 | `theorem` | [ceil_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/ceil-le.md) | 124 | `result-track:4f2d4468a64de80e4c7f22401d9932f641cd548d8427812c75339797d0811271` |
| 11 | `theorem` | [lt_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/lt-ceil.md) | 133 | `result-track:372dbee023e5607be7f13e63350dc5db54830652df3bbe0088fcf79a3968b777` |
| 12 | `theorem` | [ceil_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/ceil-pos.md) | 137 | `result-track:3d146530bf7c8cffbfe296af8b158543f68313182fffc25d710fce2e4efd292f` |
| 13 | `class` | [FloorRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floorring.md) | 148 | `declaration-track:0e847ba8bd3968b021187a901ce3d48b22fbdae7994fd768d8dc055804e7193a` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 158 | `declaration-track:a388106283451fdf42c5778c82b8b4bc57058e972a78cd4945e4dda7763b90f4` |
| 15 | `def` | [FloorRing.ofFloor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floorring-offloor.md) | 167 | `declaration-track:7c4416c47d9d473117be7dc651d661fbdf75d1ec214a6a7c8b3e537f0c54cf3f` |
| 16 | `def` | [FloorRing.ofCeil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floorring-ofceil.md) | 175 | `declaration-track:359869bec67df895411e12c342850fbb58914df06f91cf540ed6379735343cd8` |
| 17 | `def` | [floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floor-source-edition-2.md) | 187 | `declaration-track:e457eae08849d31065489dccc57ff36376dbffd6e071b57ce5bebd2c58ded05a` |
| 18 | `def` | [ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/ceil-source-edition-2.md) | 191 | `declaration-track:855f3a26dddc944e9bd6399fa0334b44a779ed11ab41d530f458c0acfaecb9b5` |
| 19 | `def` | [fract](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/fract.md) | 195 | `declaration-track:066a32e3b5637b6789e3298e8b0f1238cfaa85eff02e378a1dc6eb64c692f1df` |
| 20 | `theorem` | [floor_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floor-int.md) | 199 | `result-track:02769aa84a84f86627dc269c7f309d3c4d4cd0fb4e83b5de319a6b1552102196` |
| 21 | `theorem` | [ceil_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/ceil-int.md) | 203 | `result-track:e53aeb40b9b2c5a334faada7b7bb4e991f1bfb0e7067ffa9bb4bc063596e8105` |
| 22 | `theorem` | [fract_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/fract-int.md) | 207 | `result-track:3767a3db8b29326f310e66200ae0eb34eaa21e4d3f2cb11a1410acdf8973f31f` |
| 23 | `theorem` | [floorRing_floor_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floorring-floor-eq.md) | 219 | `result-track:0517c099ac0baec00655dbd5727ae6bd10095563584485d3fe68c732333c9082` |
| 24 | `theorem` | [floorRing_ceil_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floorring-ceil-eq.md) | 223 | `result-track:c1991ca07124b73f301e464e9312e2e267764e9b10483c27a4ecc1a009a95f73` |
| 25 | `theorem` | [gc_coe_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/gc-coe-floor.md) | 228 | `result-track:168981915bc45452e55af793e0ffd479d38c8c2eee3ad4b59a2e249ff3c5c035` |
| 26 | `theorem` | [le_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/le-floor.md) | 231 | `result-track:c90ebdfed5b307f48083a6c620b9014ba82bd08bea5501e0a5e80da98761f68e` |
| 27 | `theorem` | [floor_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floor-lt.md) | 234 | `result-track:00222a4e712cb10a56130077196c317de4b81a3de7a2fadf5eb03cb783c3bf03` |
| 28 | `theorem` | [floor_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floor-le.md) | 238 | `result-track:148b298082949a95d68668ed33b49132bf3966763c3023027762f108b7d1480f` |
| 29 | `theorem` | [floor_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floor-nonneg.md) | 241 | `result-track:43a1fafba6dc03136baa6a3641a67469c37be7af71daaf71fd21c2d6c5878b66` |
| 30 | `theorem` | [floor_nonpos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/floor-nonpos.md) | 244 | `result-track:e783048cc3031ee8264dc6bcd2a14216f926a9d9101ff7b7f6a3a6daaaa95ee4` |
| 31 | `theorem` | [gc_ceil_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/gc-ceil-coe-source-edition-2.md) | 250 | `result-track:956bcd3536b5acf5cff9bd83523db5bd36debbc9e76604fbd07569a88d091d8d` |
| 32 | `theorem` | [ceil_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/ceil-le-source-edition-2.md) | 253 | `result-track:e38ce9df864d95b777282d89741f6f81980657021be3d6f76dd77539c30ad309` |
| 33 | `theorem` | [lt_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/lt-ceil-source-edition-2.md) | 256 | `result-track:d37ee3ad735fae5d284635cfc5cc77a59398db52d656aa0d0590f4fbb343a37e` |
| 34 | `theorem` | [le_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/le-ceil.md) | 260 | `result-track:08a4cedf4cc72daa1a2225b720444929de59a0f62d9fc2cdd35f94a8ebe57481` |
| 35 | `theorem` | [ceil_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/ceil-nonneg.md) | 264 | `result-track:e42d68cf50ddc87fc13bccf3f970a72cdc96a93001b4a570201a2a2f6c9e6826` |
| 36 | `theorem` | [ceil_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/ceil-pos-source-edition-2.md) | 267 | `result-track:635b26dc3ed247bba61f8c729605979277bfff144bd545a7c27d6d6c1e10a101` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 279 | `declaration-track:9bb5550436cab7e7e7145d7306ee1e4cdd6b369635844e98099448406ab07a57` |
| 38 | `theorem` | [Int.floor_toNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/int-floor-tonat.md) | 286 | `result-track:8bdd810d5c6703ce41f3ab168fd3e75732673b921200599752a09ac417269ef5` |
| 39 | `theorem` | [Int.ceil_toNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/int-ceil-tonat.md) | 289 | `result-track:6802c4f02b50467325f03ff9067c2b3508333bc4fdfc623af15b7cf61759dd13` |
| 40 | `theorem` | [Nat.floor_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/nat-floor-int.md) | 293 | `result-track:5222f38effe0a15bdc84ea2e62248366d4b008375ac43b49144a0236f8694aff` |
| 41 | `theorem` | [Nat.ceil_int](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/nat-ceil-int.md) | 297 | `result-track:d9aaf862e654623cdddf428a04f4db5c50c5756547b5075133ca5ed5995c7921` |
| 42 | `theorem` | [int_floor_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/int-floor-nonneg.md) | 305 | `result-track:23411c2afc0dca69a5ebea40bc3b224d6617c3482e885dbffd5b0d49c157f2ab` |
| 43 | `theorem` | [int_floor_nonneg_of_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/int-floor-nonneg-of-pos.md) | 309 | `result-track:34a7276ed4ab5d1711a3b8cd8362c2d1ded7b9932b6b3bfcd06004893bf619b8` |
| 44 | `def` | [evalIntFloor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/evalintfloor.md) | 316 | `declaration-track:e7a539a6f5ab162973418152418ed05547c870f3c577ed77a3771f3c73404d8b` |
| 45 | `theorem` | [nat_ceil_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/nat-ceil-pos.md) | 329 | `result-track:1c33080baf685175c4ee8adab34cd9facbd795a90f3ad85769aadd0a8a330a61` |
| 46 | `def` | [evalNatCeil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/evalnatceil.md) | 335 | `declaration-track:e634520cff86f0e10dee56fdf7b2726a390a07f2d673845f7bfe51be44a40b5f` |
| 47 | `theorem` | [int_ceil_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/int-ceil-pos.md) | 348 | `result-track:e3d4e9a3b0b973d52e50f1a9ff7741019e8a6f2ae04a018b2e14960be752f0f3` |
| 48 | `def` | [evalIntCeil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/FloorDefsNamespaced.lean/declarations/evalintceil.md) | 353 | `declaration-track:b3b094ee716e66ffac633e6c3797331ac51c9edae4ad83d270cafcb3b6441ee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebad5e9b15602b2fb9d9df0f9edf2d1783239d9dc7ca9ccb223770c9ab0c5fd2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantc78003e9e2e5f1c5dd0a33c20af0a22cea44a557eb7d68004ac3dbb889587645.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variantc78003e9e2e5f1c5dd0a33c20af0a22cea44a557eb7d68004ac3dbb889587645.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
