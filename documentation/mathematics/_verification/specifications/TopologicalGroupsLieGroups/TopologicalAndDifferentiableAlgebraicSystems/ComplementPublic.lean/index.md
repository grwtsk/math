# Verification target: Complement Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd5e684d973093335b34d081ab7c007ff98611bc",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Complement/Variantea947529899c67508b6762a4d08f096520822095b0d892556811eaf97bff2a93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd5e684d973093335b34d081ab7c007ff98611bc`.

Source path: `GRWTSK/Topology/GeneralTopology/Complement/Variantea947529899c67508b6762a4d08f096520822095b0d892556811eaf97bff2a93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Complement/Variantea947529899c67508b6762a4d08f096520822095b0d892556811eaf97bff2a93.lean.json)

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
| 1 | `structure` | [IsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl.md) | 82 | `declaration-track:899084f40f61e91d1de40c8114161a61f1d8ae75b4d470955d96f32756493380` |
| 2 | `def` | [ClosedComplemented](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented.md) | 87 | `declaration-track:6bee149abdf769027ad1ea66010f4a016bb1f64fefcc7147246fd3a99e176800` |
| 3 | `theorem` | [IsCompl.isTopCompl_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/iscompl-istopcompl-iff.md) | 94 | `result-track:a029d02e979f901128ddee45cbcad7a5a20388993bd170755113a40d05e5f8a1` |
| 4 | `theorem` | [IsCompl.isTopCompl_iff_projectionOnto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/iscompl-istopcompl-iff-projectiononto.md) | 98 | `result-track:cbb6ab7dcb2140f2e22975135cfecaa46e7ebf520e0a83d7170ae0b569637025` |
| 5 | `theorem` | [IsTopCompl.continuous_projectionOnto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-continuous-projectiononto.md) | 106 | `result-track:9241eb9932dd6f49c11a38561512d14f46d1048b8d9f524b51b2c75aab1d95ff` |
| 6 | `theorem` | [IsTopCompl.symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-symm.md) | 113 | `result-track:6fe1c8d14d8614590b2523209e3d1faf7c6c3059afff27a7bf308719a49e682e` |
| 7 | `theorem` | [isTopCompl_comm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-comm.md) | 119 | `result-track:82323ff783af6cf934374e9a7c0470bb3b73a717166ed94cf04165985f0fcd87` |
| 8 | `theorem` | [_root_.ContinuousLinearMap.IsIdempotentElem.isTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/root-continuouslinearmap-isidempotentelem-istopcompl.md) | 123 | `result-track:6e77f3e4bad5cfa121fee39e5a2091cd571b3e713a77b02f479132b48cc40f57` |
| 9 | `theorem` | [isTopCompl_bot_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-bot-top.md) | 128 | `result-track:c9ca71a6567de4a4952416ddb855ba478a9063857de67467d897cd449b579b95` |
| 10 | `theorem` | [isTopCompl_top_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-top-bot.md) | 133 | `result-track:4cbc53c5c240b969f33071404b420989f42ee991c7c6ed069df2e71da3087dd9` |
| 11 | `theorem` | [_root_.ContinuousLinearMap.isTopCompl_range_ker_of_leftInverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/root-continuouslinearmap-istopcompl-range-ker-of-leftinverse.md) | 139 | `result-track:62fc2c9d6ed468604c86df79963e78e47f3a941eb41aaa6dba5b3c79f01aee00` |
| 12 | `theorem` | [_root_.ContinuousLinearMap.isTopCompl_of_proj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/root-continuouslinearmap-istopcompl-of-proj.md) | 150 | `result-track:5f003f6cbf286b35b001bcbaf38d563857eb5c62f4fcdb5c621b6f6bd95e69ec` |
| 13 | `def` | [projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionontol.md) | 161 | `declaration-track:884111f715a9eab677343142708e5773c699a24ec040c0d107b6707042f897a2` |
| 14 | `theorem` | [toLinearMap_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/tolinearmap-projectionontol.md) | 165 | `result-track:71a49c848470dac7c47ab45943431f9198aaf14b57821552255d12c69273a581` |
| 15 | `theorem` | [projectionOntoL_apply_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionontol-apply-left.md) | 170 | `result-track:79bfffd2f1f1630829e306b8702c7de2e6bab22ea57cb8d82fa49809259f3eb0` |
| 16 | `theorem` | [coe_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/coe-projectionontol.md) | 175 | `result-track:0aefc407e35b0b21a3dded47c22cc1b856b265a15cd3005a757cc0d8ba23ccc6` |
| 17 | `theorem` | [range_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/range-projectionontol.md) | 179 | `result-track:e9af22afcdab35bfa2055c81c13388890db8fdf2011f597ff6c37b88874bea5a` |
| 18 | `theorem` | [projectionOntoL_surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionontol-surjective.md) | 182 | `result-track:9a2ba956333e0227c49885c42127078083c6408d9f36263d971d94b768c7d723` |
| 19 | `theorem` | [projectionOntoL_apply_eq_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionontol-apply-eq-zero-iff.md) | 185 | `result-track:b758ae2b990cb24e4dd9134d311cffcfa2fac71e8640be46c50a99254403bd7e` |
| 20 | `theorem` | [projectionOntoL_apply_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionontol-apply-right.md) | 192 | `result-track:7db95bfd95a0a2c214dcd7ae0fb023080ccae35356ddb0fe0944fca44ed4e713` |
| 21 | `theorem` | [ker_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ker-projectionontol.md) | 196 | `result-track:e13b6f2c5ae7a16a76b5fd7b90c11fd5e4a4b82bc2fba3e79474491455cd2158` |
| 22 | `theorem` | [isQuotientMap_projectionOnto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/isquotientmap-projectiononto.md) | 200 | `result-track:ce29ce76b5de3390a9d0a4120fafd16321aef1de49ed151740c3e05d8130667a` |
| 23 | `theorem` | [isQuotientMap_projectionOntoL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/isquotientmap-projectionontol.md) | 205 | `result-track:681cd8ee3b4f04419752890b3f6a2b762b5b47754903e38054e1fe7e170e7a7b` |
| 24 | `def` | [projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl.md) | 219 | `declaration-track:70077fc00510014e9571c695bcd5f677bb7798202b69f176cf221dc49f4f87db` |
| 25 | `theorem` | [coe_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/coe-projectionl.md) | 223 | `result-track:bc173499d97013d0c90754e34c548973fe8f43652c6352bd8d72eea04e57cff7` |
| 26 | `theorem` | [toLinearMap_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/tolinearmap-projectionl.md) | 228 | `result-track:617019af50f330995a02e21604ede7135eee28369babd01117ce6e0c369d1e51` |
| 27 | `theorem` | [projectionL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-apply.md) | 232 | `result-track:ec228a62907bb490b259b577f1f65d1bb9e43e7ab70636b1f5e3e3454e5d1f55` |
| 28 | `theorem` | [coe_projectionOntoL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/coe-projectionontol-apply.md) | 237 | `result-track:a293f196e43ae0ced17b8df785977a21e8a6a7c7bc2f20767d8516f14d067b6c` |
| 29 | `theorem` | [projectionL_apply_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-apply-mem.md) | 241 | `result-track:a72216b7ec8b529b42c5e07609baf97188d066e1b7b56d9f77fc64590435c556` |
| 30 | `theorem` | [projectionL_apply_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-apply-left.md) | 245 | `result-track:59841d1c4df137d37f6aecb64f8f9b0562c86d5d8efbad197ff1ea43b8daadb2` |
| 31 | `theorem` | [range_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/range-projectionl.md) | 249 | `result-track:b569e3ee96767383aa5461d4496aa295c8a3eeb9ba67c35d3d72abbe51b5e00d` |
| 32 | `theorem` | [projectionL_apply_eq_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-apply-eq-zero-iff.md) | 253 | `result-track:86c1661fa4ee620a7728ef8de14e91751e5433d6aaba3256cbddcd21bd2493ac` |
| 33 | `theorem` | [projectionL_apply_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-apply-right.md) | 260 | `result-track:f2be13e222e306c29618412e6713659ecb80819a8e7267c4cf2d5e706d37ea81` |
| 34 | `theorem` | [ker_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ker-projectionl.md) | 264 | `result-track:2c8c043fb817ef8fa0ae3c9a04560050aafbf9cc73542f578ffb040005d658f0` |
| 35 | `theorem` | [isIdempotentElem_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/isidempotentelem-projectionl.md) | 269 | `result-track:11f75db14d5aad1129624783803150ee3cd4042e62328f3c59781cc4694e7f22` |
| 36 | `theorem` | [projectionL_add_projectionL_eq_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-add-projectionl-eq-self.md) | 273 | `result-track:bebc296e6396ae05ddd7ae653a6447c58bee987bdd7677e5700df8dd49657b0f` |
| 37 | `theorem` | [projectionL_add_projectionL_eq_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-add-projectionl-eq-id.md) | 278 | `result-track:58ecf56d2fcd5ffe45c32eac345c720985f7b40db20e755c32d0b596bc811561` |
| 38 | `lemma` | [projectionL_eq_self_sub_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-eq-self-sub-projectionl.md) | 282 | `result-track:9163d685e0db4ded35d5a1f9a1f4974e1505705580195617e4ca5e8f7cb0f007` |
| 39 | `lemma` | [projectionL_eq_id_sub_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-eq-id-sub-projectionl.md) | 286 | `result-track:f591558ac2b7a55630c105c0704660f607704a9d3774d0133d4483f2ed7792ce` |
| 40 | `lemma` | [projectionL_eq_self_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/projectionl-eq-self-iff.md) | 291 | `result-track:b6f6cf37097e5efb0c75487b4729c70c5d89eb97097ad4357b3026e74b5edd3d` |
| 41 | `theorem` | [_root_.ContinuousLinearMap.IsIdempotentElem.eq_projectionL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/root-continuouslinearmap-isidempotentelem-eq-projectionl.md) | 295 | `result-track:ab8fef9418960a2ab8410d3d34dc630e12e48a4eb5c7cd7487e1a63668699408` |
| 42 | `theorem` | [_root_.ContinuousLinearMap.isIdempotentElem_iff_eq_projectionL_range_ker](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/root-continuouslinearmap-isidempotentelem-iff-eq-projectionl-range-ker.md) | 299 | `result-track:90da94d6c748f88d6b2884351df7b584bee98ec7dde88467c64f4dd96ba91078` |
| 43 | `theorem` | [IsTopCompl.closedComplemented](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-closedcomplemented.md) | 308 | `result-track:a519f6300e2adac15d11f55bd91a774b586467b760d157143c5ccac784bd5ebd` |
| 44 | `theorem` | [IsTopCompl.isClosed'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-isclosed-source-edition-2.md) | 313 | `result-track:1aa888f39f92b1942c0226aaa8077778a91cd70bceff5b7c98719d6489163408` |
| 45 | `theorem` | [IsTopCompl.isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-isclosed.md) | 318 | `result-track:11900d5f46117cfe48785b1189edb5870e52e230ee8980c7d810307ddb7978b6` |
| 46 | `theorem` | [IsTopCompl.t3Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-t3space.md) | 322 | `result-track:ae9002c0b333fed7fd58ee666ef55ebd1e50fc83c2b3367d5458ffb962efbde8` |
| 47 | `theorem` | [IsTopCompl.t2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/istopcompl-t2space.md) | 332 | `result-track:f58134d90ad6288a2de9322aaf760bcd897878f24262d8b72b261ee6f421bcb9` |
| 48 | `theorem` | [ClosedComplemented.exists_isTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-exists-istopcompl.md) | 343 | `result-track:7a19758cd4b2e7ecaf18fc7d439a734b1422e34041ba1e6499c6b99e573b956e` |
| 49 | `theorem` | [closedComplemented_iff_exists_isTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-iff-exists-istopcompl.md) | 347 | `result-track:d19af6efb3d8a46d2617027265016d3f3731c9fa78cd8225f0fa2b4694a04b12` |
| 50 | `theorem` | [ClosedComplemented.exists_isClosed_isCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-exists-isclosed-iscompl.md) | 351 | `result-track:fdecb47747195b9d0b9475bc8d57cf8aabcb652f55648948ff4b358c05f109c2` |
| 51 | `def` | [ClosedComplemented.complement](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-complement.md) | 356 | `declaration-track:6353c62cdbcf0867ac4bce39a8422eff98527539e508dd1d3e537ce3bece580d` |
| 52 | `theorem` | [ClosedComplemented.isTopCompl_complement](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-istopcompl-complement.md) | 359 | `result-track:24dfb65639c2324ddc926cb6edd7a775fba7dfb5e59f2180b371db7818420e05` |
| 53 | `theorem` | [ClosedComplemented.isCompl_complement](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-iscompl-complement.md) | 363 | `result-track:d8301e62b915d997315da524f178001394c923b890ea0e3d108f18508d764d4f` |
| 54 | `theorem` | [ClosedComplemented.isClosed_complement](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-isclosed-complement.md) | 366 | `result-track:98de871141ef44d55062f192402404c2226e699c911660f8384023a1f8ecb878` |
| 55 | `theorem` | [ClosedComplemented.isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-isclosed.md) | 370 | `result-track:13401585dc4e4f8f52ca46fe1a21e5a2f79cf00e8bc9e57492948d77f3e6c2e9` |
| 56 | `theorem` | [closedComplemented_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-bot.md) | 375 | `result-track:8a7b3d0370f1dd914ca7c29d715ba9c8f5d50063bfb5e36f8d9c7f1a32a7ab12` |
| 57 | `theorem` | [closedComplemented_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-top.md) | 379 | `result-track:30e689069e341626b10e4c9c607cd94efe6a308866d798bba484b584e85244c2` |
| 58 | `theorem` | [_root_.ContinuousLinearMap.closedComplemented_range_of_leftInverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/root-continuouslinearmap-closedcomplemented-range-of-leftinverse.md) | 382 | `result-track:0a27f8177d315031cb2755de50f88dc2252ce19305cc239f13f5f3dc0d35d24a` |
| 59 | `theorem` | [_root_.ContinuousLinearMap.closedComplemented_ker_of_rightInverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/root-continuouslinearmap-closedcomplemented-ker-of-rightinverse.md) | 387 | `result-track:85aab00610f4a60240a58894551da1120870ce035c02d131af2f14306dedbf7e` |
| 60 | `lemma` | [ClosedComplemented.exists_submodule_equiv_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/closedcomplemented-exists-submodule-equiv-prod.md) | 399 | `result-track:e788d5d8582d3bba629b332096b13a9f17761e3d0c16da0689f437285ddfc7ff` |
| 61 | `theorem` | [IsCompl.isTopCompl_iff_continuous_symm_prodEquivOfIsCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/iscompl-istopcompl-iff-continuous-symm-prodequivofiscompl.md) | 415 | `result-track:8dea610f7bf3089865f24d8b8787e0b4d4108d48debb5425cbcc24fb7fc54c7f` |
| 62 | `theorem` | [continuous_prodEquivOfIsCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/continuous-prodequivofiscompl.md) | 423 | `result-track:9fa89d0248f32195a4c253ab36ceb0f89ad1341499ec5397dcdb2bfe818c86ea` |
| 63 | `theorem` | [IsCompl.isTopCompl_iff_isHomeomorph_prodEquivOfIsCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/iscompl-istopcompl-iff-ishomeomorph-prodequivofiscompl.md) | 428 | `result-track:ceedc96ef392c70d270766985b7c292a685973c4fe4b670940217fb47fa7e1de` |
| 64 | `def` | [prodEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/prodequivofistopcompl.md) | 437 | `declaration-track:19d690bbbce90d391221beadc857e4aaf60148e3a9da5148790b8965e4ea7b97` |
| 65 | `theorem` | [toLinearEquiv_prodEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/tolinearequiv-prodequivofistopcompl.md) | 443 | `result-track:6229e3912b7ef9d8ce6aa57ecafe8bc9e9d0613475a68d32cbb8f5f87f346289` |
| 66 | `theorem` | [coe_prodEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/coe-prodequivofistopcompl.md) | 448 | `result-track:845d2e45bc64f7c31e784310575468382beb93867c03c84b48b257aa537ab37c` |
| 67 | `theorem` | [coe_symm_prodEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/coe-symm-prodequivofistopcompl.md) | 453 | `result-track:7acd66f80125c041dbb0eaa351482e86a4b560e6b2dd611f304a568ddde433d3` |
| 68 | `theorem` | [prodEquivOfIsTopCompl_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/prodequivofistopcompl-apply.md) | 457 | `result-track:7501b7660d917b30532b792433174fef800bb0e9a1f92e4b7bedd71b0355b213` |
| 69 | `theorem` | [prodEquivOfIsTopCompl_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/prodequivofistopcompl-symm-apply.md) | 461 | `result-track:98e82ed8e6e2061c1335b575e3c1f7684061d089213f32cf82f881f76fa6a0a8` |
| 70 | `theorem` | [IsCompl.isTopCompl_iff_continuous_quotientEquivOfIsCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/iscompl-istopcompl-iff-continuous-quotientequivofiscompl.md) | 468 | `result-track:fe1ddaa8be99fc623eeb47650493bfc1ff274b9f2b07ed8b65c3d228a943f543` |
| 71 | `def` | [quotientEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/quotientequivofistopcompl.md) | 477 | `declaration-track:59e487eb3ddecaaa32f4a7ab845a8a7ae7487a81d3d225fe3f250a6e4bd1cd9b` |
| 72 | `theorem` | [toLinearEquiv_quotientEquivOfIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/tolinearequiv-quotientequivofistopcompl.md) | 483 | `result-track:3912e18ee02242cf9cc140c737b3311e228e8513c41b9e82514f29238e9d0b8d` |
| 73 | `theorem` | [quotientEquivOfIsTopCompl_comp_mkQL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/quotientequivofistopcompl-comp-mkql.md) | 487 | `result-track:925851c25a8ffd2cc0cf6cd52e8711187358aa7e53a4b0d386f07a5dc4b9afe6` |
| 74 | `theorem` | [quotientEquivOfIsTopCompl_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/quotientequivofistopcompl-apply.md) | 492 | `result-track:b35e8304d9a2e1aa92fdc26317025d6c0e4163a45271f3a9565dd1e0c9ba5023` |
| 75 | `theorem` | [quotientEquivOfIsTopCompl_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/quotientequivofistopcompl-symm-apply.md) | 497 | `result-track:4f3b5dc31a51a2e05c728266e9dbb8f57f235c3b92440ee4143792b13c4c37f8` |
| 76 | `theorem` | [quotientEquivOfIsTopCompl_apply_mk](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/quotientequivofistopcompl-apply-mk.md) | 501 | `result-track:3bd5178dbb7f08e47993aedd9ae72575057a33dd4fc990397bf33c42bff64daa` |
| 77 | `def` | [ofIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ofistopcompl.md) | 521 | `declaration-track:f32ca18a0f36711e91a6da66b7920a03f3bf587259f88b4ac8fd24b15460dffe` |
| 78 | `theorem` | [ofIsTopCompl_eq_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ofistopcompl-eq-add.md) | 524 | `result-track:2addc458620d0f7bae2408d172eeb3393105d5522f04e96618a1ea5585d282b0` |
| 79 | `theorem` | [toLinearMap_ofIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/tolinearmap-ofistopcompl.md) | 529 | `result-track:7ecd2cdf3081bcc269a8706199361eddef96f88d2e67980bd85161948fce48ae` |
| 80 | `theorem` | [ofIsTopCompl_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ofistopcompl-apply.md) | 534 | `result-track:2caa75ea6def1a9969917710db7da9d9de1ddceb95944f5cebd3b05becc9dd15` |
| 81 | `theorem` | [ofIsTopCompl_apply_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ofistopcompl-apply-left.md) | 538 | `result-track:a1273ee2c1961ce623717f420c84e7f9482c95d0248aeb8a02af143dd9e62a96` |
| 82 | `theorem` | [ofIsTopCompl_apply_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ofistopcompl-apply-right.md) | 541 | `result-track:988cc7d1548e2da75fa5429cb2f716d939d52a55cf50efea41b135ae1c050083` |
| 83 | `theorem` | [ofIsTopCompl_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ofistopcompl-eq.md) | 544 | `result-track:a0426c040c6e68dea5782db66a6a01337cf63f740a24f775b28617a41b35d4c5` |
| 84 | `theorem` | [ofIsTopCompl_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ofistopcompl-zero.md) | 549 | `result-track:8bab85c90ab9f2f5be7a947f7ddb9fa0ca5382d896628b18f39ceb28550acbb0` |
| 85 | `theorem` | [ofIsTopCompl_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/ofistopcompl-add.md) | 553 | `result-track:ad2fba1696db5ca2cc384c53dfd77447180378d21d047baa4991f0e59daa13d4` |
| 86 | `theorem` | [range_ofIsTopCompl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ComplementPublic.lean/declarations/range-ofistopcompl.md) | 557 | `result-track:826f0aba731e3483226eb07a9a1824abdd022126f6e37be7fd64f77e53a6d6c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1bdc712f6a979ca88e99579a27979bf78e955a18d38f257a7708b249c1624479 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Complement/Variantea947529899c67508b6762a4d08f096520822095b0d892556811eaf97bff2a93.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Complement/Variantea947529899c67508b6762a4d08f096520822095b0d892556811eaf97bff2a93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
