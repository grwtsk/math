# Verification target: Module Strong Topology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "349dba0290556bbc9ee9354ef6408bc9f111cdb0",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StrongTopology/Variantf78aa6bbe091022d7531e1fb30a56411a578ce2cb9528099751388d28882b157.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `349dba0290556bbc9ee9354ef6408bc9f111cdb0`.

Source path: `GRWTSK/Topology/GeneralTopology/StrongTopology/Variantf78aa6bbe091022d7531e1fb30a56411a578ce2cb9528099751388d28882b157.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StrongTopology/Variantf78aa6bbe091022d7531e1fb30a56411a578ce2cb9528099751388d28882b157.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.UniformConvergence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Section` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Hom.ContinuousEvalConst` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformConvergenceCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/uniformconvergenceclm.md) | 87 | `declaration-track:b5a1351bb0828f8feea9e0e739b95301befb2990c93399f5099d5d726c543e18` |
| 2 | `instance` | [instFunLike](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instfunlike.md) | 91 | `declaration-track:05f98e6c38c18530d4ff6a643ed5f2c84c30b2cf9738cd95b92b58c1f7006b46` |
| 3 | `instance` | [instContinuousSemilinearMapClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instcontinuoussemilinearmapclass.md) | 95 | `declaration-track:7202be8df2d8f019d37e38ec73ff515065be72978d15c935fb8122893c994db1` |
| 4 | `instance` | [instTopologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/insttopologicalspace.md) | 99 | `declaration-track:2ac6138d99016e329b7a227c8b3d37a99afefd6b49d779b62bdafd3cb4753c13` |
| 5 | `theorem` | [topologicalSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/topologicalspace-eq.md) | 104 | `result-track:b31d6a9eba5183c71c83d11a833eb21808d747faad307bc42d6d6b5449a07800` |
| 6 | `instance` | [instUniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instuniformspace.md) | 113 | `declaration-track:58bedef4cd1d8f6f8d9cb9b8db9b38d6b8e48b4fd30fbff29822f9a4fe8e8e48` |
| 7 | `theorem` | [uniformSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/uniformspace-eq.md) | 119 | `result-track:bedd1241db5fe6b964d458f16f1a2640377032350590139585e42f12951ab902` |
| 8 | `theorem` | [uniformity_toTopologicalSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/uniformity-totopologicalspace-eq.md) | 126 | `result-track:c7cb3d85dc5ef181d61ad2e66c00037307f7cb0f7ea06794651ecb9e84f66a28` |
| 9 | `theorem` | [isUniformInducing_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isuniforminducing-coefn.md) | 131 | `result-track:dd0c22a7762816abad71584071951a2df43bc04c6a59a6d2c1a558a223fbfc20` |
| 10 | `theorem` | [isUniformEmbedding_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isuniformembedding-coefn.md) | 135 | `result-track:0af0d6c4248dbc3d13f5ad09267813a332f8356e49472073e9a6d3fa15ee0a21` |
| 11 | `theorem` | [isEmbedding_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isembedding-coefn.md) | 139 | `result-track:37a7929eb13f9bf5526d0ac5629f571bcb16323142af8c960ea161e986928c07` |
| 12 | `instance` | [instAddCommGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instaddcommgroup.md) | 147 | `declaration-track:a7467b1fe1804348a96d9a6f8ea937ed91de121a8640b101cb2e6c96f865b5eb` |
| 13 | `theorem` | [coe_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/coe-zero.md) | 151 | `result-track:5977a7aea7f488948a42a9d131eadad2fcc5d00bf2d40ce5d0c588add31c43eb` |
| 14 | `instance` | [instIsUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instisuniformaddgroup.md) | 155 | `declaration-track:9cf16c95358e82c8c4981d494010b8cffc3b753f685bdf428eb764a3ab33f26f` |
| 15 | `instance` | [instIsTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instistopologicaladdgroup.md) | 161 | `declaration-track:ddcb3fe2733bea4b9f0a8c64d90a0aaf353f5cee1b20905f14930e926caa9be4` |
| 16 | `theorem` | [continuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/continuousevalconst.md) | 167 | `result-track:8ff32cae06b33f94feea5653e4a52fe2a7756df18e8ea4c8dcc3f1c2ad7ace3a` |
| 17 | `theorem` | [t2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/t2space.md) | 176 | `result-track:af1acb17713d49810a3adafc6548fb04676424b01474442533cde892e339a7ef` |
| 18 | `instance` | [instDistribMulAction](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instdistribmulaction.md) | 183 | `declaration-track:f14bf1eabccc740214e30d8fb6ef8157d77cc22f7adb7786ae8e29c343567108` |
| 19 | `instance` | [instModule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instmodule.md) | 187 | `declaration-track:f6b545bfe13f8a8ddc56f30d10fc3f813f44ba27e704197d5ed1ee9612861635` |
| 20 | `theorem` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/continuoussmul.md) | 191 | `result-track:29206928d531a3a3aa85403deb1d821c95ee08f24c6d10e7c586c60eab7b846b` |
| 21 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 202 | `result-track:64d3e2bdde70d54e5bbdb4de560b985aa49abe927c9f840682ef743ea71ca879` |
| 22 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/hasbasis-nhds-zero.md) | 213 | `result-track:22b450e208550be9d8a6e17bfd05adfec4a9f248cac0734605fac4c6a4981a77` |
| 23 | `theorem` | [nhds_zero_eq_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/nhds-zero-eq-of-basis-source-edition-2.md) | 220 | `result-track:db2065185a5e78c9e323890398faa169f4758080289afe6b2ce35d3b19a4fec5` |
| 24 | `theorem` | [nhds_zero_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/nhds-zero-eq.md) | 231 | `result-track:488fb5578f526f7f2d43665651e7e764e3208c8cf582a7fac0ea5ed71f98c98d` |
| 25 | `theorem` | [eventually_nhds_zero_mapsTo](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/eventually-nhds-zero-mapsto.md) | 238 | `result-track:7b58292dd759955587cb462a0d150b5d823d8a0c98d25f96605904623e631972` |
| 26 | `theorem` | [isVonNBounded_image2_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isvonnbounded-image2-apply-source-edition-2.md) | 245 | `result-track:e0cc5af97069662b8c6bd73ea0af16c4d1d5fb98041966e8535da83352f7f9e5` |
| 27 | `theorem` | [isVonNBounded_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isvonnbounded-iff.md) | 261 | `result-track:89008989f7659751c9f3c9343f258db7a5ed7d157824b5ec46b6037611bc7a27` |
| 28 | `instance` | [instUniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instuniformcontinuousconstsmul.md) | 275 | `declaration-track:0f344a1b2f1ff7aad6e603afcf1997526b9cc9c62d46281c3a6e943e81b0fba0` |
| 29 | `instance` | [instContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instcontinuousconstsmul.md) | 281 | `declaration-track:b5225f9c82c0549d81e73afb79db32d18b44a29ccaac1e336e8106d9ecf6ba89` |
| 30 | `theorem` | [tendsto_iff_tendstoUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/tendsto-iff-tendstouniformlyon.md) | 290 | `result-track:136feb03abcfc2c4db50036405411ecce337d0dc3686b7ccd5b7eca6150da22c` |
| 31 | `theorem` | [isUniformInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isuniforminducing-postcomp.md) | 298 | `result-track:7f3b303bcf25f4c9c55c054e88ad3395a7085cbbefe3dfa628e443080a41cd1a` |
| 32 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/completespace.md) | 308 | `result-track:38fe4aab4a96cd3e3459c042f6299dfc7d3f9c227dd22d12495b0300ee4727eb` |
| 33 | `theorem` | [uniformSpace_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/uniformspace-mono.md) | 325 | `result-track:088d076087012f05d822c37a482cd62e0459ba24c3d3d059f5c27d3dd1999551` |
| 34 | `theorem` | [topologicalSpace_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/topologicalspace-mono.md) | 330 | `result-track:54fef66dbd2709465b704a4b881c75c26f3608a934dd16016d436de9359e851f` |
| 35 | `instance` | [topologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/topologicalspace.md) | 354 | `declaration-track:0fac6f8a5c19c0a23b0e1531778efe8c9ecce5d324bc3e2f28938b23ba6a1e56` |
| 36 | `instance` | [topologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/topologicaladdgroup.md) | 358 | `declaration-track:584188d510d50bda9ac3dd315065be0c83cd75b9f3b31974a2d34e1457803b54` |
| 37 | `instance` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/continuoussmul-source-edition-2.md) | 362 | `declaration-track:bd55307649d278f8c419bd9d0641465fbf17ec65f63fde7aaffb64d63c047891` |
| 38 | `instance` | [uniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/uniformspace.md) | 366 | `declaration-track:7112a6dc4883e2667b6589cf2b3dc64bbaa9812c6b8b3dbb4f400d6083f9e4dc` |
| 39 | `instance` | [isUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isuniformaddgroup.md) | 369 | `declaration-track:6bb9aa203af5f8bb9841718f07164f518d82b52185c66776b8a966703827310a` |
| 40 | `instance` | [instContinuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instcontinuousevalconst.md) | 373 | `declaration-track:8b6dcfd3fbf1946d0926e57699843e862b66af124b97f8ec21213d617c4664ce` |
| 41 | `instance` | [instT2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instt2space.md) | 377 | `declaration-track:b71df18bfb7b670601763b793668c674e048faeb968197a23cf10f8e3c902abe` |
| 42 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/hasbasis-nhds-zero-of-basis-source-edition-2.md) | 381 | `result-track:71d3cb67950fe41f7d1a40c8a4eb4ba4121b6f0a216bec956783b46852ecf1a1` |
| 43 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/hasbasis-nhds-zero-source-edition-2.md) | 389 | `result-track:7e3e86a87a73a510b26937249d6eab73943a0c0015cae8951304186cdbccf98e` |
| 44 | `theorem` | [isUniformEmbedding_toUniformOnFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isuniformembedding-touniformonfun.md) | 395 | `result-track:f8dc27554874b71615c7842bf2d190cbee312d1354c2b7bda32a4f173b1fe27e` |
| 45 | `instance` | [uniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/uniformcontinuousconstsmul.md) | 400 | `declaration-track:ffb7748aa6f02fa938058d9b61c54c07d901dcc41e23c6d5336ff4d67b86ab9c` |
| 46 | `instance` | [continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/continuousconstsmul.md) | 406 | `declaration-track:bf2dee69a4efeb90c556c07657e7cece60d91c964d8f183d5979b4770b4d5199` |
| 47 | `theorem` | [nhds_zero_eq_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/nhds-zero-eq-of-basis.md) | 411 | `result-track:d4306ad3cba23e426811d1331ce4a757678134ee059ce8e8b3b5efb07fd77e55` |
| 48 | `theorem` | [nhds_zero_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/nhds-zero-eq-source-edition-2.md) | 418 | `result-track:a261222ee37673266eac6720c609625527602167a76ff040f99ce80e31a029cb` |
| 49 | `theorem` | [eventually_nhds_zero_mapsTo](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/eventually-nhds-zero-mapsto-source-edition-2.md) | 426 | `result-track:b2fbe9a96a6e8baff420e56af5c1343fa866f2e15e8b830e267e780cadd586b0` |
| 50 | `theorem` | [isVonNBounded_image2_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isvonnbounded-image2-apply.md) | 436 | `result-track:12952163c7149b8e5d2ec46c3f454fe511f5fd30cf7eac7a5dd0746f7d0c3171` |
| 51 | `theorem` | [isVonNBounded_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isvonnbounded-iff-source-edition-2.md) | 448 | `result-track:9e18db0cc6f370979408791f12059c27e152a697e4aee9d7024d35b2743c7dcf` |
| 52 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/completespace-source-edition-2.md) | 456 | `result-track:a9273710316833d40dc57e479f90f82e79943122a2ec769f1f249e50c6ff41fc` |
| 53 | `instance` | [instCompleteSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/instcompletespace.md) | 461 | `declaration-track:c26c9dd7781d631eb97e8ea44434de14325991eda39a6da330b57d408845eb10` |
| 54 | `def` | [precomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/precomp.md) | 472 | `declaration-track:222b14241a9d363fbd2202387db4c7960ea4213715667abd6fb74a2cfa46ffe9` |
| 55 | `def` | [postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/postcomp.md) | 490 | `declaration-track:ea8c24618c5eebdb1fa389817b0e3cc9c6641019f53580e44fd195f5e287b46d` |
| 56 | `def` | [toLinearMap₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/tolinearmap.md) | 517 | `declaration-track:bde3a945899ef0bab446baf7b71e19abfb8e151a8042ac6dc602d1c1e0df7b9f` |
| 57 | `lemma` | [toLinearMap₂_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/tolinearmap-apply.md) | 520 | `result-track:7f7f7b2e76e08af1ba1b7141972a29820de8c6f31cd46fb65943c39887ed265e` |
| 58 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isuniformembedding-restrictscalars.md) | 537 | `result-track:3cbf95258b289dd98bd9832a6fccec7f4c1db8377c73885729f0a191cf2ea366` |
| 59 | `theorem` | [uniformContinuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/uniformcontinuous-restrictscalars.md) | 543 | `result-track:f192cbf9a609a9e792edfed124a44fa7276e21202be173498e22345e70968db3` |
| 60 | `theorem` | [isEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/isembedding-restrictscalars.md) | 553 | `result-track:c8b84c89d38dbc5a09070984a33b4466a74ce646ef670c026689df4ef2945155` |
| 61 | `theorem` | [continuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/continuous-restrictscalars.md) | 563 | `result-track:212241137465de6b1075642a16044464648cc25dba9181d114124b0416babdf7` |
| 62 | `def` | [restrictScalarsL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/restrictscalarsl.md) | 572 | `declaration-track:6d4f0c98f0fd75c6aa4353392008c5978546f893e3ba97aa53acc97fce56033c` |
| 63 | `theorem` | [coe_restrictScalarsL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/coe-restrictscalarsl.md) | 578 | `result-track:54dd4184083d3d39d9a7b8956acc98b5f6cbf9c9338206180efaa567200427e6` |
| 64 | `theorem` | [coe_restrict_scalarsL'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/coe-restrict-scalarsl.md) | 583 | `result-track:37e20111d0e051032ae7baabc964a3143f7dc31e4efc80e03c5452740e944968` |
| 65 | `def` | [arrowCongrSL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/arrowcongrsl.md) | 614 | `declaration-track:c41696384e096f7c2a84ae2d21da57be520f70361465ec843bd701b139b178a9` |
| 66 | `def` | [arrowCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/arrowcongr.md) | 640 | `declaration-track:083356b2642520dc076625668f69686e82fcb11cad981e38bbbd76f5adda8d16` |
| 67 | `lemma` | [arrowCongr_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/arrowcongr-apply.md) | 643 | `result-track:12a5a1b1ed2f0c57a0f8690d6ff91b5ebadb150203877b189c619e58e2cbd007` |
| 68 | `lemma` | [arrowCongr_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopologyNamespaced.lean/declarations/arrowcongr-symm.md) | 646 | `result-track:3baac40d6f08c25791944e76fbd1b0e0b23825f256007bc97b08bedfe8143a7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b60193ecb8e41d31cfa35f3c2872f51ef7dfc93f38fc2b3b2d08c084533de81c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/StrongTopology/Variantf78aa6bbe091022d7531e1fb30a56411a578ce2cb9528099751388d28882b157.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/StrongTopology/Variantf78aa6bbe091022d7531e1fb30a56411a578ce2cb9528099751388d28882b157.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
