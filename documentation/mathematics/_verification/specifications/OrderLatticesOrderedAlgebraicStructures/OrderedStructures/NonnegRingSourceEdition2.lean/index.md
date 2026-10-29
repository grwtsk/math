# Verification target: Nonneg Ring Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1785f8fbbfde815b368c8ae22c320f4015464d7",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant5e62c5c4593811c16cb809823ec6d09de287910057a9986dc359c1174ece50d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1785f8fbbfde815b368c8ae22c320f4015464d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant5e62c5c4593811c16cb809823ec6d09de287910057a9986dc359c1174ece50d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant5e62c5c4593811c16cb809823ec6d09de287910057a9986dc359c1174ece50d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.InjSurj` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Order` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLatticeIntervals` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LatticeIntervals` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/orderbot.md) | 49 | `declaration-track:5a507fbddde66c07313a6216f63a853080cc2a6474185d1b9973c83e662e8e96` |
| 2 | `theorem` | [bot_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/bot-eq.md) | 53 | `result-track:5509e3c52817dfa9dd153e9ca19350de6ad22d28a793df9e822ba97113db86a3` |
| 3 | `instance` | [noMaxOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/nomaxorder.md) | 57 | `declaration-track:6e9cdf6ef0f97dc4388ffa2f0aad9ed21cc776751a66ff368e17ec492799fbdf` |
| 4 | `instance` | [semilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/semilatticesup.md) | 61 | `declaration-track:0dbef162f4220cd62f8c09ec8069ff5000cf286a4d1dfba75329b3ab9d78dda5` |
| 5 | `instance` | [semilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/semilatticeinf.md) | 65 | `declaration-track:0242354c50d8db0df228e06ed22e5bf0523772460a4c99ae825cde920da11831` |
| 6 | `instance` | [distribLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/distriblattice.md) | 69 | `declaration-track:d4820eb8e673053c651b6db01b15d57c18dc4d54d2f9e049feed4b001b7fa4a8` |
| 7 | `instance` | [densely_ordered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/densely-ordered.md) | 73 | `declaration-track:7c3398038954b95f18029e1affef46863d832b96679906f199d672057a90b4b8` |
| 8 | `def` | [conditionallyCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/conditionallycompletelinearorder.md) | 80 | `declaration-track:ef946a74f63921486b4be258f899e342a8b4213427140327cc29571425e473b2` |
| 9 | `def` | [conditionallyCompleteLinearOrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/conditionallycompletelinearorderbot.md) | 91 | `declaration-track:0b3e97d2db32a25bd78311de37c0449708507db58371b42585586071784c9c8f` |
| 10 | `instance` | [inhabited](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/inhabited.md) | 103 | `declaration-track:5185388036f28b1fcae6da8ebb859469f246843cb8d911759594600f9d0e03bb` |
| 11 | `instance` | [zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/zero.md) | 107 | `declaration-track:9068a2969a9f107805a22ed994e9d8fb849adde05e7b69a892ad9e2b71a8b1b3` |
| 12 | `theorem` | [coe_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coe-zero.md) | 112 | `result-track:820f5a09e2962cd56e35b1fe0aeef3f5d045b991fb979bba5d8c5193aedbff49` |
| 13 | `theorem` | [mk_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/mk-eq-zero.md) | 117 | `result-track:2bb439d0caa363fd386335cc1990f32605e67bfd275760218992475ff86989e0` |
| 14 | `instance` | [add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/add.md) | 122 | `declaration-track:e362007c9fdb41a26fbb1b660fe335ac945dea11d837e04198afa462899f35cd` |
| 15 | `theorem` | [mk_add_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/mk-add-mk.md) | 128 | `result-track:965d3a985b6ff9007065f998c613bf451034e28bc7b8e8fb58eae391ada06489` |
| 16 | `theorem` | [coe_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coe-add.md) | 135 | `result-track:763b7dbeb928d5750ce41f8c81ea38d3d4fd7c3ee13d753b8b3d54d61d408fc1` |
| 17 | `instance` | [nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/nsmul.md) | 140 | `declaration-track:078fd3d347a4ef2585bd549aed3981490633777ac3cf34bca1e4b7b8c2b02f48` |
| 18 | `theorem` | [nsmul_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/nsmul-mk.md) | 146 | `result-track:025980410deb7a24c0f48c63309628832e7e1301b67437c5186497c030c01e32` |
| 19 | `theorem` | [coe_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coe-nsmul.md) | 152 | `result-track:381b67e93221dd6fb00e249ecb07f1be1d4d259edb4982b7cfc44fe11ae6047c` |
| 20 | `instance` | [orderedAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/orderedaddcommmonoid.md) | 157 | `declaration-track:51c72cb786f597a49e489bd37061dc1ffb90ad616594a1cbc21e611a3fdcb368` |
| 21 | `instance` | [linearOrderedAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/linearorderedaddcommmonoid.md) | 161 | `declaration-track:f6db0ae4acd70a586f58b2b66ad255bdecd42d77afae9f72e21ed8ecb24e575d` |
| 22 | `instance` | [orderedCancelAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/orderedcanceladdcommmonoid.md) | 168 | `declaration-track:0c12426adfa6c723040caf162e66841f8d2fdb8b1f2cf3af250bb6439154e754` |
| 23 | `instance` | [linearOrderedCancelAddCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/linearorderedcanceladdcommmonoid.md) | 173 | `declaration-track:c5d8dc7ecec24d9390839f81bfee860b3d0a4c55972e9ec21c2bc7f63f034c06` |
| 24 | `def` | [coeAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coeaddmonoidhom.md) | 181 | `declaration-track:d58e03453c8992a17ec7373fbfcddc1529ce8f5497d87f55d534238cc7d2e1cc` |
| 25 | `theorem` | [nsmul_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/nsmul-coe.md) | 188 | `result-track:65f1eb6f6dc452a613c20ec1e64f44bb7004adbc92e0b998cae94d7451af09fb` |
| 26 | `instance` | [one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/one.md) | 193 | `declaration-track:3a3b3ddbd14d676203f858a499180c49f2a3e208e7cc91d1b89779f8bc17d5fc` |
| 27 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coe-one.md) | 197 | `result-track:936024e23e5077e0d392e6d7f44ae3172df23e14bddab018d11db970f440b0fa` |
| 28 | `theorem` | [mk_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/mk-eq-one.md) | 202 | `result-track:1dbdd26aabcb160972e31b6cf0b6ff4de5b8cd4616fc3da2e05a191914d65616` |
| 29 | `instance` | [mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/mul.md) | 207 | `declaration-track:e90fa7371e1a6766f54f0209faca897486cf090997b62116a1724b0194f187e8` |
| 30 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coe-mul.md) | 212 | `result-track:d329244ad951850ff5d7148330a39f57d520da1b4ba0ceb7e6b6d6779e1db474` |
| 31 | `theorem` | [mk_mul_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/mk-mul-mk.md) | 218 | `result-track:7c9bd132a610fd478e72e9a0f6b2141237356f8a8dc62cbabd5d1501468fc093` |
| 32 | `instance` | [addMonoidWithOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/addmonoidwithone.md) | 223 | `declaration-track:3fab0fc15c2b959d5046759fa671be37de877b31c0afc42f3f80bd567c3880c0` |
| 33 | `theorem` | [coe_nat_cast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coe-nat-cast.md) | 232 | `result-track:e3bf8fcbf4c808b15e77c0e4845082411ae30ee86c3538a765fd79564cfe524b` |
| 34 | `theorem` | [mk_nat_cast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/mk-nat-cast.md) | 237 | `result-track:bb27c0b8d267a2edbcc86e127825213ede54c072d7b6ddd9f3facbe0f7579e0a` |
| 35 | `instance` | [pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/pow.md) | 241 | `declaration-track:14b035d91911f67b7c7a1773f7b884f9738eeecc87fa9497e2e77975fc9eb885` |
| 36 | `theorem` | [coe_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coe-pow.md) | 246 | `result-track:dd4578c8c4e070b4c29ffb12c1d5611b2251296cc6dd4adaf01b1cd7c67a4b85` |
| 37 | `theorem` | [mk_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/mk-pow.md) | 252 | `result-track:bcb131f8c2a842da6e2316c00b600526a263aed0f1b86cc51ca579ea5c19466a` |
| 38 | `instance` | [orderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/orderedsemiring.md) | 257 | `declaration-track:b57d90649d780030659fd967eb284798b6c5940b93c892d3343c3eb8fa7e8aa3` |
| 39 | `instance` | [strictOrderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/strictorderedsemiring.md) | 263 | `declaration-track:e4ae6a72af260e0a400863199c6ed4f1977f7b4e97e7ce1493393f0af130ae35` |
| 40 | `instance` | [orderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/orderedcommsemiring.md) | 270 | `declaration-track:c1fca855aa7542f8ef32b675743a13d3217dfa87dec6e50a9026890d8b62b714` |
| 41 | `instance` | [strictOrderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/strictorderedcommsemiring.md) | 276 | `declaration-track:0d5cf11936c0e061dcf46b56e265ffae871f241b4936c78beb74e3ecc410542d` |
| 42 | `instance` | [monoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/monoidwithzero.md) | 285 | `declaration-track:4d402cc707971c0f7202ae3dbc09017c0412ca005775b79f96e5c996dfe754ae` |
| 43 | `instance` | [commMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/commmonoidwithzero.md) | 288 | `declaration-track:780dbdc3b000f245dd7851b092a65e17fddcec1cebe6c790b9662431ba60e95d` |
| 44 | `instance` | [semiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/semiring.md) | 292 | `declaration-track:0fcc2c85aeaf8ceb3ef3af1c41c21aae1bb2d902c86248f9a2cdc4e2dc9df7f0` |
| 45 | `instance` | [commSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/commsemiring.md) | 296 | `declaration-track:84cafe39fdc9057bb4947bc0a477aa0774e457d889158f996fba322c8cf7f52b` |
| 46 | `instance` | [nontrivial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/nontrivial.md) | 300 | `declaration-track:c830276b2a02c74b33e1baa8ae8b0a7cbb8e21f00ef6af41a73b2f159d49e953` |
| 47 | `instance` | [linearOrderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/linearorderedsemiring.md) | 304 | `declaration-track:293c0493384f1c91df0ad1427c69d9452757cc768209c3544ac4403d48b8252e` |
| 48 | `instance` | [linearOrderedCommMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/linearorderedcommmonoidwithzero.md) | 311 | `declaration-track:d0d7c024c376a47a95bdee062af4744d374d310f8777a7944747e478ed119fb6` |
| 49 | `def` | [coeRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coeringhom.md) | 318 | `declaration-track:4b88615cdaaa44dda39027d2f404a801f8f76bea8c6b7e759051b358431f54d8` |
| 50 | `instance` | [canonicallyOrderedAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/canonicallyorderedaddmonoid.md) | 326 | `declaration-track:6d37f2ace419c13d5df0ba0d8f81ff2328e640216749ae98a6a64730c0ff14dd` |
| 51 | `instance` | [canonicallyOrderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/canonicallyorderedcommsemiring.md) | 334 | `declaration-track:944ab71191008474581a56bc0ff11267d09ad9d2a3c475cf61c1223cb108f5ae` |
| 52 | `instance` | [canonicallyLinearOrderedAddMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/canonicallylinearorderedaddmonoid.md) | 342 | `declaration-track:d1bc25e766adcf5eadd3652a5f2694f70020341290ba4853e110d732748ecb3f` |
| 53 | `def` | [toNonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/tononneg.md) | 352 | `declaration-track:fc0e42c8e70902d483165270ba4281c6688b807a73ecdf2d128bd673316bae12` |
| 54 | `theorem` | [coe_toNonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/coe-tononneg.md) | 357 | `result-track:0dbf139c50d37dfa84a4956d8a7c540c15716263fe876c6ed4c9adebb7cbb8ba` |
| 55 | `theorem` | [toNonneg_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/tononneg-of-nonneg.md) | 362 | `result-track:85f37f47a5113905514745504400504f59ec4801570138175de01b9b1858ed26` |
| 56 | `theorem` | [toNonneg_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/tononneg-coe.md) | 366 | `result-track:93f75b4e42539df209b44097d150703043baf21509b263a7527062f4cad6fb9d` |
| 57 | `theorem` | [toNonneg_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/tononneg-le.md) | 371 | `result-track:3562032f89f73daac53110c093bf12e33ac004a7367315fa276d404ed5cfbe85` |
| 58 | `theorem` | [toNonneg_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/tononneg-lt.md) | 377 | `result-track:569ba710ca37fc2cad03bd68404e3b204d9802f4197de83b9957a78d9b19c639` |
| 59 | `instance` | [sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/sub.md) | 382 | `declaration-track:348b23c10afcaf4de65c975c737284f88c3d0140eba8800403e00223563b4760` |
| 60 | `theorem` | [mk_sub_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/mk-sub-mk.md) | 387 | `result-track:2db9d0ab6d96ee8ef197fd15d2d24f9f324366df9612cf88344b381f31224f81` |
| 61 | `instance` | [orderedSub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegRingSourceEdition2.lean/declarations/orderedsub.md) | 394 | `declaration-track:b8dcb71d81066c0b14bf564ead4039f30772beb0fc136381a44eaf2cd579f561` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3655db13d87c2ab794b2e76200a94d9ba94de9f42cca251fc3edb4117c1a4ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant5e62c5c4593811c16cb809823ec6d09de287910057a9986dc359c1174ece50d9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant5e62c5c4593811c16cb809823ec6d09de287910057a9986dc359c1174ece50d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
