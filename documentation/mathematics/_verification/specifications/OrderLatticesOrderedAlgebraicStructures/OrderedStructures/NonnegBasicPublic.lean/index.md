# Verification target: Nonneg Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4b3e3c3d3db18b5c0619b9b95f5615f58affe24",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant51d0a4e671697397afd8aaa80949ef92c3889aa43d085c9c3b42b586766dbb00.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4b3e3c3d3db18b5c0619b9b95f5615f58affe24`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variant51d0a4e671697397afd8aaa80949ef92c3889aa43d085c9c3b42b586766dbb00.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Basic/Variant51d0a4e671697397afd8aaa80949ef92c3889aa43d085c9c3b42b586766dbb00.lean.json)

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
| 1 | `abbrev` | [Nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/nonneg.md) | 49 | `declaration-track:ab98a770f264c34fbb028b1a4badf2082489749ae683dc42670c79a9bee39eea` |
| 2 | `instance` | [inhabited](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/inhabited.md) | 53 | `declaration-track:58e432488a329b393d02f7cbd325cbf938d0fe0ab95f043c81fc99e2ae75f238` |
| 3 | `instance` | [zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/zero.md) | 56 | `declaration-track:5ea8df4baeaeb758e3ac530d0e2f154a485ed1eec3de3ba172c24ae6ddfe0807` |
| 4 | `theorem` | [coe_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coe-zero.md) | 60 | `result-track:531e2922ff27f8150ff4b0a893206b382bcbbadacc4fdb4a3098c2b47d8de3db` |
| 5 | `theorem` | [mk_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/mk-eq-zero.md) | 64 | `result-track:c462aa0448ec79f53b8fbbadeca87f0d08c6f1603af251c0e1b742383dfadc10` |
| 6 | `instance` | [add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/add.md) | 68 | `declaration-track:b75f5241054d58f406ee59c5fba0f5f600c35f0b6f793eae3776be8ed2787b6b` |
| 7 | `theorem` | [mk_add_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/mk-add-mk.md) | 72 | `result-track:d06c745e3e1270afca7d175de02e39c2aedb109c4cab7af0f75ccf3baa6d785c` |
| 8 | `theorem` | [coe_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coe-add.md) | 78 | `result-track:6df58ee4293340882a2a8c9fe50653174498a1d7310d52fab64415ace9afcb7e` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:b8376dba3dbf91170e88ff6f13d213524f90001ee947b5d8640b6ee95f7c6643` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/instance-source-edition-2.md) | 86 | `declaration-track:728feb4027d3da441f87e55a94ad4fc21d3c655357a1d958072594fc6d29e7f9` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/instance.md) | 90 | `declaration-track:3551d0fc615d345b5ac03f0a2470442c00ae108155f9ca2d96176652927cf610` |
| 12 | `instance` | [nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/nsmul.md) | 93 | `declaration-track:9251eda96a1c31f0bcd878e937288502050bf47ee5357a9e63c6c3b763a12568` |
| 13 | `theorem` | [nsmul_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/nsmul-mk.md) | 97 | `result-track:1f9df9d91e56579b8e3993c23b7c80622464ffcfd8e5bcdc6822527bf05eaaec` |
| 14 | `theorem` | [coe_nsmul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coe-nsmul.md) | 102 | `result-track:d59ad9c8246a853f46685218f5fbe0dac761bf3220084e96863ba9e39858b173` |
| 15 | `instance` | [one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/one.md) | 110 | `declaration-track:3cccd0dea3f16d2de207c655a11d13e95be0ea79c55904520ca8238638104481` |
| 16 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coe-one.md) | 114 | `result-track:f6eaefe248b85078b90dbd84526325dded5321eb08ad8fd5a84215ab26e95146` |
| 17 | `theorem` | [mk_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/mk-eq-one.md) | 118 | `result-track:fa28d62881a9bbd9814061075801fe4942a0079ff80d95b897d078e03c2597e6` |
| 18 | `instance` | [mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/mul.md) | 128 | `declaration-track:77db8aae8d3e061fa88495ff66f310aecee96f8ac985ae91e78976d70568c757` |
| 19 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coe-mul.md) | 132 | `result-track:1dda6e47e050f3273ca4ccf7aa374ad83c0e9b668cfcd4522a1f18fca92b41e1` |
| 20 | `theorem` | [mk_mul_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/mk-mul-mk.md) | 137 | `result-track:e149745f6f0ab33fee9904a748767911486c80d934ebca67bea50c27cb3de08c` |
| 21 | `instance` | [addMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/addmonoid.md) | 147 | `declaration-track:928275ec1275ece9e547c428cb00d785c8ec3c1d200069888d41f8d28b8ddfe3` |
| 22 | `def` | [coeAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coeaddmonoidhom.md) | 152 | `declaration-track:886c4cc7c6a012fd92b7ebfb21e6871410e405f5b77df7b467f1343f2f76bcdf` |
| 23 | `theorem` | [nsmul_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/nsmul-coe.md) | 158 | `result-track:bba13498833c63f86cbec7fe71014452df755357ce2bfff827180c7286b20cdf` |
| 24 | `instance` | [addCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/addcommmonoid.md) | 168 | `declaration-track:1aca8b981dbd16594c3a0a1dcfe8ff58b00a47af776c0acb14430cbd13e4ac9e` |
| 25 | `instance` | [addCancelCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/addcancelcommmonoid.md) | 177 | `declaration-track:bad733410fb2cc1538bdebeb6c967618be4acfb89691a99b794e860057fac5b3` |
| 26 | `instance` | [natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/natcast.md) | 187 | `declaration-track:376511c8c3579885560237e196d6270edfd7ce1dfb831d1d557737ebbb56ab21` |
| 27 | `theorem` | [coe_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coe-natcast.md) | 191 | `result-track:b988640cc9b661884bf0f52cad9420200a9d2819a0a9208dd292d457bd96d59d` |
| 28 | `theorem` | [mk_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/mk-natcast.md) | 195 | `result-track:e9f859ce1f59866c3fe36b78b4498902102438b080421b593c5d8d106b409adf` |
| 29 | `instance` | [addMonoidWithOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/addmonoidwithone.md) | 198 | `declaration-track:29300a32ba23186bc98bff17378fff4b6972380e248c620a376c49ceb3a632d1` |
| 30 | `instance` | [pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/pow.md) | 210 | `declaration-track:a7ec59860fed515b030a13517ec85c09cd77d7baebca4b40b9214a4f64c11591` |
| 31 | `theorem` | [coe_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coe-pow.md) | 214 | `result-track:5a3d53ff235a63e7f55278afa4181a7f8f73be55087b0b5d952f9abcd24b6667` |
| 32 | `theorem` | [mk_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/mk-pow.md) | 219 | `result-track:04448963c3e309991675bb6d224c75536aa5a2dab0bfceed292f74288e781b8d` |
| 33 | `instance` | [semiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/semiring.md) | 230 | `declaration-track:3aa691bcef9e8cfd83e9b377b2c065065ac0596411493dc8b922a255c7f406d5` |
| 34 | `instance` | [monoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/monoidwithzero.md) | 235 | `declaration-track:e7765ef981bc0252cb079e0a38ce62c441fcd18a9aaef6bf9243b376ea13d521` |
| 35 | `def` | [coeRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coeringhom.md) | 238 | `declaration-track:8b0c319781a62876a0a84a0b188fc12d4a49eda351961666472685a2aeda4e9c` |
| 36 | `instance` | [commSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/commsemiring.md) | 252 | `declaration-track:b4e3074ae8c0db36ae08f0d4310b5471229032662505db584253ee90103c9e1a` |
| 37 | `instance` | [commMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/commmonoidwithzero.md) | 257 | `declaration-track:d44f82589410132d986605594cf0d248995bbbeba58e2321afec8945339290dc` |
| 38 | `def` | [toNonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/tononneg.md) | 265 | `declaration-track:982c72d2e92aad61e32ccf2843ff78c97579bd7afff80e94f50b2dce6a0f43bd` |
| 39 | `theorem` | [coe_toNonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/coe-tononneg.md) | 269 | `result-track:86ba16a859a7513ac54bae27f5a09b954ed90baab3e002d8662fb58c14e3e9b5` |
| 40 | `theorem` | [toNonneg_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/tononneg-of-nonneg.md) | 273 | `result-track:7db07cf95d210f28928803fd0f4a520033de2687131ae7997a6dde10ec82468d` |
| 41 | `theorem` | [toNonneg_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/tononneg-coe.md) | 276 | `result-track:0c5ec962b75dbb8f59162b5d41d5abf27cdf0139adbb0c3ff7073ec402e64f13` |
| 42 | `theorem` | [toNonneg_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/tononneg-le.md) | 280 | `result-track:3e045d90bde31a10c25e765ccb8cfa4cf7ecb25d1347ba3676f119d7a6f86b42` |
| 43 | `instance` | [sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/sub.md) | 284 | `declaration-track:a6ddfc74236ab31b494c39af661104969738a3eb1bddf35cdb179f8f054dde02` |
| 44 | `theorem` | [mk_sub_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/mk-sub-mk.md) | 288 | `result-track:12be4b966b3993385729184e9e38a998308943f0087c63d411efa00992b584b2` |
| 45 | `theorem` | [toNonneg_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/NonnegBasicPublic.lean/declarations/tononneg-lt.md) | 298 | `result-track:b8de81a1fa6e0ada6ce29d90ba1637dec7043d7b00e1752577dd447d06418d00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf69a5d9c25fe21a56c73a542c99b94aeaa76af3329fd749621d7940bbee28ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variant51d0a4e671697397afd8aaa80949ef92c3889aa43d085c9c3b42b586766dbb00.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Basic/Variant51d0a4e671697397afd8aaa80949ef92c3889aa43d085c9c3b42b586766dbb00.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
