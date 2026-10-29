# Verification target: Submodule Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a02fe75863af1f15b98bfe563956fe2be81d831f",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantf8e46f1424f269364f010581b3fd1725898f586a0cdc47e4d888ef833f491626.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a02fe75863af1f15b98bfe563956fe2be81d831f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantf8e46f1424f269364f010581b3fd1725898f586a0cdc47e4d888ef833f491626.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantf8e46f1424f269364f010581b3fd1725898f586a0cdc47e4d888ef833f491626.lean.json)

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
| 1 | `structure` | [Submodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/submodule.md) | 49 | `declaration-track:ff91938d45220a2c7a5a8e2bbf84feca3271dd91705ca7ac9ca214d99beb4a3b` |
| 2 | `instance` | [setLike](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/setlike.md) | 62 | `declaration-track:c5c85774df15111f991d01ab2561300bc28984ec6d0fedd6743a88246c05d14a` |
| 3 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 66 | `declaration-track:fbf198df264018e36a9bd3a30e28b7328c7b3e29ca81b2eecfa70a08151ad265` |
| 4 | `lemma` | [carrier_eq_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/carrier-eq-coe.md) | 70 | `result-track:5899593d354ea107d867720835d27dc477d4b35e125c866792661f66e40d07fa` |
| 5 | `def` | [ofClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/ofclass.md) | 74 | `declaration-track:b1f456e9c14c359e642567e123a76a191be7943e1bc435b94524d28445398cb2` |
| 6 | `def` | [ofLinearComb](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/oflinearcomb.md) | 84 | `declaration-track:89e5c25b129d232293803970debf681128944a6fef25dce8da5c0a0c108741bb` |
| 7 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 94 | `declaration-track:b32bdfe8a1ba9184fcf314d17aad3d9238f937bda2158f3f2d1ca754bf73b70c` |
| 8 | `instance` | [addSubmonoidClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/addsubmonoidclass.md) | 103 | `declaration-track:c89d5d2c110d3decc54dcc83609dc7595318881b1f3f8761833fcd619e35bc54` |
| 9 | `instance` | [smulMemClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/smulmemclass.md) | 107 | `declaration-track:fed82cfa139e0348d1ed480f145e7a26ecf06de9474b732a18719ba808a6b6ff` |
| 10 | `theorem` | [mem_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/mem-toaddsubmonoid.md) | 111 | `result-track:ab8bc6107e41c27676a1bcee50c354c792c8eca5e824c0e5a6bdd674f63925a0` |
| 11 | `theorem` | [mem_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/mem-mk.md) | 117 | `result-track:eae79e6aafc6f930bc8dadc77c7688ba97ddac5f24d9b1c66e8d64b21c2c30cd` |
| 12 | `theorem` | [coe_set_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-set-mk.md) | 121 | `result-track:2caafc0b74c481c6d9fb1d41a80c3aac26d11b5b5c3c2f02f6897b3367916896` |
| 13 | `theorem` | [eta](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/eta.md) | 124 | `result-track:6444e092362ecf5094dd7cdca45dec7f8f42c46a275d2999ac0dcedc287abca8` |
| 14 | `theorem` | [mk_le_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/mk-le-mk.md) | 128 | `result-track:61b28f2a96964397ad47477df78121145a54ac0748e1bd0b4cb391471252d749` |
| 15 | `theorem` | [ext](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/ext.md) | 133 | `result-track:044f5d6047c1097698346522fb0d5b55c088b143272e3c58048fa130f6ceb714` |
| 16 | `def` | [copy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/copy.md) | 139 | `declaration-track:faecf4915ddb0fc646043c15382e1e872f2414736444d9ce0c152926f58f1e64` |
| 17 | `theorem` | [copy_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/copy-eq.md) | 145 | `result-track:d303d5d0e453cc1c1039fa317923b27837c848efe8af0be5ca7db96272debc2a` |
| 18 | `theorem` | [toAddSubmonoid_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/toaddsubmonoid-injective.md) | 148 | `result-track:f1960f1363bab206fef90db54f93fb4fe7514e2e8dd0d15725895288d816f255` |
| 19 | `theorem` | [toAddSubmonoid_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/toaddsubmonoid-inj.md) | 152 | `result-track:0165ce219be8d8a52a1eab64f351fea3a558a1369f19842de8e3cfd9a41ac9d1` |
| 20 | `theorem` | [coe_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-toaddsubmonoid.md) | 156 | `result-track:3410a0222bd1a1f5793ad8a6f76a894ac9875f4b676686a59f2d9dc08364c6ca` |
| 21 | `theorem` | [toSubMulAction_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/tosubmulaction-injective.md) | 159 | `result-track:8f6888ad2e41f06b99972e3f5e80e9c2e3793d17ae922db20785e49da0b72f44` |
| 22 | `theorem` | [toSubMulAction_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/tosubmulaction-inj.md) | 162 | `result-track:dc3717f41a53b4c024c2eefd545492804a44acf0b917760b7cd61e8edf3019aa` |
| 23 | `theorem` | [coe_toSubMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-tosubmulaction.md) | 166 | `result-track:1bdacec628782545565944d5d5e8e3d3bf6d5b29851efe407287ef3d357701e6` |
| 24 | `instance` | [decidableEq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/decidableeq.md) | 174 | `declaration-track:c5b241d6e00daa134188d4f1011231616dffad08fafb491e5e646c3a59e4607a` |
| 25 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/instance.md) | 185 | `declaration-track:21ea0644aab1059c86db1dc6d23648e066d228dd26c7da6311730a5b7b68579c` |
| 26 | `def` | [toModule'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/tomodule.md) | 191 | `declaration-track:aeabe7708689384cd8ef50f535a63a319587f4219794d2aa5386664a21aa94cf` |
| 27 | `theorem` | [mem_carrier](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/mem-carrier.md) | 213 | `result-track:15e02835cf0b4ff95cdaf6c0169e765e2457dd7689b8c3d76a275eab1533a521` |
| 28 | `theorem` | [zero_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/zero-mem.md) | 216 | `result-track:8cbf79288b0ff4555cc2b97b7b6d5436872f5ec3aa3385e4caf4265a1ee72513` |
| 29 | `theorem` | [add_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/add-mem.md) | 219 | `result-track:312e9c4766a485510d96ce13c01779bd21c4f8239efd9284f27cdc2a450be0d5` |
| 30 | `theorem` | [smul_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/smul-mem.md) | 222 | `result-track:2fb15b0e38a379fd0b62a8e731b1a1b9ef8d0f96ba7398714b1788577428f1ef` |
| 31 | `theorem` | [smul_of_tower_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/smul-of-tower-mem.md) | 225 | `result-track:394458101f1ce4c9e47325a839f88de5f64c96de546d6eaebf913d2dc3211881` |
| 32 | `theorem` | [smul_mem_iff'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/smul-mem-iff.md) | 230 | `result-track:2263ce4f4d6965bf0c5ad6753aeefd3427eb7e22487f1d422fddd4147eac0161` |
| 33 | `lemma` | [smul_mem_iff''](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/smul-mem-iff-source-edition-2.md) | 235 | `result-track:9c32212ad9c31627afa2d43a414ab8c742c35e5364a9de6b69451a2ab4eba90b` |
| 34 | `lemma` | [smul_mem_iff_of_isUnit](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/smul-mem-iff-of-isunit.md) | 241 | `result-track:747b684feb91a5d815d6ed3d36ec5c5a8cf546a1c6c472af42c2d79e42c8b339` |
| 35 | `instance` | [add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/add.md) | 246 | `declaration-track:b805488b65e4a929ff76814c8207763801e9d107e252a7e2e0e47bd96ac5423a` |
| 36 | `instance` | [zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/zero.md) | 249 | `declaration-track:f917fe7d16b02945493eeb043ef4ac2dcce9c2a8619b49aff16f58c06e1ec5f2` |
| 37 | `instance` | [inhabited](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/inhabited.md) | 252 | `declaration-track:6b583743e279af9b88d588e77c3ddb88908aafc303325574ea7398799624f96e` |
| 38 | `instance` | [smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/smul.md) | 255 | `declaration-track:4dd51816ac24542481ac5431d7e25a1536c916129774e89f50fc7ed94a23d370` |
| 39 | `instance` | [isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/isscalartower-source-edition-2.md) | 258 | `declaration-track:e40b2771b28140a4eac198e96b46d0691bd8ca1a3f06ac2a81d7a1ed80bea0bc` |
| 40 | `instance` | [isScalarTower'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/isscalartower.md) | 261 | `declaration-track:c657f0777312f4144843e341b7c3384c482f6cdb844b13040e7c7086892165f2` |
| 41 | `theorem` | [nonempty](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/nonempty.md) | 265 | `result-track:aafb314139162a38dce899c09e721d43214810c8b3dee884d80981fa3750a40b` |
| 42 | `theorem` | [mk_eq_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/mk-eq-zero.md) | 269 | `result-track:d33867af9a859e22022c64571340831a5381acde3f3f5199c0d9ec81706c1d94` |
| 43 | `theorem` | [coe_eq_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-eq-zero.md) | 275 | `result-track:c8f756c1b8108f9d2561ceddf8d532656e16ae75da8afc2b7d5cab1bbd024174` |
| 44 | `theorem` | [coe_add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-add.md) | 279 | `result-track:61c486135af0ab4845eec7c5c95b09a069d139bb9f1a70d221d493da5ed41f09` |
| 45 | `theorem` | [coe_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-zero.md) | 283 | `result-track:f2b4d663d72b61c24f748779eb37d1a73daddc01cae98f5bc986cda35fa90831` |
| 46 | `theorem` | [coe_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-smul.md) | 287 | `result-track:34dcad5e4326aaed239dd04ca4c4d08650a89261154b586ba29abc1a2e4e313e` |
| 47 | `theorem` | [coe_smul_of_tower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-smul-of-tower.md) | 291 | `result-track:286598a6db618bee0728ffaa5ab7dc28526c23d36eaddb22b80482179ee62e84` |
| 48 | `theorem` | [coe_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-mk.md) | 296 | `result-track:16d8f15a084c1b6a1eaaa8954bc1b078d67052e6bb8e7e032b3c5f97aac249fa` |
| 49 | `theorem` | [coe_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-mem.md) | 299 | `result-track:fb143242cee5000cc4e5f7edcff0293f563a363cfd72e3748a2e448e6c5e56ff` |
| 50 | `instance` | [addCommMonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/addcommmonoid.md) | 304 | `declaration-track:42ad1299a91b1f323d44c981f89d1f0b39fcd94808b069f3552759f5a244fc83` |
| 51 | `instance` | [module'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/module.md) | 306 | `declaration-track:44cbceb9fa32d50704e6ad56a1b097efe2051cd4687fd3fc9979b9178a331862` |
| 52 | `instance` | [module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/module-source-edition-2.md) | 314 | `declaration-track:96fc9d957705f7acc3a5e673b791cf5bfaf0f433a409d9e04fda5c6f6966e769` |
| 53 | `instance` | [addSubgroupClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/addsubgroupclass.md) | 326 | `declaration-track:54cab7782ec43da18261f6509ce7e31d742abf5884f424cf82a416c0084a6b3b` |
| 54 | `theorem` | [neg_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/neg-mem.md) | 329 | `result-track:06144a4f3f50eb7c42416cf0cae4fb4f804a59fee35a731de9e94e23410e3890` |
| 55 | `def` | [toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/toaddsubgroup.md) | 334 | `declaration-track:adfb1ff3067f1fce57daff660822bfa2b58ae2b42787531bdaf8f3de2f052e11` |
| 56 | `theorem` | [coe_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-toaddsubgroup.md) | 338 | `result-track:62493419be9a34761a67ab5f67abc1e6af5841f78e4e477517f95a3b9690be36` |
| 57 | `theorem` | [mem_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/mem-toaddsubgroup.md) | 341 | `result-track:e9199840266640cc1070311862af951ee923c30ea1a433aecdb700a12c330f77` |
| 58 | `theorem` | [toAddSubgroup_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/toaddsubgroup-injective.md) | 344 | `result-track:5ecbd3381b6d034bd90823cc0a4fb80ea3cbec08eb22d6551433c7c2ae42b14c` |
| 59 | `theorem` | [toAddSubgroup_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/toaddsubgroup-inj.md) | 347 | `result-track:c134b91a7bbb4bac8c0fff41dd38029cf6d711c576ac63ac78a10838db6e9836` |
| 60 | `theorem` | [sub_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/sub-mem.md) | 350 | `result-track:3cfcbf7a9bcb9e640da701f69ba43f5e53241f2bb29c095e78c5857f1542fcd7` |
| 61 | `theorem` | [neg_mem_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/neg-mem-iff.md) | 353 | `result-track:fad6bd4174c56c184e861b7ad45c15d6c92e78f463d3a5615a76ecddc2f39d76` |
| 62 | `theorem` | [add_mem_iff_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/add-mem-iff-left.md) | 356 | `result-track:131b661b447fd0420fe6a8d0fe9f7b0f8213f91319010635997f49e5155c61eb` |
| 63 | `theorem` | [add_mem_iff_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/add-mem-iff-right.md) | 359 | `result-track:148a1f6e7f557fe1511a99e7c0c65282b91a119b72d919a2ae0d4217c0d3eb26` |
| 64 | `theorem` | [coe_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-neg.md) | 362 | `result-track:8fe75d641676dce48a64c41ff1f4647f188d7ce696386640bea91fab6f7781b4` |
| 65 | `theorem` | [coe_sub](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/coe-sub.md) | 365 | `result-track:04184c5473084ca632b77f0dd9bf966dd74b7d5301c8144725c4314b75b72548` |
| 66 | `theorem` | [sub_mem_iff_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/sub-mem-iff-left.md) | 368 | `result-track:d6733da12d76ebd0b5585d9642b107c80df15245587f3ef9f8efccafa2467f48` |
| 67 | `theorem` | [sub_mem_iff_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/sub-mem-iff-right.md) | 371 | `result-track:c6280fd5f0cc9027eaa204c9a4d1422615c10728a6a6cc481f293eff1b0c60a7` |
| 68 | `instance` | [addCommGroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/addcommgroup.md) | 374 | `declaration-track:831b60b27ac7dba1ce5addaaf27d19dd25493b0f32a32e59be4c37344c02bdea` |
| 69 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 382 | `declaration-track:5ea0d89d52cc1b8b096fb796e5f58e792b7f543694b3152ff5738d4d4937f60a` |
| 70 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 392 | `declaration-track:d3acb0a7b71a51564e2382383c3603b879ff87ea15d11d118e5f8c417b54a7ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=015424fae03d602549ed3a6eb132d5d3ebfd0b0ea19ec38a1158af911711e1de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variantf8e46f1424f269364f010581b3fd1725898f586a0cdc47e4d888ef833f491626.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variantf8e46f1424f269364f010581b3fd1725898f586a0cdc47e4d888ef833f491626.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
