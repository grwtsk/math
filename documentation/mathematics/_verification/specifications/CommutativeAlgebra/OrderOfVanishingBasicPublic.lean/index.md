# Verification target: Order Of Vanishing Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b79d08d5d6c88dbf95d1a4a3bc7f29673052eda`.

Source path: `GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ord](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord.md) | 36 | `declaration-track:a60e34622d09e7a5736d3490b82a8011ea6a2756a341f952e74e216200b1c038` |
| 2 | `lemma` | [ord_one](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-one.md) | 39 | `result-track:0d554dd7633512733be2c56cd6a4b6754a18f33dce25eff2209e2b5c520b08cc` |
| 3 | `def` | [Ideal.mulQuot](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ideal-mulquot.md) | 50 | `declaration-track:66c765de870d14fb97e629b4c3e2d9e3e44cde2b1b0a5d0cf2c7d4accb92aeb9` |
| 4 | `lemma` | [Ideal.mulQuot_injective](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ideal-mulquot-injective.md) | 58 | `result-track:995e558c02445fd0a850c007b15b19ad261152bbd2da804c64edd8029ee8cff1` |
| 5 | `def` | [Ideal.quotOfMul](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ideal-quotofmul.md) | 73 | `declaration-track:044ffbd6ddd25778865854b176b2013ba21d87282211bbd0e39837ca002d9d74` |
| 6 | `lemma` | [Ideal.quotOfMul_surjective](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ideal-quotofmul-surjective.md) | 80 | `result-track:2c3fb6e67d28fc50bd1dd7399bf1aaab00ab0f80b35c4ddc6bcbe5397576ded9` |
| 7 | `lemma` | [Ideal.exact_mulQuot_quotOfMul](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ideal-exact-mulquot-quotofmul.md) | 91 | `result-track:8a70a30db182ccf409e106ff7d3b9f9973e45b5870e805523cac208ea89377dc` |
| 8 | `theorem` | [ord_mul](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-mul-source-edition-2.md) | 107 | `result-track:467b0908c115807cb9058ffcaf39b96601ebead09e22fa90a911711adbfd74ff` |
| 9 | `lemma` | [ord_mul'](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-mul.md) | 125 | `result-track:005d19bffdb05e2f3c9a7bd8ff789c19a5e9bbb1ff4eea820d8e219899ab9888` |
| 10 | `lemma` | [ord_zero](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-zero.md) | 133 | `result-track:e3a2caca76b1e944c57887710d5c589f11ae68655ab9ad8da7c333c584c82407` |
| 11 | `theorem` | [ord_pow](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-pow.md) | 144 | `result-track:c348afc7c1fb16b2b4d36e0dc7794972491bcb9db8fd9c1aa95e3cb18ba7eaa1` |
| 12 | `lemma` | [ord_mul_of_isUnit_left](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-mul-of-isunit-left.md) | 152 | `result-track:d603b92ea6d4c7c9d1881888ac830194b753e30a7f238c6d6052c7cc9f66eeb1` |
| 13 | `lemma` | [ord_mul_of_isUnit_right](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-mul-of-isunit-right.md) | 156 | `result-track:13db375ccabf5a05097125ab5382457b257b1e04124f27fe0caa776c5ca64a2d` |
| 14 | `lemma` | [ord_eq_of_associated](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-eq-of-associated.md) | 159 | `result-track:247171e4a7f90cfc4eb922d2ec6276273109f3806e2e7d1cb9cde071337e2cf0` |
| 15 | `lemma` | [ord_neg](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-neg.md) | 164 | `result-track:98d9f07a4e659f98954c68455c7cd148f97baa4401711a2e599aa28efbdf466b` |
| 16 | `lemma` | [ord_smul_of_isUnit](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-smul-of-isunit.md) | 172 | `result-track:645af308dbb8f4dad5b844e144506345792892c41a2c732c274848497e8b4f19` |
| 17 | `lemma` | [ord_le_ord_mul](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-le-ord-mul.md) | 181 | `result-track:d2265611a00e7e97eedbaad2a5979ad07b26a1e6538754b43256c7f2a9f75f21` |
| 18 | `lemma` | [ord_le_ord_of_dvd](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-le-ord-of-dvd.md) | 189 | `result-track:c3f91bc247ecb0d9a32ba34327358dd3bcea92da1b4c8f2a6d8c4655a8b2c55b` |
| 19 | `lemma` | [ord_le_smul](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-le-smul.md) | 199 | `result-track:27fb4ec136d13dedd73942a5a45e4c8ce9a3e6f833a1ccedc97a6684c7b2b9e3` |
| 20 | `lemma` | [ord_of_isUnit](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-of-isunit.md) | 206 | `result-track:ca87305f46e60de6ca189b13dc1e109ba7bba520f6cd0358fb8e956d6f7fe5a8` |
| 21 | `theorem` | [ord_of_irreducible](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-of-irreducible.md) | 216 | `result-track:bafa2bc5af940edadbd0a546c85f14236783e14d63b1d50fa09e8e33d5904c81` |
| 22 | `def` | [ordMonoidWithZeroHom](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ordmonoidwithzerohom.md) | 239 | `declaration-track:fbe51c85c3dbe4ab1dbb1a1309d2503f6bda49fd298590417102630e0e176df4` |
| 23 | `lemma` | [ordMonoidWithZeroHom_eq_zero_iff](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ordmonoidwithzerohom-eq-zero-iff.md) | 258 | `result-track:66b765216baaba7f91f443aafd2a4ca10a4550d4bad5a1512ce241ed4172af2e` |
| 24 | `theorem` | [ordMonoidWithZeroHom_eq_ord](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ordmonoidwithzerohom-eq-ord.md) | 271 | `result-track:b5abb6669b20a8cfad15e53dbf05e5dc6570953e00d681693fa29853aac6228d` |
| 25 | `lemma` | [ordMonoidWithZeroHom_eq_coe](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ordmonoidwithzerohom-eq-coe.md) | 275 | `result-track:7f93af16b44e4c392176c9e3a2d65ad4036cb5126b81351691358c936799fc5d` |
| 26 | `theorem` | [ordMonoidWithZeroHom_eq_zero](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ordmonoidwithzerohom-eq-zero.md) | 285 | `result-track:9156b875b6c14713f420cebb27e706fec3782d1d543756de729ddac734bed1c8` |
| 27 | `theorem` | [_root_.isFiniteLength_quotient_span_singleton](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/root-isfinitelength-quotient-span-singleton.md) | 292 | `result-track:48ee247e891cbbb28eb2b6f0049f345afc91e0fc4c5d1c676741dd1ec7505fa7` |
| 28 | `lemma` | [ord_ne_top](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-ne-top.md) | 307 | `result-track:1301d2132eecd7288c382172c787485a96c88de55e6f00307e9701b68f38ef45` |
| 29 | `lemma` | [ord_lt_top](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ord-lt-top.md) | 311 | `result-track:2e8243c980c2b0e641981339b987208090d662fcf90a58c34c07157e17d80084` |
| 30 | `lemma` | [ordMonoidWithZeroHom_isUnit](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ordmonoidwithzerohom-isunit.md) | 315 | `result-track:02fa02b5bcea71ee1b6bd68dd63483a07cfce6dcc78713560ea0be1840e03041` |
| 31 | `def` | [ordFrac](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ordfrac.md) | 324 | `declaration-track:2b0642ab455e42de82ac288446de84d690d309886150b75c352f014c16c34bb3` |
| 32 | `lemma` | [ordFrac_eq_ord](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ordfrac-eq-ord.md) | 328 | `result-track:c6fa1abd44d60bb4d9bb7d79c30d26cff32bcf86f1b71f13dc844844a0406f4d` |
| 33 | `lemma` | [ordFrac_eq_div](../../../../CommutativeAlgebra/OrderOfVanishingBasicPublic.lean/declarations/ordfrac-eq-div.md) | 334 | `result-track:f2f1cb4187e68f42a2a70eebfea76f3ae3c3b9170c41e7d56c39dcf4aaa310d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3339d4ead358ffc344a952356e117832109a95d5ac25e8319ba95f8a7ecef688 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantf56ce3420038a9706673ae8c2acc37064a79e12c0f0e83a7d37110440b278bad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
