# Verification target: Set Instances Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdba94a5c9d7b75f75b32c5be9e764301fbe3ffc",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Instances/Variantda23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdba94a5c9d7b75f75b32c5be9e764301fbe3ffc`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Instances/Variantda23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Instances/Variantda23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean.json)

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
| 1 | `instance` | [instZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instzero.md) | 61 | `declaration-track:02ba9216e1e15c6f507185eb107efea7b2603387bb7ad04802e4102743311c84` |
| 2 | `instance` | [instOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instone.md) | 63 | `declaration-track:492f8ec1c6365658a29d9ff7bbb2078a8c16f34444a1e7b0b24f131f3c08c6ce` |
| 3 | `instance` | [instZeroLEOneClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instzeroleoneclass.md) | 65 | `declaration-track:763457e5efc7f97ffabfece8cd6487acb6393b816c97c7bf0510bb9c1970314e` |
| 4 | `theorem` | [coe_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-zero-source-edition-2.md) | 68 | `result-track:f1f8715257998e024a94eeed9e68c3af1633162884f2d208f5d57a2f0cba1656` |
| 5 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-one-source-edition-2.md) | 72 | `result-track:ed4f0ff17ad829684ec80bbf49bc3cd1ff353c3485230018d2c777a4e2943adf` |
| 6 | `theorem` | [mk_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/mk-zero.md) | 76 | `result-track:10b7475b817a10bb0429eacd8924574cb72b155694fde2f0a1a4132fcb35dcc0` |
| 7 | `theorem` | [mk_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/mk-one.md) | 80 | `result-track:84c1ed169494795cfe6d01bf535e6c7616cb7d4a592178d7ba8875a5fe715bd2` |
| 8 | `theorem` | [coe_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-eq-zero-source-edition-2.md) | 84 | `result-track:8560a8394ff8028b39bcd493c112d988a62e7412857160c7fd8556b4379f6f7c` |
| 9 | `theorem` | [coe_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-ne-zero-source-edition-2.md) | 88 | `result-track:530a0f383275193d00ad725679cf5a0759da25e347189b58cd44aee25ab8bafa` |
| 10 | `theorem` | [coe_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-eq-one-source-edition-2.md) | 92 | `result-track:acdc386ca3e7e22e3670f539f161f83afdde656468c5d2c3b4da300c1d590ffc` |
| 11 | `theorem` | [coe_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-ne-one-source-edition-2.md) | 96 | `result-track:8ec853c27b8987738be73617c6cc2205b34a508e780d794c9854172d4cf52ad8` |
| 12 | `theorem` | [coe_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-nonneg-source-edition-2.md) | 100 | `result-track:fcee94fc8cdcd641df01cd732b355b03702a7e137339bbc07f693b0ac42c2d2d` |
| 13 | `theorem` | [coe_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-le-one-source-edition-2.md) | 104 | `result-track:dc63efab2a4e78e7afe84d7718431d7a42dcf3c403963e3e4a591d80560a2348` |
| 14 | `theorem` | [nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/nonneg-source-edition-2.md) | 108 | `result-track:8e2ad60d4998b94ca0be392ae6032379215d49bb52d7040a3a879919489adc6d` |
| 15 | `theorem` | [le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/le-one-source-edition-2.md) | 112 | `result-track:3b5aa54e204dfb0a30e7182bb71a7e9d5214c22e4e5176d2cf16e16ee4126633` |
| 16 | `instance` | [instMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instmul.md) | 115 | `declaration-track:685b36290a45e44a3a9828eb9ba23c5e0765f23729579fd847dde095a7644577` |
| 17 | `instance` | [instPow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instpow-source-edition-2.md) | 118 | `declaration-track:fb42def8e7e37989740d06ee359cdb9e71a2374573dd1b5572a335bcb7948ccc` |
| 18 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-mul-source-edition-4.md) | 122 | `result-track:c7954d7ac18e64fe5a3d7d75f3fd5e958e0160d30400d4086b0f73d03fea2b71` |
| 19 | `theorem` | [coe_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-pow-source-edition-2.md) | 126 | `result-track:df8f534054192ccb5147df1191baebbd2892a40e5487a3df62a4b46633878a77` |
| 20 | `theorem` | [mul_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/mul-le-left.md) | 129 | `result-track:98ba693f1c3f19cba51a210780943784b4fcec300fa928c46fc9705fa285d228` |
| 21 | `theorem` | [mul_le_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/mul-le-right.md) | 132 | `result-track:ec1aaa4b850283f4e97453b6ed65e7d2d14ccbdc4d29a2c8957189e8816537ae` |
| 22 | `instance` | [instMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instmonoidwithzero.md) | 135 | `declaration-track:533177cff96374de4d02ff6a704279e5e90d1b1591a8edf5f8de799a53e11267` |
| 23 | `instance` | [instCommMonoidWithZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instcommmonoidwithzero.md) | 138 | `declaration-track:774f712cbca976c9c212a36813342f591ffbcc8f232b0d6a571bee6234c02e91` |
| 24 | `instance` | [instIsCancelMulZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instiscancelmulzero.md) | 142 | `declaration-track:0e025966f5933067bd0b5ca2085671a9b5165201a10ec6df196a686e6f16e391` |
| 25 | `def` | [coeMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coemonoidwithzerohom.md) | 150 | `declaration-track:d5fc4b13dfed24ca81215002d1f24970d55327658a4139871fcef7a99f6c9396` |
| 26 | `theorem` | [one_sub_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/one-sub-mem-source-edition-2.md) | 158 | `result-track:fc65fa44007b111d13cdaa4ef31805fd46a39412c073efbca8ac8688d9ed6f8d` |
| 27 | `theorem` | [mem_iff_one_sub_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/mem-iff-one-sub-mem.md) | 162 | `result-track:61629bef9beb491fe8ea77089aa54df80005f4e1b1894b0698dd30e20056024b` |
| 28 | `theorem` | [one_sub_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/one-sub-nonneg.md) | 165 | `result-track:a27d2dbb2808f1ff6bbc1fe252a898cb8b9f8285ce8ce2e9dc753facd3e36305` |
| 29 | `theorem` | [one_sub_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/one-sub-le-one.md) | 167 | `result-track:004803621da1829cec149eced7ae180b2610181a37a89d226cb1f4f6f1820507` |
| 30 | `instance` | [instZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instzero-source-edition-2.md) | 176 | `declaration-track:a095e88e0fcde46ce7f3d3ed05d680a45ce51e6c7fe52c4a5fd039e54bd0d1ee` |
| 31 | `theorem` | [coe_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-zero.md) | 179 | `result-track:32a283fb376d7452f915d8f07a6cb8348f92f41618230f57841316401449d3ae` |
| 32 | `theorem` | [mk_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/mk-zero-source-edition-2.md) | 183 | `result-track:39fa35351abe15c35df5287ade00df444a23ef51d85fbb91cdcd16416a5c8c5a` |
| 33 | `theorem` | [coe_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-eq-zero.md) | 187 | `result-track:190b588265447cc213975917f475a8a5e8465c58b23465a2864b246bdcf22901` |
| 34 | `theorem` | [coe_ne_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-ne-zero.md) | 191 | `result-track:5023fd17143e9ff1fa842068191e45cdea004871a57a53d6c9b3111c7b94a10d` |
| 35 | `theorem` | [coe_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-nonneg.md) | 195 | `result-track:dac796be449fbdfe216dd35c64358e42c9fce3acfd92b5b4584d6c67173ef67c` |
| 36 | `theorem` | [coe_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-lt-one.md) | 199 | `result-track:320d0457e13a4f177f7f8d2a8dbb725056f4d4c53fadd840a78f4d521de5f4bf` |
| 37 | `theorem` | [nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/nonneg.md) | 203 | `result-track:3d37c343f2db6cc779e2d419d7a6cf2e8eea488b3eec38c01ec2fc8805bd110e` |
| 38 | `instance` | [instMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instmul-source-edition-2.md) | 206 | `declaration-track:742e08c1a9b9cd974f2651918dcfdb07e3dab07a63bf9d384b6815c4ec4b9cd7` |
| 39 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-mul.md) | 211 | `result-track:091eec8c125afde6bc9678a92b64a67c36370d908a49e452ad91abb38cb40576` |
| 40 | `instance` | [instSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instsemigroup.md) | 214 | `declaration-track:84832a926bd41223ff71a43268cd99c50dad8f6d7b8385c24cd9e3df33b11983` |
| 41 | `instance` | [instCommSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instcommsemigroup-source-edition-3.md) | 217 | `declaration-track:dc7a69a27fa6d4b26439a8220534b1bc9288b3315af7975efb83724878da578f` |
| 42 | `def` | [coeMulHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coemulhom.md) | 223 | `declaration-track:c20433d5ba1d8acf5ba4932f20f9c4d18a1b04c6061867dea14a37a92ee8dcc1` |
| 43 | `instance` | [instOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instone-source-edition-2.md) | 238 | `declaration-track:8fc0124538ff42706ac9930e2c71128d28500e0fbfb539495d1a21c2dbb2d4e4` |
| 44 | `theorem` | [coe_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-one.md) | 241 | `result-track:98d57eac8c052a0b42642436e9b56fece89ff931b550c7cdc204f0f1346894bc` |
| 45 | `theorem` | [mk_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/mk-one-source-edition-2.md) | 245 | `result-track:9efae8840a111d056a5badd53aa83ca19eee2bc0be476894d91a3f2ad141e0ea` |
| 46 | `theorem` | [coe_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-eq-one.md) | 249 | `result-track:081f335f45cdc348d137c4433c5a591ed70e0e6fe383d2acd458a48d2f92f1e5` |
| 47 | `theorem` | [coe_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-ne-one.md) | 253 | `result-track:88e673fc8a59a71b7f7d8dcefe3ca236380c7cb5426f135d3e8ce1c00726e585` |
| 48 | `theorem` | [coe_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-pos.md) | 257 | `result-track:5964f0674e4e99beae5949a03ac848d5f2bae338e5a8547b3624eba5db14a7ea` |
| 49 | `theorem` | [coe_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-le-one.md) | 261 | `result-track:9a81062df65d8e575d66b85287490df6f322ac3bfdf75f74f1123694e7c68353` |
| 50 | `theorem` | [le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/le-one.md) | 265 | `result-track:05560c91d00dfde980f4c96a3d109457792e72272d406e195397e373f94efd11` |
| 51 | `instance` | [instMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instmul-source-edition-3.md) | 268 | `declaration-track:887e08fec2fad9e024780758edeebed5160e644d0f031f63f280574daeb16a00` |
| 52 | `instance` | [instPow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instpow.md) | 271 | `declaration-track:d8af41910b3599e880677562979d3e4a4f5a2cb0325e93183bfeb4f83a7ffde9` |
| 53 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-mul-source-edition-2.md) | 275 | `result-track:0b7c49209dac49cf696feaaef9e4975dec2057809a304ce6939b3430e29d341f` |
| 54 | `theorem` | [coe_pow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-pow.md) | 279 | `result-track:031def23ecdfc65c99a9d7694fd93dd0b2a383549a2323accf70f158124d9792` |
| 55 | `instance` | [instSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instsemigroup-source-edition-2.md) | 282 | `declaration-track:d253d86ab02107277f2cbc6c0bf0d2186850d8a0b1a49b698976134a235b9bbe` |
| 56 | `instance` | [instMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instmonoid.md) | 285 | `declaration-track:9a2eafb9f4256969e81420ecfd3cfd4b6074691b8a287e28a89fa03c59cabf25` |
| 57 | `instance` | [instCommSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instcommsemigroup-source-edition-2.md) | 288 | `declaration-track:947c30c365e7c49bbf424e188d2122224e619d64d146b2bbce515abc5b08eac4` |
| 58 | `instance` | [instCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instcommmonoid.md) | 292 | `declaration-track:f44a796c31f02447021280a0e82a4d54e6fd0059403f7f58d7186234d7ecbd2c` |
| 59 | `instance` | [instCancelMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instcancelmonoid.md) | 296 | `declaration-track:ead41fa231c36de09f6371a58f440acb96ff3ff8977c3238c0cb66cd9d0e2050` |
| 60 | `instance` | [instCancelCommMonoid](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instcancelcommmonoid.md) | 304 | `declaration-track:f00e9393c03ece4ad19cba5b0cb117d65d3ee94d3701178fa0001b8f831c41af` |
| 61 | `def` | [coeMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coemonoidhom.md) | 311 | `declaration-track:a88f0afb67e0f29cb66ddc092ef4fbc50c64bd0f94b7d3d9711d44d4bb3dec7d` |
| 62 | `theorem` | [pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/pos.md) | 324 | `result-track:a0ea78cbc2aaf15dda3854a01e44c84e45410d2295ed0d6e326703e21ed3fcd0` |
| 63 | `theorem` | [lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/lt-one.md) | 328 | `result-track:303d02960623943472eedc734e3a7c727dc0496b7d84c38c0f84f6dec5cafc24` |
| 64 | `instance` | [instMul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instmul-source-edition-4.md) | 331 | `declaration-track:a3adfaec216bb18680be1ba07eaedd9f13c47f7db8bca4fb8d8f4da5731dc92f` |
| 65 | `theorem` | [coe_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coe-mul-source-edition-3.md) | 336 | `result-track:695b4b139577ef37bdcef1e3489d7822024e932c68652d03acf8f8b330d63e9e` |
| 66 | `instance` | [instSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instsemigroup-source-edition-3.md) | 339 | `declaration-track:f34277bca5a9ebe4ef76c35a011a50fdd05004c2670a18e88eed3a70f76d8bd8` |
| 67 | `instance` | [instCommSemigroup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/instcommsemigroup.md) | 342 | `declaration-track:63f8d587240fcfdebe3d8fc6280d2aaf83a31e2f93537cdfdc663f887ac031f5` |
| 68 | `def` | [coeMulHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/coemulhom-source-edition-2.md) | 348 | `declaration-track:c3a506a936e1e6bd09b71138f390a78990c8a8db1c4024b0c264c461408e7f8f` |
| 69 | `theorem` | [one_sub_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/one-sub-mem.md) | 354 | `result-track:f615fe3ace50b7dade266df2f48f77ea5019093a6f4fb81fb0224b4c8849b9bc` |
| 70 | `theorem` | [mem_iff_one_sub_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/mem-iff-one-sub-mem-source-edition-2.md) | 357 | `result-track:f3fefa8d2e2631ed4301d6907ae725365a5a60b88c418c81686033771507ca9e` |
| 71 | `theorem` | [one_minus_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/one-minus-pos.md) | 360 | `result-track:4d0969c9ab5c4e77a89a610ed42f66c4564e2c361c67a9a7c2a343d3302d95e0` |
| 72 | `theorem` | [one_minus_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/SetInstancesPublic.lean/declarations/one-minus-lt-one.md) | 362 | `result-track:b0073b4e61175916b8117154768f440655988dd227cc7f08741b7aa495ae1685` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b88597f38ad7cc9a599459e3117e9b74ac52fd7c8f3aa9e5437597d449adb0d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Instances/Variantda23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Instances/Variantda23462d7ecaf7f94725fd16bc0be30838dd7405f00c9a906400e1c23e22905b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
