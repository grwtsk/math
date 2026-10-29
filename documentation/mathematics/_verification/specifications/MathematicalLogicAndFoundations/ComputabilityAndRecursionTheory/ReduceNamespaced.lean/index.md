# Verification target: Reduce Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ec4caeea6e983bb2194c3f3f2337524fe6fbf5f",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ec4caeea6e983bb2194c3f3f2337524fe6fbf5f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Halting` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ManyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyonereducible.md) | 45 | `declaration-track:22dbab3e9aee87afa5a58661e053be029586e8cd83d98b92d18c739c6589bf56` |
| 2 | `theorem` | [ManyOneReducible.mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyonereducible-mk.md) | 51 | `result-track:050420d76287fd5e93739afaf38db9dfc6fdd733518e2a681de7f951076a82e3` |
| 3 | `theorem` | [manyOneReducible_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyonereducible-refl.md) | 56 | `result-track:7b21230380a10d6e8bd3c36a4dabd75c6fbd4ea40de044237e3b8a6b5dee1ea2` |
| 4 | `theorem` | [ManyOneReducible.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyonereducible-trans.md) | 60 | `result-track:dea97926544fae37e022baf1f0f2ded343b1bc1a8387269c746d493cc8c46808` |
| 5 | `theorem` | [reflexive_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/reflexive-manyonereducible.md) | 66 | `result-track:e07d4454ad10064dfe34377e0b9f4a1715c3e48efb3dd2d4f5331b69c63104c1` |
| 6 | `theorem` | [transitive_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/transitive-manyonereducible.md) | 69 | `result-track:b8598b09222dd65b5f89db0b3f57f71802dc6a97e446d57502f7fc3dfc32dab7` |
| 7 | `def` | [OneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneonereducible.md) | 76 | `declaration-track:70aaeffbeea1e05627513a7cdb764f8f94b795c70e867f4e26c1e0bb39722447` |
| 8 | `theorem` | [OneOneReducible.mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneonereducible-mk.md) | 82 | `result-track:bcd800bf92fa53a33dac8efed0907974ba3f16aa4bba54e2c34c6602239fb241` |
| 9 | `theorem` | [oneOneReducible_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneonereducible-refl.md) | 87 | `result-track:21d01b652e2e06aff358fdaa0dbfc4ef91d78dcf975f70d719bf7f3488459244` |
| 10 | `theorem` | [OneOneReducible.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneonereducible-trans.md) | 91 | `result-track:80dc2e8d0002ae0e94e4b545d7883a5bd06271dc6fb5ec8bad6589435af87945` |
| 11 | `theorem` | [OneOneReducible.to_many_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneonereducible-to-many-one.md) | 97 | `result-track:1842789b301efbd03183ecbb3a5891d8ebe776b6f6448bbb8a71f096aeea4754` |
| 12 | `theorem` | [OneOneReducible.of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneonereducible-of-equiv.md) | 101 | `result-track:28fdf5e7fcbc3660fab7804e4c6426b9520afa75f370c894522f5edbc27ee960` |
| 13 | `theorem` | [OneOneReducible.of_equiv_symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneonereducible-of-equiv-symm.md) | 105 | `result-track:8dc6d9ea7901a2b2d146f58958d7e4006917057c23dbd23489040a0ab34fbecb` |
| 14 | `theorem` | [reflexive_oneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/reflexive-oneonereducible.md) | 109 | `result-track:a7f23d21fdf6944d216b825ff1ae89cd6a72599e97b10ca4a841a8903f771556` |
| 15 | `theorem` | [transitive_oneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/transitive-oneonereducible.md) | 112 | `result-track:2faccee3944eaa0ad34daa007c1384ed07b08dca057f1f555d5cd2961324bbd5` |
| 16 | `theorem` | [computable_of_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/computable-of-manyonereducible.md) | 121 | `result-track:6ffa92113d1f2ca7a6b9ced5983b8158f2a69346f60a53f9ddce9c9b067efc37` |
| 17 | `theorem` | [computable_of_oneOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/computable-of-oneonereducible.md) | 128 | `result-track:c4142866d592d94436cadcc0a231aa43dde46d8a9a2b9324224727191368d940` |
| 18 | `def` | [ManyOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv.md) | 135 | `declaration-track:6ef39638d6a226ded4bfbfefacab1232b6d5c3e17b6201a92b552dd316d5164c` |
| 19 | `def` | [OneOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv.md) | 139 | `declaration-track:c162ce49614e461deb32f7af46e5ddd0fb357515d7ba9662243acadc6a1a6e9e` |
| 20 | `theorem` | [manyOneEquiv_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-refl.md) | 143 | `result-track:cbfce7051b4fc73013dfab98bd4c777878a648a6b1e67aab1355c2fcdca34008` |
| 21 | `theorem` | [ManyOneEquiv.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-symm.md) | 147 | `result-track:5e44b248b516793b244ceccd0077c6aaf2b9fdb291032fe8b2dd777db5169823` |
| 22 | `theorem` | [ManyOneEquiv.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-trans.md) | 152 | `result-track:95f340d4d07a419a67c83b7859ac7dd2356e98537eea239b9a5ce391f0115312` |
| 23 | `theorem` | [equivalence_of_manyOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/equivalence-of-manyoneequiv.md) | 156 | `result-track:dab169368b493d3f7cbb2473f3f2e6c4652ae385ed00e36ae25196fbf9ec9867` |
| 24 | `theorem` | [oneOneEquiv_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv-refl.md) | 160 | `result-track:bb0bc9bc9634a7c4d2dc7562286ba85050269db9c123f9a71671f1fe385d3751` |
| 25 | `theorem` | [OneOneEquiv.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv-symm.md) | 164 | `result-track:b55cceaba51f115cab9f4d921fad191563e121e62447c25e0dce69a4fd3d58cd` |
| 26 | `theorem` | [OneOneEquiv.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv-trans.md) | 169 | `result-track:9f463771149a5c1cc36d6f4503066f7b915b1911e4d3b149846e938d151fd0c7` |
| 27 | `theorem` | [equivalence_of_oneOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/equivalence-of-oneoneequiv.md) | 173 | `result-track:e859a4c9313eb883cd45d179a99714eec79f09483a9dca74cfc863ac9431a672` |
| 28 | `theorem` | [OneOneEquiv.to_many_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv-to-many-one.md) | 176 | `result-track:ff62cd2526d8f4bfb676b819a9682f58afc08b76221cd82a7455ab06ef2efd52` |
| 29 | `def` | [Equiv.Computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/equiv-computable.md) | 181 | `declaration-track:559d0a70f29b4855d60d9a646878ebf0c6370e8ecc6a1a7bb87ad9541f9d9984` |
| 30 | `theorem` | [Equiv.Computable.symm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/equiv-computable-symm.md) | 184 | `result-track:a79840ca375168f218fa54ca5969be95013283a9e494eba3390d757e7aff9a0b` |
| 31 | `theorem` | [Equiv.Computable.trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/equiv-computable-trans.md) | 188 | `result-track:98165ad22ff8152f755d43421db63c6daf303b0419cf6a134ef4afaa0fbae019` |
| 32 | `theorem` | [Computable.eqv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/computable-eqv.md) | 192 | `result-track:269047474e6cb129f7e6b5531c0cdfaaa71a9eff5dbddefcaa122f48cc6bc1cb` |
| 33 | `theorem` | [Computable.equiv₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/computable-equiv.md) | 195 | `result-track:4386612d04a75cab2c693854d907921043e0e8ffecd22ec64df8107bd7a81690` |
| 34 | `theorem` | [OneOneEquiv.of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv-of-equiv.md) | 199 | `result-track:bb46ac064c1ad2a6c31941f1b56c562f2fc1c2a63ed6c001499acaf81c7ee24c` |
| 35 | `theorem` | [ManyOneEquiv.of_equiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-of-equiv.md) | 203 | `result-track:f4a512bfd44ad963ad6696fe73dd1bb4f756ee3c9c08e9f4f82c5aff45af6b8c` |
| 36 | `theorem` | [ManyOneEquiv.le_congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-le-congr-left.md) | 207 | `result-track:931362e37d88a4c76aec48f415e41163ea2c1d7d6673786caa0d2396062abc0b` |
| 37 | `theorem` | [ManyOneEquiv.le_congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-le-congr-right.md) | 211 | `result-track:ad86a960900b7189b2b2e03b64fa89989d26b07b7bec05ca12edb3c580fce84d` |
| 38 | `theorem` | [OneOneEquiv.le_congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv-le-congr-left.md) | 215 | `result-track:a7cbaee557ff42224ca6dd5a1258d353669c6f0e1660553c90eafb0b63a3e923` |
| 39 | `theorem` | [OneOneEquiv.le_congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv-le-congr-right.md) | 219 | `result-track:7ec13657949f59e566c50493c4e7c2cc2647f3d1d1ae66cb0925db96142fc6ed` |
| 40 | `theorem` | [ManyOneEquiv.congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-congr-left.md) | 223 | `result-track:88373bd59ad6768f60bd3fd657796a116ad69a5bdd498b0fa1cabe19876bab2d` |
| 41 | `theorem` | [ManyOneEquiv.congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-congr-right.md) | 228 | `result-track:68f75b5c9c9ae6f4a4a57032a1ae6a6ff63b1ffd4d07329e9c63affa225c6d3a` |
| 42 | `theorem` | [OneOneEquiv.congr_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv-congr-left.md) | 233 | `result-track:e77ff7c34a811c432c743db0c604e97a99ca572c71facf5f87b64949846e573e` |
| 43 | `theorem` | [OneOneEquiv.congr_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneoneequiv-congr-right.md) | 238 | `result-track:d4d9d8280b4107c4a4bc74bc49b88bbc26e9e116b249270853001e4b9f83ef30` |
| 44 | `theorem` | [ULower.down_computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/ulower-down-computable.md) | 244 | `result-track:b66f3a4cc95dcff44c302fee7fd8ddcd580465d237110a5626b4258e60ee556d` |
| 45 | `theorem` | [manyOneEquiv_up](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-up.md) | 247 | `result-track:45f99c7e9788caf9260e7cd53e865a4b730bd3952d27d6331d9103e0e15b758d` |
| 46 | `theorem` | [OneOneReducible.disjoin_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneonereducible-disjoin-left.md) | 254 | `result-track:2dff19bcd2ea23f9359a0ac68c99e127beddeeef246f8b3262af036aab792aac` |
| 47 | `theorem` | [OneOneReducible.disjoin_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/oneonereducible-disjoin-right.md) | 258 | `result-track:b21973c77af8f6abf3701bec9988162ccd95d92dc90334907eaaaddab97e6e68` |
| 48 | `theorem` | [disjoin_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/disjoin-manyonereducible.md) | 262 | `result-track:eae79b1a909570ad7b546074623daed2daccf05c0fb643decb494bc7393fd2ea` |
| 49 | `theorem` | [disjoin_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/disjoin-le.md) | 269 | `result-track:f6ec82eb37040ecff76a483e574694ddba30a9321ce9a545033b3e12c2c5b02d` |
| 50 | `def` | [toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/tonat.md) | 280 | `declaration-track:bf26a84fcbf2d1baf976e057d425bc4926c8e3086012bcffa324a3932e1cf0a2` |
| 51 | `theorem` | [toNat_manyOneReducible](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/tonat-manyonereducible.md) | 284 | `result-track:6434802bd3875090166f000769dcbb4fce07d9889c80714b71a7efa9d37a0258` |
| 52 | `theorem` | [manyOneReducible_toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyonereducible-tonat.md) | 289 | `result-track:bcc4328d886eef0256195c86238817f5f9841b08bbe693c0253478a68496d2a1` |
| 53 | `theorem` | [manyOneReducible_toNat_toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyonereducible-tonat-tonat.md) | 293 | `result-track:7983e05f581708eb8849329ca257154fe3aabe9ad661aadc63babd71144d148a` |
| 54 | `theorem` | [toNat_manyOneEquiv](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/tonat-manyoneequiv.md) | 298 | `result-track:c62dace3cd1214e262c065f7ec57cbc8aef644bd5b13f3245e07cecc120c3b55` |
| 55 | `theorem` | [manyOneEquiv_toNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyoneequiv-tonat.md) | 301 | `result-track:76be7e238c9efa458123f8bd0785518b37109b23fd1d4c4c2b9dc41fe6d3999f` |
| 56 | `def` | [ManyOneDegree](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/manyonedegree.md) | 305 | `declaration-track:845e068f4d388131b0813eb321a77a4b41d9ca417cae25ecdc4d42adb9c543aa` |
| 57 | `def` | [of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/of.md) | 311 | `declaration-track:666778bbea71fe4e8ae491780a6a786ad81bc0ba49cdb37edd97dde4eeb8a7ed` |
| 58 | `theorem` | [ind_on](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/ind-on.md) | 315 | `result-track:e5517c61531221d7fe31fc6e2468367977b9ba9eabbd02cb40b9ad723ff85327` |
| 59 | `abbrev` | [liftOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/lifton-source-edition-2.md) | 320 | `declaration-track:63b6578d2fc07470fa5f97fbe3e920bf0d5a846b0d6cf9c00678e4c85c21c13c` |
| 60 | `theorem` | [liftOn_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/lifton-eq-source-edition-2.md) | 325 | `result-track:54afa94340c078d76bf42742d7e5a9a96010ce5ce137de9ab53d17a805cfa629` |
| 61 | `def` | [liftOn₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/lifton.md) | 331 | `declaration-track:3f42da669d78b3713837d417aa006af90d0b0ca6053659475ba48527ab956c10` |
| 62 | `theorem` | [liftOn₂_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/lifton-eq.md) | 342 | `result-track:3845f206e5a47fa696bb9d3194a2590db4f5a85f5bd38518d9f952c19d21d30f` |
| 63 | `theorem` | [of_eq_of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/of-eq-of.md) | 348 | `result-track:73a9b363f0fa726c0dc6d46e38c3a34a68b39695ae70e10757522c580afa0089` |
| 64 | `instance` | [instInhabited](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/instinhabited.md) | 352 | `declaration-track:a8458f6fe91640081fb0e194708d54a4f9ba4182ea07a0ed4bce2d590fc65385` |
| 65 | `instance` | [instLE](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/instle.md) | 358 | `declaration-track:b2311fe6b3063e7b0a36c818154021b3a613aab572021384968169a2abea93bf` |
| 66 | `theorem` | [of_le_of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/of-le-of.md) | 364 | `result-track:9978c6d7e3fde0c668d438e4170270497bd5ee281144bd914f01975edb938dc8` |
| 67 | `theorem` | [le_refl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/le-refl.md) | 367 | `result-track:886c57ab7f5568e6bde3429da4ba675c802140fa791e5155a7aff1af6ef52a37` |
| 68 | `theorem` | [le_antisymm](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/le-antisymm.md) | 370 | `result-track:bf9ea751a27a14ca30d7d17ec1fa6ca6902a6b5b0dfd8c626dab20588ba0895e` |
| 69 | `theorem` | [le_trans](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/le-trans.md) | 376 | `result-track:313f4534a1a324983d8698a2ae04e9c8c8d982199f70eb35e5faeee4bea9a39a` |
| 70 | `instance` | [instPartialOrder](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/instpartialorder.md) | 382 | `declaration-track:500e1bf8f295ba701092649aa736730309692870a528602d4ef5e6589f56f3d4` |
| 71 | `instance` | [instAdd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/instadd.md) | 389 | `declaration-track:9e99956b46eb3e1eaec2862231973f8e42a39fcea5c973f492d1e0bb9b1dc2be` |
| 72 | `theorem` | [add_of](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/add-of.md) | 402 | `result-track:4479d3bdd9870bd464584c26ff9d6fc6b0df2a74ba1714ea05f034ae9e5d7480` |
| 73 | `theorem` | [add_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/add-le.md) | 412 | `result-track:538deb3582c313ab0ec19e59b1ba1b3008a3e6eec671773f2d85132d5f193073` |
| 74 | `theorem` | [le_add_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/le-add-left.md) | 419 | `result-track:73856e96f5edc5bc99f63da21d4ddd9ba840cb4bdc5ccc7329001a6ca2effcde` |
| 75 | `theorem` | [le_add_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/le-add-right.md) | 423 | `result-track:73843ad9b2bf03b9a993e66b91297ef32d6234c5646afbe47538db917c3fb072` |
| 76 | `instance` | [instSemilatticeSup](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ReduceNamespaced.lean/declarations/instsemilatticesup.md) | 426 | `declaration-track:65aa55a1295bfe69ad5fcfd4d44fb58ee49b04fcb2781932880f5c10c272729d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90528f2751e914c36cb6d1bb20e656e942a9cebd81bcd6787ca82e340aead774 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/Reduce/Variantb02f9fd1fcbdd82c83c5cc2aa1302588ccc971709648db0015b96ad1f4473b20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
